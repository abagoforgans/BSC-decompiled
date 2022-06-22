contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
address stor7;
uint256 unlockTime;
mapping of uint8 stor11;
mapping of uint8 stor12;
mapping of uint8 stor13;
mapping of uint8 stor14;
uint256 buybackLimit;
uint256 buybackDivisor;
uint256 numTokensSellDivisor;
uint256 sub_3ed608ec;
uint256 sub_cfb0059f;
uint8 initialDistributionFinished;
uint8 swapAndLiquifyEnabled; offset 8
uint8 buyBackEnabled; offset 16
address marketingAddress; offset 24
uint256 stor20; offset 16
uint256 stor20; offset 8
address uniswapV2RouterAddress;
address uniswapV2PairAddress;
address uniswapV2PairAddress;
address sub_07ec7b85Address;
uint256 sub_86f2973c;
uint256 sub_be60dbdf;
uint256 sub_d79579f0;
uint256 sub_b7368a82;
address cakeAddress;
address stor30;
address busdAddress;
address lpAddress;
address lpContractAddress;
address deadAddress;
address distributorAddress;
uint256 sub_60e71962;

function name() {
    return name[0 len name.length]
}

function sub_07ec7b85(?) {
    return sub_07ec7b85Address
}

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function totalSupply() {
    return totalSupply
}

function deadAddress() {
    return deadAddress
}

function uniswapV2PairAddress() {
    return uniswapV2PairAddress
}

function lp() {
    return lpAddress
}

function decimals() {
    return decimals
}

function sub_3ed608ec(?) {
    return sub_3ed608ec
}

function isDividendExempt(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor14[arg1])
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function swapAndLiquifyEnabled() {
    return bool(swapAndLiquifyEnabled)
}

function cakeAddress() {
    return cakeAddress
}

function getUnlockTime() {
    return unlockTime
}

function buyBackEnabled() {
    return bool(buyBackEnabled)
}

