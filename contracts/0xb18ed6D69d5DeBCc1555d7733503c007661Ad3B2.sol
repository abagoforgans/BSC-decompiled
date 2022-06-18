contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - deliver(uint256 arg1)
#  - transfer(address arg1, uint256 arg2)
#  - sub_f69e81ef(?)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
uint256 stor51;
address stor52;
uint256 geUnlockTime;
mapping of uint256 stor103;
mapping of uint256 stor104;
mapping of uint256 allowance;
mapping of uint8 stor106;
mapping of uint8 stor107;
mapping of uint8 stor108;
mapping of uint8 stor109;
array of address stor110;
uint256 totalSupply;
uint256 stor112;
uint256 totalFees;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 _taxFee;
uint256 stor118;
uint256 _liquidityFee;
uint256 stor120;
address uniswapV2RouterAddress;
bool stor122; offset 256
uint8 swapAndLiquifyEnabled; offset 168
uint8 paused; offset 176
uint8 sub_6565782a; offset 184
uint8 sub_1a84f54c; offset 192
uint64 stor122; offset 200
uint128 stor122; offset 168
address uniswapV2PairAddress;
uint256 stor122;
uint256 maxTaxFee;
uint256 sub_941fa5cd;
array of struct _sell;
mapping of uint256 sub_278f4e28;
mapping of uint256 sub_ddbd8dea;
mapping of uint256 sub_1ee9d034;
uint256 sub_33477327;
uint256 _maxTxAmount;
uint256 stor131;
mapping of uint8 stor132;
uint16 stor133;
address stor133; offset 16
address deadAddress;
address marketingAddress;
uint8 sub_5d03992d; offset 160
uint128 stor135; offset 160
address charityAddress;
array of address stor69290179047559764897525587595065000388900846244344453231461793201804346332202;
array of uint256 stor76475826499937429774632989362408904103174890347877333936336434470446686196258;
array of uint256 stor76475826499937429774632989362408904103174890347877333936336434470446686196259;

function name() {
    return name[0 len name.length].field_0
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

function sub_1a84f54c(?) {
    return bool(sub_1a84f54c)
}

function sub_1ee9d034(?) {
    require calldata.size - 4 >= 32
    return sub_1ee9d034[arg1]
}

function sub_278f4e28(?) {
    require calldata.size - 4 >= 32
    return sub_278f4e28[arg1]
}

function deadAddress() {
    return deadAddress
}

function decimals() {
    return decimals
}

function sub_33477327(?) {
    return sub_33477327
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
    return bool(stor106[address(arg1)])
}

function paused() {
    return bool(paused)
}

function sub_5d03992d(?) {
    return bool(sub_5d03992d)
}

function sub_6565782a(?) {
    return bool(sub_6565782a)
}

function _liquidityFee() {
    return _liquidityFee
}

function _maxTxAmount() {
    return _maxTxAmount
}

function isExcludedFromReward(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor109[address(arg1)])
}

function sub_8c7c4f9a(?) {
    require calldata.size - 4 >= 32
    return bool(stor132[arg1])
}

function owner() {
    return address(owner)
}

function sub_941fa5cd(?) {
    return sub_941fa5cd
}

function symbol() {
    return symbol[0 len symbol.length].field_0
}

function marketingAddress() {
    return marketingAddress
}

function charityAddress() {
    return charityAddress
}

function geUnlockTime() {
    return geUnlockTime
}

function maxTaxFee() {
    return maxTaxFee
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function sub_ddbd8dea(?) {
    require calldata.size - 4 >= 32
    return sub_ddbd8dea[arg1]
}

function _sell(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < _sell.length
    return _sell[arg1].field_0, _sell[arg1].field_256
}

function _fallback() payable {
    revert
}

function _unpause() {
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function _pause() {
    if not stor108[address(msg.sender)]:
        if paused:
            revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function sub_fdc86c2f(?) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    maxTaxFee = arg1
}

function renounceOwnership() {
    if address(owner) != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    emit 0x728be007: address(owner), 0
    address(owner) = 0
}

function setBuyTax(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    sub_941fa5cd = arg1
}

function setTaxFeePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    _taxFee = arg1
}

function setMaxTxAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    _maxTxAmount = arg1
}

function setAirDrop(bool arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor135 = Mask(96, 0, arg1)
}

function setMaxBuyTxAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    sub_33477327 = arg1
}

function sub_a362738c(?) {
    require calldata.size - 4 >= 64
    if address(owner) != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor132[address(arg1)] = uint8(arg2)
}

function setCharityAddress(address arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    charityAddress = arg1
}

function includeInFee(address arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor106[address(arg1)] = 0
}

function excludeFromFee(address arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor106[address(arg1)] = 1
}

function setLiquidityFeePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    _liquidityFee = arg1
}

function setMarketingAddress(address arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    marketingAddress = arg1
}

function setNumTokensSellToAddToLiquidity(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor131 = arg1
}

function addBlacklist(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if address(owner) != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor107[address(arg1)] = uint8(arg2)
}

function addWhitelist(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if address(owner) != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor108[address(arg1)] = uint8(arg2)
}

function setSwapAndLiquifyEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    Mask(88, 0, stor122.field_168) = Mask(88, 0, arg1)
    emit SwapAndLiquifyEnabledUpdated(arg1);
}

function sub_58c34f77(?) {
    require calldata.size - 4 >= 128
    if address(owner) != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    require arg1 < _sell.length
    _sell[arg1].field_0 = arg3
    _sell[arg1].field_256 = arg4
    sub_278f4e28[arg1] = arg2
}

function sub_82ce85a7(?) {
    require calldata.size - 4 >= 96
    if address(owner) != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    _sell.length++
    storA913[stor125.length] = arg1
    storA913[stor125.length] = arg2
    sub_278f4e28[stor125.length] = arg3
}

function lock(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor52 = address(owner)
    address(owner) = 0
    geUnlockTime = arg1 + block.timestamp
    emit 0x728be007 
    emit 0x0 
    emit 0x0 
}

function sub_f002cc4e(?) {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < _sell.length:
        mem[0] = 125
        if arg1 < _sell[idx].field_0:
            idx = idx + 1
            continue 
        require idx < _sell.length
        mem[0] = 125
        if arg1 > _sell[idx].field_256:
            idx = idx + 1
            continue 
        return sub_278f4e28[idx]
    return 0
}

function unlock() {
    if stor52 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6e596f7520646f6e27742068617665207065726d697373696f6e20746f20756e6c6f63,
                    mem[199 len 29]
    if block.timestamp <= geUnlockTime:
        revert with 0, 'Contract is locked until 7 days'
    emit 0x728be007: address(owner), stor52
    address(owner) = stor52
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit 0x728be007: address(owner), arg1
    address(owner) = arg1
}

function includeInReward(address arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not stor109[address(arg1)]:
        revert with 0, 'Account is already excluded'
    idx = 0
    while idx < stor110.length:
        mem[0] = 110
        if stor110[idx] != arg1:
            idx = idx + 1
            continue 
        require stor110.length - 1 < stor110.length
        require idx < stor110.length
        stor110[idx] = stor110[stor110.length]
        stor104[address(arg1)] = 0
        stor109[address(arg1)] = 0
        require stor110.length
        stor110[stor110.length] = 0
        stor110.length--
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
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
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
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function tokenFromReflection(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if arg1 > stor112:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                    mem[206 len 22]
    idx = 0
    s = totalSupply
    t = stor112
    while idx < stor110.length:
        mem[0] = stor110[idx]
        mem[32] = 103
        if stor103[stor110[idx]] > t:
            _156 = mem[64]
            mem[64] = mem[64] + 64
            mem[_156] = 26
            mem[_156 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _156 + 32]
                    idx = idx + 32
                    continue 
            else:
                _198 = mem[64]
                mem[64] = mem[64] + 64
                mem[_198] = 26
                mem[_198 + 32] = 'SafeMath: division by zero'
                if stor112 / totalSupply:
                    return (arg1 / stor112 / totalSupply)
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _198 + 32]
                    idx = idx + 32
                    continue 
            revert with 0, 'SafeMath: division by zero'
        require idx < stor110.length
        mem[0] = stor110[idx]
        mem[32] = 104
        if stor104[stor110[idx]] > s:
            _166 = mem[64]
            mem[64] = mem[64] + 64
            mem[_166] = 26
            mem[_166 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _166 + 32]
                    idx = idx + 32
                    continue 
            else:
                _220 = mem[64]
                mem[64] = mem[64] + 64
                mem[_220] = 26
                mem[_220 + 32] = 'SafeMath: division by zero'
                if stor112 / totalSupply:
                    return (arg1 / stor112 / totalSupply)
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _220 + 32]
                    idx = idx + 32
                    continue 
            revert with 0, 'SafeMath: division by zero'
        require idx < stor110.length
        mem[0] = stor110[idx]
        mem[32] = 103
        _161 = mem[64]
        mem[64] = mem[64] + 64
        mem[_161] = 30
        mem[_161 + 32] = 'SafeMath: subtraction overflow'
        if stor103[stor110[idx]] > t:
            _168 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _168 + 68] = mem[idx + _161 + 32]
                idx = idx + 32
                continue 
            mem[_168 + 68] = mem[_168 + 70 len 30]
            revert with memory
              from mem[64]
               len _168 + -mem[64] + 100
        require idx < stor110.length
        mem[0] = stor110[idx]
        mem[32] = 104
        _200 = mem[64]
        mem[64] = mem[64] + 64
        mem[_200] = 30
        mem[_200 + 32] = 'SafeMath: subtraction overflow'
        if stor104[stor110[idx]] <= s:
            idx = idx + 1
            s = s - stor104[stor110[idx]]
            t = t - stor103[stor110[idx]]
            continue 
        _217 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _217 + 68] = mem[idx + _200 + 32]
            idx = idx + 32
            continue 
        mem[_217 + 68] = mem[_217 + 70 len 30]
        revert with memory
          from mem[64]
           len _217 + -mem[64] + 100
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero'
    if t >= stor112 / totalSupply:
        if not s:
            revert with 0, 'SafeMath: division by zero'
        if not t / s:
            revert with 0, 'SafeMath: division by zero'
        return (arg1 / t / s)
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero'
    if not stor112 / totalSupply:
        revert with 0, 'SafeMath: division by zero'
    return (arg1 / stor112 / totalSupply)
}

function balanceOf(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if stor109[address(arg1)]:
        return stor104[address(arg1)]
    mem[0] = arg1
    mem[32] = 103
    if stor103[address(arg1)] > stor112:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                    mem[206 len 22]
    idx = 0
    s = totalSupply
    t = stor112
    while idx < stor110.length:
        mem[0] = stor110[idx]
        mem[32] = 103
        if stor103[stor110[idx]] > t:
            _161 = mem[64]
            mem[64] = mem[64] + 64
            mem[_161] = 26
            mem[_161 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _161 + 32]
                    idx = idx + 32
                    continue 
            else:
                _203 = mem[64]
                mem[64] = mem[64] + 64
                mem[_203] = 26
                mem[_203 + 32] = 'SafeMath: division by zero'
                if stor112 / totalSupply:
                    return (stor103[address(arg1)] / stor112 / totalSupply)
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _203 + 32]
                    idx = idx + 32
                    continue 
            revert with 0, 'SafeMath: division by zero'
        require idx < stor110.length
        mem[0] = stor110[idx]
        mem[32] = 104
        if stor104[stor110[idx]] > s:
            _171 = mem[64]
            mem[64] = mem[64] + 64
            mem[_171] = 26
            mem[_171 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _171 + 32]
                    idx = idx + 32
                    continue 
            else:
                _225 = mem[64]
                mem[64] = mem[64] + 64
                mem[_225] = 26
                mem[_225 + 32] = 'SafeMath: division by zero'
                if stor112 / totalSupply:
                    return (stor103[address(arg1)] / stor112 / totalSupply)
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _225 + 32]
                    idx = idx + 32
                    continue 
            revert with 0, 'SafeMath: division by zero'
        require idx < stor110.length
        mem[0] = stor110[idx]
        mem[32] = 103
        _166 = mem[64]
        mem[64] = mem[64] + 64
        mem[_166] = 30
        mem[_166 + 32] = 'SafeMath: subtraction overflow'
        if stor103[stor110[idx]] > t:
            _173 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _173 + 68] = mem[idx + _166 + 32]
                idx = idx + 32
                continue 
            mem[_173 + 68] = mem[_173 + 70 len 30]
            revert with memory
              from mem[64]
               len _173 + -mem[64] + 100
        require idx < stor110.length
        mem[0] = stor110[idx]
        mem[32] = 104
        _205 = mem[64]
        mem[64] = mem[64] + 64
        mem[_205] = 30
        mem[_205 + 32] = 'SafeMath: subtraction overflow'
        if stor104[stor110[idx]] <= s:
            idx = idx + 1
            s = s - stor104[stor110[idx]]
            t = t - stor103[stor110[idx]]
            continue 
        _222 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _222 + 68] = mem[idx + _205 + 32]
            idx = idx + 32
            continue 
        mem[_222 + 68] = mem[_222 + 70 len 30]
        revert with memory
          from mem[64]
           len _222 + -mem[64] + 100
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero'
    if t >= stor112 / totalSupply:
        if not s:
            revert with 0, 'SafeMath: division by zero'
        if not t / s:
            revert with 0, 'SafeMath: division by zero'
        return (stor103[address(arg1)] / t / s)
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero'
    if not stor112 / totalSupply:
        revert with 0, 'SafeMath: division by zero'
    return (stor103[address(arg1)] / stor112 / totalSupply)
}

