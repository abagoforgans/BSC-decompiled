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
uint256 _taxFee;
uint256 _liquidityFee;
uint256 _burnFee;
uint256 _marketingFee;
uint256 _taxFeeTotal;
uint256 _burnFeeTotal;
uint256 _liquidityFeeTotal;
uint256 _marketingFeeTotal;
uint8 isTaxActive; offset 160
uint8 swapAndLiquifyEnabled; offset 176
uint128 stor21; offset 176
uint128 stor21; offset 160
address marketingWalletAddress;
uint256 maxTxAmount;
uint256 minTokensBeforeSwap;
address uniswapV2RouterAddress;
address uniswapV2PairAddress;

function name() {
    return name[0 len name.length]
}

function _burnFeeTotal() {
    return _burnFeeTotal
}

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function totalSupply() {
    return totalSupply
}

function _feeDecimal() {
    return _feeDecimal
}

function _marketingFee() {
    return _marketingFee
}

function decimals() {
    return decimals
}

function _taxFeeTotal() {
    return _taxFeeTotal
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

function _liquidityFee() {
    return _liquidityFee
}

function marketingWallet() {
    return marketingWalletAddress
}

function _marketingFeeTotal() {
    return _marketingFeeTotal
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

function isTaxActive() {
    return bool(isTaxActive)
}

function _liquidityFeeTotal() {
    return _liquidityFeeTotal
}

function _burnFee() {
    return _burnFee
}

function isExcluded(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor10[address(arg1)])
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function minTokensBeforeSwap() {
    return minTokensBeforeSwap
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

function setTaxFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _taxFee = arg1
}

function setBurnFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _burnFee = arg1
}

function setMaxTxAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxTxAmount = arg1
}

function setPair(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uniswapV2PairAddress = arg1
}

function setLiquidityFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _liquidityFee = arg1
}

function setMarketingFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _marketingFee = arg1
}

function setMarketingWallet(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    marketingWalletAddress = arg1
}

function setMinTokensBeforeSwap(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    minTokensBeforeSwap = arg1
}

function setTaxless(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor9[address(arg1)] = uint8(arg2)
}

function setTaxActive(bool arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor21.field_160) = Mask(96, 0, arg1)
}

function setSwapAndLiquifyEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(80, 0, stor21.field_176) = Mask(80, 0, arg1)
    emit SwapAndLiquifyEnabledUpdated(arg1);
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
                    0x6445524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
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