function sub_60e71962(?) {
    return sub_60e71962
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function busdAddress() {
    return busdAddress
}

function buybackLimit() {
    return buybackLimit
}

function sub_86f2973c(?) {
    return sub_86f2973c
}

function lpContract() {
    return lpContractAddress
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function marketingAddress() {
    return marketingAddress
}

function sub_b7368a82(?) {
    return sub_b7368a82
}

function sub_be60dbdf(?) {
    return sub_be60dbdf
}

function distributor() {
    return distributorAddress
}

function sub_cfb0059f(?) {
    return sub_cfb0059f
}

function numTokensSellDivisor() {
    return numTokensSellDivisor
}

function initialDistributionFinished() {
    return bool(initialDistributionFinished)
}

function sub_d79579f0(?) {
    return sub_d79579f0
}

function buybackDivisor() {
    return buybackDivisor
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
  stop
}

function isOwner() {
    return (msg.sender == owner)
}

function setInitialDistributionFinished() {
    require msg.sender == owner
    initialDistributionFinished = 1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function lock() {
    require msg.sender == owner
    stor7 = owner
    owner = 0
    emit OwnershipRenounced(owner);
}

function sub_5b91fc21(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_b7368a82 = arg1
}

function sub_c97ee18e(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_d79579f0 = arg1
}

function sub_f9e29d73(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_be60dbdf = arg1
}

function setBuyBackLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    buybackLimit = arg1
}

function addLpToken(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor13[address(arg1)] = 1
}

function setBuyBackDivisor(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    buybackDivisor = arg1
}

function excludeAddress(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor11[address(arg1)] = 1
}

function enableTransfer(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor12[address(arg1)] = 1
}

function setnumTokensSellDivisor(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    numTokensSellDivisor = arg1
}

function setBuyBackEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    Mask(240, 0, stor20.field_16) = Mask(240, 0, arg1)
}

function setDistributorSettings(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1 < 250 * 3600
    sub_60e71962 = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setLP(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    lpAddress = arg1
    lpContractAddress = arg1
    stor13[address(arg1)] = 1
    return 0
}

function setSwapAndLiquifyEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    Mask(248, 0, stor20.field_8) = Mask(248, 0, arg1)
    emit SwapEnabled(arg1);
}

function manualSync() {
    require ext_code.size(lpContractAddress)
    call lpContractAddress.sync() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_10eddcfb(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require ext_code.size(distributorAddress)
    call distributorAddress.process(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
}

function burnBNB(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_eff89294(?) {
    require ext_code.size(stor30)
    staticcall stor30.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_56da8752(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require ext_code.size(sub_07ec7b85Address)
    call sub_07ec7b85Address.withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setDistributionCriteria(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require ext_code.size(distributorAddress)
    call distributorAddress.0x2d48e896 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function unlock() {
    if stor7 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x73596f7520646f6ee28099742068617665207065726d697373696f6e20746f20756e6c6f63,
                    mem[201 len 27]
    if block.timestamp <= unlockTime:
        revert with 0, 'Contract is locked until 7 days'
    emit OwnershipTransferred(owner, stor7);
    owner = stor7
}

function burnAutoLP() {
    require msg.sender == owner
    require ext_code.size(uniswapV2PairAddress)
    staticcall uniswapV2PairAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(uniswapV2PairAddress)
    call uniswapV2PairAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not initialDistributionFinished:
        if owner != msg.sender:
            if not stor12[address(msg.sender)]:
                revert with 0, 'initialDistributionLock failed'
    if arg2 >= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] = 0
    else:
        if arg2 > allowance[address(msg.sender)][address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function setIsDividendExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require arg1 != this.address
    require arg1 != uniswapV2PairAddress
    stor14[address(arg1)] = uint8(arg2)
    require ext_code.size(distributorAddress)
    if not arg2:
        call distributorAddress.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
    else:
        call distributorAddress.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3feaac4c(?) {
    require msg.sender == owner
    require ext_code.size(sub_07ec7b85Address)
    staticcall sub_07ec7b85Address.userInfo(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_code.size(sub_07ec7b85Address)
    staticcall sub_07ec7b85Address.getPricePerFullShare() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return sub_86f2973c, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - sub_86f2973c
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

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not initialDistributionFinished:
        if owner != msg.sender:
            if not stor12[address(msg.sender)]:
                revert with 0, 'initialDistributionLock failed'
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

function airDrop(address[] arg1, uint256[] arg2) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        mem[0] = msg.sender
        mem[32] = 11
        if stor11[address(msg.sender)]:
            _158 = mem[64]
            mem[64] = mem[64] + 96
            mem[_158] = 38
            mem[_158 + 32 len 38] = 0x6b45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
            mem[32] = 4
            if cd[((32 * idx) + arg2 + 36)] > balanceOf[address(msg.sender)]:
                _163 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 38
                idx = 0
                while idx < 38:
                    mem[_163 + idx + 68] = mem[_158 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_163 + 100] = mem[_163 + 126 len 6]
                revert with memory
                  from mem[64]
                   len _163 + -mem[64] + 132
            balanceOf[address(msg.sender)] -= cd[((32 * idx) + arg2 + 36)]
            if balanceOf[address(cd[((32 * idx) + arg1 + 36)])] + cd[((32 * idx) + arg2 + 36)] < balanceOf[address(cd[((32 * idx) + arg1 + 36)])]:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = address(cd[((32 * idx) + arg1 + 36)])
            mem[32] = 4
            balanceOf[address(cd[((32 * idx) + arg1 + 36)])] += cd[((32 * idx) + arg2 + 36)]
        else:
            mem[0] = address(cd[((32 * idx) + arg1 + 36)])
            mem[32] = 11
            if stor11[address(cd[((32 * idx) + arg1 + 36)])]:
                _161 = mem[64]
                mem[64] = mem[64] + 96
                mem[_161] = 38
                mem[_161 + 32 len 38] = 0x6b45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                mem[32] = 4
                if cd[((32 * idx) + arg2 + 36)] > balanceOf[address(msg.sender)]:
                    _168 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 38
                    idx = 0
                    while idx < 38:
                        mem[_168 + idx + 68] = mem[_161 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_168 + 100] = mem[_168 + 126 len 6]
                    revert with memory
                      from mem[64]
                       len _168 + -mem[64] + 132
                balanceOf[address(msg.sender)] -= cd[((32 * idx) + arg2 + 36)]
                if balanceOf[address(cd[((32 * idx) + arg1 + 36)])] + cd[((32 * idx) + arg2 + 36)] < balanceOf[address(cd[((32 * idx) + arg1 + 36)])]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = address(cd[((32 * idx) + arg1 + 36)])
                mem[32] = 4
                balanceOf[address(cd[((32 * idx) + arg1 + 36)])] += cd[((32 * idx) + arg2 + 36)]
            else:
                mem[0] = msg.sender
                mem[32] = 13
                if not stor13[address(msg.sender)]:
                    if not cd[((32 * idx) + arg2 + 36)]:
                        _195 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_195] = 26
                        mem[_195 + 32] = 'SafeMath: division by zero'
                        _199 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_199] = 30
                        mem[_199 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > cd[((32 * idx) + arg2 + 36)]:
                            _202 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_202 + idx + 68] = mem[_199 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_202 + 68] = mem[_202 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _202 + -mem[64] + 100
                        _217 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_217] = 38
                        mem[_217 + 32 len 38] = 0x6b45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                        mem[32] = 4
                        if cd[((32 * idx) + arg2 + 36)] > balanceOf[address(msg.sender)]:
                            _233 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 38
                            idx = 0
                            while idx < 38:
                                mem[_233 + idx + 68] = mem[_217 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_233 + 100] = mem[_233 + 126 len 6]
                            revert with memory
                              from mem[64]
                               len _233 + -mem[64] + 132
                        balanceOf[address(msg.sender)] -= cd[((32 * idx) + arg2 + 36)]
                        if balanceOf[address(cd[((32 * idx) + arg1 + 36)])] + cd[((32 * idx) + arg2 + 36)] < balanceOf[address(cd[((32 * idx) + arg1 + 36)])]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(cd[((32 * idx) + arg1 + 36)])] += cd[((32 * idx) + arg2 + 36)]
                        if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = this.address
                        mem[32] = 4
                    else:
                        require cd[((32 * idx) + arg2 + 36)]
                        if cd[((32 * idx) + arg2 + 36)] * sub_3ed608ec / cd[((32 * idx) + arg2 + 36)] != sub_3ed608ec:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _197 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_197] = 26
                        mem[_197 + 32] = 'SafeMath: division by zero'
                        _201 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_201] = 30
                        mem[_201 + 32] = 'SafeMath: subtraction overflow'
                        if cd[((32 * idx) + arg2 + 36)] * sub_3ed608ec / 100 > cd[((32 * idx) + arg2 + 36)]:
                            _209 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_209 + idx + 68] = mem[_201 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_209 + 68] = mem[_209 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _209 + -mem[64] + 100
                        _229 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_229] = 38
                        mem[_229 + 32 len 38] = 0x6b45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                        mem[32] = 4
                        if cd[((32 * idx) + arg2 + 36)] > balanceOf[address(msg.sender)]:
                            _249 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 38
                            idx = 0
                            while idx < 38:
                                mem[_249 + idx + 68] = mem[_229 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_249 + 100] = mem[_249 + 126 len 6]
                            revert with memory
                              from mem[64]
                               len _249 + -mem[64] + 132
                        balanceOf[address(msg.sender)] -= cd[((32 * idx) + arg2 + 36)]
                        if balanceOf[address(cd[((32 * idx) + arg1 + 36)])] + cd[((32 * idx) + arg2 + 36)] - (cd[((32 * idx) + arg2 + 36)] * sub_3ed608ec / 100) < balanceOf[address(cd[((32 * idx) + arg1 + 36)])]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(cd[((32 * idx) + arg1 + 36)])] = balanceOf[address(cd[((32 * idx) + arg1 + 36)])] + cd[((32 * idx) + arg2 + 36)] - (cd[((32 * idx) + arg2 + 36)] * sub_3ed608ec / 100)
                        if balanceOf[address(this.address)] + (cd[((32 * idx) + arg2 + 36)] * sub_3ed608ec / 100) < balanceOf[address(this.address)]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = this.address
                        mem[32] = 4
                        balanceOf[address(this.address)] += cd[((32 * idx) + arg2 + 36)] * sub_3ed608ec / 100
                else:
                    if not cd[((32 * idx) + arg2 + 36)]:
                        _196 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_196] = 26
                        mem[_196 + 32] = 'SafeMath: division by zero'
                        _200 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_200] = 30
                        mem[_200 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > cd[((32 * idx) + arg2 + 36)]:
                            _206 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_206 + idx + 68] = mem[_200 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_206 + 68] = mem[_206 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _206 + -mem[64] + 100
                        _221 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_221] = 38
                        mem[_221 + 32 len 38] = 0x6b45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                        mem[32] = 4
                        if cd[((32 * idx) + arg2 + 36)] > balanceOf[address(msg.sender)]:
                            _240 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 38
                            idx = 0
                            while idx < 38:
                                mem[_240 + idx + 68] = mem[_221 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_240 + 100] = mem[_240 + 126 len 6]
                            revert with memory
                              from mem[64]
                               len _240 + -mem[64] + 132
                        balanceOf[address(msg.sender)] -= cd[((32 * idx) + arg2 + 36)]
                        if balanceOf[address(cd[((32 * idx) + arg1 + 36)])] + cd[((32 * idx) + arg2 + 36)] < balanceOf[address(cd[((32 * idx) + arg1 + 36)])]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(cd[((32 * idx) + arg1 + 36)])] += cd[((32 * idx) + arg2 + 36)]
                        if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = this.address
                        mem[32] = 4
                    else:
                        require cd[((32 * idx) + arg2 + 36)]
                        if cd[((32 * idx) + arg2 + 36)] * sub_cfb0059f / cd[((32 * idx) + arg2 + 36)] != sub_cfb0059f:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _198 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_198] = 26
                        mem[_198 + 32] = 'SafeMath: division by zero'
                        _205 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_205] = 30
                        mem[_205 + 32] = 'SafeMath: subtraction overflow'
                        if cd[((32 * idx) + arg2 + 36)] * sub_cfb0059f / 100 > cd[((32 * idx) + arg2 + 36)]:
                            _213 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_213 + idx + 68] = mem[_205 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_213 + 68] = mem[_213 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _213 + -mem[64] + 100
                        _236 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_236] = 38
                        mem[_236 + 32 len 38] = 0x6b45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                        mem[32] = 4
                        if cd[((32 * idx) + arg2 + 36)] > balanceOf[address(msg.sender)]:
                            _253 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 38
                            idx = 0
                            while idx < 38:
                                mem[_253 + idx + 68] = mem[_236 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_253 + 100] = mem[_253 + 126 len 6]
                            revert with memory
                              from mem[64]
                               len _253 + -mem[64] + 132
                        balanceOf[address(msg.sender)] -= cd[((32 * idx) + arg2 + 36)]
                        if balanceOf[address(cd[((32 * idx) + arg1 + 36)])] + cd[((32 * idx) + arg2 + 36)] - (cd[((32 * idx) + arg2 + 36)] * sub_cfb0059f / 100) < balanceOf[address(cd[((32 * idx) + arg1 + 36)])]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(cd[((32 * idx) + arg1 + 36)])] = balanceOf[address(cd[((32 * idx) + arg1 + 36)])] + cd[((32 * idx) + arg2 + 36)] - (cd[((32 * idx) + arg2 + 36)] * sub_cfb0059f / 100)
                        if balanceOf[address(this.address)] + (cd[((32 * idx) + arg2 + 36)] * sub_cfb0059f / 100) < balanceOf[address(this.address)]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = this.address
                        mem[32] = 4
                        balanceOf[address(this.address)] += cd[((32 * idx) + arg2 + 36)] * sub_cfb0059f / 100
        mem[mem[64]] = cd[((32 * idx) + arg2 + 36)]
        emit Transfer(cd[((32 * idx) + arg2 + 36)], msg.sender, address(cd[((32 * idx) + arg1 + 36)]));
        idx = idx + 1
        continue 
}



}