function sub_45d19a9d(?) payable {
    mem[64] = 96
    require not msg.value
    if stor109[address(this.address)]:
        return stor104[address(this.address)]
    mem[0] = this.address
    mem[32] = 103
    if stor103[address(this.address)] > stor112:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                    mem[206 len 22]
    idx = 0
    s = totalSupply
    t = stor112
    while idx < stor110.length:
        mem[0] = stor110[idx]
        mem[32] = 103
        if stor103[stor110[idx]] > t:
            _161 = mem[64]
            mem[64] = mem[64] + 64
            mem[_161] = 26
            mem[_161 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _161 + 32]
                    idx = idx + 32
                    continue 
            else:
                _203 = mem[64]
                mem[64] = mem[64] + 64
                mem[_203] = 26
                mem[_203 + 32] = 'SafeMath: division by zero'
                if stor112 / totalSupply:
                    return (stor103[address(this.address)] / stor112 / totalSupply)
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _203 + 32]
                    idx = idx + 32
                    continue 
            revert with 0, 'SafeMath: division by zero'
        require idx < stor110.length
        mem[0] = stor110[idx]
        mem[32] = 104
        if stor104[stor110[idx]] > s:
            _171 = mem[64]
            mem[64] = mem[64] + 64
            mem[_171] = 26
            mem[_171 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _171 + 32]
                    idx = idx + 32
                    continue 
            else:
                _225 = mem[64]
                mem[64] = mem[64] + 64
                mem[_225] = 26
                mem[_225 + 32] = 'SafeMath: division by zero'
                if stor112 / totalSupply:
                    return (stor103[address(this.address)] / stor112 / totalSupply)
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _225 + 32]
                    idx = idx + 32
                    continue 
            revert with 0, 'SafeMath: division by zero'
        require idx < stor110.length
        mem[0] = stor110[idx]
        mem[32] = 103
        _166 = mem[64]
        mem[64] = mem[64] + 64
        mem[_166] = 30
        mem[_166 + 32] = 'SafeMath: subtraction overflow'
        if stor103[stor110[idx]] > t:
            _173 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _173 + 68] = mem[idx + _166 + 32]
                idx = idx + 32
                continue 
            mem[_173 + 68] = mem[_173 + 70 len 30]
            revert with memory
              from mem[64]
               len _173 + -mem[64] + 100
        require idx < stor110.length
        mem[0] = stor110[idx]
        mem[32] = 104
        _205 = mem[64]
        mem[64] = mem[64] + 64
        mem[_205] = 30
        mem[_205 + 32] = 'SafeMath: subtraction overflow'
        if stor104[stor110[idx]] <= s:
            idx = idx + 1
            s = s - stor104[stor110[idx]]
            t = t - stor103[stor110[idx]]
            continue 
        _222 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _222 + 68] = mem[idx + _205 + 32]
            idx = idx + 32
            continue 
        mem[_222 + 68] = mem[_222 + 70 len 30]
        revert with memory
          from mem[64]
           len _222 + -mem[64] + 100
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero'
    if t >= stor112 / totalSupply:
        if not s:
            revert with 0, 'SafeMath: division by zero'
        if not t / s:
            revert with 0, 'SafeMath: division by zero'
        return (stor103[address(this.address)] / t / s)
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero'
    if not stor112 / totalSupply:
        revert with 0, 'SafeMath: division by zero'
    return (stor103[address(this.address)] / stor112 / totalSupply)
}