function includeAccount(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor10[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a204163636f756e7420697320616c726561647920696e636c756465,
                    mem[198 len 30]
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
    if arg1 > stor8:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x64416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
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
                    0x64416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
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

function excludeAccount(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 == uniswapV2RouterAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x6f45524332303a2057652063616e206e6f74206578636c75646520556e697377617020726f75746572,
                    mem[205 len 23]
    if stor10[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a204163636f756e7420697320616c7265616479206578636c756465,
                    mem[198 len 30]
    if stor4[address(arg1)] > 0:
        mem[0] = arg1
        mem[32] = 4
        if stor4[address(arg1)] > stor8:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        42,
                        0x64416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                        mem[206 len 22]
        idx = 0
        s = totalSupply
        t = stor8
        while idx < stor11.length:
            mem[0] = stor11[idx]
            mem[32] = 4
            if stor4[stor11[idx]] > t:
                _130 = mem[64]
                mem[64] = mem[64] + 64
                mem[_130] = 26
                mem[_130 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _134 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_134 + idx + 68] = mem[_130 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_134 + 68] = mem[_134 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _134 + -mem[64] + 100
                require totalSupply
                _166 = mem[64]
                mem[64] = mem[64] + 64
                mem[_166] = 26
                mem[_166 + 32] = 'SafeMath: division by zero'
                if stor8 / totalSupply > 0:
                    require stor8 / totalSupply
                    stor5[address(arg1)] = stor4[address(arg1)] / stor8 / totalSupply
                    stor10[address(arg1)] = 1
                    stor11.length++
                    stor11[stor11.length] = arg1
                _180 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                s = 0
                while s < 26:
                    mem[_180 + s + 68] = mem[_166 + s + 32]
                    s = s + 32
                    continue 
                mem[_180 + 68] = mem[_180 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _180 + -mem[64] + 100
            require idx < stor11.length
            mem[0] = stor11[idx]
            mem[32] = 5
            if stor5[stor11[idx]] > s:
                _139 = mem[64]
                mem[64] = mem[64] + 64
                mem[_139] = 26
                mem[_139 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _145 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_145 + idx + 68] = mem[_139 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_145 + 68] = mem[_145 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _145 + -mem[64] + 100
                require totalSupply
                _183 = mem[64]
                mem[64] = mem[64] + 64
                mem[_183] = 26
                mem[_183 + 32] = 'SafeMath: division by zero'
                if stor8 / totalSupply > 0:
                    require stor8 / totalSupply
                    stor5[address(arg1)] = stor4[address(arg1)] / stor8 / totalSupply
                    stor10[address(arg1)] = 1
                    stor11.length++
                    stor11[stor11.length] = arg1
                _190 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_190 + idx + 68] = mem[_183 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_190 + 68] = mem[_190 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _190 + -mem[64] + 100
            require idx < stor11.length
            mem[0] = stor11[idx]
            mem[32] = 4
            _141 = mem[64]
            mem[64] = mem[64] + 64
            mem[_141] = 30
            mem[_141 + 32] = 'SafeMath: subtraction overflow'
            if stor4[stor11[idx]] > t:
                _150 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_150 + idx + 68] = mem[_141 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_150 + 68] = mem[_150 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _150 + -mem[64] + 100
            require idx < stor11.length
            mem[0] = stor11[idx]
            mem[32] = 5
            _176 = mem[64]
            mem[64] = mem[64] + 64
            mem[_176] = 30
            mem[_176 + 32] = 'SafeMath: subtraction overflow'
            if stor5[stor11[idx]] <= s:
                idx = idx + 1
                s = s - stor5[stor11[idx]]
                t = t - stor4[stor11[idx]]
                continue 
            _184 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_184 + idx + 68] = mem[_176 + idx + 32]
                idx = idx + 32
                continue 
            mem[_184 + 68] = mem[_184 + 70 len 30]
            revert with memory
              from mem[64]
               len _184 + -mem[64] + 100
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

function reflectionFromToken(uint256 arg1, bool arg2) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    if arg1 > totalSupply:
        revert with 0, 'Amount must be less than supply'
    if not arg2:
        idx = 0
        s = totalSupply
        t = stor8
        while idx < stor11.length:
            mem[0] = stor11[idx]
            mem[32] = 4
            if stor4[stor11[idx]] > t:
                _356 = mem[64]
                mem[64] = mem[64] + 64
                mem[_356] = 26
                mem[_356 + 32] = 'SafeMath: division by zero'
                if totalSupply > 0:
                    require totalSupply
                    if not arg1:
                        return 0
                    require arg1
                    if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    return (arg1 * stor8 / totalSupply)
                _369 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_369 + idx + 68] = mem[_356 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_369 + 68] = mem[_369 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _369 + -mem[64] + 100
            require idx < stor11.length
            mem[0] = stor11[idx]
            mem[32] = 5
            if stor5[stor11[idx]] > s:
                _374 = mem[64]
                mem[64] = mem[64] + 64
                mem[_374] = 26
                mem[_374 + 32] = 'SafeMath: division by zero'
                if totalSupply > 0:
                    require totalSupply
                    if not arg1:
                        return 0
                    require arg1
                    if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    return (arg1 * stor8 / totalSupply)
                _388 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_388 + idx + 68] = mem[_374 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_388 + 68] = mem[_388 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _388 + -mem[64] + 100
            require idx < stor11.length
            mem[0] = stor11[idx]
            mem[32] = 4
            _378 = mem[64]
            mem[64] = mem[64] + 64
            mem[_378] = 30
            mem[_378 + 32] = 'SafeMath: subtraction overflow'
            if stor4[stor11[idx]] > t:
                _398 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_398 + idx + 68] = mem[_378 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_398 + 68] = mem[_398 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _398 + -mem[64] + 100
            require idx < stor11.length
            mem[0] = stor11[idx]
            mem[32] = 5
            _447 = mem[64]
            mem[64] = mem[64] + 64
            mem[_447] = 30
            mem[_447 + 32] = 'SafeMath: subtraction overflow'
            if stor5[stor11[idx]] <= s:
                idx = idx + 1
                s = s - stor5[stor11[idx]]
                t = t - stor4[stor11[idx]]
                continue 
            _460 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_460 + idx + 68] = mem[_447 + idx + 32]
                idx = idx + 32
                continue 
            mem[_460 + 68] = mem[_460 + 70 len 30]
            revert with memory
              from mem[64]
               len _460 + -mem[64] + 100
        _342 = mem[64]
        mem[64] = mem[64] + 64
        mem[_342] = 26
        mem[_342 + 32] = 'SafeMath: division by zero'
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if t >= stor8 / totalSupply:
            _385 = mem[64]
            mem[64] = mem[64] + 64
            mem[_385] = 26
            mem[_385 + 32] = 'SafeMath: division by zero'
            if s <= 0:
                revert with 0, 'SafeMath: division by zero'
            require s
            if not arg1:
                return 0
            require arg1
            if arg1 * t / s / arg1 != t / s:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            return (arg1 * t / s)
        _386 = mem[64]
        mem[64] = mem[64] + 64
        mem[_386] = 26
        mem[_386 + 32] = 'SafeMath: division by zero'
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if not arg1:
            return 0
        require arg1
        if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        return (arg1 * stor8 / totalSupply)
    idx = 0
    s = totalSupply
    t = stor8
    while idx < stor11.length:
        mem[0] = stor11[idx]
        mem[32] = 4
        if stor4[stor11[idx]] > t:
            _355 = mem[64]
            mem[64] = mem[64] + 64
            mem[_355] = 26
            mem[_355 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                _361 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_361 + idx + 68] = mem[_355 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_361 + 68] = mem[_361 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _361 + -mem[64] + 100
            require totalSupply
            if not arg1:
                _463 = mem[64]
                mem[64] = mem[64] + 64
                mem[_463] = 26
                mem[_463 + 32] = 'SafeMath: division by zero'
                if 10^_feeDecimal + 2 <= 0:
                    _473 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_473 + idx + 68] = mem[_463 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_473 + 68] = mem[_473 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _473 + -mem[64] + 100
                require 10^_feeDecimal + 2
                _522 = mem[64]
                mem[64] = mem[64] + 64
                mem[_522] = 30
                mem[_522 + 32] = 'SafeMath: subtraction overflow'
                if 0 / 10^_feeDecimal + 2 <= arg1:
                    if not arg1 - (0 / 10^_feeDecimal + 2):
                        return 0
                    require arg1 - (0 / 10^_feeDecimal + 2)
                    if (arg1 * stor8 / totalSupply) - (0 / 10^_feeDecimal + 2 * stor8 / totalSupply) / arg1 - (0 / 10^_feeDecimal + 2) != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    return ((arg1 * stor8 / totalSupply) - (0 / 10^_feeDecimal + 2 * stor8 / totalSupply))
                _546 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_546 + idx + 68] = mem[_522 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_546 + 68] = mem[_546 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _546 + -mem[64] + 100
            require arg1
            if arg1 * _taxFee / arg1 != _taxFee:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _472 = mem[64]
            mem[64] = mem[64] + 64
            mem[_472] = 26
            mem[_472 + 32] = 'SafeMath: division by zero'
            if 10^_feeDecimal + 2 <= 0:
                _497 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_497 + idx + 68] = mem[_472 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_497 + 68] = mem[_497 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _497 + -mem[64] + 100
            require 10^_feeDecimal + 2
            _544 = mem[64]
            mem[64] = mem[64] + 64
            mem[_544] = 30
            mem[_544 + 32] = 'SafeMath: subtraction overflow'
            if arg1 * _taxFee / 10^_feeDecimal + 2 <= arg1:
                if not arg1 - (arg1 * _taxFee / 10^_feeDecimal + 2):
                    return 0
                require arg1 - (arg1 * _taxFee / 10^_feeDecimal + 2)
                if (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 10^_feeDecimal + 2 * stor8 / totalSupply) / arg1 - (arg1 * _taxFee / 10^_feeDecimal + 2) != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                return ((arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 10^_feeDecimal + 2 * stor8 / totalSupply))
            _564 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_564 + idx + 68] = mem[_544 + idx + 32]
                idx = idx + 32
                continue 
            mem[_564 + 68] = mem[_564 + 70 len 30]
            revert with memory
              from mem[64]
               len _564 + -mem[64] + 100
        require idx < stor11.length
        mem[0] = stor11[idx]
        mem[32] = 5
        if stor5[stor11[idx]] <= s:
            require idx < stor11.length
            mem[0] = stor11[idx]
            mem[32] = 4
            _376 = mem[64]
            mem[64] = mem[64] + 64
            mem[_376] = 30
            mem[_376 + 32] = 'SafeMath: subtraction overflow'
            if stor4[stor11[idx]] > t:
                _393 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_393 + idx + 68] = mem[_376 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_393 + 68] = mem[_393 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _393 + -mem[64] + 100
            require idx < stor11.length
            mem[0] = stor11[idx]
            mem[32] = 5
            _441 = mem[64]
            mem[64] = mem[64] + 64
            mem[_441] = 30
            mem[_441 + 32] = 'SafeMath: subtraction overflow'
            if stor5[stor11[idx]] <= s:
                idx = idx + 1
                s = s - stor5[stor11[idx]]
                t = t - stor4[stor11[idx]]
                continue 
            _455 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_455 + idx + 68] = mem[_441 + idx + 32]
                idx = idx + 32
                continue 
            mem[_455 + 68] = mem[_455 + 70 len 30]
            revert with memory
              from mem[64]
               len _455 + -mem[64] + 100
        _366 = mem[64]
        mem[64] = mem[64] + 64
        mem[_366] = 26
        mem[_366 + 32] = 'SafeMath: division by zero'
        if totalSupply <= 0:
            _382 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_382 + idx + 68] = mem[_366 + idx + 32]
                idx = idx + 32
                continue 
            mem[_382 + 68] = mem[_382 + 74 len 26]
            revert with memory
              from mem[64]
               len _382 + -mem[64] + 100
        require totalSupply
        if not arg1:
            _478 = mem[64]
            mem[64] = mem[64] + 64
            mem[_478] = 26
            mem[_478 + 32] = 'SafeMath: division by zero'
            if 10^_feeDecimal + 2 <= 0:
                _502 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_502 + idx + 68] = mem[_478 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_502 + 68] = mem[_502 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _502 + -mem[64] + 100
            require 10^_feeDecimal + 2
            _550 = mem[64]
            mem[64] = mem[64] + 64
            mem[_550] = 30
            mem[_550 + 32] = 'SafeMath: subtraction overflow'
            if 0 / 10^_feeDecimal + 2 <= arg1:
                if not arg1 - (0 / 10^_feeDecimal + 2):
                    return 0
                require arg1 - (0 / 10^_feeDecimal + 2)
                if (arg1 * stor8 / totalSupply) - (0 / 10^_feeDecimal + 2 * stor8 / totalSupply) / arg1 - (0 / 10^_feeDecimal + 2) != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                return ((arg1 * stor8 / totalSupply) - (0 / 10^_feeDecimal + 2 * stor8 / totalSupply))
            _570 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_570 + idx + 68] = mem[_550 + idx + 32]
                idx = idx + 32
                continue 
            mem[_570 + 68] = mem[_570 + 70 len 30]
            revert with memory
              from mem[64]
               len _570 + -mem[64] + 100
        require arg1
        if arg1 * _taxFee / arg1 != _taxFee:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _501 = mem[64]
        mem[64] = mem[64] + 64
        mem[_501] = 26
        mem[_501 + 32] = 'SafeMath: division by zero'
        if 10^_feeDecimal + 2 <= 0:
            _524 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_524 + idx + 68] = mem[_501 + idx + 32]
                idx = idx + 32
                continue 
            mem[_524 + 68] = mem[_524 + 74 len 26]
            revert with memory
              from mem[64]
               len _524 + -mem[64] + 100
        require 10^_feeDecimal + 2
        _568 = mem[64]
        mem[64] = mem[64] + 64
        mem[_568] = 30
        mem[_568 + 32] = 'SafeMath: subtraction overflow'
        if arg1 * _taxFee / 10^_feeDecimal + 2 <= arg1:
            if not arg1 - (arg1 * _taxFee / 10^_feeDecimal + 2):
                return 0
            require arg1 - (arg1 * _taxFee / 10^_feeDecimal + 2)
            if (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 10^_feeDecimal + 2 * stor8 / totalSupply) / arg1 - (arg1 * _taxFee / 10^_feeDecimal + 2) != stor8 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            return ((arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 10^_feeDecimal + 2 * stor8 / totalSupply))
        _591 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[_591 + idx + 68] = mem[_568 + idx + 32]
            idx = idx + 32
            continue 
        mem[_591 + 68] = mem[_591 + 70 len 30]
        revert with memory
          from mem[64]
           len _591 + -mem[64] + 100
    _339 = mem[64]
    mem[64] = mem[64] + 64
    mem[_339] = 26
    mem[_339 + 32] = 'SafeMath: division by zero'
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalSupply
    if t >= stor8 / totalSupply:
        _379 = mem[64]
        mem[64] = mem[64] + 64
        mem[_379] = 26
        mem[_379 + 32] = 'SafeMath: division by zero'
        if s <= 0:
            revert with 0, 'SafeMath: division by zero'
        require s
        if not arg1:
            _495 = mem[64]
            mem[64] = mem[64] + 64
            mem[_495] = 26
            mem[_495 + 32] = 'SafeMath: division by zero'
            if 10^_feeDecimal + 2 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 10^_feeDecimal + 2
            _559 = mem[64]
            mem[64] = mem[64] + 64
            mem[_559] = 30
            mem[_559 + 32] = 'SafeMath: subtraction overflow'
            if 0 / 10^_feeDecimal + 2 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if not arg1 - (0 / 10^_feeDecimal + 2):
                return 0
            require arg1 - (0 / 10^_feeDecimal + 2)
            if (arg1 * t / s) - (0 / 10^_feeDecimal + 2 * t / s) / arg1 - (0 / 10^_feeDecimal + 2) != t / s:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            return ((arg1 * t / s) - (0 / 10^_feeDecimal + 2 * t / s))
        require arg1
        if arg1 * _taxFee / arg1 != _taxFee:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _513 = mem[64]
        mem[64] = mem[64] + 64
        mem[_513] = 26
        mem[_513 + 32] = 'SafeMath: division by zero'
        if 10^_feeDecimal + 2 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require 10^_feeDecimal + 2
        _579 = mem[64]
        mem[64] = mem[64] + 64
        mem[_579] = 30
        mem[_579 + 32] = 'SafeMath: subtraction overflow'
        if arg1 * _taxFee / 10^_feeDecimal + 2 > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg1 - (arg1 * _taxFee / 10^_feeDecimal + 2):
            return 0
        require arg1 - (arg1 * _taxFee / 10^_feeDecimal + 2)
        if (arg1 * t / s) - (arg1 * _taxFee / 10^_feeDecimal + 2 * t / s) / arg1 - (arg1 * _taxFee / 10^_feeDecimal + 2) != t / s:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        return ((arg1 * t / s) - (arg1 * _taxFee / 10^_feeDecimal + 2 * t / s))
    _380 = mem[64]
    mem[64] = mem[64] + 64
    mem[_380] = 26
    mem[_380 + 32] = 'SafeMath: division by zero'
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalSupply
    if not arg1:
        _496 = mem[64]
        mem[64] = mem[64] + 64
        mem[_496] = 26
        mem[_496 + 32] = 'SafeMath: division by zero'
        if 10^_feeDecimal + 2 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require 10^_feeDecimal + 2
        _562 = mem[64]
        mem[64] = mem[64] + 64
        mem[_562] = 30
        mem[_562 + 32] = 'SafeMath: subtraction overflow'
        if 0 / 10^_feeDecimal + 2 > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg1 - (0 / 10^_feeDecimal + 2):
            return 0
        require arg1 - (0 / 10^_feeDecimal + 2)
        if (arg1 * stor8 / totalSupply) - (0 / 10^_feeDecimal + 2 * stor8 / totalSupply) / arg1 - (0 / 10^_feeDecimal + 2) != stor8 / totalSupply:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        return ((arg1 * stor8 / totalSupply) - (0 / 10^_feeDecimal + 2 * stor8 / totalSupply))
    require arg1
    if arg1 * _taxFee / arg1 != _taxFee:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
    _517 = mem[64]
    mem[64] = mem[64] + 64
    mem[_517] = 26
    mem[_517 + 32] = 'SafeMath: division by zero'
    if 10^_feeDecimal + 2 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require 10^_feeDecimal + 2
    _584 = mem[64]
    mem[64] = mem[64] + 64
    mem[_584] = 30
    mem[_584 + 32] = 'SafeMath: subtraction overflow'
    if arg1 * _taxFee / 10^_feeDecimal + 2 > arg1:
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg1 - (arg1 * _taxFee / 10^_feeDecimal + 2):
        return 0
    require arg1 - (arg1 * _taxFee / 10^_feeDecimal + 2)
    if (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 10^_feeDecimal + 2 * stor8 / totalSupply) / arg1 - (arg1 * _taxFee / 10^_feeDecimal + 2) != stor8 / totalSupply:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
    return ((arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 10^_feeDecimal + 2 * stor8 / totalSupply))
}



}