function initialize() {
    if uint8(stor0.field_8):
        uint256(stor51) = msg.sender or Mask(96, 160, uint256(stor51))
        emit 0x728be007: 0, msg.sender
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        46,
                        0x2e496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                        mem[210 len 18]
        if uint8(stor0.field_8):
            uint256(stor51) = msg.sender or Mask(96, 160, uint256(stor51))
            emit 0x728be007: 0, msg.sender
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x2e496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
            if uint8(stor0.field_8):
                uint256(stor51) = msg.sender or Mask(96, 160, uint256(stor51))
                emit 0x728be007: 0, msg.sender
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x2e496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
                if uint8(stor0.field_8):
                    uint256(stor51) = msg.sender or Mask(96, 160, uint256(stor51))
                    emit 0x728be007: 0, msg.sender
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x2e496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[210 len 18]
                    if uint8(stor0.field_8):
                        uint256(stor51) = msg.sender or Mask(96, 160, uint256(stor51))
                        emit 0x728be007: 0, msg.sender
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        uint256(stor51) = msg.sender or Mask(96, 160, uint256(stor51))
                        emit 0x728be007: 0, msg.sender
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
    totalSupply = 8888888888 * 10^9
    stor112 = -6763107801129639936
    uint8(name.length) = 16
    name.length.field_8 = 0
    name.length.field_192 = 5567949153575589976
    idx = 0
    while name.length + 31 / 32 > idx:
        name[idx].field_0 = 0
        idx = idx + 1
        continue 
    uint8(symbol.length) = 8
    symbol.length.field_8 = 0
    symbol.length.field_224 = 1296193624
    idx = 0
    while symbol.length + 31 / 32 > idx:
        symbol[idx].field_0 = 0
        idx = idx + 1
        continue 
    decimals = 9
    _taxFee = 1
    stor118 = 1
    _liquidityFee = 1
    stor120 = 1
    swapAndLiquifyEnabled = 1
    paused = 1
    sub_6565782a = 1
    sub_1a84f54c = 1
    stor122.field_200 % 72057594037927936 = 0
    stor122.field_256 % 1 = 0
    stor122.field_256 % 1 = 0
    stor122.field_256 % 1 = 0
    maxTaxFee = 15
    sub_941fa5cd = 1
    sub_33477327 = 888888 * 10^9
    _maxTxAmount = 888888 * 10^9
    stor131 = 10^13
    uint16(stor133.field_0) = 57005
    Mask(144, 0, stor133.field_16) = 0
    marketingAddress = 0xb5421098d0fba97e882c58a0c6b914d2088b291d
    charityAddress = 0xd5d134f939dd83175d2005ac18bc142e06cccae3
    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
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
    uint256(stor122.field_0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor122.field_0))
    uniswapV2RouterAddress = 0x10ed43c718714eb63d5aa57b78b54704e256024e
    stor103[0x8aea7d47bad65c6a52496177ec99966164888a3b] = stor112
    stor108[0x8aea7d47bad65c6a52496177ec99966164888a3b] = 1
    stor108[0x10ed43c718714eb63d5aa57b78b54704e256024e] = 1
    stor106[0x8aea7d47bad65c6a52496177ec99966164888a3b] = 1
    stor106[this.address] = 1
    _sell.length++
    storA913[stor125.length] = 100
    storA913[stor125.length] = 10^12
    sub_278f4e28[stor125.length] = 3
    _sell.length++
    storA913[stor125.length] = 1001 * 10^9
    storA913[stor125.length] = 10^13
    sub_278f4e28[stor125.length] = 6
    _sell.length++
    storA913[stor125.length] = 10001 * 10^9
    storA913[stor125.length] = 25 * 10^12
    sub_278f4e28[stor125.length] = 9
    _sell.length++
    storA913[stor125.length] = 25001 * 10^9
    storA913[stor125.length] = 5 * 10^13
    sub_278f4e28[stor125.length] = 12
    _sell.length++
    storA913[stor125.length] = 50001 * 10^9
    storA913[stor125.length] = 10^14
    sub_278f4e28[stor125.length] = 15
    _sell.length++
    storA913[stor125.length] = 100001 * 10^9
    storA913[stor125.length] = 888888 * 10^9
    sub_278f4e28[stor125.length] = 18
    sub_5d03992d = 0
    emit Transfer(address arg1, address arg2, uint256 arg3):
                  totalSupply,
    emit 0x0: totalSupply
    emit 0x8aea7d47: totalSupply
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function excludeFromReward(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if stor109[address(arg1)]:
        revert with 0, 'Account is already excluded'
    if stor103[address(arg1)]:
        mem[0] = arg1
        mem[32] = 103
        if stor103[address(arg1)] > stor112:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        42,
                        0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                        mem[206 len 22]
        idx = 0
        s = totalSupply
        t = stor112
        while idx < stor110.length:
            mem[0] = stor110[idx]
            mem[32] = 103
            if stor103[stor110[idx]] > t:
                _166 = mem[64]
                mem[64] = mem[64] + 64
                mem[_166] = 26
                mem[_166 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _166 + 32]
                        idx = idx + 32
                        continue 
                else:
                    _208 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_208] = 26
                    mem[_208 + 32] = 'SafeMath: division by zero'
                    if stor112 / totalSupply:
                        stor104[address(arg1)] = stor103[address(arg1)] / stor112 / totalSupply
                        stor109[address(arg1)] = 1
                        stor110.length++
                        stor9930[stor110.length] = arg1
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _208 + 32]
                        idx = idx + 32
                        continue 
                revert with 0, 'SafeMath: division by zero'
            require idx < stor110.length
            mem[0] = stor110[idx]
            mem[32] = 104
            if stor104[stor110[idx]] > s:
                _176 = mem[64]
                mem[64] = mem[64] + 64
                mem[_176] = 26
                mem[_176 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _176 + 32]
                        idx = idx + 32
                        continue 
                else:
                    _230 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_230] = 26
                    mem[_230 + 32] = 'SafeMath: division by zero'
                    if stor112 / totalSupply:
                        stor104[address(arg1)] = stor103[address(arg1)] / stor112 / totalSupply
                        stor109[address(arg1)] = 1
                        stor110.length++
                        stor9930[stor110.length] = arg1
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _230 + 32]
                        idx = idx + 32
                        continue 
                revert with 0, 'SafeMath: division by zero'
            require idx < stor110.length
            mem[0] = stor110[idx]
            mem[32] = 103
            _171 = mem[64]
            mem[64] = mem[64] + 64
            mem[_171] = 30
            mem[_171 + 32] = 'SafeMath: subtraction overflow'
            if stor103[stor110[idx]] > t:
                _178 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _178 + 68] = mem[idx + _171 + 32]
                    idx = idx + 32
                    continue 
                mem[_178 + 68] = mem[_178 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _178 + -mem[64] + 100
            require idx < stor110.length
            mem[0] = stor110[idx]
            mem[32] = 104
            _210 = mem[64]
            mem[64] = mem[64] + 64
            mem[_210] = 30
            mem[_210 + 32] = 'SafeMath: subtraction overflow'
            if stor104[stor110[idx]] <= s:
                idx = idx + 1
                s = s - stor104[stor110[idx]]
                t = t - stor103[stor110[idx]]
                continue 
            _227 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _227 + 68] = mem[idx + _210 + 32]
                idx = idx + 32
                continue 
            mem[_227 + 68] = mem[_227 + 70 len 30]
            revert with memory
              from mem[64]
               len _227 + -mem[64] + 100
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        if t >= stor112 / totalSupply:
            if not s:
                revert with 0, 'SafeMath: division by zero'
            if not t / s:
                revert with 0, 'SafeMath: division by zero'
            stor104[address(arg1)] = stor103[address(arg1)] / t / s
        else:
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if not stor112 / totalSupply:
                revert with 0, 'SafeMath: division by zero'
            stor104[address(arg1)] = stor103[address(arg1)] / stor112 / totalSupply
    stor109[address(arg1)] = 1
    stor110.length++
    stor9930[stor110.length] = arg1
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
                t = stor112
                while idx < stor110.length:
                    mem[0] = stor110[idx]
                    mem[32] = 103
                    if stor103[stor110[idx]] > t:
                        _3006 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3006] = 26
                        mem[_3006 + 32] = 'SafeMath: division by zero'
                        if not totalSupply:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _3006 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        if not arg1:
                            return 0
                        if stor112 / totalSupply * arg1 / arg1 != stor112 / totalSupply:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3742 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3742] = 30
                        mem[_3742 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor112 / totalSupply * arg1:
                            return (stor112 / totalSupply * arg1)
                        _3820 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3820 + 68] = mem[idx + _3742 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3820 + 68] = mem[_3820 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3820 + -mem[64] + 100
                    require idx < stor110.length
                    mem[0] = stor110[idx]
                    mem[32] = 104
                    if stor104[stor110[idx]] > s:
                        _3072 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3072] = 26
                        mem[_3072 + 32] = 'SafeMath: division by zero'
                        if not totalSupply:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _3072 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        if not arg1:
                            return 0
                        if stor112 / totalSupply * arg1 / arg1 != stor112 / totalSupply:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3823 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3823] = 30
                        mem[_3823 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor112 / totalSupply * arg1:
                            return (stor112 / totalSupply * arg1)
                        _3990 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3990 + 68] = mem[idx + _3823 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3990 + 68] = mem[_3990 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3990 + -mem[64] + 100
                    require idx < stor110.length
                    mem[0] = stor110[idx]
                    mem[32] = 103
                    _3040 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3040] = 30
                    mem[_3040 + 32] = 'SafeMath: subtraction overflow'
                    if stor103[stor110[idx]] > t:
                        _3106 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3106 + 68] = mem[idx + _3040 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3106 + 68] = mem[_3106 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3106 + -mem[64] + 100
                    require idx < stor110.length
                    mem[0] = stor110[idx]
                    mem[32] = 104
                    _3349 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3349] = 30
                    mem[_3349 + 32] = 'SafeMath: subtraction overflow'
                    if stor104[stor110[idx]] <= s:
                        idx = idx + 1
                        s = s - stor104[stor110[idx]]
                        t = t - stor103[stor110[idx]]
                        continue 
                    _3457 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3457 + 68] = mem[idx + _3349 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3457 + 68] = mem[_3457 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3457 + -mem[64] + 100
                _2880 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2880] = 26
                mem[_2880 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                if t >= stor112 / totalSupply:
                    _3146 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3146] = 26
                    mem[_3146 + 32] = 'SafeMath: division by zero'
                    if not s:
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        return 0
                    if t / s * arg1 / arg1 != t / s:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 0 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (t / s * arg1)
                _3147 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3147] = 26
                mem[_3147 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    return 0
                if stor112 / totalSupply * arg1 / arg1 != stor112 / totalSupply:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > stor112 / totalSupply * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (stor112 / totalSupply * arg1)
            if _liquidityFee * arg1 / arg1 != _liquidityFee:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if _liquidityFee * arg1 / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor112
            while idx < stor110.length:
                mem[0] = stor110[idx]
                mem[32] = 103
                if stor103[stor110[idx]] > t:
                    _3001 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3001] = 26
                    mem[_3001 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _3001 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        if not _liquidityFee * arg1 / 100:
                            return 0
                        if stor112 / totalSupply * _liquidityFee * arg1 / 100 / _liquidityFee * arg1 / 100 != stor112 / totalSupply:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3739 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3739] = 30
                        mem[_3739 + 32] = 'SafeMath: subtraction overflow'
                        _4088 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4088] = 30
                        mem[_4088 + 32] = 'SafeMath: subtraction overflow'
                        if stor112 / totalSupply * _liquidityFee * arg1 / 100 <= 0:
                            return (-1 * stor112 / totalSupply * _liquidityFee * arg1 / 100)
                        _4355 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4355 + 68] = mem[idx + _4088 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4355 + 68] = mem[_4355 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4355 + -mem[64] + 100
                    if stor112 / totalSupply * arg1 / arg1 != stor112 / totalSupply:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not _liquidityFee * arg1 / 100:
                        _3738 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3738] = 30
                        mem[_3738 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor112 / totalSupply * arg1:
                            return (stor112 / totalSupply * arg1)
                        _3815 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3815 + 68] = mem[idx + _3738 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3815 + 68] = mem[_3815 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3815 + -mem[64] + 100
                    if stor112 / totalSupply * _liquidityFee * arg1 / 100 / _liquidityFee * arg1 / 100 != stor112 / totalSupply:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3767 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3767] = 30
                    mem[_3767 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor112 / totalSupply * arg1:
                        _3895 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3895 + 68] = mem[idx + _3767 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3895 + 68] = mem[_3895 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3895 + -mem[64] + 100
                    _4203 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4203] = 30
                    mem[_4203 + 32] = 'SafeMath: subtraction overflow'
                    if stor112 / totalSupply * _liquidityFee * arg1 / 100 <= stor112 / totalSupply * arg1:
                        return ((stor112 / totalSupply * arg1) - (stor112 / totalSupply * _liquidityFee * arg1 / 100))
                    _4493 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4493 + 68] = mem[idx + _4203 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4493 + 68] = mem[_4493 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4493 + -mem[64] + 100
                require idx < stor110.length
                mem[0] = stor110[idx]
                mem[32] = 104
                if stor104[stor110[idx]] <= s:
                    require idx < stor110.length
                    mem[0] = stor110[idx]
                    mem[32] = 103
                    _3037 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3037] = 30
                    mem[_3037 + 32] = 'SafeMath: subtraction overflow'
                    if stor103[stor110[idx]] > t:
                        _3102 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3102 + 68] = mem[idx + _3037 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3102 + 68] = mem[_3102 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3102 + -mem[64] + 100
                    require idx < stor110.length
                    mem[0] = stor110[idx]
                    mem[32] = 104
                    _3342 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3342] = 30
                    mem[_3342 + 32] = 'SafeMath: subtraction overflow'
                    if stor104[stor110[idx]] <= s:
                        idx = idx + 1
                        s = s - stor104[stor110[idx]]
                        t = t - stor103[stor110[idx]]
                        continue 
                    _3449 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3449 + 68] = mem[idx + _3342 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3449 + 68] = mem[_3449 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3449 + -mem[64] + 100
                _3067 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3067] = 26
                mem[_3067 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _3067 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not _liquidityFee * arg1 / 100:
                        return 0
                    if stor112 / totalSupply * _liquidityFee * arg1 / 100 / _liquidityFee * arg1 / 100 != stor112 / totalSupply:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3819 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3819] = 30
                    mem[_3819 + 32] = 'SafeMath: subtraction overflow'
                    _4362 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4362] = 30
                    mem[_4362 + 32] = 'SafeMath: subtraction overflow'
                    if stor112 / totalSupply * _liquidityFee * arg1 / 100 <= 0:
                        return (-1 * stor112 / totalSupply * _liquidityFee * arg1 / 100)
                    _4637 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4637 + 68] = mem[idx + _4362 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4637 + 68] = mem[_4637 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4637 + -mem[64] + 100
                if stor112 / totalSupply * arg1 / arg1 != stor112 / totalSupply:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not _liquidityFee * arg1 / 100:
                    _3818 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3818] = 30
                    mem[_3818 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor112 / totalSupply * arg1:
                        return (stor112 / totalSupply * arg1)
                    _3983 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3983 + 68] = mem[idx + _3818 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3983 + 68] = mem[_3983 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3983 + -mem[64] + 100
                if stor112 / totalSupply * _liquidityFee * arg1 / 100 / _liquidityFee * arg1 / 100 != stor112 / totalSupply:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3898 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3898] = 30
                mem[_3898 + 32] = 'SafeMath: subtraction overflow'
                if 0 > stor112 / totalSupply * arg1:
                    _4089 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4089 + 68] = mem[idx + _3898 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4089 + 68] = mem[_4089 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4089 + -mem[64] + 100
                _4496 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4496] = 30
                mem[_4496 + 32] = 'SafeMath: subtraction overflow'
                if stor112 / totalSupply * _liquidityFee * arg1 / 100 <= stor112 / totalSupply * arg1:
                    return ((stor112 / totalSupply * arg1) - (stor112 / totalSupply * _liquidityFee * arg1 / 100))
                _4791 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4791 + 68] = mem[idx + _4496 + 32]
                    idx = idx + 32
                    continue 
                mem[_4791 + 68] = mem[_4791 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4791 + -mem[64] + 100
            _2873 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2873] = 26
            mem[_2873 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if t >= stor112 / totalSupply:
                _3139 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3139] = 26
                mem[_3139 + 32] = 'SafeMath: division by zero'
                if not s:
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not _liquidityFee * arg1 / 100:
                        return 0
                    if t / s * _liquidityFee * arg1 / 100 / _liquidityFee * arg1 / 100 != t / s:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if t / s * _liquidityFee * arg1 / 100 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (-1 * t / s * _liquidityFee * arg1 / 100)
                if t / s * arg1 / arg1 != t / s:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not _liquidityFee * arg1 / 100:
                    if 0 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (t / s * arg1)
                if t / s * _liquidityFee * arg1 / 100 / _liquidityFee * arg1 / 100 != t / s:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > t / s * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if t / s * _liquidityFee * arg1 / 100 > t / s * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((t / s * arg1) - (t / s * _liquidityFee * arg1 / 100))
            _3140 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3140] = 26
            mem[_3140 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if not arg1:
                if not _liquidityFee * arg1 / 100:
                    return 0
                if stor112 / totalSupply * _liquidityFee * arg1 / 100 / _liquidityFee * arg1 / 100 != stor112 / totalSupply:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if stor112 / totalSupply * _liquidityFee * arg1 / 100 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (-1 * stor112 / totalSupply * _liquidityFee * arg1 / 100)
            if stor112 / totalSupply * arg1 / arg1 != stor112 / totalSupply:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not _liquidityFee * arg1 / 100:
                if 0 > stor112 / totalSupply * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (stor112 / totalSupply * arg1)
            if stor112 / totalSupply * _liquidityFee * arg1 / 100 / _liquidityFee * arg1 / 100 != stor112 / totalSupply:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if 0 > stor112 / totalSupply * arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if stor112 / totalSupply * _liquidityFee * arg1 / 100 > stor112 / totalSupply * arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((stor112 / totalSupply * arg1) - (stor112 / totalSupply * _liquidityFee * arg1 / 100))
        if _taxFee * arg1 / arg1 != _taxFee:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if not arg1:
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if _taxFee * arg1 / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if 0 > arg1 - (_taxFee * arg1 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor112
            while idx < stor110.length:
                mem[0] = stor110[idx]
                mem[32] = 103
                if stor103[stor110[idx]] > t:
                    _2996 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2996] = 26
                    mem[_2996 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _2996 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        if not _taxFee * arg1 / 100:
                            return 0
                        if stor112 / totalSupply * _taxFee * arg1 / 100 / _taxFee * arg1 / 100 != stor112 / totalSupply:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3737 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3737] = 30
                        mem[_3737 + 32] = 'SafeMath: subtraction overflow'
                        if stor112 / totalSupply * _taxFee * arg1 / 100 > 0:
                            _3806 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3806 + 68] = mem[idx + _3737 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3806 + 68] = mem[_3806 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3806 + -mem[64] + 100
                        _4076 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4076] = 30
                        mem[_4076 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * stor112 / totalSupply * _taxFee * arg1 / 100:
                            return (-1 * stor112 / totalSupply * _taxFee * arg1 / 100)
                        _4338 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4338 + 68] = mem[idx + _4076 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4338 + 68] = mem[_4338 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4338 + -mem[64] + 100
                    if stor112 / totalSupply * arg1 / arg1 != stor112 / totalSupply:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not _taxFee * arg1 / 100:
                        _3736 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3736] = 30
                        mem[_3736 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor112 / totalSupply * arg1:
                            return (stor112 / totalSupply * arg1)
                        _3803 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3803 + 68] = mem[idx + _3736 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3803 + 68] = mem[_3803 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3803 + -mem[64] + 100
                    if stor112 / totalSupply * _taxFee * arg1 / 100 / _taxFee * arg1 / 100 != stor112 / totalSupply:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3765 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3765] = 30
                    mem[_3765 + 32] = 'SafeMath: subtraction overflow'
                    if stor112 / totalSupply * _taxFee * arg1 / 100 > stor112 / totalSupply * arg1:
                        _3885 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3885 + 68] = mem[idx + _3765 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3885 + 68] = mem[_3885 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3885 + -mem[64] + 100
                    _4189 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4189] = 30
                    mem[_4189 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (stor112 / totalSupply * arg1) - (stor112 / totalSupply * _taxFee * arg1 / 100):
                        return ((stor112 / totalSupply * arg1) - (stor112 / totalSupply * _taxFee * arg1 / 100))
                    _4481 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4481 + 68] = mem[idx + _4189 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4481 + 68] = mem[_4481 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4481 + -mem[64] + 100
                require idx < stor110.length
                mem[0] = stor110[idx]
                mem[32] = 104
                if stor104[stor110[idx]] <= s:
                    require idx < stor110.length
                    mem[0] = stor110[idx]
                    mem[32] = 103
                    _3034 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3034] = 30
                    mem[_3034 + 32] = 'SafeMath: subtraction overflow'
                    if stor103[stor110[idx]] > t:
                        _3098 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3098 + 68] = mem[idx + _3034 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3098 + 68] = mem[_3098 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3098 + -mem[64] + 100
                    require idx < stor110.length
                    mem[0] = stor110[idx]
                    mem[32] = 104
                    _3335 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3335] = 30
                    mem[_3335 + 32] = 'SafeMath: subtraction overflow'
                    if stor104[stor110[idx]] <= s:
                        idx = idx + 1
                        s = s - stor104[stor110[idx]]
                        t = t - stor103[stor110[idx]]
                        continue 
                    _3441 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3441 + 68] = mem[idx + _3335 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3441 + 68] = mem[_3441 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3441 + -mem[64] + 100
                _3062 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3062] = 26
                mem[_3062 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _3062 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not _taxFee * arg1 / 100:
                        return 0
                    if stor112 / totalSupply * _taxFee * arg1 / 100 / _taxFee * arg1 / 100 != stor112 / totalSupply:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3810 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3810] = 30
                    mem[_3810 + 32] = 'SafeMath: subtraction overflow'
                    if stor112 / totalSupply * _taxFee * arg1 / 100 > 0:
                        _3974 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3974 + 68] = mem[idx + _3810 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3974 + 68] = mem[_3974 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3974 + -mem[64] + 100
                    _4345 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4345] = 30
                    mem[_4345 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * stor112 / totalSupply * _taxFee * arg1 / 100:
                        return (-1 * stor112 / totalSupply * _taxFee * arg1 / 100)
                    _4622 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4622 + 68] = mem[idx + _4345 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4622 + 68] = mem[_4622 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4622 + -mem[64] + 100
                if stor112 / totalSupply * arg1 / arg1 != stor112 / totalSupply:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not _taxFee * arg1 / 100:
                    _3809 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3809] = 30
                    mem[_3809 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor112 / totalSupply * arg1:
                        return (stor112 / totalSupply * arg1)
                    _3971 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3971 + 68] = mem[idx + _3809 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3971 + 68] = mem[_3971 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3971 + -mem[64] + 100
                if stor112 / totalSupply * _taxFee * arg1 / 100 / _taxFee * arg1 / 100 != stor112 / totalSupply:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3888 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3888] = 30
                mem[_3888 + 32] = 'SafeMath: subtraction overflow'
                if stor112 / totalSupply * _taxFee * arg1 / 100 > stor112 / totalSupply * arg1:
                    _4079 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4079 + 68] = mem[idx + _3888 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4079 + 68] = mem[_4079 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4079 + -mem[64] + 100
                _4484 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4484] = 30
                mem[_4484 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (stor112 / totalSupply * arg1) - (stor112 / totalSupply * _taxFee * arg1 / 100):
                    return ((stor112 / totalSupply * arg1) - (stor112 / totalSupply * _taxFee * arg1 / 100))
                _4777 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4777 + 68] = mem[idx + _4484 + 32]
                    idx = idx + 32
                    continue 
                mem[_4777 + 68] = mem[_4777 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4777 + -mem[64] + 100
            _2866 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2866] = 26
            mem[_2866 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if t >= stor112 / totalSupply:
                _3132 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3132] = 26
                mem[_3132 + 32] = 'SafeMath: division by zero'
                if not s:
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not _taxFee * arg1 / 100:
                        return 0
                    if t / s * _taxFee * arg1 / 100 / _taxFee * arg1 / 100 != t / s:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if t / s * _taxFee * arg1 / 100 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > -1 * t / s * _taxFee * arg1 / 100:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (-1 * t / s * _taxFee * arg1 / 100)
                if t / s * arg1 / arg1 != t / s:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not _taxFee * arg1 / 100:
                    if 0 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (t / s * arg1)
                if t / s * _taxFee * arg1 / 100 / _taxFee * arg1 / 100 != t / s:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if t / s * _taxFee * arg1 / 100 > t / s * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (t / s * arg1) - (t / s * _taxFee * arg1 / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((t / s * arg1) - (t / s * _taxFee * arg1 / 100))
            _3133 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3133] = 26
            mem[_3133 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if not arg1:
                if not _taxFee * arg1 / 100:
                    return 0
                if stor112 / totalSupply * _taxFee * arg1 / 100 / _taxFee * arg1 / 100 != stor112 / totalSupply:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if stor112 / totalSupply * _taxFee * arg1 / 100 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > -1 * stor112 / totalSupply * _taxFee * arg1 / 100:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (-1 * stor112 / totalSupply * _taxFee * arg1 / 100)
            if stor112 / totalSupply * arg1 / arg1 != stor112 / totalSupply:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not _taxFee * arg1 / 100:
                if 0 > stor112 / totalSupply * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (stor112 / totalSupply * arg1)
            if stor112 / totalSupply * _taxFee * arg1 / 100 / _taxFee * arg1 / 100 != stor112 / totalSupply:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if stor112 / totalSupply * _taxFee * arg1 / 100 > stor112 / totalSupply * arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 > (stor112 / totalSupply * arg1) - (stor112 / totalSupply * _taxFee * arg1 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            return ((stor112 / totalSupply * arg1) - (stor112 / totalSupply * _taxFee * arg1 / 100))
        if _liquidityFee * arg1 / arg1 != _liquidityFee:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        mem[160] = 26
        mem[192] = 'SafeMath: division by zero'
        mem[224] = 30
        mem[256] = 'SafeMath: subtraction overflow'
        if _taxFee * arg1 / 100 > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        mem[64] = 352
        mem[288] = 30
        mem[320] = 'SafeMath: subtraction overflow'
        if _liquidityFee * arg1 / 100 > arg1 - (_taxFee * arg1 / 100):
            revert with 0, 'SafeMath: subtraction overflow'
        idx = 0
        s = totalSupply
        t = stor112
        while idx < stor110.length:
            mem[0] = stor110[idx]
            mem[32] = 103
            if stor103[stor110[idx]] > t:
                _2991 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2991] = 26
                mem[_2991 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _2991 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not _taxFee * arg1 / 100:
                        if not _liquidityFee * arg1 / 100:
                            return 0
                        if stor112 / totalSupply * _liquidityFee * arg1 / 100 / _liquidityFee * arg1 / 100 != stor112 / totalSupply:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3733 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3733] = 30
                        mem[_3733 + 32] = 'SafeMath: subtraction overflow'
                        _4060 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4060] = 30
                        mem[_4060 + 32] = 'SafeMath: subtraction overflow'
                        if stor112 / totalSupply * _liquidityFee * arg1 / 100 <= 0:
                            return (-1 * stor112 / totalSupply * _liquidityFee * arg1 / 100)
                        _4318 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4318 + 68] = mem[idx + _4060 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4318 + 68] = mem[_4318 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4318 + -mem[64] + 100
                    if stor112 / totalSupply * _taxFee * arg1 / 100 / _taxFee * arg1 / 100 != stor112 / totalSupply:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not _liquidityFee * arg1 / 100:
                        _3732 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3732] = 30
                        mem[_3732 + 32] = 'SafeMath: subtraction overflow'
                        if stor112 / totalSupply * _taxFee * arg1 / 100 > 0:
                            _3795 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3795 + 68] = mem[idx + _3732 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3795 + 68] = mem[_3795 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3795 + -mem[64] + 100
                        _4057 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4057] = 30
                        mem[_4057 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * stor112 / totalSupply * _taxFee * arg1 / 100:
                            return (-1 * stor112 / totalSupply * _taxFee * arg1 / 100)
                        _4315 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4315 + 68] = mem[idx + _4057 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4315 + 68] = mem[_4315 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4315 + -mem[64] + 100
                    if stor112 / totalSupply * _liquidityFee * arg1 / 100 / _liquidityFee * arg1 / 100 != stor112 / totalSupply:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3759 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3759] = 30
                    mem[_3759 + 32] = 'SafeMath: subtraction overflow'
                    if stor112 / totalSupply * _taxFee * arg1 / 100 > 0:
                        _3877 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3877 + 68] = mem[idx + _3759 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3877 + 68] = mem[_3877 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3877 + -mem[64] + 100
                    _4167 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4167] = 30
                    mem[_4167 + 32] = 'SafeMath: subtraction overflow'
                    if stor112 / totalSupply * _liquidityFee * arg1 / 100 <= -1 * stor112 / totalSupply * _taxFee * arg1 / 100:
                        return ((-1 * stor112 / totalSupply * _taxFee * arg1 / 100) - (stor112 / totalSupply * _liquidityFee * arg1 / 100))
                    _4460 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4460 + 68] = mem[idx + _4167 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4460 + 68] = mem[_4460 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4460 + -mem[64] + 100
                if stor112 / totalSupply * arg1 / arg1 != stor112 / totalSupply:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not _taxFee * arg1 / 100:
                    if not _liquidityFee * arg1 / 100:
                        _3731 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3731] = 30
                        mem[_3731 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor112 / totalSupply * arg1:
                            return (stor112 / totalSupply * arg1)
                        _3792 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3792 + 68] = mem[idx + _3731 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3792 + 68] = mem[_3792 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3792 + -mem[64] + 100
                    if stor112 / totalSupply * _liquidityFee * arg1 / 100 / _liquidityFee * arg1 / 100 != stor112 / totalSupply:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3758 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3758] = 30
                    mem[_3758 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor112 / totalSupply * arg1:
                        _3874 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3874 + 68] = mem[idx + _3758 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3874 + 68] = mem[_3874 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3874 + -mem[64] + 100
                    _4163 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4163] = 30
                    mem[_4163 + 32] = 'SafeMath: subtraction overflow'
                    if stor112 / totalSupply * _liquidityFee * arg1 / 100 <= stor112 / totalSupply * arg1:
                        return ((stor112 / totalSupply * arg1) - (stor112 / totalSupply * _liquidityFee * arg1 / 100))
                    _4457 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4457 + 68] = mem[idx + _4163 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4457 + 68] = mem[_4457 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4457 + -mem[64] + 100
                if stor112 / totalSupply * _taxFee * arg1 / 100 / _taxFee * arg1 / 100 != stor112 / totalSupply:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not _liquidityFee * arg1 / 100:
                    _3757 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3757] = 30
                    mem[_3757 + 32] = 'SafeMath: subtraction overflow'
                    if stor112 / totalSupply * _taxFee * arg1 / 100 > stor112 / totalSupply * arg1:
                        _3871 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3871 + 68] = mem[idx + _3757 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3871 + 68] = mem[_3871 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3871 + -mem[64] + 100
                    _4160 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4160] = 30
                    mem[_4160 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (stor112 / totalSupply * arg1) - (stor112 / totalSupply * _taxFee * arg1 / 100):
                        return ((stor112 / totalSupply * arg1) - (stor112 / totalSupply * _taxFee * arg1 / 100))
                    _4454 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4454 + 68] = mem[idx + _4160 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4454 + 68] = mem[_4454 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4454 + -mem[64] + 100
                if stor112 / totalSupply * _liquidityFee * arg1 / 100 / _liquidityFee * arg1 / 100 != stor112 / totalSupply:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3791 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3791] = 30
                mem[_3791 + 32] = 'SafeMath: subtraction overflow'
                if stor112 / totalSupply * _taxFee * arg1 / 100 > stor112 / totalSupply * arg1:
                    _3951 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3951 + 68] = mem[idx + _3791 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3951 + 68] = mem[_3951 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3951 + -mem[64] + 100
                _4309 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4309] = 30
                mem[_4309 + 32] = 'SafeMath: subtraction overflow'
                if stor112 / totalSupply * _liquidityFee * arg1 / 100 <= (stor112 / totalSupply * arg1) - (stor112 / totalSupply * _taxFee * arg1 / 100):
                    return ((stor112 / totalSupply * arg1) - (stor112 / totalSupply * _taxFee * arg1 / 100) - (stor112 / totalSupply * _liquidityFee * arg1 / 100))
                _4589 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4589 + 68] = mem[idx + _4309 + 32]
                    idx = idx + 32
                    continue 
                mem[_4589 + 68] = mem[_4589 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4589 + -mem[64] + 100
            require idx < stor110.length
            mem[0] = stor110[idx]
            mem[32] = 104
            if stor104[stor110[idx]] <= s:
                require idx < stor110.length
                mem[0] = stor110[idx]
                mem[32] = 103
                _3031 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3031] = 30
                mem[_3031 + 32] = 'SafeMath: subtraction overflow'
                if stor103[stor110[idx]] > t:
                    _3094 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3094 + 68] = mem[idx + _3031 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3094 + 68] = mem[_3094 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3094 + -mem[64] + 100
                require idx < stor110.length
                mem[0] = stor110[idx]
                mem[32] = 104
                _3328 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3328] = 30
                mem[_3328 + 32] = 'SafeMath: subtraction overflow'
                if stor104[stor110[idx]] <= s:
                    idx = idx + 1
                    s = s - stor104[stor110[idx]]
                    t = t - stor103[stor110[idx]]
                    continue 
                _3433 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3433 + 68] = mem[idx + _3328 + 32]
                    idx = idx + 32
                    continue 
                mem[_3433 + 68] = mem[_3433 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _3433 + -mem[64] + 100
            _3057 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3057] = 26
            mem[_3057 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _3057 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: division by zero'
            if not arg1:
                if not _taxFee * arg1 / 100:
                    if not _liquidityFee * arg1 / 100:
                        return 0
                    if stor112 / totalSupply * _liquidityFee * arg1 / 100 / _liquidityFee * arg1 / 100 != stor112 / totalSupply:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3802 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3802] = 30
                    mem[_3802 + 32] = 'SafeMath: subtraction overflow'
                    _4330 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4330] = 30
                    mem[_4330 + 32] = 'SafeMath: subtraction overflow'
                    if stor112 / totalSupply * _liquidityFee * arg1 / 100 <= 0:
                        return (-1 * stor112 / totalSupply * _liquidityFee * arg1 / 100)
                    _4603 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4603 + 68] = mem[idx + _4330 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4603 + 68] = mem[_4603 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4603 + -mem[64] + 100
                if stor112 / totalSupply * _taxFee * arg1 / 100 / _taxFee * arg1 / 100 != stor112 / totalSupply:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not _liquidityFee * arg1 / 100:
                    _3801 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3801] = 30
                    mem[_3801 + 32] = 'SafeMath: subtraction overflow'
                    if stor112 / totalSupply * _taxFee * arg1 / 100 > 0:
                        _3961 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3961 + 68] = mem[idx + _3801 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3961 + 68] = mem[_3961 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3961 + -mem[64] + 100
                    _4327 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4327] = 30
                    mem[_4327 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * stor112 / totalSupply * _taxFee * arg1 / 100:
                        return (-1 * stor112 / totalSupply * _taxFee * arg1 / 100)
                    _4600 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4600 + 68] = mem[idx + _4327 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4600 + 68] = mem[_4600 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4600 + -mem[64] + 100
                if stor112 / totalSupply * _liquidityFee * arg1 / 100 / _liquidityFee * arg1 / 100 != stor112 / totalSupply:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3882 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3882] = 30
                mem[_3882 + 32] = 'SafeMath: subtraction overflow'
                if stor112 / totalSupply * _taxFee * arg1 / 100 > 0:
                    _4067 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4067 + 68] = mem[idx + _3882 + 32]
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
                if stor112 / totalSupply * _liquidityFee * arg1 / 100 <= -1 * stor112 / totalSupply * _taxFee * arg1 / 100:
                    return ((-1 * stor112 / totalSupply * _taxFee * arg1 / 100) - (stor112 / totalSupply * _liquidityFee * arg1 / 100))
                _4761 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4761 + 68] = mem[idx + _4471 + 32]
                    idx = idx + 32
                    continue 
                mem[_4761 + 68] = mem[_4761 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4761 + -mem[64] + 100
            if stor112 / totalSupply * arg1 / arg1 != stor112 / totalSupply:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not _taxFee * arg1 / 100:
                if not _liquidityFee * arg1 / 100:
                    _3800 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3800] = 30
                    mem[_3800 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor112 / totalSupply * arg1:
                        return (stor112 / totalSupply * arg1)
                    _3958 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3958 + 68] = mem[idx + _3800 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3958 + 68] = mem[_3958 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3958 + -mem[64] + 100
                if stor112 / totalSupply * _liquidityFee * arg1 / 100 / _liquidityFee * arg1 / 100 != stor112 / totalSupply:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3881 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3881] = 30
                mem[_3881 + 32] = 'SafeMath: subtraction overflow'
                if 0 > stor112 / totalSupply * arg1:
                    _4064 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4064 + 68] = mem[idx + _3881 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4064 + 68] = mem[_4064 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4064 + -mem[64] + 100
                _4467 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4467] = 30
                mem[_4467 + 32] = 'SafeMath: subtraction overflow'
                if stor112 / totalSupply * _liquidityFee * arg1 / 100 <= stor112 / totalSupply * arg1:
                    return ((stor112 / totalSupply * arg1) - (stor112 / totalSupply * _liquidityFee * arg1 / 100))
                _4758 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4758 + 68] = mem[idx + _4467 + 32]
                    idx = idx + 32
                    continue 
                mem[_4758 + 68] = mem[_4758 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4758 + -mem[64] + 100
            if stor112 / totalSupply * _taxFee * arg1 / 100 / _taxFee * arg1 / 100 != stor112 / totalSupply:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not _liquidityFee * arg1 / 100:
                _3880 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3880] = 30
                mem[_3880 + 32] = 'SafeMath: subtraction overflow'
                if stor112 / totalSupply * _taxFee * arg1 / 100 > stor112 / totalSupply * arg1:
                    _4061 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4061 + 68] = mem[idx + _3880 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4061 + 68] = mem[_4061 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4061 + -mem[64] + 100
                _4464 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4464] = 30
                mem[_4464 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (stor112 / totalSupply * arg1) - (stor112 / totalSupply * _taxFee * arg1 / 100):
                    return ((stor112 / totalSupply * arg1) - (stor112 / totalSupply * _taxFee * arg1 / 100))
                _4755 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4755 + 68] = mem[idx + _4464 + 32]
                    idx = idx + 32
                    continue 
                mem[_4755 + 68] = mem[_4755 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4755 + -mem[64] + 100
            if stor112 / totalSupply * _liquidityFee * arg1 / 100 / _liquidityFee * arg1 / 100 != stor112 / totalSupply:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _3957 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3957] = 30
            mem[_3957 + 32] = 'SafeMath: subtraction overflow'
            if stor112 / totalSupply * _taxFee * arg1 / 100 > stor112 / totalSupply * arg1:
                _4171 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4171 + 68] = mem[idx + _3957 + 32]
                    idx = idx + 32
                    continue 
                mem[_4171 + 68] = mem[_4171 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4171 + -mem[64] + 100
            _4594 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4594] = 30
            mem[_4594 + 32] = 'SafeMath: subtraction overflow'
            if stor112 / totalSupply * _liquidityFee * arg1 / 100 <= (stor112 / totalSupply * arg1) - (stor112 / totalSupply * _taxFee * arg1 / 100):
                return ((stor112 / totalSupply * arg1) - (stor112 / totalSupply * _taxFee * arg1 / 100) - (stor112 / totalSupply * _liquidityFee * arg1 / 100))
            _4902 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _4902 + 68] = mem[idx + _4594 + 32]
                idx = idx + 32
                continue 
            mem[_4902 + 68] = mem[_4902 + 70 len 30]
            revert with memory
              from mem[64]
               len _4902 + -mem[64] + 100
        _2859 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2859] = 26
        mem[_2859 + 32] = 'SafeMath: division by zero'
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        if t >= stor112 / totalSupply:
            _3125 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3125] = 26
            mem[_3125 + 32] = 'SafeMath: division by zero'
            if not s:
                revert with 0, 'SafeMath: division by zero'
            if not arg1:
                if not _taxFee * arg1 / 100:
                    if not _liquidityFee * arg1 / 100:
                        return 0
                    if t / s * _liquidityFee * arg1 / 100 / _liquidityFee * arg1 / 100 != t / s:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if t / s * _liquidityFee * arg1 / 100 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (-1 * t / s * _liquidityFee * arg1 / 100)
                if t / s * _taxFee * arg1 / 100 / _taxFee * arg1 / 100 != t / s:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not _liquidityFee * arg1 / 100:
                    if t / s * _taxFee * arg1 / 100 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > -1 * t / s * _taxFee * arg1 / 100:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (-1 * t / s * _taxFee * arg1 / 100)
                if t / s * _liquidityFee * arg1 / 100 / _liquidityFee * arg1 / 100 != t / s:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if t / s * _taxFee * arg1 / 100 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if t / s * _liquidityFee * arg1 / 100 > -1 * t / s * _taxFee * arg1 / 100:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((-1 * t / s * _taxFee * arg1 / 100) - (t / s * _liquidityFee * arg1 / 100))
            if t / s * arg1 / arg1 != t / s:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not _taxFee * arg1 / 100:
                if not _liquidityFee * arg1 / 100:
                    if 0 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (t / s * arg1)
                if t / s * _liquidityFee * arg1 / 100 / _liquidityFee * arg1 / 100 != t / s:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > t / s * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if t / s * _liquidityFee * arg1 / 100 > t / s * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((t / s * arg1) - (t / s * _liquidityFee * arg1 / 100))
            if t / s * _taxFee * arg1 / 100 / _taxFee * arg1 / 100 != t / s:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not _liquidityFee * arg1 / 100:
                if t / s * _taxFee * arg1 / 100 > t / s * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (t / s * arg1) - (t / s * _taxFee * arg1 / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((t / s * arg1) - (t / s * _taxFee * arg1 / 100))
            if t / s * _liquidityFee * arg1 / 100 / _liquidityFee * arg1 / 100 != t / s:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if t / s * _taxFee * arg1 / 100 > t / s * arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if t / s * _liquidityFee * arg1 / 100 > (t / s * arg1) - (t / s * _taxFee * arg1 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            return ((t / s * arg1) - (t / s * _taxFee * arg1 / 100) - (t / s * _liquidityFee * arg1 / 100))
        _3126 = mem[64]
        mem[64] = mem[64] + 64
        mem[_3126] = 26
        mem[_3126 + 32] = 'SafeMath: division by zero'
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        if not arg1:
            if not _taxFee * arg1 / 100:
                if not _liquidityFee * arg1 / 100:
                    return 0
                if stor112 / totalSupply * _liquidityFee * arg1 / 100 / _liquidityFee * arg1 / 100 != stor112 / totalSupply:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if stor112 / totalSupply * _liquidityFee * arg1 / 100 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (-1 * stor112 / totalSupply * _liquidityFee * arg1 / 100)
            if stor112 / totalSupply * _taxFee * arg1 / 100 / _taxFee * arg1 / 100 != stor112 / totalSupply:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not _liquidityFee * arg1 / 100:
                if stor112 / totalSupply * _taxFee * arg1 / 100 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > -1 * stor112 / totalSupply * _taxFee * arg1 / 100:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (-1 * stor112 / totalSupply * _taxFee * arg1 / 100)
            if stor112 / totalSupply * _liquidityFee * arg1 / 100 / _liquidityFee * arg1 / 100 != stor112 / totalSupply:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if stor112 / totalSupply * _taxFee * arg1 / 100 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if stor112 / totalSupply * _liquidityFee * arg1 / 100 > -1 * stor112 / totalSupply * _taxFee * arg1 / 100:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((-1 * stor112 / totalSupply * _taxFee * arg1 / 100) - (stor112 / totalSupply * _liquidityFee * arg1 / 100))
        if stor112 / totalSupply * arg1 / arg1 != stor112 / totalSupply:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not _taxFee * arg1 / 100:
            if not _liquidityFee * arg1 / 100:
                if 0 > stor112 / totalSupply * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (stor112 / totalSupply * arg1)
            if stor112 / totalSupply * _liquidityFee * arg1 / 100 / _liquidityFee * arg1 / 100 != stor112 / totalSupply:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if 0 > stor112 / totalSupply * arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if stor112 / totalSupply * _liquidityFee * arg1 / 100 > stor112 / totalSupply * arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((stor112 / totalSupply * arg1) - (stor112 / totalSupply * _liquidityFee * arg1 / 100))
        if stor112 / totalSupply * _taxFee * arg1 / 100 / _taxFee * arg1 / 100 != stor112 / totalSupply:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not _liquidityFee * arg1 / 100:
            if stor112 / totalSupply * _taxFee * arg1 / 100 > stor112 / totalSupply * arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 > (stor112 / totalSupply * arg1) - (stor112 / totalSupply * _taxFee * arg1 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            return ((stor112 / totalSupply * arg1) - (stor112 / totalSupply * _taxFee * arg1 / 100))
        if stor112 / totalSupply * _liquidityFee * arg1 / 100 / _liquidityFee * arg1 / 100 != stor112 / totalSupply:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if stor112 / totalSupply * _taxFee * arg1 / 100 > stor112 / totalSupply * arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        if stor112 / totalSupply * _liquidityFee * arg1 / 100 > (stor112 / totalSupply * arg1) - (stor112 / totalSupply * _taxFee * arg1 / 100):
            revert with 0, 'SafeMath: subtraction overflow'
        return ((stor112 / totalSupply * arg1) - (stor112 / totalSupply * _taxFee * arg1 / 100) - (stor112 / totalSupply * _liquidityFee * arg1 / 100))
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
            t = stor112
            while idx < stor110.length:
                mem[0] = stor110[idx]
                mem[32] = 103
                if stor103[stor110[idx]] > t:
                    _3026 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3026] = 26
                    mem[_3026 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _3026 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        return 0
                    if stor112 / totalSupply * arg1 / arg1 != stor112 / totalSupply:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3756 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3756] = 30
                    mem[_3756 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor112 / totalSupply * arg1:
                        return (stor112 / totalSupply * arg1)
                    _3857 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3857 + 68] = mem[idx + _3756 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3857 + 68] = mem[_3857 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3857 + -mem[64] + 100
                require idx < stor110.length
                mem[0] = stor110[idx]
                mem[32] = 104
                if stor104[stor110[idx]] > s:
                    _3092 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3092] = 26
                    mem[_3092 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _3092 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        return 0
                    if stor112 / totalSupply * arg1 / arg1 != stor112 / totalSupply:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3860 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3860] = 30
                    mem[_3860 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor112 / totalSupply * arg1:
                        return (stor112 / totalSupply * arg1)
                    _4042 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4042 + 68] = mem[idx + _3860 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4042 + 68] = mem[_4042 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4042 + -mem[64] + 100
                require idx < stor110.length
                mem[0] = stor110[idx]
                mem[32] = 103
                _3052 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3052] = 30
                mem[_3052 + 32] = 'SafeMath: subtraction overflow'
                if stor103[stor110[idx]] > t:
                    _3122 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3122 + 68] = mem[idx + _3052 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3122 + 68] = mem[_3122 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3122 + -mem[64] + 100
                require idx < stor110.length
                mem[0] = stor110[idx]
                mem[32] = 104
                _3377 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3377] = 30
                mem[_3377 + 32] = 'SafeMath: subtraction overflow'
                if stor104[stor110[idx]] <= s:
                    idx = idx + 1
                    s = s - stor104[stor110[idx]]
                    t = t - stor103[stor110[idx]]
                    continue 
                _3489 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3489 + 68] = mem[idx + _3377 + 32]
                    idx = idx + 32
                    continue 
                mem[_3489 + 68] = mem[_3489 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _3489 + -mem[64] + 100
            _2906 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2906] = 26
            mem[_2906 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if t >= stor112 / totalSupply:
                _3174 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3174] = 26
                mem[_3174 + 32] = 'SafeMath: division by zero'
                if not s:
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    return 0
                if t / s * arg1 / arg1 != t / s:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > t / s * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (t / s * arg1)
            _3175 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3175] = 26
            mem[_3175 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if not arg1:
                return 0
            if stor112 / totalSupply * arg1 / arg1 != stor112 / totalSupply:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if 0 > stor112 / totalSupply * arg1:
                revert with 0, 'SafeMath: subtraction overflow'
        else:
            if _liquidityFee * arg1 / arg1 != _liquidityFee:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if _liquidityFee * arg1 / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor112
            while idx < stor110.length:
                mem[0] = stor110[idx]
                mem[32] = 103
                if stor103[stor110[idx]] > t:
                    _3021 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3021] = 26
                    mem[_3021 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _3021 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        if not _liquidityFee * arg1 / 100:
                            return 0
                        if stor112 / totalSupply * _liquidityFee * arg1 / 100 / _liquidityFee * arg1 / 100 != stor112 / totalSupply:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3753 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3753] = 30
                        mem[_3753 + 32] = 'SafeMath: subtraction overflow'
                        _4138 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4138] = 30
                        mem[_4138 + 32] = 'SafeMath: subtraction overflow'
                        if stor112 / totalSupply * _liquidityFee * arg1 / 100 <= 0:
                            return 0
                        _4430 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4430 + 68] = mem[idx + _4138 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4430 + 68] = mem[_4430 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4430 + -mem[64] + 100
                    if stor112 / totalSupply * arg1 / arg1 != stor112 / totalSupply:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not _liquidityFee * arg1 / 100:
                        _3752 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3752] = 30
                        mem[_3752 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor112 / totalSupply * arg1:
                            return (stor112 / totalSupply * arg1)
                        _3852 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3852 + 68] = mem[idx + _3752 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3852 + 68] = mem[_3852 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3852 + -mem[64] + 100
                    if stor112 / totalSupply * _liquidityFee * arg1 / 100 / _liquidityFee * arg1 / 100 != stor112 / totalSupply:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3782 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3782] = 30
                    mem[_3782 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor112 / totalSupply * arg1:
                        _3935 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3935 + 68] = mem[idx + _3782 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3935 + 68] = mem[_3935 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3935 + -mem[64] + 100
                    _4276 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4276] = 30
                    mem[_4276 + 32] = 'SafeMath: subtraction overflow'
                    if stor112 / totalSupply * _liquidityFee * arg1 / 100 <= stor112 / totalSupply * arg1:
                        return (stor112 / totalSupply * arg1)
                    _4557 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4557 + 68] = mem[idx + _4276 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4557 + 68] = mem[_4557 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4557 + -mem[64] + 100
                require idx < stor110.length
                mem[0] = stor110[idx]
                mem[32] = 104
                if stor104[stor110[idx]] <= s:
                    require idx < stor110.length
                    mem[0] = stor110[idx]
                    mem[32] = 103
                    _3049 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3049] = 30
                    mem[_3049 + 32] = 'SafeMath: subtraction overflow'
                    if stor103[stor110[idx]] > t:
                        _3118 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3118 + 68] = mem[idx + _3049 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3118 + 68] = mem[_3118 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3118 + -mem[64] + 100
                    require idx < stor110.length
                    mem[0] = stor110[idx]
                    mem[32] = 104
                    _3370 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3370] = 30
                    mem[_3370 + 32] = 'SafeMath: subtraction overflow'
                    if stor104[stor110[idx]] <= s:
                        idx = idx + 1
                        s = s - stor104[stor110[idx]]
                        t = t - stor103[stor110[idx]]
                        continue 
                    _3481 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3481 + 68] = mem[idx + _3370 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3481 + 68] = mem[_3481 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3481 + -mem[64] + 100
                _3087 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3087] = 26
                mem[_3087 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _3087 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not _liquidityFee * arg1 / 100:
                        return 0
                    if stor112 / totalSupply * _liquidityFee * arg1 / 100 / _liquidityFee * arg1 / 100 != stor112 / totalSupply:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3856 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3856] = 30
                    mem[_3856 + 32] = 'SafeMath: subtraction overflow'
                    _4437 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4437] = 30
                    mem[_4437 + 32] = 'SafeMath: subtraction overflow'
                    if stor112 / totalSupply * _liquidityFee * arg1 / 100 <= 0:
                        return 0
                    _4714 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4714 + 68] = mem[idx + _4437 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4714 + 68] = mem[_4714 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4714 + -mem[64] + 100
                if stor112 / totalSupply * arg1 / arg1 != stor112 / totalSupply:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not _liquidityFee * arg1 / 100:
                    _3855 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3855] = 30
                    mem[_3855 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor112 / totalSupply * arg1:
                        return (stor112 / totalSupply * arg1)
                    _4035 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4035 + 68] = mem[idx + _3855 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4035 + 68] = mem[_4035 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4035 + -mem[64] + 100
                if stor112 / totalSupply * _liquidityFee * arg1 / 100 / _liquidityFee * arg1 / 100 != stor112 / totalSupply:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3938 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3938] = 30
                mem[_3938 + 32] = 'SafeMath: subtraction overflow'
                if 0 > stor112 / totalSupply * arg1:
                    _4139 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4139 + 68] = mem[idx + _3938 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4139 + 68] = mem[_4139 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4139 + -mem[64] + 100
                _4560 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4560] = 30
                mem[_4560 + 32] = 'SafeMath: subtraction overflow'
                if stor112 / totalSupply * _liquidityFee * arg1 / 100 <= stor112 / totalSupply * arg1:
                    return (stor112 / totalSupply * arg1)
                _4864 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4864 + 68] = mem[idx + _4560 + 32]
                    idx = idx + 32
                    continue 
                mem[_4864 + 68] = mem[_4864 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4864 + -mem[64] + 100
            _2899 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2899] = 26
            mem[_2899 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if t >= stor112 / totalSupply:
                _3167 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3167] = 26
                mem[_3167 + 32] = 'SafeMath: division by zero'
                if not s:
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if _liquidityFee * arg1 / 100:
                        if t / s * _liquidityFee * arg1 / 100 / _liquidityFee * arg1 / 100 != t / s:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if t / s * _liquidityFee * arg1 / 100 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            return 0
                    else:
                        return 0
                if t / s * arg1 / arg1 != t / s:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not _liquidityFee * arg1 / 100:
                    if 0 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    if t / s * _liquidityFee * arg1 / 100 / _liquidityFee * arg1 / 100 != t / s:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 0 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if t / s * _liquidityFee * arg1 / 100 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                return (t / s * arg1)
            _3168 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3168] = 26
            mem[_3168 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if not arg1:
                if _liquidityFee * arg1 / 100:
                    if stor112 / totalSupply * _liquidityFee * arg1 / 100 / _liquidityFee * arg1 / 100 != stor112 / totalSupply:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if stor112 / totalSupply * _liquidityFee * arg1 / 100 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        return 0
                else:
                    return 0
            if stor112 / totalSupply * arg1 / arg1 != stor112 / totalSupply:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not _liquidityFee * arg1 / 100:
                if 0 > stor112 / totalSupply * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
            else:
                if stor112 / totalSupply * _liquidityFee * arg1 / 100 / _liquidityFee * arg1 / 100 != stor112 / totalSupply:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > stor112 / totalSupply * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if stor112 / totalSupply * _liquidityFee * arg1 / 100 > stor112 / totalSupply * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
    else:
        if _taxFee * arg1 / arg1 != _taxFee:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if not arg1:
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if _taxFee * arg1 / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if 0 > arg1 - (_taxFee * arg1 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor112
            while idx < stor110.length:
                mem[0] = stor110[idx]
                mem[32] = 103
                if stor103[stor110[idx]] > t:
                    _3016 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3016] = 26
                    mem[_3016 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _3016 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        if not _taxFee * arg1 / 100:
                            return 0
                        if stor112 / totalSupply * _taxFee * arg1 / 100 / _taxFee * arg1 / 100 != stor112 / totalSupply:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3751 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3751] = 30
                        mem[_3751 + 32] = 'SafeMath: subtraction overflow'
                        if stor112 / totalSupply * _taxFee * arg1 / 100 > 0:
                            _3843 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3843 + 68] = mem[idx + _3751 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3843 + 68] = mem[_3843 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3843 + -mem[64] + 100
                        _4126 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4126] = 30
                        mem[_4126 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * stor112 / totalSupply * _taxFee * arg1 / 100:
                            return 0
                        _4413 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4413 + 68] = mem[idx + _4126 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4413 + 68] = mem[_4413 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4413 + -mem[64] + 100
                    if stor112 / totalSupply * arg1 / arg1 != stor112 / totalSupply:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not _taxFee * arg1 / 100:
                        _3750 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3750] = 30
                        mem[_3750 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor112 / totalSupply * arg1:
                            return (stor112 / totalSupply * arg1)
                        _3840 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3840 + 68] = mem[idx + _3750 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3840 + 68] = mem[_3840 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3840 + -mem[64] + 100
                    if stor112 / totalSupply * _taxFee * arg1 / 100 / _taxFee * arg1 / 100 != stor112 / totalSupply:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3780 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3780] = 30
                    mem[_3780 + 32] = 'SafeMath: subtraction overflow'
                    if stor112 / totalSupply * _taxFee * arg1 / 100 > stor112 / totalSupply * arg1:
                        _3925 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3925 + 68] = mem[idx + _3780 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3925 + 68] = mem[_3925 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3925 + -mem[64] + 100
                    _4262 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4262] = 30
                    mem[_4262 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (stor112 / totalSupply * arg1) - (stor112 / totalSupply * _taxFee * arg1 / 100):
                        return (stor112 / totalSupply * arg1)
                    _4545 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4545 + 68] = mem[idx + _4262 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4545 + 68] = mem[_4545 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4545 + -mem[64] + 100
                require idx < stor110.length
                mem[0] = stor110[idx]
                mem[32] = 104
                if stor104[stor110[idx]] <= s:
                    require idx < stor110.length
                    mem[0] = stor110[idx]
                    mem[32] = 103
                    _3046 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3046] = 30
                    mem[_3046 + 32] = 'SafeMath: subtraction overflow'
                    if stor103[stor110[idx]] > t:
                        _3114 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3114 + 68] = mem[idx + _3046 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3114 + 68] = mem[_3114 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3114 + -mem[64] + 100
                    require idx < stor110.length
                    mem[0] = stor110[idx]
                    mem[32] = 104
                    _3363 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3363] = 30
                    mem[_3363 + 32] = 'SafeMath: subtraction overflow'
                    if stor104[stor110[idx]] <= s:
                        idx = idx + 1
                        s = s - stor104[stor110[idx]]
                        t = t - stor103[stor110[idx]]
                        continue 
                    _3473 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3473 + 68] = mem[idx + _3363 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3473 + 68] = mem[_3473 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3473 + -mem[64] + 100
                _3082 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3082] = 26
                mem[_3082 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _3082 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not _taxFee * arg1 / 100:
                        return 0
                    if stor112 / totalSupply * _taxFee * arg1 / 100 / _taxFee * arg1 / 100 != stor112 / totalSupply:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3847 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3847] = 30
                    mem[_3847 + 32] = 'SafeMath: subtraction overflow'
                    if stor112 / totalSupply * _taxFee * arg1 / 100 > 0:
                        _4026 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4026 + 68] = mem[idx + _3847 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4026 + 68] = mem[_4026 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4026 + -mem[64] + 100
                    _4420 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4420] = 30
                    mem[_4420 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * stor112 / totalSupply * _taxFee * arg1 / 100:
                        return 0
                    _4699 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4699 + 68] = mem[idx + _4420 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4699 + 68] = mem[_4699 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4699 + -mem[64] + 100
                if stor112 / totalSupply * arg1 / arg1 != stor112 / totalSupply:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not _taxFee * arg1 / 100:
                    _3846 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3846] = 30
                    mem[_3846 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor112 / totalSupply * arg1:
                        return (stor112 / totalSupply * arg1)
                    _4023 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4023 + 68] = mem[idx + _3846 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4023 + 68] = mem[_4023 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4023 + -mem[64] + 100
                if stor112 / totalSupply * _taxFee * arg1 / 100 / _taxFee * arg1 / 100 != stor112 / totalSupply:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3928 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3928] = 30
                mem[_3928 + 32] = 'SafeMath: subtraction overflow'
                if stor112 / totalSupply * _taxFee * arg1 / 100 > stor112 / totalSupply * arg1:
                    _4129 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4129 + 68] = mem[idx + _3928 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4129 + 68] = mem[_4129 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4129 + -mem[64] + 100
                _4548 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4548] = 30
                mem[_4548 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (stor112 / totalSupply * arg1) - (stor112 / totalSupply * _taxFee * arg1 / 100):
                    return (stor112 / totalSupply * arg1)
                _4850 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4850 + 68] = mem[idx + _4548 + 32]
                    idx = idx + 32
                    continue 
                mem[_4850 + 68] = mem[_4850 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4850 + -mem[64] + 100
            _2892 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2892] = 26
            mem[_2892 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if t >= stor112 / totalSupply:
                _3160 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3160] = 26
                mem[_3160 + 32] = 'SafeMath: division by zero'
                if not s:
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if _taxFee * arg1 / 100:
                        if t / s * _taxFee * arg1 / 100 / _taxFee * arg1 / 100 != t / s:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if t / s * _taxFee * arg1 / 100 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * t / s * _taxFee * arg1 / 100:
                            revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            return 0
                    else:
                        return 0
                if t / s * arg1 / arg1 != t / s:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not _taxFee * arg1 / 100:
                    if 0 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    if t / s * _taxFee * arg1 / 100 / _taxFee * arg1 / 100 != t / s:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if t / s * _taxFee * arg1 / 100 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (t / s * arg1) - (t / s * _taxFee * arg1 / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
                return (t / s * arg1)
            _3161 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3161] = 26
            mem[_3161 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if not arg1:
                if _taxFee * arg1 / 100:
                    if stor112 / totalSupply * _taxFee * arg1 / 100 / _taxFee * arg1 / 100 != stor112 / totalSupply:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if stor112 / totalSupply * _taxFee * arg1 / 100 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > -1 * stor112 / totalSupply * _taxFee * arg1 / 100:
                        revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        return 0
                else:
                    return 0
            if stor112 / totalSupply * arg1 / arg1 != stor112 / totalSupply:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not _taxFee * arg1 / 100:
                if 0 > stor112 / totalSupply * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
            else:
                if stor112 / totalSupply * _taxFee * arg1 / 100 / _taxFee * arg1 / 100 != stor112 / totalSupply:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if stor112 / totalSupply * _taxFee * arg1 / 100 > stor112 / totalSupply * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (stor112 / totalSupply * arg1) - (stor112 / totalSupply * _taxFee * arg1 / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
        else:
            if _liquidityFee * arg1 / arg1 != _liquidityFee:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if _taxFee * arg1 / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if _liquidityFee * arg1 / 100 > arg1 - (_taxFee * arg1 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor112
            while idx < stor110.length:
                mem[0] = stor110[idx]
                mem[32] = 103
                if stor103[stor110[idx]] > t:
                    _3011 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3011] = 26
                    mem[_3011 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _3011 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        if not _taxFee * arg1 / 100:
                            if not _liquidityFee * arg1 / 100:
                                return 0
                            if stor112 / totalSupply * _liquidityFee * arg1 / 100 / _liquidityFee * arg1 / 100 != stor112 / totalSupply:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _3747 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3747] = 30
                            mem[_3747 + 32] = 'SafeMath: subtraction overflow'
                            _4110 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4110] = 30
                            mem[_4110 + 32] = 'SafeMath: subtraction overflow'
                            if stor112 / totalSupply * _liquidityFee * arg1 / 100 <= 0:
                                return 0
                            _4393 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4393 + 68] = mem[idx + _4110 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4393 + 68] = mem[_4393 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _4393 + -mem[64] + 100
                        if stor112 / totalSupply * _taxFee * arg1 / 100 / _taxFee * arg1 / 100 != stor112 / totalSupply:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not _liquidityFee * arg1 / 100:
                            _3746 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3746] = 30
                            mem[_3746 + 32] = 'SafeMath: subtraction overflow'
                            if stor112 / totalSupply * _taxFee * arg1 / 100 > 0:
                                _3832 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _3832 + 68] = mem[idx + _3746 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3832 + 68] = mem[_3832 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _3832 + -mem[64] + 100
                            _4107 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4107] = 30
                            mem[_4107 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * stor112 / totalSupply * _taxFee * arg1 / 100:
                                return 0
                            _4390 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4390 + 68] = mem[idx + _4107 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4390 + 68] = mem[_4390 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _4390 + -mem[64] + 100
                        if stor112 / totalSupply * _liquidityFee * arg1 / 100 / _liquidityFee * arg1 / 100 != stor112 / totalSupply:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3774 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3774] = 30
                        mem[_3774 + 32] = 'SafeMath: subtraction overflow'
                        if stor112 / totalSupply * _taxFee * arg1 / 100 > 0:
                            _3917 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3917 + 68] = mem[idx + _3774 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3917 + 68] = mem[_3917 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3917 + -mem[64] + 100
                        _4240 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4240] = 30
                        mem[_4240 + 32] = 'SafeMath: subtraction overflow'
                        if stor112 / totalSupply * _liquidityFee * arg1 / 100 <= -1 * stor112 / totalSupply * _taxFee * arg1 / 100:
                            return 0
                        _4524 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4524 + 68] = mem[idx + _4240 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4524 + 68] = mem[_4524 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4524 + -mem[64] + 100
                    if stor112 / totalSupply * arg1 / arg1 != stor112 / totalSupply:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not _taxFee * arg1 / 100:
                        if not _liquidityFee * arg1 / 100:
                            _3745 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3745] = 30
                            mem[_3745 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor112 / totalSupply * arg1:
                                return (stor112 / totalSupply * arg1)
                            _3829 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3829 + 68] = mem[idx + _3745 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3829 + 68] = mem[_3829 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3829 + -mem[64] + 100
                        if stor112 / totalSupply * _liquidityFee * arg1 / 100 / _liquidityFee * arg1 / 100 != stor112 / totalSupply:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3773 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3773] = 30
                        mem[_3773 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor112 / totalSupply * arg1:
                            _3914 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3914 + 68] = mem[idx + _3773 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3914 + 68] = mem[_3914 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3914 + -mem[64] + 100
                        _4236 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4236] = 30
                        mem[_4236 + 32] = 'SafeMath: subtraction overflow'
                        if stor112 / totalSupply * _liquidityFee * arg1 / 100 <= stor112 / totalSupply * arg1:
                            return (stor112 / totalSupply * arg1)
                        _4521 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4521 + 68] = mem[idx + _4236 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4521 + 68] = mem[_4521 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4521 + -mem[64] + 100
                    if stor112 / totalSupply * _taxFee * arg1 / 100 / _taxFee * arg1 / 100 != stor112 / totalSupply:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not _liquidityFee * arg1 / 100:
                        _3772 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3772] = 30
                        mem[_3772 + 32] = 'SafeMath: subtraction overflow'
                        if stor112 / totalSupply * _taxFee * arg1 / 100 > stor112 / totalSupply * arg1:
                            _3911 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3911 + 68] = mem[idx + _3772 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3911 + 68] = mem[_3911 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3911 + -mem[64] + 100
                        _4233 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4233] = 30
                        mem[_4233 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (stor112 / totalSupply * arg1) - (stor112 / totalSupply * _taxFee * arg1 / 100):
                            return (stor112 / totalSupply * arg1)
                        _4518 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4518 + 68] = mem[idx + _4233 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4518 + 68] = mem[_4518 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4518 + -mem[64] + 100
                    if stor112 / totalSupply * _liquidityFee * arg1 / 100 / _liquidityFee * arg1 / 100 != stor112 / totalSupply:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3828 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3828] = 30
                    mem[_3828 + 32] = 'SafeMath: subtraction overflow'
                    if stor112 / totalSupply * _taxFee * arg1 / 100 > stor112 / totalSupply * arg1:
                        _4003 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4003 + 68] = mem[idx + _3828 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4003 + 68] = mem[_4003 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4003 + -mem[64] + 100
                    _4384 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4384] = 30
                    mem[_4384 + 32] = 'SafeMath: subtraction overflow'
                    if stor112 / totalSupply * _liquidityFee * arg1 / 100 <= (stor112 / totalSupply * arg1) - (stor112 / totalSupply * _taxFee * arg1 / 100):
                        return (stor112 / totalSupply * arg1)
                    _4666 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4666 + 68] = mem[idx + _4384 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4666 + 68] = mem[_4666 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4666 + -mem[64] + 100
                require idx < stor110.length
                mem[0] = stor110[idx]
                mem[32] = 104
                if stor104[stor110[idx]] <= s:
                    require idx < stor110.length
                    mem[0] = stor110[idx]
                    mem[32] = 103
                    _3043 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3043] = 30
                    mem[_3043 + 32] = 'SafeMath: subtraction overflow'
                    if stor103[stor110[idx]] > t:
                        _3110 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3110 + 68] = mem[idx + _3043 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3110 + 68] = mem[_3110 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3110 + -mem[64] + 100
                    require idx < stor110.length
                    mem[0] = stor110[idx]
                    mem[32] = 104
                    _3356 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3356] = 30
                    mem[_3356 + 32] = 'SafeMath: subtraction overflow'
                    if stor104[stor110[idx]] <= s:
                        idx = idx + 1
                        s = s - stor104[stor110[idx]]
                        t = t - stor103[stor110[idx]]
                        continue 
                    _3465 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3465 + 68] = mem[idx + _3356 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3465 + 68] = mem[_3465 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3465 + -mem[64] + 100
                _3077 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3077] = 26
                mem[_3077 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _3077 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not _taxFee * arg1 / 100:
                        if not _liquidityFee * arg1 / 100:
                            return 0
                        if stor112 / totalSupply * _liquidityFee * arg1 / 100 / _liquidityFee * arg1 / 100 != stor112 / totalSupply:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3839 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3839] = 30
                        mem[_3839 + 32] = 'SafeMath: subtraction overflow'
                        _4405 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4405] = 30
                        mem[_4405 + 32] = 'SafeMath: subtraction overflow'
                        if stor112 / totalSupply * _liquidityFee * arg1 / 100 <= 0:
                            return 0
                        _4680 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4680 + 68] = mem[idx + _4405 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4680 + 68] = mem[_4680 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4680 + -mem[64] + 100
                    if stor112 / totalSupply * _taxFee * arg1 / 100 / _taxFee * arg1 / 100 != stor112 / totalSupply:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not _liquidityFee * arg1 / 100:
                        _3838 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3838] = 30
                        mem[_3838 + 32] = 'SafeMath: subtraction overflow'
                        if stor112 / totalSupply * _taxFee * arg1 / 100 > 0:
                            _4013 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4013 + 68] = mem[idx + _3838 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4013 + 68] = mem[_4013 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _4013 + -mem[64] + 100
                        _4402 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4402] = 30
                        mem[_4402 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * stor112 / totalSupply * _taxFee * arg1 / 100:
                            return 0
                        _4677 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4677 + 68] = mem[idx + _4402 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4677 + 68] = mem[_4677 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4677 + -mem[64] + 100
                    if stor112 / totalSupply * _liquidityFee * arg1 / 100 / _liquidityFee * arg1 / 100 != stor112 / totalSupply:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3922 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3922] = 30
                    mem[_3922 + 32] = 'SafeMath: subtraction overflow'
                    if stor112 / totalSupply * _taxFee * arg1 / 100 > 0:
                        _4117 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4117 + 68] = mem[idx + _3922 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4117 + 68] = mem[_4117 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4117 + -mem[64] + 100
                    _4535 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4535] = 30
                    mem[_4535 + 32] = 'SafeMath: subtraction overflow'
                    if stor112 / totalSupply * _liquidityFee * arg1 / 100 <= -1 * stor112 / totalSupply * _taxFee * arg1 / 100:
                        return 0
                    _4834 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4834 + 68] = mem[idx + _4535 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4834 + 68] = mem[_4834 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4834 + -mem[64] + 100
                if stor112 / totalSupply * arg1 / arg1 != stor112 / totalSupply:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not _taxFee * arg1 / 100:
                    if not _liquidityFee * arg1 / 100:
                        _3837 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3837] = 30
                        mem[_3837 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor112 / totalSupply * arg1:
                            return (stor112 / totalSupply * arg1)
                        _4010 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4010 + 68] = mem[idx + _3837 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4010 + 68] = mem[_4010 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4010 + -mem[64] + 100
                    if stor112 / totalSupply * _liquidityFee * arg1 / 100 / _liquidityFee * arg1 / 100 != stor112 / totalSupply:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3921 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3921] = 30
                    mem[_3921 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor112 / totalSupply * arg1:
                        _4114 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4114 + 68] = mem[idx + _3921 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4114 + 68] = mem[_4114 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4114 + -mem[64] + 100
                    _4531 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4531] = 30
                    mem[_4531 + 32] = 'SafeMath: subtraction overflow'
                    if stor112 / totalSupply * _liquidityFee * arg1 / 100 <= stor112 / totalSupply * arg1:
                        return (stor112 / totalSupply * arg1)
                    _4831 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4831 + 68] = mem[idx + _4531 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4831 + 68] = mem[_4831 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4831 + -mem[64] + 100
                if stor112 / totalSupply * _taxFee * arg1 / 100 / _taxFee * arg1 / 100 != stor112 / totalSupply:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not _liquidityFee * arg1 / 100:
                    _3920 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3920] = 30
                    mem[_3920 + 32] = 'SafeMath: subtraction overflow'
                    if stor112 / totalSupply * _taxFee * arg1 / 100 > stor112 / totalSupply * arg1:
                        _4111 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4111 + 68] = mem[idx + _3920 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4111 + 68] = mem[_4111 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4111 + -mem[64] + 100
                    _4528 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4528] = 30
                    mem[_4528 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (stor112 / totalSupply * arg1) - (stor112 / totalSupply * _taxFee * arg1 / 100):
                        return (stor112 / totalSupply * arg1)
                    _4828 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4828 + 68] = mem[idx + _4528 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4828 + 68] = mem[_4828 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4828 + -mem[64] + 100
                if stor112 / totalSupply * _liquidityFee * arg1 / 100 / _liquidityFee * arg1 / 100 != stor112 / totalSupply:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _4009 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4009] = 30
                mem[_4009 + 32] = 'SafeMath: subtraction overflow'
                if stor112 / totalSupply * _taxFee * arg1 / 100 > stor112 / totalSupply * arg1:
                    _4244 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4244 + 68] = mem[idx + _4009 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4244 + 68] = mem[_4244 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4244 + -mem[64] + 100
                _4671 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4671] = 30
                mem[_4671 + 32] = 'SafeMath: subtraction overflow'
                if stor112 / totalSupply * _liquidityFee * arg1 / 100 <= (stor112 / totalSupply * arg1) - (stor112 / totalSupply * _taxFee * arg1 / 100):
                    return (stor112 / totalSupply * arg1)
                _4964 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4964 + 68] = mem[idx + _4671 + 32]
                    idx = idx + 32
                    continue 
                mem[_4964 + 68] = mem[_4964 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4964 + -mem[64] + 100
            _2885 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2885] = 26
            mem[_2885 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if t >= stor112 / totalSupply:
                _3153 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3153] = 26
                mem[_3153 + 32] = 'SafeMath: division by zero'
                if not s:
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not _taxFee * arg1 / 100:
                        if _liquidityFee * arg1 / 100:
                            if t / s * _liquidityFee * arg1 / 100 / _liquidityFee * arg1 / 100 != t / s:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if t / s * _liquidityFee * arg1 / 100 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if t / s * _taxFee * arg1 / 100 / _taxFee * arg1 / 100 != t / s:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not _liquidityFee * arg1 / 100:
                            if t / s * _taxFee * arg1 / 100 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > -1 * t / s * _taxFee * arg1 / 100:
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if t / s * _liquidityFee * arg1 / 100 / _liquidityFee * arg1 / 100 != t / s:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if t / s * _taxFee * arg1 / 100 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if t / s * _liquidityFee * arg1 / 100 > -1 * t / s * _taxFee * arg1 / 100:
                                revert with 0, 'SafeMath: subtraction overflow'
                    return 0
                if t / s * arg1 / arg1 != t / s:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not _taxFee * arg1 / 100:
                    if not _liquidityFee * arg1 / 100:
                        if 0 > t / s * arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if t / s * _liquidityFee * arg1 / 100 / _liquidityFee * arg1 / 100 != t / s:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if 0 > t / s * arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if t / s * _liquidityFee * arg1 / 100 > t / s * arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                else:
                    if t / s * _taxFee * arg1 / 100 / _taxFee * arg1 / 100 != t / s:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not _liquidityFee * arg1 / 100:
                        if t / s * _taxFee * arg1 / 100 > t / s * arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > (t / s * arg1) - (t / s * _taxFee * arg1 / 100):
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if t / s * _liquidityFee * arg1 / 100 / _liquidityFee * arg1 / 100 != t / s:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if t / s * _taxFee * arg1 / 100 > t / s * arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if t / s * _liquidityFee * arg1 / 100 > (t / s * arg1) - (t / s * _taxFee * arg1 / 100):
                            revert with 0, 'SafeMath: subtraction overflow'
                return (t / s * arg1)
            _3154 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3154] = 26
            mem[_3154 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if not arg1:
                if not _taxFee * arg1 / 100:
                    if _liquidityFee * arg1 / 100:
                        if stor112 / totalSupply * _liquidityFee * arg1 / 100 / _liquidityFee * arg1 / 100 != stor112 / totalSupply:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if stor112 / totalSupply * _liquidityFee * arg1 / 100 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                else:
                    if stor112 / totalSupply * _taxFee * arg1 / 100 / _taxFee * arg1 / 100 != stor112 / totalSupply:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not _liquidityFee * arg1 / 100:
                        if stor112 / totalSupply * _taxFee * arg1 / 100 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * stor112 / totalSupply * _taxFee * arg1 / 100:
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if stor112 / totalSupply * _liquidityFee * arg1 / 100 / _liquidityFee * arg1 / 100 != stor112 / totalSupply:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if stor112 / totalSupply * _taxFee * arg1 / 100 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if stor112 / totalSupply * _liquidityFee * arg1 / 100 > -1 * stor112 / totalSupply * _taxFee * arg1 / 100:
                            revert with 0, 'SafeMath: subtraction overflow'
                return 0
            if stor112 / totalSupply * arg1 / arg1 != stor112 / totalSupply:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not _taxFee * arg1 / 100:
                if not _liquidityFee * arg1 / 100:
                    if 0 > stor112 / totalSupply * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    if stor112 / totalSupply * _liquidityFee * arg1 / 100 / _liquidityFee * arg1 / 100 != stor112 / totalSupply:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 0 > stor112 / totalSupply * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if stor112 / totalSupply * _liquidityFee * arg1 / 100 > stor112 / totalSupply * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
            else:
                if stor112 / totalSupply * _taxFee * arg1 / 100 / _taxFee * arg1 / 100 != stor112 / totalSupply:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not _liquidityFee * arg1 / 100:
                    if stor112 / totalSupply * _taxFee * arg1 / 100 > stor112 / totalSupply * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (stor112 / totalSupply * arg1) - (stor112 / totalSupply * _taxFee * arg1 / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    if stor112 / totalSupply * _liquidityFee * arg1 / 100 / _liquidityFee * arg1 / 100 != stor112 / totalSupply:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if stor112 / totalSupply * _taxFee * arg1 / 100 > stor112 / totalSupply * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if stor112 / totalSupply * _liquidityFee * arg1 / 100 > (stor112 / totalSupply * arg1) - (stor112 / totalSupply * _taxFee * arg1 / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
    return (stor112 / totalSupply * arg1)
}



}
