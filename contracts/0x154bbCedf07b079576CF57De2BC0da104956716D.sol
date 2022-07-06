contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - deliver(uint256 arg1)
#  - transfer(address arg1, uint256 arg2)
#  - multisend(address[] arg1, uint256[] arg2)
#  - _fallback()
#
const getTime = block.timestamp


address owner;
address stor1;
uint256 unlockTime;
mapping of uint256 stor3;
mapping of uint256 stor4;
mapping of struct allowance;
mapping of uint8 stor6;
mapping of uint8 stor9;
mapping of uint256 sub_ffc8ada6;
mapping of uint256 sub_1e63cade;
mapping of uint256 sub_c8a09a1a;
mapping of uint8 stor13;
array of address stor14;
uint256 totalSupply;
uint256 stor16;
uint256 totalFees;
array of struct stor18;
array of struct stor19;
uint8 decimals;
uint256 sub_92b5d046;
uint256 snipersCaught;
uint256 _taxFee;
uint256 _liquidityFee;
uint256 sub_015205e6;
uint256 sub_b65ac9a5;
uint256 _startTimeForSwap;
uint256 sub_bac96e36;
uint256 _maxWallet;
uint256 _maxTxAmount;
uint256 minimumTokensBeforeSwapAmount;
uint256 launchedAt;
address uniswapV2RouterAddress;
uint8 stor36; offset 160
uint8 swapAndLiquifyEnabled; offset 168
uint8 _hasLiqBeenAdded; offset 184
uint8 sub_f7095945; offset 192
uint16 stor36; offset 184
uint128 stor36; offset 168
address uniswapV2PairAddress;
address sub_5121d342Address;
address buybackAddress;
address devAddress;
address lpAddress;
address stakingAddress;

function sub_015205e6(?) {
    return sub_015205e6
}

function isSniper(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor9[address(arg1)])
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

function sub_1e63cade(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_1e63cade[arg1]
}

function decimals() {
    return decimals
}

function devAddress() {
    return devAddress
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

function _hasLiqBeenAdded() {
    return bool(_hasLiqBeenAdded)
}

function sub_5121d342(?) {
    return sub_5121d342Address
}

function isExcludedFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor6[address(arg1)])
}

function getUnlockTime() {
    return unlockTime
}

function _startTimeForSwap() {
    return _startTimeForSwap
}

function _liquidityFee() {
    return _liquidityFee
}

function _maxTxAmount() {
    return _maxTxAmount
}

function _maxWallet() {
    return _maxWallet
}

function isExcludedFromReward(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor13[address(arg1)])
}

function owner() {
    return owner
}

function sub_92b5d046(?) {
    return sub_92b5d046
}

function lpAddress() {
    return lpAddress
}

function minimumTokensBeforeSwapAmount() {
    return minimumTokensBeforeSwapAmount
}

function sub_b65ac9a5(?) {
    return sub_b65ac9a5
}

function sub_bac96e36(?) {
    return sub_bac96e36
}

function launchedAt() {
    return launchedAt
}

function sub_c8a09a1a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_c8a09a1a[arg1]
}

function buybackAddress() {
    return buybackAddress
}

function stakingAddress() {
    return stakingAddress
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)].field_0
}

function snipersCaught() {
    return snipersCaught
}

function sub_f7095945(?) {
    return bool(sub_f7095945)
}

function sub_ffc8ada6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_ffc8ada6[arg1]
}

function GetSwapMinutes() {
    return (sub_bac96e36 / 60)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit 0x658be007: owner, 0
    owner = 0
}

function launch() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    launchedAt = block.number
    uint16(stor36.field_184) = 257
}

function includeInFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6[address(arg1)] = 0
}

function setMinimumTokensBeforeSwap(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    minimumTokensBeforeSwapAmount = arg1
}

function excludeFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6[address(arg1)] = 1
}

function setDivs(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_015205e6 = arg1
    sub_b65ac9a5 = arg2
}

function setLaunchLiqPair(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uniswapV2PairAddress = arg1
}

function setTaxFeePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= 30:
        revert with 0, 'tax too high'
    _taxFee = arg1
}

function setLiquidityFeePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= 30:
        revert with 0, 'tax too high'
    _liquidityFee = arg1
}

function afterPreSale() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(88, 0, stor36.field_168) = 1
    emit SwapAndLiquifyEnabledUpdated(1);
    _taxFee = 1
    _liquidityFee = 14
    _maxTxAmount = 3000 * 10^18
}

function setSwapAndLiquifyEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(88, 0, stor36.field_168) = Mask(88, 0, arg1)
    emit SwapAndLiquifyEnabledUpdated(arg1);
}

function SetSwapMinutes(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 0x444444444444444444444444444444444444444444444444444444444444444:
        revert with 0, 17
    sub_bac96e36 = 60 * arg1
}

function Sweep() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function lock(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = owner
    owner = 0
    if block.timestamp > !arg1:
        revert with 0, 17
    unlockTime = block.timestamp + arg1
    emit 0x658be007: owner, 0
}

function unlock() {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You don't have permission to unlock'
    if block.timestamp <= unlockTime:
        revert with 0, 'Contract is locked until 7 days'
    emit 0x658be007: owner, stor1
    owner = stor1
}

function removeSniper(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor9[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Account is not a recorded sniper.'
    stor9[address(arg1)] = 0
}

function changeWhaleSettings(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= totalSupply / 1000:
        revert with 0, 'max tx too low'
    if arg2 <= totalSupply / 1000:
        revert with 0, 'max wallet too low'
    _maxWallet = arg2
    _maxTxAmount = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit 0x658be007: owner, arg1
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)].field_0 = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_4a152793(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg3):
        revert with 0, 'cant set dev address 0'
    if not address(arg4):
        revert with 0, 'cant set buyback address 0'
    lpAddress = address(arg1)
    stakingAddress = address(arg2)
    devAddress = address(arg3)
    buybackAddress = address(arg4)
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > allowance[msg.sender][address(arg1)].field_0:
        revert with 0, 32, 37, 0xe045524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if allowance[msg.sender][address(arg1)].field_0 < arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)].field_0 = allowance[msg.sender][address(arg1)].field_0 - arg2
    emit Approval((allowance[msg.sender][address(arg1)].field_0 - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)].field_0 > !arg2:
        revert with 0, 17
    if allowance[msg.sender][address(arg1)].field_0 + arg2 < allowance[msg.sender][address(arg1)].field_0:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)].field_0 = allowance[msg.sender][address(arg1)].field_0 + arg2
    emit Approval((allowance[msg.sender][address(arg1)].field_0 + arg2), msg.sender, arg1);
    return 1
}

function transferForeignToken(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function includeInReward(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor13[address(arg1)]:
        revert with 0, 'Account is not excluded'
    idx = 0
    while idx < stor14.length:
        mem[0] = 14
        if stor14[idx] != arg1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if stor14.length < 1:
            revert with 0, 17
        if stor14.length - 1 >= stor14.length:
            revert with 0, 50
        if idx >= stor14.length:
            revert with 0, 50
        stor14[idx] = stor14[stor14.length]
        stor4[address(arg1)] = 0
        stor13[address(arg1)] = 0
        if not stor14.length:
            revert with 0, 49
        stor14[stor14.length] = 0
        stor14.length--
}

function buyBack() payable {
    require ext_code.size(uniswapV2RouterAddress)
    staticcall uniswapV2RouterAddress.WETH() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[128] = ext_call.return_data[12 len 20]
    mem[160] = this.address
    if block.timestamp > -11:
        revert with 0, 17
    if block.timestamp + 10 < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    mem[ceil32(return_data.size) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = 0
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 356
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(uniswapV2RouterAddress)
    call uniswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, 128, stakingAddress, block.timestamp + 10, 2, mem[ceil32(return_data.size) + 356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function changeRouterVersion(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        require ext_code.size(arg1)
        staticcall arg1.factory() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(arg1)
        staticcall arg1.WETH() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
             gas gas_remaining wei
            args address(this.address), address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    uniswapV2PairAddress = ext_call.return_data[12 len 20]
    uniswapV2RouterAddress = arg1
    return ext_call.return_data[12 len 20]
}

function name() {
    if bool(stor18.length):
        if bool(stor18.length) == uint255(stor18.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor18.length):
            if bool(stor18.length) == uint255(stor18.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor18.length):
                if 31 < uint255(stor18.length) * 0.5:
                    mem[128] = uint256(stor18.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor18.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor18[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor18.length), data=mem[128 len ceil32(uint255(stor18.length) * 0.5)])
                mem[128] = 256 * stor18.length.field_8
        else:
            if bool(stor18.length) == stor18.length.field_1 < 32:
                revert with 0, 34
            if stor18.length.field_1:
                if 31 < stor18.length.field_1:
                    mem[128] = uint256(stor18.field_0)
                    idx = 128
                    s = 0
                    while stor18.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor18[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor18.length), data=mem[128 len ceil32(uint255(stor18.length) * 0.5)])
                mem[128] = 256 * stor18.length.field_8
        mem[ceil32(uint255(stor18.length) * 0.5) + 192 len ceil32(uint255(stor18.length) * 0.5)] = mem[128 len ceil32(uint255(stor18.length) * 0.5)]
        if ceil32(uint255(stor18.length) * 0.5) > uint255(stor18.length) * 0.5:
            mem[ceil32(uint255(stor18.length) * 0.5) + (uint255(stor18.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor18.length), data=mem[128 len ceil32(uint255(stor18.length) * 0.5)], mem[(2 * ceil32(uint255(stor18.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor18.length) * 0.5)]), 
    if bool(stor18.length) == stor18.length.field_1 < 32:
        revert with 0, 34
    if bool(stor18.length):
        if bool(stor18.length) == uint255(stor18.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor18.length):
            if 31 < uint255(stor18.length) * 0.5:
                mem[128] = uint256(stor18.field_0)
                idx = 128
                s = 0
                while (uint255(stor18.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor18[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor18.length % 128, data=mem[128 len ceil32(stor18.length.field_1)])
            mem[128] = 256 * stor18.length.field_8
    else:
        if bool(stor18.length) == stor18.length.field_1 < 32:
            revert with 0, 34
        if stor18.length.field_1:
            if 31 < stor18.length.field_1:
                mem[128] = uint256(stor18.field_0)
                idx = 128
                s = 0
                while stor18.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor18[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor18.length % 128, data=mem[128 len ceil32(stor18.length.field_1)])
            mem[128] = 256 * stor18.length.field_8
    mem[ceil32(stor18.length.field_1) + 192 len ceil32(stor18.length.field_1)] = mem[128 len ceil32(stor18.length.field_1)]
    if ceil32(stor18.length.field_1) > stor18.length.field_1:
        mem[ceil32(stor18.length.field_1) + stor18.length.field_1 + 192] = 0
    return Array(len=stor18.length % 128, data=mem[128 len ceil32(stor18.length.field_1)], mem[(2 * ceil32(stor18.length.field_1)) + 192 len 2 * ceil32(stor18.length.field_1)]), 
}

function symbol() {
    if bool(stor19.length):
        if bool(stor19.length) == uint255(stor19.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor19.length):
            if bool(stor19.length) == uint255(stor19.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor19.length):
                if 31 < uint255(stor19.length) * 0.5:
                    mem[128] = uint256(stor19.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor19.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor19[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor19.length), data=mem[128 len ceil32(uint255(stor19.length) * 0.5)])
                mem[128] = 256 * stor19.length.field_8
        else:
            if bool(stor19.length) == stor19.length.field_1 < 32:
                revert with 0, 34
            if stor19.length.field_1:
                if 31 < stor19.length.field_1:
                    mem[128] = uint256(stor19.field_0)
                    idx = 128
                    s = 0
                    while stor19.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor19[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor19.length), data=mem[128 len ceil32(uint255(stor19.length) * 0.5)])
                mem[128] = 256 * stor19.length.field_8
        mem[ceil32(uint255(stor19.length) * 0.5) + 192 len ceil32(uint255(stor19.length) * 0.5)] = mem[128 len ceil32(uint255(stor19.length) * 0.5)]
        if ceil32(uint255(stor19.length) * 0.5) > uint255(stor19.length) * 0.5:
            mem[ceil32(uint255(stor19.length) * 0.5) + (uint255(stor19.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor19.length), data=mem[128 len ceil32(uint255(stor19.length) * 0.5)], mem[(2 * ceil32(uint255(stor19.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor19.length) * 0.5)]), 
    if bool(stor19.length) == stor19.length.field_1 < 32:
        revert with 0, 34
    if bool(stor19.length):
        if bool(stor19.length) == uint255(stor19.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor19.length):
            if 31 < uint255(stor19.length) * 0.5:
                mem[128] = uint256(stor19.field_0)
                idx = 128
                s = 0
                while (uint255(stor19.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor19[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor19.length % 128, data=mem[128 len ceil32(stor19.length.field_1)])
            mem[128] = 256 * stor19.length.field_8
    else:
        if bool(stor19.length) == stor19.length.field_1 < 32:
            revert with 0, 34
        if stor19.length.field_1:
            if 31 < stor19.length.field_1:
                mem[128] = uint256(stor19.field_0)
                idx = 128
                s = 0
                while stor19.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor19[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor19.length % 128, data=mem[128 len ceil32(stor19.length.field_1)])
            mem[128] = 256 * stor19.length.field_8
    mem[ceil32(stor19.length.field_1) + 192 len ceil32(stor19.length.field_1)] = mem[128 len ceil32(stor19.length.field_1)]
    if ceil32(stor19.length.field_1) > stor19.length.field_1:
        mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 192] = 0
    return Array(len=stor19.length % 128, data=mem[128 len ceil32(stor19.length.field_1)], mem[(2 * ceil32(stor19.length.field_1)) + 192 len 2 * ceil32(stor19.length.field_1)]), 
}

function tokenFromReflection(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if arg1 > stor16:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    idx = 0
    s = totalSupply
    t = stor16
    while idx < stor14.length:
        mem[0] = stor14[idx]
        mem[32] = 3
        if stor3[stor14[idx]] > t:
            _92 = mem[64]
            mem[64] = mem[64] + 64
            mem[_92] = 26
            mem[_92 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                _96 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _96 + 68] = mem[idx + _92 + 32]
                    idx = idx + 32
                    continue 
                mem[_96 + 94] = 0
                revert with memory
                  from mem[64]
                   len _96 + -mem[64] + 100
            _117 = mem[64]
            mem[64] = mem[64] + 64
            mem[_117] = 26
            mem[_117 + 32] = 'SafeMath: division by zero'
            if stor16 / totalSupply:
                return (arg1 / stor16 / totalSupply)
            _126 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _126 + 68] = mem[idx + _117 + 32]
                idx = idx + 32
                continue 
            mem[_126 + 94] = 0
            revert with memory
              from mem[64]
               len _126 + -mem[64] + 100
        if idx >= stor14.length:
            revert with 0, 50
        mem[0] = stor14[idx]
        mem[32] = 4
        if stor4[stor14[idx]] > s:
            _98 = mem[64]
            mem[64] = mem[64] + 64
            mem[_98] = 26
            mem[_98 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                _103 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _103 + 68] = mem[idx + _98 + 32]
                    idx = idx + 32
                    continue 
                mem[_103 + 94] = 0
                revert with memory
                  from mem[64]
                   len _103 + -mem[64] + 100
            _128 = mem[64]
            mem[64] = mem[64] + 64
            mem[_128] = 26
            mem[_128 + 32] = 'SafeMath: division by zero'
            if stor16 / totalSupply:
                return (arg1 / stor16 / totalSupply)
            _133 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _133 + 68] = mem[idx + _128 + 32]
                idx = idx + 32
                continue 
            mem[_133 + 94] = 0
            revert with memory
              from mem[64]
               len _133 + -mem[64] + 100
        if idx >= stor14.length:
            revert with 0, 50
        mem[0] = stor14[idx]
        mem[32] = 3
        _97 = mem[64]
        mem[64] = mem[64] + 64
        mem[_97] = 30
        mem[_97 + 32] = 'SafeMath: subtraction overflow'
        if stor3[stor14[idx]] > t:
            _102 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _102 + 68] = mem[idx + _97 + 32]
                idx = idx + 32
                continue 
            mem[_102 + 98] = 0
            revert with memory
              from mem[64]
               len _102 + -mem[64] + 100
        if t < stor3[stor14[idx]]:
            revert with 0, 17
        if idx >= stor14.length:
            revert with 0, 50
        mem[0] = stor14[idx]
        mem[32] = 4
        _127 = mem[64]
        mem[64] = mem[64] + 64
        mem[_127] = 30
        mem[_127 + 32] = 'SafeMath: subtraction overflow'
        if stor4[stor14[idx]] <= s:
            if s < stor4[stor14[idx]]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s - stor4[stor14[idx]]
            t = t - stor3[stor14[idx]]
            continue 
        _132 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _132 + 68] = mem[idx + _127 + 32]
            idx = idx + 32
            continue 
        mem[_132 + 98] = 0
        revert with memory
          from mem[64]
           len _132 + -mem[64] + 100
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if t >= stor16 / totalSupply:
        if not s:
            revert with 0, 'SafeMath: division by zero', 0
        if not t / s:
            revert with 0, 'SafeMath: division by zero', 0
        return (arg1 / t / s)
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor16 / totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    return (arg1 / stor16 / totalSupply)
}

function balanceOf(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor13[address(arg1)]:
        return stor4[address(arg1)]
    mem[0] = arg1
    mem[32] = 3
    if stor3[address(arg1)] > stor16:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    idx = 0
    s = totalSupply
    t = stor16
    while idx < stor14.length:
        mem[0] = stor14[idx]
        mem[32] = 3
        if stor3[stor14[idx]] > t:
            _97 = mem[64]
            mem[64] = mem[64] + 64
            mem[_97] = 26
            mem[_97 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                _101 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _101 + 68] = mem[idx + _97 + 32]
                    idx = idx + 32
                    continue 
                mem[_101 + 94] = 0
                revert with memory
                  from mem[64]
                   len _101 + -mem[64] + 100
            _122 = mem[64]
            mem[64] = mem[64] + 64
            mem[_122] = 26
            mem[_122 + 32] = 'SafeMath: division by zero'
            if stor16 / totalSupply:
                return (stor3[address(arg1)] / stor16 / totalSupply)
            _131 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _131 + 68] = mem[idx + _122 + 32]
                idx = idx + 32
                continue 
            mem[_131 + 94] = 0
            revert with memory
              from mem[64]
               len _131 + -mem[64] + 100
        if idx >= stor14.length:
            revert with 0, 50
        mem[0] = stor14[idx]
        mem[32] = 4
        if stor4[stor14[idx]] > s:
            _103 = mem[64]
            mem[64] = mem[64] + 64
            mem[_103] = 26
            mem[_103 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                _108 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _108 + 68] = mem[idx + _103 + 32]
                    idx = idx + 32
                    continue 
                mem[_108 + 94] = 0
                revert with memory
                  from mem[64]
                   len _108 + -mem[64] + 100
            _133 = mem[64]
            mem[64] = mem[64] + 64
            mem[_133] = 26
            mem[_133 + 32] = 'SafeMath: division by zero'
            if stor16 / totalSupply:
                return (stor3[address(arg1)] / stor16 / totalSupply)
            _138 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _138 + 68] = mem[idx + _133 + 32]
                idx = idx + 32
                continue 
            mem[_138 + 94] = 0
            revert with memory
              from mem[64]
               len _138 + -mem[64] + 100
        if idx >= stor14.length:
            revert with 0, 50
        mem[0] = stor14[idx]
        mem[32] = 3
        _102 = mem[64]
        mem[64] = mem[64] + 64
        mem[_102] = 30
        mem[_102 + 32] = 'SafeMath: subtraction overflow'
        if stor3[stor14[idx]] > t:
            _107 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _107 + 68] = mem[idx + _102 + 32]
                idx = idx + 32
                continue 
            mem[_107 + 98] = 0
            revert with memory
              from mem[64]
               len _107 + -mem[64] + 100
        if t < stor3[stor14[idx]]:
            revert with 0, 17
        if idx >= stor14.length:
            revert with 0, 50
        mem[0] = stor14[idx]
        mem[32] = 4
        _132 = mem[64]
        mem[64] = mem[64] + 64
        mem[_132] = 30
        mem[_132 + 32] = 'SafeMath: subtraction overflow'
        if stor4[stor14[idx]] <= s:
            if s < stor4[stor14[idx]]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s - stor4[stor14[idx]]
            t = t - stor3[stor14[idx]]
            continue 
        _137 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _137 + 68] = mem[idx + _132 + 32]
            idx = idx + 32
            continue 
        mem[_137 + 98] = 0
        revert with memory
          from mem[64]
           len _137 + -mem[64] + 100
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if t >= stor16 / totalSupply:
        if not s:
            revert with 0, 'SafeMath: division by zero', 0
        if not t / s:
            revert with 0, 'SafeMath: division by zero', 0
        return (stor3[address(arg1)] / t / s)
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor16 / totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    return (stor3[address(arg1)] / stor16 / totalSupply)
}

function excludeFromReward(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor13[address(arg1)]:
        revert with 0, 'Account is already excluded'
    if stor3[address(arg1)]:
        mem[0] = arg1
        mem[32] = 3
        if stor3[address(arg1)] > stor16:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
        idx = 0
        s = totalSupply
        t = stor16
        while idx < stor14.length:
            mem[0] = stor14[idx]
            mem[32] = 3
            if stor3[stor14[idx]] > t:
                _100 = mem[64]
                mem[64] = mem[64] + 64
                mem[_100] = 26
                mem[_100 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _104 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _104 + 68] = mem[idx + _100 + 32]
                        idx = idx + 32
                        continue 
                    mem[_104 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _104 + -mem[64] + 100
                _125 = mem[64]
                mem[64] = mem[64] + 64
                mem[_125] = 26
                mem[_125 + 32] = 'SafeMath: division by zero'
                if stor16 / totalSupply:
                    stor4[address(arg1)] = stor3[address(arg1)] / stor16 / totalSupply
                    stor13[address(arg1)] = 1
                    stor14.length++
                    stor14[stor14.length] = arg1
                _134 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _134 + 68] = mem[idx + _125 + 32]
                    idx = idx + 32
                    continue 
                mem[_134 + 94] = 0
                revert with memory
                  from mem[64]
                   len _134 + -mem[64] + 100
            if idx >= stor14.length:
                revert with 0, 50
            mem[0] = stor14[idx]
            mem[32] = 4
            if stor4[stor14[idx]] > s:
                _106 = mem[64]
                mem[64] = mem[64] + 64
                mem[_106] = 26
                mem[_106 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _111 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _111 + 68] = mem[idx + _106 + 32]
                        idx = idx + 32
                        continue 
                    mem[_111 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _111 + -mem[64] + 100
                _136 = mem[64]
                mem[64] = mem[64] + 64
                mem[_136] = 26
                mem[_136 + 32] = 'SafeMath: division by zero'
                if stor16 / totalSupply:
                    stor4[address(arg1)] = stor3[address(arg1)] / stor16 / totalSupply
                    stor13[address(arg1)] = 1
                    stor14.length++
                    stor14[stor14.length] = arg1
                _141 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _141 + 68] = mem[idx + _136 + 32]
                    idx = idx + 32
                    continue 
                mem[_141 + 94] = 0
                revert with memory
                  from mem[64]
                   len _141 + -mem[64] + 100
            if idx >= stor14.length:
                revert with 0, 50
            mem[0] = stor14[idx]
            mem[32] = 3
            _105 = mem[64]
            mem[64] = mem[64] + 64
            mem[_105] = 30
            mem[_105 + 32] = 'SafeMath: subtraction overflow'
            if stor3[stor14[idx]] > t:
                _110 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _110 + 68] = mem[idx + _105 + 32]
                    idx = idx + 32
                    continue 
                mem[_110 + 98] = 0
                revert with memory
                  from mem[64]
                   len _110 + -mem[64] + 100
            if t < stor3[stor14[idx]]:
                revert with 0, 17
            if idx >= stor14.length:
                revert with 0, 50
            mem[0] = stor14[idx]
            mem[32] = 4
            _135 = mem[64]
            mem[64] = mem[64] + 64
            mem[_135] = 30
            mem[_135 + 32] = 'SafeMath: subtraction overflow'
            if stor4[stor14[idx]] <= s:
                if s < stor4[stor14[idx]]:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - stor4[stor14[idx]]
                t = t - stor3[stor14[idx]]
                continue 
            _140 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _140 + 68] = mem[idx + _135 + 32]
                idx = idx + 32
                continue 
            mem[_140 + 98] = 0
            revert with memory
              from mem[64]
               len _140 + -mem[64] + 100
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if t >= stor16 / totalSupply:
            if not s:
                revert with 0, 'SafeMath: division by zero', 0
            if not t / s:
                revert with 0, 'SafeMath: division by zero', 0
            stor4[address(arg1)] = stor3[address(arg1)] / t / s
        else:
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not stor16 / totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            stor4[address(arg1)] = stor3[address(arg1)] / stor16 / totalSupply
    stor13[address(arg1)] = 1
    stor14.length++
    stor14[stor14.length] = arg1
}

function manualSwapandLiquify(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor36.field_160) = 1
    if not sub_015205e6:
        revert with 0, 'SafeMath: division by zero', 0
    if arg1 / sub_015205e6 / 2 > arg1 / sub_015205e6:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if arg1 / sub_015205e6 < arg1 / sub_015205e6 / 2:
        revert with 0, 17
    if arg1 / sub_015205e6 > arg1:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if arg1 < arg1 / sub_015205e6:
        revert with 0, 17
    mem[384] = this.address
    require ext_code.size(uniswapV2RouterAddress)
    staticcall uniswapV2RouterAddress.WETH() with:
            gas gas_remaining wei
    mem[448] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[416] = ext_call.return_data[12 len 20]
    if not this.address:
        revert with 0, 'ERC20: approve from the zero address'
    if not uniswapV2RouterAddress:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(this.address)][stor35].field_0 = arg1 / sub_015205e6 / 2
    allowance[address(this.address)][stor35].field_255 = 0
    emit Approval((arg1 / sub_015205e6 / 2), this.address, uniswapV2RouterAddress);
    mem[ceil32(return_data.size) + 448] = 0x791ac94700000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 452] = arg1 / sub_015205e6 / 2
    mem[ceil32(return_data.size) + 516] = 160
    idx = 0
    s = 384
    t = ceil32(return_data.size) + 644
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 548] = this.address
    mem[ceil32(return_data.size) + 580] = block.timestamp
    require ext_code.size(uniswapV2RouterAddress)
    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args Mask(255, 1, arg1 / sub_015205e6), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 644 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 448] = arg1 / sub_015205e6 / 2
    idx = 0
    s = 384
    t = ceil32(return_data.size) + 544
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit SwapTokensForETH(Mask(255, 1, arg1 / sub_015205e6), Array(len=2, data=mem[ceil32(return_data.size) + 544 len 64]));
    mem[ceil32(return_data.size) + 448] = 30
    mem[ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
    if eth.balance(this.address) > eth.balance(this.address):
        revert with 0, 'SafeMath: subtraction overflow', 0
    if eth.balance(this.address) < eth.balance(this.address):
        revert with 0, 17
    if not this.address:
        revert with 0, 'ERC20: approve from the zero address'
    if not uniswapV2RouterAddress:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(this.address)][stor35].field_0 = (arg1 / sub_015205e6) - (arg1 / sub_015205e6 / 2)
    emit Approval(((arg1 / sub_015205e6) - (arg1 / sub_015205e6 / 2)), this.address, uniswapV2RouterAddress);
    mem[ceil32(return_data.size) + 580] = 0
    mem[ceil32(return_data.size) + 612] = 0
    mem[ceil32(return_data.size) + 644] = lpAddress
    mem[ceil32(return_data.size) + 676] = block.timestamp
    require ext_code.size(uniswapV2RouterAddress)
    call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
         gas gas_remaining wei
        args this.address, (arg1 / sub_015205e6) - (arg1 / sub_015205e6 / 2), 0, 0, lpAddress, block.timestamp
    mem[ceil32(return_data.size) + 512 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    mem[(2 * ceil32(return_data.size)) + 512] = 2
    mem[(2 * ceil32(return_data.size)) + 544] = this.address
    require ext_code.size(uniswapV2RouterAddress)
    staticcall uniswapV2RouterAddress.WETH() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 608] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 576] = ext_call.return_data[12 len 20]
    if not this.address:
        revert with 0, 'ERC20: approve from the zero address'
    if not uniswapV2RouterAddress:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(this.address)][stor35].field_0 = arg1 - (arg1 / sub_015205e6)
    emit Approval((arg1 - (arg1 / sub_015205e6)), this.address, uniswapV2RouterAddress);
    mem[(4 * ceil32(return_data.size)) + 608] = 0x791ac94700000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 612] = arg1 - (arg1 / sub_015205e6)
    mem[(4 * ceil32(return_data.size)) + 644] = 0
    mem[(4 * ceil32(return_data.size)) + 676] = 160
    mem[(4 * ceil32(return_data.size)) + 772] = 2
    idx = 0
    s = (2 * ceil32(return_data.size)) + 544
    t = (4 * ceil32(return_data.size)) + 804
    while idx < mem[(2 * ceil32(return_data.size)) + 512]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(4 * ceil32(return_data.size)) + 708] = this.address
    mem[(4 * ceil32(return_data.size)) + 740] = block.timestamp
    require ext_code.size(uniswapV2RouterAddress)
    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg1 - (arg1 / sub_015205e6), 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 772 len (32 * mem[(2 * ceil32(return_data.size)) + 512]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 608] = arg1 - (arg1 / sub_015205e6)
    mem[(4 * ceil32(return_data.size)) + 640] = 64
    mem[(4 * ceil32(return_data.size)) + 672] = mem[(2 * ceil32(return_data.size)) + 512]
    idx = 0
    s = (2 * ceil32(return_data.size)) + 544
    t = (4 * ceil32(return_data.size)) + 704
    while idx < mem[(2 * ceil32(return_data.size)) + 512]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit SwapTokensForETH(uint256 arg1, address[] arg2):
                          arg1 - (arg1 / sub_015205e6),
                          64,
                          mem[(4 * ceil32(return_data.size)) + 672 len (32 * mem[(2 * ceil32(return_data.size)) + 512]) + 32],
    if eth.balance(this.address) > eth.balance(this.address):
        revert with 0, 'SafeMath: subtraction overflow', 0
    if eth.balance(this.address) < eth.balance(this.address):
        revert with 0, 17
    call buybackAddress with:
         gas 2300 wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call devAddress with:
         gas 2300 wei
    emit SwapAndLiquify(Mask(255, 1, arg1 / sub_015205e6), 0, (arg1 / sub_015205e6) - (arg1 / sub_015205e6 / 2));
    uint8(stor36.field_160) = 0
}

function reflectionFromToken(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg1 > totalSupply:
        revert with 0, 'Amount must be less than supply'
    if arg2:
        if not arg1:
            mem[96] = 26
            mem[128] = 'SafeMath: division by zero'
            if launchedAt > -4:
                revert with 0, 17
            if launchedAt + 3 < launchedAt:
                revert with 0, 'SafeMath: addition overflow'
            if launchedAt + 3 < block.number:
                if not arg1:
                    mem[160] = 26
                    mem[192] = 'SafeMath: division by zero'
                    mem[224] = 30
                    mem[256] = 'SafeMath: subtraction overflow'
                    if 0 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 < 0:
                        revert with 0, 17
                    mem[64] = 352
                    mem[288] = 30
                    mem[320] = 'SafeMath: subtraction overflow'
                    if 0 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 < 0:
                        revert with 0, 17
                    idx = 0
                    s = totalSupply
                    t = stor16
                    while idx < stor14.length:
                        mem[0] = stor14[idx]
                        mem[32] = 3
                        if stor3[stor14[idx]] > t:
                            _6714 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6714] = 26
                            mem[_6714 + 32] = 'SafeMath: division by zero'
                            if not totalSupply:
                                _6824 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _6824 + 68] = mem[idx + _6714 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_6824 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _6824 + -mem[64] + 100
                            if not arg1:
                                return 0
                            if arg1 and stor16 / totalSupply > -1 / arg1:
                                revert with 0, 17
                            if not arg1:
                                revert with 0, 18
                            if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _8096 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8096] = 30
                            mem[_8096 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor16 / totalSupply:
                                _8265 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8265 + 68] = mem[idx + _8096 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8265 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8265 + -mem[64] + 100
                            if arg1 * stor16 / totalSupply < 0:
                                revert with 0, 17
                            _8926 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8926] = 30
                            mem[_8926 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor16 / totalSupply:
                                if arg1 * stor16 / totalSupply < 0:
                                    revert with 0, 17
                                return (arg1 * stor16 / totalSupply)
                            _9279 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9279 + 68] = mem[idx + _8926 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9279 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9279 + -mem[64] + 100
                        if idx >= stor14.length:
                            revert with 0, 50
                        mem[0] = stor14[idx]
                        mem[32] = 4
                        if stor4[stor14[idx]] <= s:
                            if idx >= stor14.length:
                                revert with 0, 50
                            mem[0] = stor14[idx]
                            mem[32] = 3
                            _6825 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6825] = 30
                            mem[_6825 + 32] = 'SafeMath: subtraction overflow'
                            if stor3[stor14[idx]] > t:
                                _6945 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _6945 + 68] = mem[idx + _6825 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_6945 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _6945 + -mem[64] + 100
                            if t < stor3[stor14[idx]]:
                                revert with 0, 17
                            if idx >= stor14.length:
                                revert with 0, 50
                            mem[0] = stor14[idx]
                            mem[32] = 4
                            _7474 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7474] = 30
                            mem[_7474 + 32] = 'SafeMath: subtraction overflow'
                            if stor4[stor14[idx]] <= s:
                                if s < stor4[stor14[idx]]:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s - stor4[stor14[idx]]
                                t = t - stor3[stor14[idx]]
                                continue 
                            _7546 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _7546 + 68] = mem[idx + _7474 + 32]
                                idx = idx + 32
                                continue 
                            mem[_7546 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _7546 + -mem[64] + 100
                        _6826 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6826] = 26
                        mem[_6826 + 32] = 'SafeMath: division by zero'
                        if not totalSupply:
                            _6946 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _6946 + 68] = mem[idx + _6826 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6946 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _6946 + -mem[64] + 100
                        if not arg1:
                            return 0
                        if arg1 and stor16 / totalSupply > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _8267 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8267] = 30
                        mem[_8267 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor16 / totalSupply:
                            _8418 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8418 + 68] = mem[idx + _8267 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8418 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8418 + -mem[64] + 100
                        if arg1 * stor16 / totalSupply < 0:
                            revert with 0, 17
                        _9280 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9280] = 30
                        mem[_9280 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor16 / totalSupply:
                            if arg1 * stor16 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor16 / totalSupply)
                        _9621 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _9621 + 68] = mem[idx + _9280 + 32]
                            idx = idx + 32
                            continue 
                        mem[_9621 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _9621 + -mem[64] + 100
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero', 0
                    if t >= stor16 / totalSupply:
                        if not s:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not arg1:
                            return 0
                        if arg1 and t / s > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 * t / s / arg1 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        return (arg1 * t / s)
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not arg1:
                        return 0
                    if arg1 and stor16 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * stor16 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor16 / totalSupply < 0:
                        revert with 0, 17
                    if 0 > arg1 * stor16 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor16 / totalSupply < 0:
                        revert with 0, 17
                    return (arg1 * stor16 / totalSupply)
                if arg1 and _liquidityFee > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * _liquidityFee / arg1 != _liquidityFee:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[160] = 26
                mem[192] = 'SafeMath: division by zero'
                mem[224] = 30
                mem[256] = 'SafeMath: subtraction overflow'
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 < 0:
                    revert with 0, 17
                mem[64] = 352
                mem[288] = 30
                mem[320] = 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 < arg1 * _liquidityFee / 100:
                    revert with 0, 17
                idx = 0
                s = totalSupply
                t = stor16
                while idx < stor14.length:
                    mem[0] = stor14[idx]
                    mem[32] = 3
                    if stor3[stor14[idx]] > t:
                        _6713 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6713] = 26
                        mem[_6713 + 32] = 'SafeMath: division by zero'
                        if not totalSupply:
                            _6821 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _6821 + 68] = mem[idx + _6713 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6821 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _6821 + -mem[64] + 100
                        if not arg1:
                            if not arg1 * _liquidityFee / 100:
                                return 0
                            if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                                revert with 0, 17
                            if not arg1 * _liquidityFee / 100:
                                revert with 0, 18
                            if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _8092 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8092] = 30
                            mem[_8092 + 32] = 'SafeMath: subtraction overflow'
                            _8920 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8920] = 30
                            mem[_8920 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _liquidityFee / 100 * stor16 / totalSupply <= 0:
                                if 0 < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                                    revert with 0, 17
                                return (-1 * arg1 * _liquidityFee / 100 * stor16 / totalSupply)
                            _9274 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9274 + 68] = mem[idx + _8920 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9274 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9274 + -mem[64] + 100
                        if arg1 and stor16 / totalSupply > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * _liquidityFee / 100:
                            _8091 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8091] = 30
                            mem[_8091 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor16 / totalSupply:
                                _8261 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8261 + 68] = mem[idx + _8091 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8261 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8261 + -mem[64] + 100
                            if arg1 * stor16 / totalSupply < 0:
                                revert with 0, 17
                            _8918 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8918] = 30
                            mem[_8918 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor16 / totalSupply:
                                if arg1 * stor16 / totalSupply < 0:
                                    revert with 0, 17
                                return (arg1 * stor16 / totalSupply)
                            _9273 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9273 + 68] = mem[idx + _8918 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9273 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9273 + -mem[64] + 100
                        if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _8633 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8633] = 30
                        mem[_8633 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor16 / totalSupply:
                            _8917 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8917 + 68] = mem[idx + _8633 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8917 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8917 + -mem[64] + 100
                        if arg1 * stor16 / totalSupply < 0:
                            revert with 0, 17
                        _10025 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10025] = 30
                        mem[_10025 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor16 / totalSupply <= arg1 * stor16 / totalSupply:
                            if arg1 * stor16 / totalSupply < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                                revert with 0, 17
                            return ((arg1 * stor16 / totalSupply) - (arg1 * _liquidityFee / 100 * stor16 / totalSupply))
                        _10479 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _10479 + 68] = mem[idx + _10025 + 32]
                            idx = idx + 32
                            continue 
                        mem[_10479 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _10479 + -mem[64] + 100
                    if idx >= stor14.length:
                        revert with 0, 50
                    mem[0] = stor14[idx]
                    mem[32] = 4
                    if stor4[stor14[idx]] <= s:
                        if idx >= stor14.length:
                            revert with 0, 50
                        mem[0] = stor14[idx]
                        mem[32] = 3
                        _6822 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6822] = 30
                        mem[_6822 + 32] = 'SafeMath: subtraction overflow'
                        if stor3[stor14[idx]] > t:
                            _6942 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _6942 + 68] = mem[idx + _6822 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6942 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _6942 + -mem[64] + 100
                        if t < stor3[stor14[idx]]:
                            revert with 0, 17
                        if idx >= stor14.length:
                            revert with 0, 50
                        mem[0] = stor14[idx]
                        mem[32] = 4
                        _7471 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7471] = 30
                        mem[_7471 + 32] = 'SafeMath: subtraction overflow'
                        if stor4[stor14[idx]] <= s:
                            if s < stor4[stor14[idx]]:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s - stor4[stor14[idx]]
                            t = t - stor3[stor14[idx]]
                            continue 
                        _7543 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _7543 + 68] = mem[idx + _7471 + 32]
                            idx = idx + 32
                            continue 
                        mem[_7543 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _7543 + -mem[64] + 100
                    _6823 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6823] = 26
                    mem[_6823 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _6943 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6943 + 68] = mem[idx + _6823 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6943 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _6943 + -mem[64] + 100
                    if not arg1:
                        if not arg1 * _liquidityFee / 100:
                            return 0
                        if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _8264 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8264] = 30
                        mem[_8264 + 32] = 'SafeMath: subtraction overflow'
                        _9278 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9278] = 30
                        mem[_9278 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor16 / totalSupply <= 0:
                            if 0 < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                                revert with 0, 17
                            return (-1 * arg1 * _liquidityFee / 100 * stor16 / totalSupply)
                        _9620 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _9620 + 68] = mem[idx + _9278 + 32]
                            idx = idx + 32
                            continue 
                        mem[_9620 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _9620 + -mem[64] + 100
                    if arg1 and stor16 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        _8263 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8263] = 30
                        mem[_8263 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor16 / totalSupply:
                            _8416 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8416 + 68] = mem[idx + _8263 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8416 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8416 + -mem[64] + 100
                        if arg1 * stor16 / totalSupply < 0:
                            revert with 0, 17
                        _9276 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9276] = 30
                        mem[_9276 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor16 / totalSupply:
                            if arg1 * stor16 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor16 / totalSupply)
                        _9619 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _9619 + 68] = mem[idx + _9276 + 32]
                            idx = idx + 32
                            continue 
                        mem[_9619 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _9619 + -mem[64] + 100
                    if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _8921 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8921] = 30
                    mem[_8921 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor16 / totalSupply:
                        _9275 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _9275 + 68] = mem[idx + _8921 + 32]
                            idx = idx + 32
                            continue 
                        mem[_9275 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _9275 + -mem[64] + 100
                    if arg1 * stor16 / totalSupply < 0:
                        revert with 0, 17
                    _10482 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10482] = 30
                    mem[_10482 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor16 / totalSupply <= arg1 * stor16 / totalSupply:
                        if arg1 * stor16 / totalSupply < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                            revert with 0, 17
                        return ((arg1 * stor16 / totalSupply) - (arg1 * _liquidityFee / 100 * stor16 / totalSupply))
                    _10879 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _10879 + 68] = mem[idx + _10482 + 32]
                        idx = idx + 32
                        continue 
                    mem[_10879 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _10879 + -mem[64] + 100
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if t >= stor16 / totalSupply:
                    if not s:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not arg1:
                        if not arg1 * _liquidityFee / 100:
                            return 0
                        if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _liquidityFee / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _liquidityFee / 100 * t / s:
                            revert with 0, 17
                        return (-1 * arg1 * _liquidityFee / 100 * t / s)
                    if arg1 and t / s > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        return (arg1 * t / s)
                    if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if arg1 * _liquidityFee / 100 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < arg1 * _liquidityFee / 100 * t / s:
                        revert with 0, 17
                    return ((arg1 * t / s) - (arg1 * _liquidityFee / 100 * t / s))
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if not arg1 * _liquidityFee / 100:
                        return 0
                    if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _liquidityFee / 100 * stor16 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                        revert with 0, 17
                    return (-1 * arg1 * _liquidityFee / 100 * stor16 / totalSupply)
                if arg1 and stor16 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _liquidityFee / 100:
                    if 0 > arg1 * stor16 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor16 / totalSupply < 0:
                        revert with 0, 17
                    if 0 > arg1 * stor16 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor16 / totalSupply < 0:
                        revert with 0, 17
                    return (arg1 * stor16 / totalSupply)
                if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                    revert with 0, 17
                if not arg1 * _liquidityFee / 100:
                    revert with 0, 18
                if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * stor16 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor16 / totalSupply < 0:
                    revert with 0, 17
                if arg1 * _liquidityFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor16 / totalSupply < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                    revert with 0, 17
                return ((arg1 * stor16 / totalSupply) - (arg1 * _liquidityFee / 100 * stor16 / totalSupply))
            if not _liquidityFee:
                if not arg1:
                    mem[160] = 26
                    mem[192] = 'SafeMath: division by zero'
                    mem[224] = 30
                    mem[256] = 'SafeMath: subtraction overflow'
                    if 0 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 < 0:
                        revert with 0, 17
                    mem[64] = 352
                    mem[288] = 30
                    mem[320] = 'SafeMath: subtraction overflow'
                    if 0 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 < 0:
                        revert with 0, 17
                    idx = 0
                    s = totalSupply
                    t = stor16
                    while idx < stor14.length:
                        mem[0] = stor14[idx]
                        mem[32] = 3
                        if stor3[stor14[idx]] > t:
                            _6718 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6718] = 26
                            mem[_6718 + 32] = 'SafeMath: division by zero'
                            if not totalSupply:
                                _6836 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _6836 + 68] = mem[idx + _6718 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_6836 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _6836 + -mem[64] + 100
                            if not arg1:
                                return 0
                            if arg1 and stor16 / totalSupply > -1 / arg1:
                                revert with 0, 17
                            if not arg1:
                                revert with 0, 18
                            if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _8110 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8110] = 30
                            mem[_8110 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor16 / totalSupply:
                                _8278 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8278 + 68] = mem[idx + _8110 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8278 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8278 + -mem[64] + 100
                            if arg1 * stor16 / totalSupply < 0:
                                revert with 0, 17
                            _8953 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8953] = 30
                            mem[_8953 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor16 / totalSupply:
                                if arg1 * stor16 / totalSupply < 0:
                                    revert with 0, 17
                                return (arg1 * stor16 / totalSupply)
                            _9296 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9296 + 68] = mem[idx + _8953 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9296 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9296 + -mem[64] + 100
                        if idx >= stor14.length:
                            revert with 0, 50
                        mem[0] = stor14[idx]
                        mem[32] = 4
                        if stor4[stor14[idx]] <= s:
                            if idx >= stor14.length:
                                revert with 0, 50
                            mem[0] = stor14[idx]
                            mem[32] = 3
                            _6837 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6837] = 30
                            mem[_6837 + 32] = 'SafeMath: subtraction overflow'
                            if stor3[stor14[idx]] > t:
                                _6957 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _6957 + 68] = mem[idx + _6837 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_6957 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _6957 + -mem[64] + 100
                            if t < stor3[stor14[idx]]:
                                revert with 0, 17
                            if idx >= stor14.length:
                                revert with 0, 50
                            mem[0] = stor14[idx]
                            mem[32] = 4
                            _7486 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7486] = 30
                            mem[_7486 + 32] = 'SafeMath: subtraction overflow'
                            if stor4[stor14[idx]] <= s:
                                if s < stor4[stor14[idx]]:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s - stor4[stor14[idx]]
                                t = t - stor3[stor14[idx]]
                                continue 
                            _7558 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _7558 + 68] = mem[idx + _7486 + 32]
                                idx = idx + 32
                                continue 
                            mem[_7558 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _7558 + -mem[64] + 100
                        _6838 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6838] = 26
                        mem[_6838 + 32] = 'SafeMath: division by zero'
                        if not totalSupply:
                            _6958 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _6958 + 68] = mem[idx + _6838 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6958 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _6958 + -mem[64] + 100
                        if not arg1:
                            return 0
                        if arg1 and stor16 / totalSupply > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _8280 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8280] = 30
                        mem[_8280 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor16 / totalSupply:
                            _8429 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8429 + 68] = mem[idx + _8280 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8429 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8429 + -mem[64] + 100
                        if arg1 * stor16 / totalSupply < 0:
                            revert with 0, 17
                        _9297 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9297] = 30
                        mem[_9297 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor16 / totalSupply:
                            if arg1 * stor16 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor16 / totalSupply)
                        _9628 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _9628 + 68] = mem[idx + _9297 + 32]
                            idx = idx + 32
                            continue 
                        mem[_9628 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _9628 + -mem[64] + 100
                else:
                    if arg1 and 0 > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if 0 / arg1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[160] = 26
                    mem[192] = 'SafeMath: division by zero'
                    mem[224] = 30
                    mem[256] = 'SafeMath: subtraction overflow'
                    if 0 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 < 0:
                        revert with 0, 17
                    mem[64] = 352
                    mem[288] = 30
                    mem[320] = 'SafeMath: subtraction overflow'
                    if 0 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 < 0:
                        revert with 0, 17
                    idx = 0
                    s = totalSupply
                    t = stor16
                    while idx < stor14.length:
                        mem[0] = stor14[idx]
                        mem[32] = 3
                        if stor3[stor14[idx]] > t:
                            _6717 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6717] = 26
                            mem[_6717 + 32] = 'SafeMath: division by zero'
                            if not totalSupply:
                                _6833 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _6833 + 68] = mem[idx + _6717 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_6833 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _6833 + -mem[64] + 100
                            if not arg1:
                                return 0
                            if arg1 and stor16 / totalSupply > -1 / arg1:
                                revert with 0, 17
                            if not arg1:
                                revert with 0, 18
                            if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _8107 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8107] = 30
                            mem[_8107 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor16 / totalSupply:
                                _8275 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8275 + 68] = mem[idx + _8107 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8275 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8275 + -mem[64] + 100
                            if arg1 * stor16 / totalSupply < 0:
                                revert with 0, 17
                            _8947 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8947] = 30
                            mem[_8947 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor16 / totalSupply:
                                if arg1 * stor16 / totalSupply < 0:
                                    revert with 0, 17
                                return (arg1 * stor16 / totalSupply)
                            _9293 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9293 + 68] = mem[idx + _8947 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9293 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9293 + -mem[64] + 100
                        if idx >= stor14.length:
                            revert with 0, 50
                        mem[0] = stor14[idx]
                        mem[32] = 4
                        if stor4[stor14[idx]] <= s:
                            if idx >= stor14.length:
                                revert with 0, 50
                            mem[0] = stor14[idx]
                            mem[32] = 3
                            _6834 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6834] = 30
                            mem[_6834 + 32] = 'SafeMath: subtraction overflow'
                            if stor3[stor14[idx]] > t:
                                _6954 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _6954 + 68] = mem[idx + _6834 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_6954 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _6954 + -mem[64] + 100
                            if t < stor3[stor14[idx]]:
                                revert with 0, 17
                            if idx >= stor14.length:
                                revert with 0, 50
                            mem[0] = stor14[idx]
                            mem[32] = 4
                            _7483 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7483] = 30
                            mem[_7483 + 32] = 'SafeMath: subtraction overflow'
                            if stor4[stor14[idx]] <= s:
                                if s < stor4[stor14[idx]]:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s - stor4[stor14[idx]]
                                t = t - stor3[stor14[idx]]
                                continue 
                            _7555 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _7555 + 68] = mem[idx + _7483 + 32]
                                idx = idx + 32
                                continue 
                            mem[_7555 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _7555 + -mem[64] + 100
                        _6835 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6835] = 26
                        mem[_6835 + 32] = 'SafeMath: division by zero'
                        if not totalSupply:
                            _6955 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _6955 + 68] = mem[idx + _6835 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6955 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _6955 + -mem[64] + 100
                        if not arg1:
                            return 0
                        if arg1 and stor16 / totalSupply > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _8277 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8277] = 30
                        mem[_8277 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor16 / totalSupply:
                            _8427 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8427 + 68] = mem[idx + _8277 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8427 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8427 + -mem[64] + 100
                        if arg1 * stor16 / totalSupply < 0:
                            revert with 0, 17
                        _9294 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9294] = 30
                        mem[_9294 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor16 / totalSupply:
                            if arg1 * stor16 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor16 / totalSupply)
                        _9627 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _9627 + 68] = mem[idx + _9294 + 32]
                            idx = idx + 32
                            continue 
                        mem[_9627 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _9627 + -mem[64] + 100
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if t >= stor16 / totalSupply:
                    if not s:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not arg1:
                        return 0
                    if arg1 and t / s > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    return (arg1 * t / s)
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    return 0
                if arg1 and stor16 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * stor16 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor16 / totalSupply < 0:
                    revert with 0, 17
                if 0 > arg1 * stor16 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor16 / totalSupply < 0:
                    revert with 0, 17
                return (arg1 * stor16 / totalSupply)
            if _liquidityFee and 7 > -1 / _liquidityFee:
                revert with 0, 17
            if not _liquidityFee:
                revert with 0, 18
            if 7 * _liquidityFee / _liquidityFee != 7:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1:
                mem[160] = 26
                mem[192] = 'SafeMath: division by zero'
                mem[224] = 30
                mem[256] = 'SafeMath: subtraction overflow'
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 < 0:
                    revert with 0, 17
                mem[64] = 352
                mem[288] = 30
                mem[320] = 'SafeMath: subtraction overflow'
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 < 0:
                    revert with 0, 17
                idx = 0
                s = totalSupply
                t = stor16
                while idx < stor14.length:
                    mem[0] = stor14[idx]
                    mem[32] = 3
                    if stor3[stor14[idx]] > t:
                        _6716 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6716] = 26
                        mem[_6716 + 32] = 'SafeMath: division by zero'
                        if not totalSupply:
                            _6830 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _6830 + 68] = mem[idx + _6716 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6830 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _6830 + -mem[64] + 100
                        if not arg1:
                            return 0
                        if arg1 and stor16 / totalSupply > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _8104 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8104] = 30
                        mem[_8104 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor16 / totalSupply:
                            _8272 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8272 + 68] = mem[idx + _8104 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8272 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8272 + -mem[64] + 100
                        if arg1 * stor16 / totalSupply < 0:
                            revert with 0, 17
                        _8941 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8941] = 30
                        mem[_8941 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor16 / totalSupply:
                            if arg1 * stor16 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor16 / totalSupply)
                        _9290 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _9290 + 68] = mem[idx + _8941 + 32]
                            idx = idx + 32
                            continue 
                        mem[_9290 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _9290 + -mem[64] + 100
                    if idx >= stor14.length:
                        revert with 0, 50
                    mem[0] = stor14[idx]
                    mem[32] = 4
                    if stor4[stor14[idx]] <= s:
                        if idx >= stor14.length:
                            revert with 0, 50
                        mem[0] = stor14[idx]
                        mem[32] = 3
                        _6831 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6831] = 30
                        mem[_6831 + 32] = 'SafeMath: subtraction overflow'
                        if stor3[stor14[idx]] > t:
                            _6951 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _6951 + 68] = mem[idx + _6831 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6951 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _6951 + -mem[64] + 100
                        if t < stor3[stor14[idx]]:
                            revert with 0, 17
                        if idx >= stor14.length:
                            revert with 0, 50
                        mem[0] = stor14[idx]
                        mem[32] = 4
                        _7480 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7480] = 30
                        mem[_7480 + 32] = 'SafeMath: subtraction overflow'
                        if stor4[stor14[idx]] <= s:
                            if s < stor4[stor14[idx]]:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s - stor4[stor14[idx]]
                            t = t - stor3[stor14[idx]]
                            continue 
                        _7552 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _7552 + 68] = mem[idx + _7480 + 32]
                            idx = idx + 32
                            continue 
                        mem[_7552 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _7552 + -mem[64] + 100
                    _6832 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6832] = 26
                    mem[_6832 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _6952 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6952 + 68] = mem[idx + _6832 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6952 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _6952 + -mem[64] + 100
                    if not arg1:
                        return 0
                    if arg1 and stor16 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _8274 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8274] = 30
                    mem[_8274 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor16 / totalSupply:
                        _8425 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _8425 + 68] = mem[idx + _8274 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8425 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _8425 + -mem[64] + 100
                    if arg1 * stor16 / totalSupply < 0:
                        revert with 0, 17
                    _9291 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_9291] = 30
                    mem[_9291 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor16 / totalSupply:
                        if arg1 * stor16 / totalSupply < 0:
                            revert with 0, 17
                        return (arg1 * stor16 / totalSupply)
                    _9626 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _9626 + 68] = mem[idx + _9291 + 32]
                        idx = idx + 32
                        continue 
                    mem[_9626 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _9626 + -mem[64] + 100
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if t >= stor16 / totalSupply:
                    if not s:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not arg1:
                        return 0
                    if arg1 and t / s > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    return (arg1 * t / s)
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    return 0
                if arg1 and stor16 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * stor16 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor16 / totalSupply < 0:
                    revert with 0, 17
                if 0 > arg1 * stor16 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor16 / totalSupply < 0:
                    revert with 0, 17
                return (arg1 * stor16 / totalSupply)
            if arg1 and 7 * _liquidityFee > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if 7 * arg1 * _liquidityFee / arg1 != 7 * _liquidityFee:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < 0:
                revert with 0, 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if 7 * arg1 * _liquidityFee / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < 7 * arg1 * _liquidityFee / 100:
                revert with 0, 17
            idx = 0
            s = totalSupply
            t = stor16
            while idx < stor14.length:
                mem[0] = stor14[idx]
                mem[32] = 3
                if stor3[stor14[idx]] > t:
                    _6715 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6715] = 26
                    mem[_6715 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _6827 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6827 + 68] = mem[idx + _6715 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6827 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _6827 + -mem[64] + 100
                    if not arg1:
                        if not 7 * arg1 * _liquidityFee / 100:
                            return 0
                        if 7 * arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / 7 * arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not 7 * arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply / 7 * arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _8100 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8100] = 30
                        mem[_8100 + 32] = 'SafeMath: subtraction overflow'
                        _8935 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8935] = 30
                        mem[_8935 + 32] = 'SafeMath: subtraction overflow'
                        if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply <= 0:
                            if 0 < 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                                revert with 0, 17
                            return (-1 * 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply)
                        _9285 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _9285 + 68] = mem[idx + _8935 + 32]
                            idx = idx + 32
                            continue 
                        mem[_9285 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _9285 + -mem[64] + 100
                    if arg1 and stor16 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 7 * arg1 * _liquidityFee / 100:
                        _8099 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8099] = 30
                        mem[_8099 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor16 / totalSupply:
                            _8268 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8268 + 68] = mem[idx + _8099 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8268 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8268 + -mem[64] + 100
                        if arg1 * stor16 / totalSupply < 0:
                            revert with 0, 17
                        _8933 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8933] = 30
                        mem[_8933 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor16 / totalSupply:
                            if arg1 * stor16 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor16 / totalSupply)
                        _9284 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _9284 + 68] = mem[idx + _8933 + 32]
                            idx = idx + 32
                            continue 
                        mem[_9284 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _9284 + -mem[64] + 100
                    if 7 * arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / 7 * arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not 7 * arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply / 7 * arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _8641 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8641] = 30
                    mem[_8641 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor16 / totalSupply:
                        _8932 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _8932 + 68] = mem[idx + _8641 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8932 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _8932 + -mem[64] + 100
                    if arg1 * stor16 / totalSupply < 0:
                        revert with 0, 17
                    _10041 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10041] = 30
                    mem[_10041 + 32] = 'SafeMath: subtraction overflow'
                    if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply <= arg1 * stor16 / totalSupply:
                        if arg1 * stor16 / totalSupply < 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                            revert with 0, 17
                        return ((arg1 * stor16 / totalSupply) - (7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply))
                    _10493 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _10493 + 68] = mem[idx + _10041 + 32]
                        idx = idx + 32
                        continue 
                    mem[_10493 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _10493 + -mem[64] + 100
                if idx >= stor14.length:
                    revert with 0, 50
                mem[0] = stor14[idx]
                mem[32] = 4
                if stor4[stor14[idx]] <= s:
                    if idx >= stor14.length:
                        revert with 0, 50
                    mem[0] = stor14[idx]
                    mem[32] = 3
                    _6828 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6828] = 30
                    mem[_6828 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor14[idx]] > t:
                        _6948 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6948 + 68] = mem[idx + _6828 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6948 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6948 + -mem[64] + 100
                    if t < stor3[stor14[idx]]:
                        revert with 0, 17
                    if idx >= stor14.length:
                        revert with 0, 50
                    mem[0] = stor14[idx]
                    mem[32] = 4
                    _7477 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7477] = 30
                    mem[_7477 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor14[idx]] <= s:
                        if s < stor4[stor14[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor4[stor14[idx]]
                        t = t - stor3[stor14[idx]]
                        continue 
                    _7549 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _7549 + 68] = mem[idx + _7477 + 32]
                        idx = idx + 32
                        continue 
                    mem[_7549 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _7549 + -mem[64] + 100
                _6829 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6829] = 26
                mem[_6829 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _6949 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _6949 + 68] = mem[idx + _6829 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6949 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _6949 + -mem[64] + 100
                if not arg1:
                    if not 7 * arg1 * _liquidityFee / 100:
                        return 0
                    if 7 * arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / 7 * arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not 7 * arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply / 7 * arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _8271 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8271] = 30
                    mem[_8271 + 32] = 'SafeMath: subtraction overflow'
                    _9289 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_9289] = 30
                    mem[_9289 + 32] = 'SafeMath: subtraction overflow'
                    if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply <= 0:
                        if 0 < 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                            revert with 0, 17
                        return (-1 * 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply)
                    _9625 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _9625 + 68] = mem[idx + _9289 + 32]
                        idx = idx + 32
                        continue 
                    mem[_9625 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _9625 + -mem[64] + 100
                if arg1 and stor16 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 7 * arg1 * _liquidityFee / 100:
                    _8270 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8270] = 30
                    mem[_8270 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor16 / totalSupply:
                        _8423 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _8423 + 68] = mem[idx + _8270 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8423 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _8423 + -mem[64] + 100
                    if arg1 * stor16 / totalSupply < 0:
                        revert with 0, 17
                    _9287 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_9287] = 30
                    mem[_9287 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor16 / totalSupply:
                        if arg1 * stor16 / totalSupply < 0:
                            revert with 0, 17
                        return (arg1 * stor16 / totalSupply)
                    _9624 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _9624 + 68] = mem[idx + _9287 + 32]
                        idx = idx + 32
                        continue 
                    mem[_9624 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _9624 + -mem[64] + 100
                if 7 * arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / 7 * arg1 * _liquidityFee / 100:
                    revert with 0, 17
                if not 7 * arg1 * _liquidityFee / 100:
                    revert with 0, 18
                if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply / 7 * arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _8936 = mem[64]
                mem[64] = mem[64] + 64
                mem[_8936] = 30
                mem[_8936 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor16 / totalSupply:
                    _9286 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _9286 + 68] = mem[idx + _8936 + 32]
                        idx = idx + 32
                        continue 
                    mem[_9286 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _9286 + -mem[64] + 100
                if arg1 * stor16 / totalSupply < 0:
                    revert with 0, 17
                _10496 = mem[64]
                mem[64] = mem[64] + 64
                mem[_10496] = 30
                mem[_10496 + 32] = 'SafeMath: subtraction overflow'
                if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply <= arg1 * stor16 / totalSupply:
                    if arg1 * stor16 / totalSupply < 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                        revert with 0, 17
                    return ((arg1 * stor16 / totalSupply) - (7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply))
                _10883 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _10883 + 68] = mem[idx + _10496 + 32]
                    idx = idx + 32
                    continue 
                mem[_10883 + 98] = 0
                revert with memory
                  from mem[64]
                   len _10883 + -mem[64] + 100
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor16 / totalSupply:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if not 7 * arg1 * _liquidityFee / 100:
                        return 0
                    if 7 * arg1 * _liquidityFee / 100 and t / s > -1 / 7 * arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not 7 * arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if 7 * arg1 * _liquidityFee / 100 * t / s / 7 * arg1 * _liquidityFee / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 7 * arg1 * _liquidityFee / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < 7 * arg1 * _liquidityFee / 100 * t / s:
                        revert with 0, 17
                    return (-1 * 7 * arg1 * _liquidityFee / 100 * t / s)
                if arg1 and t / s > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 7 * arg1 * _liquidityFee / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    return (arg1 * t / s)
                if 7 * arg1 * _liquidityFee / 100 and t / s > -1 / 7 * arg1 * _liquidityFee / 100:
                    revert with 0, 17
                if not 7 * arg1 * _liquidityFee / 100:
                    revert with 0, 18
                if 7 * arg1 * _liquidityFee / 100 * t / s / 7 * arg1 * _liquidityFee / 100 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < 0:
                    revert with 0, 17
                if 7 * arg1 * _liquidityFee / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < 7 * arg1 * _liquidityFee / 100 * t / s:
                    revert with 0, 17
                return ((arg1 * t / s) - (7 * arg1 * _liquidityFee / 100 * t / s))
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                if not 7 * arg1 * _liquidityFee / 100:
                    return 0
                if 7 * arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / 7 * arg1 * _liquidityFee / 100:
                    revert with 0, 17
                if not 7 * arg1 * _liquidityFee / 100:
                    revert with 0, 18
                if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply / 7 * arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                    revert with 0, 17
                return (-1 * 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply)
            if arg1 and stor16 / totalSupply > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 7 * arg1 * _liquidityFee / 100:
                if 0 > arg1 * stor16 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor16 / totalSupply < 0:
                    revert with 0, 17
                if 0 > arg1 * stor16 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor16 / totalSupply < 0:
                    revert with 0, 17
                return (arg1 * stor16 / totalSupply)
            if 7 * arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / 7 * arg1 * _liquidityFee / 100:
                revert with 0, 17
            if not 7 * arg1 * _liquidityFee / 100:
                revert with 0, 18
            if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply / 7 * arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 > arg1 * stor16 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor16 / totalSupply < 0:
                revert with 0, 17
            if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor16 / totalSupply < 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                revert with 0, 17
            return ((arg1 * stor16 / totalSupply) - (7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply))
        if arg1 and _taxFee > -1 / arg1:
            revert with 0, 17
        if not arg1:
            revert with 0, 18
        if arg1 * _taxFee / arg1 != _taxFee:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if launchedAt > -4:
            revert with 0, 17
        if launchedAt + 3 < launchedAt:
            revert with 0, 'SafeMath: addition overflow'
        if launchedAt + 3 < block.number:
            if not arg1:
                mem[160] = 26
                mem[192] = 'SafeMath: division by zero'
                mem[224] = 30
                mem[256] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 < arg1 * _taxFee / 100:
                    revert with 0, 17
                mem[64] = 352
                mem[288] = 30
                mem[320] = 'SafeMath: subtraction overflow'
                if 0 > arg1 - (arg1 * _taxFee / 100):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 - (arg1 * _taxFee / 100) < 0:
                    revert with 0, 17
                idx = 0
                s = totalSupply
                t = stor16
                while idx < stor14.length:
                    mem[0] = stor14[idx]
                    mem[32] = 3
                    if stor3[stor14[idx]] > t:
                        _6708 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6708] = 26
                        mem[_6708 + 32] = 'SafeMath: division by zero'
                        if not totalSupply:
                            _6806 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _6806 + 68] = mem[idx + _6708 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6806 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _6806 + -mem[64] + 100
                        if not arg1:
                            if not arg1 * _taxFee / 100:
                                return 0
                            if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                                revert with 0, 17
                            if not arg1 * _taxFee / 100:
                                revert with 0, 18
                            if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _8058 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8058] = 30
                            mem[_8058 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _taxFee / 100 * stor16 / totalSupply > 0:
                                _8231 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8231 + 68] = mem[idx + _8058 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8231 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8231 + -mem[64] + 100
                            if 0 < arg1 * _taxFee / 100 * stor16 / totalSupply:
                                revert with 0, 17
                            _8857 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8857] = 30
                            mem[_8857 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * arg1 * _taxFee / 100 * stor16 / totalSupply:
                                if -1 * arg1 * _taxFee / 100 * stor16 / totalSupply < 0:
                                    revert with 0, 17
                                return (-1 * arg1 * _taxFee / 100 * stor16 / totalSupply)
                            _9228 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9228 + 68] = mem[idx + _8857 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9228 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9228 + -mem[64] + 100
                        if arg1 and stor16 / totalSupply > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * _taxFee / 100:
                            _8057 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8057] = 30
                            mem[_8057 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor16 / totalSupply:
                                _8230 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8230 + 68] = mem[idx + _8057 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8230 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8230 + -mem[64] + 100
                            if arg1 * stor16 / totalSupply < 0:
                                revert with 0, 17
                            _8855 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8855] = 30
                            mem[_8855 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor16 / totalSupply:
                                if arg1 * stor16 / totalSupply < 0:
                                    revert with 0, 17
                                return (arg1 * stor16 / totalSupply)
                            _9227 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9227 + 68] = mem[idx + _8855 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9227 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9227 + -mem[64] + 100
                        if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _8594 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8594] = 30
                        mem[_8594 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                            _8854 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8854 + 68] = mem[idx + _8594 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8854 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8854 + -mem[64] + 100
                        if arg1 * stor16 / totalSupply < arg1 * _taxFee / 100 * stor16 / totalSupply:
                            revert with 0, 17
                        _9950 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9950] = 30
                        mem[_9950 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply):
                            if (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) < 0:
                                revert with 0, 17
                            return ((arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply))
                        _10417 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _10417 + 68] = mem[idx + _9950 + 32]
                            idx = idx + 32
                            continue 
                        mem[_10417 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _10417 + -mem[64] + 100
                    if idx >= stor14.length:
                        revert with 0, 50
                    mem[0] = stor14[idx]
                    mem[32] = 4
                    if stor4[stor14[idx]] <= s:
                        if idx >= stor14.length:
                            revert with 0, 50
                        mem[0] = stor14[idx]
                        mem[32] = 3
                        _6807 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6807] = 30
                        mem[_6807 + 32] = 'SafeMath: subtraction overflow'
                        if stor3[stor14[idx]] > t:
                            _6927 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _6927 + 68] = mem[idx + _6807 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6927 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _6927 + -mem[64] + 100
                        if t < stor3[stor14[idx]]:
                            revert with 0, 17
                        if idx >= stor14.length:
                            revert with 0, 50
                        mem[0] = stor14[idx]
                        mem[32] = 4
                        _7456 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7456] = 30
                        mem[_7456 + 32] = 'SafeMath: subtraction overflow'
                        if stor4[stor14[idx]] <= s:
                            if s < stor4[stor14[idx]]:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s - stor4[stor14[idx]]
                            t = t - stor3[stor14[idx]]
                            continue 
                        _7528 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _7528 + 68] = mem[idx + _7456 + 32]
                            idx = idx + 32
                            continue 
                        mem[_7528 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _7528 + -mem[64] + 100
                    _6808 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6808] = 26
                    mem[_6808 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _6928 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6928 + 68] = mem[idx + _6808 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6928 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _6928 + -mem[64] + 100
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            return 0
                        if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _8235 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8235] = 30
                        mem[_8235 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor16 / totalSupply > 0:
                            _8395 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8395 + 68] = mem[idx + _8235 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8395 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8395 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 100 * stor16 / totalSupply:
                            revert with 0, 17
                        _9232 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9232] = 30
                        mem[_9232 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _taxFee / 100 * stor16 / totalSupply:
                            if -1 * arg1 * _taxFee / 100 * stor16 / totalSupply < 0:
                                revert with 0, 17
                            return (-1 * arg1 * _taxFee / 100 * stor16 / totalSupply)
                        _9593 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _9593 + 68] = mem[idx + _9232 + 32]
                            idx = idx + 32
                            continue 
                        mem[_9593 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _9593 + -mem[64] + 100
                    if arg1 and stor16 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        _8234 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8234] = 30
                        mem[_8234 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor16 / totalSupply:
                            _8394 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8394 + 68] = mem[idx + _8234 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8394 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8394 + -mem[64] + 100
                        if arg1 * stor16 / totalSupply < 0:
                            revert with 0, 17
                        _9230 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9230] = 30
                        mem[_9230 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor16 / totalSupply:
                            if arg1 * stor16 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor16 / totalSupply)
                        _9592 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _9592 + 68] = mem[idx + _9230 + 32]
                            idx = idx + 32
                            continue 
                        mem[_9592 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _9592 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _8859 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8859] = 30
                    mem[_8859 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                        _9229 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _9229 + 68] = mem[idx + _8859 + 32]
                            idx = idx + 32
                            continue 
                        mem[_9229 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _9229 + -mem[64] + 100
                    if arg1 * stor16 / totalSupply < arg1 * _taxFee / 100 * stor16 / totalSupply:
                        revert with 0, 17
                    _10420 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10420] = 30
                    mem[_10420 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply):
                        if (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) < 0:
                            revert with 0, 17
                        return ((arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply))
                    _10859 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _10859 + 68] = mem[idx + _10420 + 32]
                        idx = idx + 32
                        continue 
                    mem[_10859 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _10859 + -mem[64] + 100
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if t >= stor16 / totalSupply:
                    if not s:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            return 0
                        if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _taxFee / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _taxFee / 100 * t / s:
                            revert with 0, 17
                        if 0 > -1 * arg1 * _taxFee / 100 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * _taxFee / 100 * t / s < 0:
                            revert with 0, 17
                        return (-1 * arg1 * _taxFee / 100 * t / s)
                    if arg1 and t / s > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        return (arg1 * t / s)
                    if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < arg1 * _taxFee / 100 * t / s:
                        revert with 0, 17
                    if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) < 0:
                        revert with 0, 17
                    return ((arg1 * t / s) - (arg1 * _taxFee / 100 * t / s))
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        return 0
                    if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _taxFee / 100 * stor16 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * _taxFee / 100 * stor16 / totalSupply:
                        revert with 0, 17
                    if 0 > -1 * arg1 * _taxFee / 100 * stor16 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * _taxFee / 100 * stor16 / totalSupply < 0:
                        revert with 0, 17
                    return (-1 * arg1 * _taxFee / 100 * stor16 / totalSupply)
                if arg1 and stor16 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    if 0 > arg1 * stor16 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor16 / totalSupply < 0:
                        revert with 0, 17
                    if 0 > arg1 * stor16 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor16 / totalSupply < 0:
                        revert with 0, 17
                    return (arg1 * stor16 / totalSupply)
                if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * _taxFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor16 / totalSupply < arg1 * _taxFee / 100 * stor16 / totalSupply:
                    revert with 0, 17
                if 0 > (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) < 0:
                    revert with 0, 17
                return ((arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply))
            if arg1 and _liquidityFee > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * _liquidityFee / arg1 != _liquidityFee:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if arg1 * _taxFee / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * _taxFee / 100:
                revert with 0, 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if arg1 * _liquidityFee / 100 > arg1 - (arg1 * _taxFee / 100):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (arg1 * _taxFee / 100) < arg1 * _liquidityFee / 100:
                revert with 0, 17
            idx = 0
            s = totalSupply
            t = stor16
            while idx < stor14.length:
                mem[0] = stor14[idx]
                mem[32] = 3
                if stor3[stor14[idx]] > t:
                    _6707 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6707] = 26
                    mem[_6707 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _6803 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6803 + 68] = mem[idx + _6707 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6803 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _6803 + -mem[64] + 100
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            if not arg1 * _liquidityFee / 100:
                                return 0
                            if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                                revert with 0, 17
                            if not arg1 * _liquidityFee / 100:
                                revert with 0, 18
                            if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _8050 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8050] = 30
                            mem[_8050 + 32] = 'SafeMath: subtraction overflow'
                            _8844 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8844] = 30
                            mem[_8844 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _liquidityFee / 100 * stor16 / totalSupply <= 0:
                                if 0 < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                                    revert with 0, 17
                                return (-1 * arg1 * _liquidityFee / 100 * stor16 / totalSupply)
                            _9218 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9218 + 68] = mem[idx + _8844 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9218 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9218 + -mem[64] + 100
                        if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * _liquidityFee / 100:
                            _8049 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8049] = 30
                            mem[_8049 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _taxFee / 100 * stor16 / totalSupply > 0:
                                _8224 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8224 + 68] = mem[idx + _8049 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8224 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8224 + -mem[64] + 100
                            if 0 < arg1 * _taxFee / 100 * stor16 / totalSupply:
                                revert with 0, 17
                            _8842 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8842] = 30
                            mem[_8842 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * arg1 * _taxFee / 100 * stor16 / totalSupply:
                                if -1 * arg1 * _taxFee / 100 * stor16 / totalSupply < 0:
                                    revert with 0, 17
                                return (-1 * arg1 * _taxFee / 100 * stor16 / totalSupply)
                            _9217 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9217 + 68] = mem[idx + _8842 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9217 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9217 + -mem[64] + 100
                        if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _8585 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8585] = 30
                        mem[_8585 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor16 / totalSupply > 0:
                            _8841 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8841 + 68] = mem[idx + _8585 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8841 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8841 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 100 * stor16 / totalSupply:
                            revert with 0, 17
                        _9936 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9936] = 30
                        mem[_9936 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor16 / totalSupply <= -1 * arg1 * _taxFee / 100 * stor16 / totalSupply:
                            if -1 * arg1 * _taxFee / 100 * stor16 / totalSupply < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                                revert with 0, 17
                            return ((-1 * arg1 * _taxFee / 100 * stor16 / totalSupply) - (arg1 * _liquidityFee / 100 * stor16 / totalSupply))
                        _10402 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _10402 + 68] = mem[idx + _9936 + 32]
                            idx = idx + 32
                            continue 
                        mem[_10402 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _10402 + -mem[64] + 100
                    if arg1 and stor16 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _liquidityFee / 100:
                            _8048 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8048] = 30
                            mem[_8048 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor16 / totalSupply:
                                _8223 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8223 + 68] = mem[idx + _8048 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8223 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8223 + -mem[64] + 100
                            if arg1 * stor16 / totalSupply < 0:
                                revert with 0, 17
                            _8839 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8839] = 30
                            mem[_8839 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor16 / totalSupply:
                                if arg1 * stor16 / totalSupply < 0:
                                    revert with 0, 17
                                return (arg1 * stor16 / totalSupply)
                            _9216 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9216 + 68] = mem[idx + _8839 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9216 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9216 + -mem[64] + 100
                        if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _8584 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8584] = 30
                        mem[_8584 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor16 / totalSupply:
                            _8838 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8838 + 68] = mem[idx + _8584 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8838 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8838 + -mem[64] + 100
                        if arg1 * stor16 / totalSupply < 0:
                            revert with 0, 17
                        _9934 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9934] = 30
                        mem[_9934 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor16 / totalSupply <= arg1 * stor16 / totalSupply:
                            if arg1 * stor16 / totalSupply < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                                revert with 0, 17
                            return ((arg1 * stor16 / totalSupply) - (arg1 * _liquidityFee / 100 * stor16 / totalSupply))
                        _10400 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _10400 + 68] = mem[idx + _9934 + 32]
                            idx = idx + 32
                            continue 
                        mem[_10400 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _10400 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        _8583 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8583] = 30
                        mem[_8583 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                            _8837 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8837 + 68] = mem[idx + _8583 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8837 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8837 + -mem[64] + 100
                        if arg1 * stor16 / totalSupply < arg1 * _taxFee / 100 * stor16 / totalSupply:
                            revert with 0, 17
                        _9932 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9932] = 30
                        mem[_9932 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply):
                            if (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) < 0:
                                revert with 0, 17
                            return ((arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply))
                        _10399 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _10399 + 68] = mem[idx + _9932 + 32]
                            idx = idx + 32
                            continue 
                        mem[_10399 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _10399 + -mem[64] + 100
                    if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _9585 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_9585] = 30
                    mem[_9585 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                        _9931 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _9931 + 68] = mem[idx + _9585 + 32]
                            idx = idx + 32
                            continue 
                        mem[_9931 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _9931 + -mem[64] + 100
                    if arg1 * stor16 / totalSupply < arg1 * _taxFee / 100 * stor16 / totalSupply:
                        revert with 0, 17
                    _11227 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_11227] = 30
                    mem[_11227 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor16 / totalSupply <= (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply):
                        if (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                            revert with 0, 17
                        return ((arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) - (arg1 * _liquidityFee / 100 * stor16 / totalSupply))
                    _11619 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _11619 + 68] = mem[idx + _11227 + 32]
                        idx = idx + 32
                        continue 
                    mem[_11619 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _11619 + -mem[64] + 100
                if idx >= stor14.length:
                    revert with 0, 50
                mem[0] = stor14[idx]
                mem[32] = 4
                if stor4[stor14[idx]] <= s:
                    if idx >= stor14.length:
                        revert with 0, 50
                    mem[0] = stor14[idx]
                    mem[32] = 3
                    _6804 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6804] = 30
                    mem[_6804 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor14[idx]] > t:
                        _6924 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6924 + 68] = mem[idx + _6804 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6924 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6924 + -mem[64] + 100
                    if t < stor3[stor14[idx]]:
                        revert with 0, 17
                    if idx >= stor14.length:
                        revert with 0, 50
                    mem[0] = stor14[idx]
                    mem[32] = 4
                    _7453 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7453] = 30
                    mem[_7453 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor14[idx]] <= s:
                        if s < stor4[stor14[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor4[stor14[idx]]
                        t = t - stor3[stor14[idx]]
                        continue 
                    _7525 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _7525 + 68] = mem[idx + _7453 + 32]
                        idx = idx + 32
                        continue 
                    mem[_7525 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _7525 + -mem[64] + 100
                _6805 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6805] = 26
                mem[_6805 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _6925 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _6925 + 68] = mem[idx + _6805 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6925 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _6925 + -mem[64] + 100
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _liquidityFee / 100:
                            return 0
                        if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _8229 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8229] = 30
                        mem[_8229 + 32] = 'SafeMath: subtraction overflow'
                        _9226 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9226] = 30
                        mem[_9226 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor16 / totalSupply <= 0:
                            if 0 < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                                revert with 0, 17
                            return (-1 * arg1 * _liquidityFee / 100 * stor16 / totalSupply)
                        _9589 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _9589 + 68] = mem[idx + _9226 + 32]
                            idx = idx + 32
                            continue 
                        mem[_9589 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _9589 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        _8228 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8228] = 30
                        mem[_8228 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor16 / totalSupply > 0:
                            _8392 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8392 + 68] = mem[idx + _8228 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8392 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8392 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 100 * stor16 / totalSupply:
                            revert with 0, 17
                        _9224 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9224] = 30
                        mem[_9224 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _taxFee / 100 * stor16 / totalSupply:
                            if -1 * arg1 * _taxFee / 100 * stor16 / totalSupply < 0:
                                revert with 0, 17
                            return (-1 * arg1 * _taxFee / 100 * stor16 / totalSupply)
                        _9588 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _9588 + 68] = mem[idx + _9224 + 32]
                            idx = idx + 32
                            continue 
                        mem[_9588 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _9588 + -mem[64] + 100
                    if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _8847 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8847] = 30
                    mem[_8847 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor16 / totalSupply > 0:
                        _9223 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _9223 + 68] = mem[idx + _8847 + 32]
                            idx = idx + 32
                            continue 
                        mem[_9223 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _9223 + -mem[64] + 100
                    if 0 < arg1 * _taxFee / 100 * stor16 / totalSupply:
                        revert with 0, 17
                    _10410 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10410] = 30
                    mem[_10410 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor16 / totalSupply <= -1 * arg1 * _taxFee / 100 * stor16 / totalSupply:
                        if -1 * arg1 * _taxFee / 100 * stor16 / totalSupply < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                            revert with 0, 17
                        return ((-1 * arg1 * _taxFee / 100 * stor16 / totalSupply) - (arg1 * _liquidityFee / 100 * stor16 / totalSupply))
                    _10856 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _10856 + 68] = mem[idx + _10410 + 32]
                        idx = idx + 32
                        continue 
                    mem[_10856 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _10856 + -mem[64] + 100
                if arg1 and stor16 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    if not arg1 * _liquidityFee / 100:
                        _8227 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8227] = 30
                        mem[_8227 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor16 / totalSupply:
                            _8391 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8391 + 68] = mem[idx + _8227 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8391 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8391 + -mem[64] + 100
                        if arg1 * stor16 / totalSupply < 0:
                            revert with 0, 17
                        _9221 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9221] = 30
                        mem[_9221 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor16 / totalSupply:
                            if arg1 * stor16 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor16 / totalSupply)
                        _9587 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _9587 + 68] = mem[idx + _9221 + 32]
                            idx = idx + 32
                            continue 
                        mem[_9587 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _9587 + -mem[64] + 100
                    if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _8846 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8846] = 30
                    mem[_8846 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor16 / totalSupply:
                        _9220 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _9220 + 68] = mem[idx + _8846 + 32]
                            idx = idx + 32
                            continue 
                        mem[_9220 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _9220 + -mem[64] + 100
                    if arg1 * stor16 / totalSupply < 0:
                        revert with 0, 17
                    _10408 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10408] = 30
                    mem[_10408 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor16 / totalSupply <= arg1 * stor16 / totalSupply:
                        if arg1 * stor16 / totalSupply < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                            revert with 0, 17
                        return ((arg1 * stor16 / totalSupply) - (arg1 * _liquidityFee / 100 * stor16 / totalSupply))
                    _10854 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _10854 + 68] = mem[idx + _10408 + 32]
                        idx = idx + 32
                        continue 
                    mem[_10854 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _10854 + -mem[64] + 100
                if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _liquidityFee / 100:
                    _8845 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8845] = 30
                    mem[_8845 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                        _9219 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _9219 + 68] = mem[idx + _8845 + 32]
                            idx = idx + 32
                            continue 
                        mem[_9219 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _9219 + -mem[64] + 100
                    if arg1 * stor16 / totalSupply < arg1 * _taxFee / 100 * stor16 / totalSupply:
                        revert with 0, 17
                    _10406 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10406] = 30
                    mem[_10406 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply):
                        if (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) < 0:
                            revert with 0, 17
                        return ((arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply))
                    _10853 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _10853 + 68] = mem[idx + _10406 + 32]
                        idx = idx + 32
                        continue 
                    mem[_10853 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _10853 + -mem[64] + 100
                if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                    revert with 0, 17
                if not arg1 * _liquidityFee / 100:
                    revert with 0, 18
                if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _9939 = mem[64]
                mem[64] = mem[64] + 64
                mem[_9939] = 30
                mem[_9939 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                    _10405 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _10405 + 68] = mem[idx + _9939 + 32]
                        idx = idx + 32
                        continue 
                    mem[_10405 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _10405 + -mem[64] + 100
                if arg1 * stor16 / totalSupply < arg1 * _taxFee / 100 * stor16 / totalSupply:
                    revert with 0, 17
                _11623 = mem[64]
                mem[64] = mem[64] + 64
                mem[_11623] = 30
                mem[_11623 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor16 / totalSupply <= (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply):
                    if (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                        revert with 0, 17
                    return ((arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) - (arg1 * _liquidityFee / 100 * stor16 / totalSupply))
                _11907 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _11907 + 68] = mem[idx + _11623 + 32]
                    idx = idx + 32
                    continue 
                mem[_11907 + 98] = 0
                revert with memory
                  from mem[64]
                   len _11907 + -mem[64] + 100
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor16 / totalSupply:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _liquidityFee / 100:
                            return 0
                        if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _liquidityFee / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _liquidityFee / 100 * t / s:
                            revert with 0, 17
                        return (-1 * arg1 * _liquidityFee / 100 * t / s)
                    if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        if arg1 * _taxFee / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _taxFee / 100 * t / s:
                            revert with 0, 17
                        if 0 > -1 * arg1 * _taxFee / 100 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * _taxFee / 100 * t / s < 0:
                            revert with 0, 17
                        return (-1 * arg1 * _taxFee / 100 * t / s)
                    if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _taxFee / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * _taxFee / 100 * t / s:
                        revert with 0, 17
                    if arg1 * _liquidityFee / 100 * t / s > -1 * arg1 * _taxFee / 100 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * _taxFee / 100 * t / s < arg1 * _liquidityFee / 100 * t / s:
                        revert with 0, 17
                    return ((-1 * arg1 * _taxFee / 100 * t / s) - (arg1 * _liquidityFee / 100 * t / s))
                if arg1 and t / s > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    if not arg1 * _liquidityFee / 100:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        return (arg1 * t / s)
                    if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if arg1 * _liquidityFee / 100 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < arg1 * _liquidityFee / 100 * t / s:
                        revert with 0, 17
                    return ((arg1 * t / s) - (arg1 * _liquidityFee / 100 * t / s))
                if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _liquidityFee / 100:
                    if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < arg1 * _taxFee / 100 * t / s:
                        revert with 0, 17
                    if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) < 0:
                        revert with 0, 17
                    return ((arg1 * t / s) - (arg1 * _taxFee / 100 * t / s))
                if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                    revert with 0, 17
                if not arg1 * _liquidityFee / 100:
                    revert with 0, 18
                if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < arg1 * _taxFee / 100 * t / s:
                    revert with 0, 17
                if arg1 * _liquidityFee / 100 * t / s > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) < arg1 * _liquidityFee / 100 * t / s:
                    revert with 0, 17
                return ((arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) - (arg1 * _liquidityFee / 100 * t / s))
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                if not arg1 * _taxFee / 100:
                    if not arg1 * _liquidityFee / 100:
                        return 0
                    if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _liquidityFee / 100 * stor16 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                        revert with 0, 17
                    return (-1 * arg1 * _liquidityFee / 100 * stor16 / totalSupply)
                if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _liquidityFee / 100:
                    if arg1 * _taxFee / 100 * stor16 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * _taxFee / 100 * stor16 / totalSupply:
                        revert with 0, 17
                    if 0 > -1 * arg1 * _taxFee / 100 * stor16 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * _taxFee / 100 * stor16 / totalSupply < 0:
                        revert with 0, 17
                    return (-1 * arg1 * _taxFee / 100 * stor16 / totalSupply)
                if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                    revert with 0, 17
                if not arg1 * _liquidityFee / 100:
                    revert with 0, 18
                if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * _taxFee / 100 * stor16 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * _taxFee / 100 * stor16 / totalSupply:
                    revert with 0, 17
                if arg1 * _liquidityFee / 100 * stor16 / totalSupply > -1 * arg1 * _taxFee / 100 * stor16 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * _taxFee / 100 * stor16 / totalSupply < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                    revert with 0, 17
                return ((-1 * arg1 * _taxFee / 100 * stor16 / totalSupply) - (arg1 * _liquidityFee / 100 * stor16 / totalSupply))
            if arg1 and stor16 / totalSupply > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _taxFee / 100:
                if not arg1 * _liquidityFee / 100:
                    if 0 > arg1 * stor16 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor16 / totalSupply < 0:
                        revert with 0, 17
                    if 0 > arg1 * stor16 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor16 / totalSupply < 0:
                        revert with 0, 17
                    return (arg1 * stor16 / totalSupply)
                if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                    revert with 0, 17
                if not arg1 * _liquidityFee / 100:
                    revert with 0, 18
                if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * stor16 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor16 / totalSupply < 0:
                    revert with 0, 17
                if arg1 * _liquidityFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor16 / totalSupply < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                    revert with 0, 17
                return ((arg1 * stor16 / totalSupply) - (arg1 * _liquidityFee / 100 * stor16 / totalSupply))
            if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                revert with 0, 17
            if not arg1 * _taxFee / 100:
                revert with 0, 18
            if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _liquidityFee / 100:
                if arg1 * _taxFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor16 / totalSupply < arg1 * _taxFee / 100 * stor16 / totalSupply:
                    revert with 0, 17
                if 0 > (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) < 0:
                    revert with 0, 17
                return ((arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply))
            if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                revert with 0, 17
            if not arg1 * _liquidityFee / 100:
                revert with 0, 18
            if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 * _taxFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor16 / totalSupply < arg1 * _taxFee / 100 * stor16 / totalSupply:
                revert with 0, 17
            if arg1 * _liquidityFee / 100 * stor16 / totalSupply > (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                revert with 0, 17
            return ((arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) - (arg1 * _liquidityFee / 100 * stor16 / totalSupply))
        if not _liquidityFee:
            if not arg1:
                mem[160] = 26
                mem[192] = 'SafeMath: division by zero'
                mem[224] = 30
                mem[256] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 < arg1 * _taxFee / 100:
                    revert with 0, 17
                mem[64] = 352
                mem[288] = 30
                mem[320] = 'SafeMath: subtraction overflow'
                if 0 > arg1 - (arg1 * _taxFee / 100):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 - (arg1 * _taxFee / 100) < 0:
                    revert with 0, 17
                idx = 0
                s = totalSupply
                t = stor16
                while idx < stor14.length:
                    mem[0] = stor14[idx]
                    mem[32] = 3
                    if stor3[stor14[idx]] > t:
                        _6712 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6712] = 26
                        mem[_6712 + 32] = 'SafeMath: division by zero'
                        if not totalSupply:
                            _6818 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _6818 + 68] = mem[idx + _6712 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6818 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _6818 + -mem[64] + 100
                        if not arg1:
                            if not arg1 * _taxFee / 100:
                                return 0
                            if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                                revert with 0, 17
                            if not arg1 * _taxFee / 100:
                                revert with 0, 18
                            if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _8088 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8088] = 30
                            mem[_8088 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _taxFee / 100 * stor16 / totalSupply > 0:
                                _8256 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8256 + 68] = mem[idx + _8088 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8256 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8256 + -mem[64] + 100
                            if 0 < arg1 * _taxFee / 100 * stor16 / totalSupply:
                                revert with 0, 17
                            _8910 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8910] = 30
                            mem[_8910 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * arg1 * _taxFee / 100 * stor16 / totalSupply:
                                if -1 * arg1 * _taxFee / 100 * stor16 / totalSupply < 0:
                                    revert with 0, 17
                                return (-1 * arg1 * _taxFee / 100 * stor16 / totalSupply)
                            _9265 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9265 + 68] = mem[idx + _8910 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9265 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9265 + -mem[64] + 100
                        if arg1 and stor16 / totalSupply > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * _taxFee / 100:
                            _8087 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8087] = 30
                            mem[_8087 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor16 / totalSupply:
                                _8255 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8255 + 68] = mem[idx + _8087 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8255 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8255 + -mem[64] + 100
                            if arg1 * stor16 / totalSupply < 0:
                                revert with 0, 17
                            _8908 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8908] = 30
                            mem[_8908 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor16 / totalSupply:
                                if arg1 * stor16 / totalSupply < 0:
                                    revert with 0, 17
                                return (arg1 * stor16 / totalSupply)
                            _9264 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9264 + 68] = mem[idx + _8908 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9264 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9264 + -mem[64] + 100
                        if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _8628 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8628] = 30
                        mem[_8628 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                            _8907 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8907 + 68] = mem[idx + _8628 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8907 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8907 + -mem[64] + 100
                        if arg1 * stor16 / totalSupply < arg1 * _taxFee / 100 * stor16 / totalSupply:
                            revert with 0, 17
                        _10014 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10014] = 30
                        mem[_10014 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply):
                            if (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) < 0:
                                revert with 0, 17
                            return ((arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply))
                        _10469 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _10469 + 68] = mem[idx + _10014 + 32]
                            idx = idx + 32
                            continue 
                        mem[_10469 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _10469 + -mem[64] + 100
                    if idx >= stor14.length:
                        revert with 0, 50
                    mem[0] = stor14[idx]
                    mem[32] = 4
                    if stor4[stor14[idx]] <= s:
                        if idx >= stor14.length:
                            revert with 0, 50
                        mem[0] = stor14[idx]
                        mem[32] = 3
                        _6819 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6819] = 30
                        mem[_6819 + 32] = 'SafeMath: subtraction overflow'
                        if stor3[stor14[idx]] > t:
                            _6939 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _6939 + 68] = mem[idx + _6819 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6939 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _6939 + -mem[64] + 100
                        if t < stor3[stor14[idx]]:
                            revert with 0, 17
                        if idx >= stor14.length:
                            revert with 0, 50
                        mem[0] = stor14[idx]
                        mem[32] = 4
                        _7468 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7468] = 30
                        mem[_7468 + 32] = 'SafeMath: subtraction overflow'
                        if stor4[stor14[idx]] <= s:
                            if s < stor4[stor14[idx]]:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s - stor4[stor14[idx]]
                            t = t - stor3[stor14[idx]]
                            continue 
                        _7540 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _7540 + 68] = mem[idx + _7468 + 32]
                            idx = idx + 32
                            continue 
                        mem[_7540 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _7540 + -mem[64] + 100
                    _6820 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6820] = 26
                    mem[_6820 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _6940 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6940 + 68] = mem[idx + _6820 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6940 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _6940 + -mem[64] + 100
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            return 0
                        if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _8260 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8260] = 30
                        mem[_8260 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor16 / totalSupply > 0:
                            _8411 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8411 + 68] = mem[idx + _8260 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8411 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8411 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 100 * stor16 / totalSupply:
                            revert with 0, 17
                        _9269 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9269] = 30
                        mem[_9269 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _taxFee / 100 * stor16 / totalSupply:
                            if -1 * arg1 * _taxFee / 100 * stor16 / totalSupply < 0:
                                revert with 0, 17
                            return (-1 * arg1 * _taxFee / 100 * stor16 / totalSupply)
                        _9616 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _9616 + 68] = mem[idx + _9269 + 32]
                            idx = idx + 32
                            continue 
                        mem[_9616 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _9616 + -mem[64] + 100
                    if arg1 and stor16 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        _8259 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8259] = 30
                        mem[_8259 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor16 / totalSupply:
                            _8410 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8410 + 68] = mem[idx + _8259 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8410 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8410 + -mem[64] + 100
                        if arg1 * stor16 / totalSupply < 0:
                            revert with 0, 17
                        _9267 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9267] = 30
                        mem[_9267 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor16 / totalSupply:
                            if arg1 * stor16 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor16 / totalSupply)
                        _9615 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _9615 + 68] = mem[idx + _9267 + 32]
                            idx = idx + 32
                            continue 
                        mem[_9615 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _9615 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _8912 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8912] = 30
                    mem[_8912 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                        _9266 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _9266 + 68] = mem[idx + _8912 + 32]
                            idx = idx + 32
                            continue 
                        mem[_9266 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _9266 + -mem[64] + 100
                    if arg1 * stor16 / totalSupply < arg1 * _taxFee / 100 * stor16 / totalSupply:
                        revert with 0, 17
                    _10472 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10472] = 30
                    mem[_10472 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply):
                        if (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) < 0:
                            revert with 0, 17
                        return ((arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply))
                    _10876 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _10876 + 68] = mem[idx + _10472 + 32]
                        idx = idx + 32
                        continue 
                    mem[_10876 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _10876 + -mem[64] + 100
            else:
                if arg1 and 0 > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if 0 / arg1:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[160] = 26
                mem[192] = 'SafeMath: division by zero'
                mem[224] = 30
                mem[256] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 < arg1 * _taxFee / 100:
                    revert with 0, 17
                mem[64] = 352
                mem[288] = 30
                mem[320] = 'SafeMath: subtraction overflow'
                if 0 > arg1 - (arg1 * _taxFee / 100):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 - (arg1 * _taxFee / 100) < 0:
                    revert with 0, 17
                idx = 0
                s = totalSupply
                t = stor16
                while idx < stor14.length:
                    mem[0] = stor14[idx]
                    mem[32] = 3
                    if stor3[stor14[idx]] > t:
                        _6711 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6711] = 26
                        mem[_6711 + 32] = 'SafeMath: division by zero'
                        if not totalSupply:
                            _6815 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _6815 + 68] = mem[idx + _6711 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6815 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _6815 + -mem[64] + 100
                        if not arg1:
                            if not arg1 * _taxFee / 100:
                                return 0
                            if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                                revert with 0, 17
                            if not arg1 * _taxFee / 100:
                                revert with 0, 18
                            if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _8081 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8081] = 30
                            mem[_8081 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _taxFee / 100 * stor16 / totalSupply > 0:
                                _8250 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8250 + 68] = mem[idx + _8081 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8250 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8250 + -mem[64] + 100
                            if 0 < arg1 * _taxFee / 100 * stor16 / totalSupply:
                                revert with 0, 17
                            _8898 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8898] = 30
                            mem[_8898 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * arg1 * _taxFee / 100 * stor16 / totalSupply:
                                if -1 * arg1 * _taxFee / 100 * stor16 / totalSupply < 0:
                                    revert with 0, 17
                                return (-1 * arg1 * _taxFee / 100 * stor16 / totalSupply)
                            _9258 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9258 + 68] = mem[idx + _8898 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9258 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9258 + -mem[64] + 100
                        if arg1 and stor16 / totalSupply > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * _taxFee / 100:
                            _8080 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8080] = 30
                            mem[_8080 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor16 / totalSupply:
                                _8249 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8249 + 68] = mem[idx + _8080 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8249 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8249 + -mem[64] + 100
                            if arg1 * stor16 / totalSupply < 0:
                                revert with 0, 17
                            _8896 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8896] = 30
                            mem[_8896 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor16 / totalSupply:
                                if arg1 * stor16 / totalSupply < 0:
                                    revert with 0, 17
                                return (arg1 * stor16 / totalSupply)
                            _9257 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9257 + 68] = mem[idx + _8896 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9257 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9257 + -mem[64] + 100
                        if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _8621 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8621] = 30
                        mem[_8621 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                            _8895 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8895 + 68] = mem[idx + _8621 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8895 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8895 + -mem[64] + 100
                        if arg1 * stor16 / totalSupply < arg1 * _taxFee / 100 * stor16 / totalSupply:
                            revert with 0, 17
                        _10001 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10001] = 30
                        mem[_10001 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply):
                            if (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) < 0:
                                revert with 0, 17
                            return ((arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply))
                        _10459 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _10459 + 68] = mem[idx + _10001 + 32]
                            idx = idx + 32
                            continue 
                        mem[_10459 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _10459 + -mem[64] + 100
                    if idx >= stor14.length:
                        revert with 0, 50
                    mem[0] = stor14[idx]
                    mem[32] = 4
                    if stor4[stor14[idx]] <= s:
                        if idx >= stor14.length:
                            revert with 0, 50
                        mem[0] = stor14[idx]
                        mem[32] = 3
                        _6816 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6816] = 30
                        mem[_6816 + 32] = 'SafeMath: subtraction overflow'
                        if stor3[stor14[idx]] > t:
                            _6936 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _6936 + 68] = mem[idx + _6816 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6936 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _6936 + -mem[64] + 100
                        if t < stor3[stor14[idx]]:
                            revert with 0, 17
                        if idx >= stor14.length:
                            revert with 0, 50
                        mem[0] = stor14[idx]
                        mem[32] = 4
                        _7465 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7465] = 30
                        mem[_7465 + 32] = 'SafeMath: subtraction overflow'
                        if stor4[stor14[idx]] <= s:
                            if s < stor4[stor14[idx]]:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s - stor4[stor14[idx]]
                            t = t - stor3[stor14[idx]]
                            continue 
                        _7537 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _7537 + 68] = mem[idx + _7465 + 32]
                            idx = idx + 32
                            continue 
                        mem[_7537 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _7537 + -mem[64] + 100
                    _6817 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6817] = 26
                    mem[_6817 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _6937 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6937 + 68] = mem[idx + _6817 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6937 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _6937 + -mem[64] + 100
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            return 0
                        if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _8254 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8254] = 30
                        mem[_8254 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor16 / totalSupply > 0:
                            _8408 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8408 + 68] = mem[idx + _8254 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8408 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8408 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 100 * stor16 / totalSupply:
                            revert with 0, 17
                        _9262 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9262] = 30
                        mem[_9262 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _taxFee / 100 * stor16 / totalSupply:
                            if -1 * arg1 * _taxFee / 100 * stor16 / totalSupply < 0:
                                revert with 0, 17
                            return (-1 * arg1 * _taxFee / 100 * stor16 / totalSupply)
                        _9612 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _9612 + 68] = mem[idx + _9262 + 32]
                            idx = idx + 32
                            continue 
                        mem[_9612 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _9612 + -mem[64] + 100
                    if arg1 and stor16 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        _8253 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8253] = 30
                        mem[_8253 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor16 / totalSupply:
                            _8407 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8407 + 68] = mem[idx + _8253 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8407 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8407 + -mem[64] + 100
                        if arg1 * stor16 / totalSupply < 0:
                            revert with 0, 17
                        _9260 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9260] = 30
                        mem[_9260 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor16 / totalSupply:
                            if arg1 * stor16 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor16 / totalSupply)
                        _9611 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _9611 + 68] = mem[idx + _9260 + 32]
                            idx = idx + 32
                            continue 
                        mem[_9611 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _9611 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _8900 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8900] = 30
                    mem[_8900 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                        _9259 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _9259 + 68] = mem[idx + _8900 + 32]
                            idx = idx + 32
                            continue 
                        mem[_9259 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _9259 + -mem[64] + 100
                    if arg1 * stor16 / totalSupply < arg1 * _taxFee / 100 * stor16 / totalSupply:
                        revert with 0, 17
                    _10462 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10462] = 30
                    mem[_10462 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply):
                        if (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) < 0:
                            revert with 0, 17
                        return ((arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply))
                    _10873 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _10873 + 68] = mem[idx + _10462 + 32]
                        idx = idx + 32
                        continue 
                    mem[_10873 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _10873 + -mem[64] + 100
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor16 / totalSupply:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        return 0
                    if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _taxFee / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * _taxFee / 100 * t / s:
                        revert with 0, 17
                    if 0 > -1 * arg1 * _taxFee / 100 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * _taxFee / 100 * t / s < 0:
                        revert with 0, 17
                    return (-1 * arg1 * _taxFee / 100 * t / s)
                if arg1 and t / s > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    return (arg1 * t / s)
                if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < arg1 * _taxFee / 100 * t / s:
                    revert with 0, 17
                if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) < 0:
                    revert with 0, 17
                return ((arg1 * t / s) - (arg1 * _taxFee / 100 * t / s))
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                if not arg1 * _taxFee / 100:
                    return 0
                if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * _taxFee / 100 * stor16 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * _taxFee / 100 * stor16 / totalSupply:
                    revert with 0, 17
                if 0 > -1 * arg1 * _taxFee / 100 * stor16 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * _taxFee / 100 * stor16 / totalSupply < 0:
                    revert with 0, 17
                return (-1 * arg1 * _taxFee / 100 * stor16 / totalSupply)
            if arg1 and stor16 / totalSupply > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _taxFee / 100:
                if 0 > arg1 * stor16 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor16 / totalSupply < 0:
                    revert with 0, 17
                if 0 > arg1 * stor16 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor16 / totalSupply < 0:
                    revert with 0, 17
                return (arg1 * stor16 / totalSupply)
            if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                revert with 0, 17
            if not arg1 * _taxFee / 100:
                revert with 0, 18
            if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 * _taxFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor16 / totalSupply < arg1 * _taxFee / 100 * stor16 / totalSupply:
                revert with 0, 17
            if 0 > (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) < 0:
                revert with 0, 17
            return ((arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply))
        if _liquidityFee and 7 > -1 / _liquidityFee:
            revert with 0, 17
        if not _liquidityFee:
            revert with 0, 18
        if 7 * _liquidityFee / _liquidityFee != 7:
            revert with 0, 'SafeMath: multiplication overflow'
        if not arg1:
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if arg1 * _taxFee / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * _taxFee / 100:
                revert with 0, 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if 0 > arg1 - (arg1 * _taxFee / 100):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (arg1 * _taxFee / 100) < 0:
                revert with 0, 17
            idx = 0
            s = totalSupply
            t = stor16
            while idx < stor14.length:
                mem[0] = stor14[idx]
                mem[32] = 3
                if stor3[stor14[idx]] > t:
                    _6710 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6710] = 26
                    mem[_6710 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _6812 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6812 + 68] = mem[idx + _6710 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6812 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _6812 + -mem[64] + 100
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            return 0
                        if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _8074 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8074] = 30
                        mem[_8074 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor16 / totalSupply > 0:
                            _8244 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8244 + 68] = mem[idx + _8074 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8244 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8244 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 100 * stor16 / totalSupply:
                            revert with 0, 17
                        _8886 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8886] = 30
                        mem[_8886 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _taxFee / 100 * stor16 / totalSupply:
                            if -1 * arg1 * _taxFee / 100 * stor16 / totalSupply < 0:
                                revert with 0, 17
                            return (-1 * arg1 * _taxFee / 100 * stor16 / totalSupply)
                        _9251 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _9251 + 68] = mem[idx + _8886 + 32]
                            idx = idx + 32
                            continue 
                        mem[_9251 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _9251 + -mem[64] + 100
                    if arg1 and stor16 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        _8073 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8073] = 30
                        mem[_8073 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor16 / totalSupply:
                            _8243 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8243 + 68] = mem[idx + _8073 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8243 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8243 + -mem[64] + 100
                        if arg1 * stor16 / totalSupply < 0:
                            revert with 0, 17
                        _8884 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8884] = 30
                        mem[_8884 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor16 / totalSupply:
                            if arg1 * stor16 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor16 / totalSupply)
                        _9250 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _9250 + 68] = mem[idx + _8884 + 32]
                            idx = idx + 32
                            continue 
                        mem[_9250 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _9250 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _8614 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8614] = 30
                    mem[_8614 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                        _8883 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _8883 + 68] = mem[idx + _8614 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8883 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _8883 + -mem[64] + 100
                    if arg1 * stor16 / totalSupply < arg1 * _taxFee / 100 * stor16 / totalSupply:
                        revert with 0, 17
                    _9988 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_9988] = 30
                    mem[_9988 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply):
                        if (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) < 0:
                            revert with 0, 17
                        return ((arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply))
                    _10449 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _10449 + 68] = mem[idx + _9988 + 32]
                        idx = idx + 32
                        continue 
                    mem[_10449 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _10449 + -mem[64] + 100
                if idx >= stor14.length:
                    revert with 0, 50
                mem[0] = stor14[idx]
                mem[32] = 4
                if stor4[stor14[idx]] <= s:
                    if idx >= stor14.length:
                        revert with 0, 50
                    mem[0] = stor14[idx]
                    mem[32] = 3
                    _6813 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6813] = 30
                    mem[_6813 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor14[idx]] > t:
                        _6933 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6933 + 68] = mem[idx + _6813 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6933 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6933 + -mem[64] + 100
                    if t < stor3[stor14[idx]]:
                        revert with 0, 17
                    if idx >= stor14.length:
                        revert with 0, 50
                    mem[0] = stor14[idx]
                    mem[32] = 4
                    _7462 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7462] = 30
                    mem[_7462 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor14[idx]] <= s:
                        if s < stor4[stor14[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor4[stor14[idx]]
                        t = t - stor3[stor14[idx]]
                        continue 
                    _7534 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _7534 + 68] = mem[idx + _7462 + 32]
                        idx = idx + 32
                        continue 
                    mem[_7534 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _7534 + -mem[64] + 100
                _6814 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6814] = 26
                mem[_6814 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _6934 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _6934 + 68] = mem[idx + _6814 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6934 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _6934 + -mem[64] + 100
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        return 0
                    if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _8248 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8248] = 30
                    mem[_8248 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor16 / totalSupply > 0:
                        _8405 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _8405 + 68] = mem[idx + _8248 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8405 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _8405 + -mem[64] + 100
                    if 0 < arg1 * _taxFee / 100 * stor16 / totalSupply:
                        revert with 0, 17
                    _9255 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_9255] = 30
                    mem[_9255 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * arg1 * _taxFee / 100 * stor16 / totalSupply:
                        if -1 * arg1 * _taxFee / 100 * stor16 / totalSupply < 0:
                            revert with 0, 17
                        return (-1 * arg1 * _taxFee / 100 * stor16 / totalSupply)
                    _9608 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _9608 + 68] = mem[idx + _9255 + 32]
                        idx = idx + 32
                        continue 
                    mem[_9608 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _9608 + -mem[64] + 100
                if arg1 and stor16 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    _8247 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8247] = 30
                    mem[_8247 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor16 / totalSupply:
                        _8404 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _8404 + 68] = mem[idx + _8247 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8404 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _8404 + -mem[64] + 100
                    if arg1 * stor16 / totalSupply < 0:
                        revert with 0, 17
                    _9253 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_9253] = 30
                    mem[_9253 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor16 / totalSupply:
                        if arg1 * stor16 / totalSupply < 0:
                            revert with 0, 17
                        return (arg1 * stor16 / totalSupply)
                    _9607 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _9607 + 68] = mem[idx + _9253 + 32]
                        idx = idx + 32
                        continue 
                    mem[_9607 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _9607 + -mem[64] + 100
                if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _8888 = mem[64]
                mem[64] = mem[64] + 64
                mem[_8888] = 30
                mem[_8888 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                    _9252 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _9252 + 68] = mem[idx + _8888 + 32]
                        idx = idx + 32
                        continue 
                    mem[_9252 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _9252 + -mem[64] + 100
                if arg1 * stor16 / totalSupply < arg1 * _taxFee / 100 * stor16 / totalSupply:
                    revert with 0, 17
                _10452 = mem[64]
                mem[64] = mem[64] + 64
                mem[_10452] = 30
                mem[_10452 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply):
                    if (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) < 0:
                        revert with 0, 17
                    return ((arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply))
                _10870 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _10870 + 68] = mem[idx + _10452 + 32]
                    idx = idx + 32
                    continue 
                mem[_10870 + 98] = 0
                revert with memory
                  from mem[64]
                   len _10870 + -mem[64] + 100
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor16 / totalSupply:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        return 0
                    if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _taxFee / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * _taxFee / 100 * t / s:
                        revert with 0, 17
                    if 0 > -1 * arg1 * _taxFee / 100 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * _taxFee / 100 * t / s < 0:
                        revert with 0, 17
                    return (-1 * arg1 * _taxFee / 100 * t / s)
                if arg1 and t / s > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    return (arg1 * t / s)
                if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < arg1 * _taxFee / 100 * t / s:
                    revert with 0, 17
                if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) < 0:
                    revert with 0, 17
                return ((arg1 * t / s) - (arg1 * _taxFee / 100 * t / s))
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                if not arg1 * _taxFee / 100:
                    return 0
                if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * _taxFee / 100 * stor16 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * _taxFee / 100 * stor16 / totalSupply:
                    revert with 0, 17
                if 0 > -1 * arg1 * _taxFee / 100 * stor16 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * _taxFee / 100 * stor16 / totalSupply < 0:
                    revert with 0, 17
                return (-1 * arg1 * _taxFee / 100 * stor16 / totalSupply)
            if arg1 and stor16 / totalSupply > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _taxFee / 100:
                if 0 > arg1 * stor16 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor16 / totalSupply < 0:
                    revert with 0, 17
                if 0 > arg1 * stor16 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor16 / totalSupply < 0:
                    revert with 0, 17
                return (arg1 * stor16 / totalSupply)
            if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                revert with 0, 17
            if not arg1 * _taxFee / 100:
                revert with 0, 18
            if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 * _taxFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor16 / totalSupply < arg1 * _taxFee / 100 * stor16 / totalSupply:
                revert with 0, 17
            if 0 > (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) < 0:
                revert with 0, 17
            return ((arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply))
        if arg1 and 7 * _liquidityFee > -1 / arg1:
            revert with 0, 17
        if not arg1:
            revert with 0, 18
        if 7 * arg1 * _liquidityFee / arg1 != 7 * _liquidityFee:
            revert with 0, 'SafeMath: multiplication overflow'
        mem[160] = 26
        mem[192] = 'SafeMath: division by zero'
        mem[224] = 30
        mem[256] = 'SafeMath: subtraction overflow'
        if arg1 * _taxFee / 100 > arg1:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 < arg1 * _taxFee / 100:
            revert with 0, 17
        mem[64] = 352
        mem[288] = 30
        mem[320] = 'SafeMath: subtraction overflow'
        if 7 * arg1 * _liquidityFee / 100 > arg1 - (arg1 * _taxFee / 100):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 - (arg1 * _taxFee / 100) < 7 * arg1 * _liquidityFee / 100:
            revert with 0, 17
        idx = 0
        s = totalSupply
        t = stor16
        while idx < stor14.length:
            mem[0] = stor14[idx]
            mem[32] = 3
            if stor3[stor14[idx]] > t:
                _6709 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6709] = 26
                mem[_6709 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _6809 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _6809 + 68] = mem[idx + _6709 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6809 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _6809 + -mem[64] + 100
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        if not 7 * arg1 * _liquidityFee / 100:
                            return 0
                        if 7 * arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / 7 * arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not 7 * arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply / 7 * arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _8066 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8066] = 30
                        mem[_8066 + 32] = 'SafeMath: subtraction overflow'
                        _8873 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8873] = 30
                        mem[_8873 + 32] = 'SafeMath: subtraction overflow'
                        if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply <= 0:
                            if 0 < 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                                revert with 0, 17
                            return (-1 * 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply)
                        _9241 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _9241 + 68] = mem[idx + _8873 + 32]
                            idx = idx + 32
                            continue 
                        mem[_9241 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _9241 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 7 * arg1 * _liquidityFee / 100:
                        _8065 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8065] = 30
                        mem[_8065 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor16 / totalSupply > 0:
                            _8237 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8237 + 68] = mem[idx + _8065 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8237 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8237 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 100 * stor16 / totalSupply:
                            revert with 0, 17
                        _8871 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8871] = 30
                        mem[_8871 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _taxFee / 100 * stor16 / totalSupply:
                            if -1 * arg1 * _taxFee / 100 * stor16 / totalSupply < 0:
                                revert with 0, 17
                            return (-1 * arg1 * _taxFee / 100 * stor16 / totalSupply)
                        _9240 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _9240 + 68] = mem[idx + _8871 + 32]
                            idx = idx + 32
                            continue 
                        mem[_9240 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _9240 + -mem[64] + 100
                    if 7 * arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / 7 * arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not 7 * arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply / 7 * arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _8605 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8605] = 30
                    mem[_8605 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor16 / totalSupply > 0:
                        _8870 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _8870 + 68] = mem[idx + _8605 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8870 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _8870 + -mem[64] + 100
                    if 0 < arg1 * _taxFee / 100 * stor16 / totalSupply:
                        revert with 0, 17
                    _9974 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_9974] = 30
                    mem[_9974 + 32] = 'SafeMath: subtraction overflow'
                    if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply <= -1 * arg1 * _taxFee / 100 * stor16 / totalSupply:
                        if -1 * arg1 * _taxFee / 100 * stor16 / totalSupply < 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                            revert with 0, 17
                        return ((-1 * arg1 * _taxFee / 100 * stor16 / totalSupply) - (7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply))
                    _10434 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _10434 + 68] = mem[idx + _9974 + 32]
                        idx = idx + 32
                        continue 
                    mem[_10434 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _10434 + -mem[64] + 100
                if arg1 and stor16 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    if not 7 * arg1 * _liquidityFee / 100:
                        _8064 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8064] = 30
                        mem[_8064 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor16 / totalSupply:
                            _8236 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8236 + 68] = mem[idx + _8064 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8236 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8236 + -mem[64] + 100
                        if arg1 * stor16 / totalSupply < 0:
                            revert with 0, 17
                        _8868 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8868] = 30
                        mem[_8868 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor16 / totalSupply:
                            if arg1 * stor16 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor16 / totalSupply)
                        _9239 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _9239 + 68] = mem[idx + _8868 + 32]
                            idx = idx + 32
                            continue 
                        mem[_9239 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _9239 + -mem[64] + 100
                    if 7 * arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / 7 * arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not 7 * arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply / 7 * arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _8604 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8604] = 30
                    mem[_8604 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor16 / totalSupply:
                        _8867 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _8867 + 68] = mem[idx + _8604 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8867 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _8867 + -mem[64] + 100
                    if arg1 * stor16 / totalSupply < 0:
                        revert with 0, 17
                    _9972 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_9972] = 30
                    mem[_9972 + 32] = 'SafeMath: subtraction overflow'
                    if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply <= arg1 * stor16 / totalSupply:
                        if arg1 * stor16 / totalSupply < 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                            revert with 0, 17
                        return ((arg1 * stor16 / totalSupply) - (7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply))
                    _10432 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _10432 + 68] = mem[idx + _9972 + 32]
                        idx = idx + 32
                        continue 
                    mem[_10432 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _10432 + -mem[64] + 100
                if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 7 * arg1 * _liquidityFee / 100:
                    _8603 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8603] = 30
                    mem[_8603 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                        _8866 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _8866 + 68] = mem[idx + _8603 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8866 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _8866 + -mem[64] + 100
                    if arg1 * stor16 / totalSupply < arg1 * _taxFee / 100 * stor16 / totalSupply:
                        revert with 0, 17
                    _9970 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_9970] = 30
                    mem[_9970 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply):
                        if (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) < 0:
                            revert with 0, 17
                        return ((arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply))
                    _10431 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _10431 + 68] = mem[idx + _9970 + 32]
                        idx = idx + 32
                        continue 
                    mem[_10431 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _10431 + -mem[64] + 100
                if 7 * arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / 7 * arg1 * _liquidityFee / 100:
                    revert with 0, 17
                if not 7 * arg1 * _liquidityFee / 100:
                    revert with 0, 18
                if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply / 7 * arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _9600 = mem[64]
                mem[64] = mem[64] + 64
                mem[_9600] = 30
                mem[_9600 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                    _9969 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _9969 + 68] = mem[idx + _9600 + 32]
                        idx = idx + 32
                        continue 
                    mem[_9969 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _9969 + -mem[64] + 100
                if arg1 * stor16 / totalSupply < arg1 * _taxFee / 100 * stor16 / totalSupply:
                    revert with 0, 17
                _11256 = mem[64]
                mem[64] = mem[64] + 64
                mem[_11256] = 30
                mem[_11256 + 32] = 'SafeMath: subtraction overflow'
                if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply <= (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply):
                    if (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) < 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                        revert with 0, 17
                    return ((arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) - (7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply))
                _11649 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _11649 + 68] = mem[idx + _11256 + 32]
                    idx = idx + 32
                    continue 
                mem[_11649 + 98] = 0
                revert with memory
                  from mem[64]
                   len _11649 + -mem[64] + 100
            if idx >= stor14.length:
                revert with 0, 50
            mem[0] = stor14[idx]
            mem[32] = 4
            if stor4[stor14[idx]] <= s:
                if idx >= stor14.length:
                    revert with 0, 50
                mem[0] = stor14[idx]
                mem[32] = 3
                _6810 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6810] = 30
                mem[_6810 + 32] = 'SafeMath: subtraction overflow'
                if stor3[stor14[idx]] > t:
                    _6930 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6930 + 68] = mem[idx + _6810 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6930 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6930 + -mem[64] + 100
                if t < stor3[stor14[idx]]:
                    revert with 0, 17
                if idx >= stor14.length:
                    revert with 0, 50
                mem[0] = stor14[idx]
                mem[32] = 4
                _7459 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7459] = 30
                mem[_7459 + 32] = 'SafeMath: subtraction overflow'
                if stor4[stor14[idx]] <= s:
                    if s < stor4[stor14[idx]]:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s - stor4[stor14[idx]]
                    t = t - stor3[stor14[idx]]
                    continue 
                _7531 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _7531 + 68] = mem[idx + _7459 + 32]
                    idx = idx + 32
                    continue 
                mem[_7531 + 98] = 0
                revert with memory
                  from mem[64]
                   len _7531 + -mem[64] + 100
            _6811 = mem[64]
            mem[64] = mem[64] + 64
            mem[_6811] = 26
            mem[_6811 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                _6931 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _6931 + 68] = mem[idx + _6811 + 32]
                    idx = idx + 32
                    continue 
                mem[_6931 + 94] = 0
                revert with memory
                  from mem[64]
                   len _6931 + -mem[64] + 100
            if not arg1:
                if not arg1 * _taxFee / 100:
                    if not 7 * arg1 * _liquidityFee / 100:
                        return 0
                    if 7 * arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / 7 * arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not 7 * arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply / 7 * arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _8242 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8242] = 30
                    mem[_8242 + 32] = 'SafeMath: subtraction overflow'
                    _9249 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_9249] = 30
                    mem[_9249 + 32] = 'SafeMath: subtraction overflow'
                    if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply <= 0:
                        if 0 < 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                            revert with 0, 17
                        return (-1 * 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply)
                    _9604 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _9604 + 68] = mem[idx + _9249 + 32]
                        idx = idx + 32
                        continue 
                    mem[_9604 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _9604 + -mem[64] + 100
                if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 7 * arg1 * _liquidityFee / 100:
                    _8241 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8241] = 30
                    mem[_8241 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor16 / totalSupply > 0:
                        _8402 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _8402 + 68] = mem[idx + _8241 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8402 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _8402 + -mem[64] + 100
                    if 0 < arg1 * _taxFee / 100 * stor16 / totalSupply:
                        revert with 0, 17
                    _9247 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_9247] = 30
                    mem[_9247 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * arg1 * _taxFee / 100 * stor16 / totalSupply:
                        if -1 * arg1 * _taxFee / 100 * stor16 / totalSupply < 0:
                            revert with 0, 17
                        return (-1 * arg1 * _taxFee / 100 * stor16 / totalSupply)
                    _9603 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _9603 + 68] = mem[idx + _9247 + 32]
                        idx = idx + 32
                        continue 
                    mem[_9603 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _9603 + -mem[64] + 100
                if 7 * arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / 7 * arg1 * _liquidityFee / 100:
                    revert with 0, 17
                if not 7 * arg1 * _liquidityFee / 100:
                    revert with 0, 18
                if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply / 7 * arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _8876 = mem[64]
                mem[64] = mem[64] + 64
                mem[_8876] = 30
                mem[_8876 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor16 / totalSupply > 0:
                    _9246 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _9246 + 68] = mem[idx + _8876 + 32]
                        idx = idx + 32
                        continue 
                    mem[_9246 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _9246 + -mem[64] + 100
                if 0 < arg1 * _taxFee / 100 * stor16 / totalSupply:
                    revert with 0, 17
                _10442 = mem[64]
                mem[64] = mem[64] + 64
                mem[_10442] = 30
                mem[_10442 + 32] = 'SafeMath: subtraction overflow'
                if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply <= -1 * arg1 * _taxFee / 100 * stor16 / totalSupply:
                    if -1 * arg1 * _taxFee / 100 * stor16 / totalSupply < 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                        revert with 0, 17
                    return ((-1 * arg1 * _taxFee / 100 * stor16 / totalSupply) - (7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply))
                _10867 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _10867 + 68] = mem[idx + _10442 + 32]
                    idx = idx + 32
                    continue 
                mem[_10867 + 98] = 0
                revert with memory
                  from mem[64]
                   len _10867 + -mem[64] + 100
            if arg1 and stor16 / totalSupply > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _taxFee / 100:
                if not 7 * arg1 * _liquidityFee / 100:
                    _8240 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8240] = 30
                    mem[_8240 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor16 / totalSupply:
                        _8401 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _8401 + 68] = mem[idx + _8240 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8401 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _8401 + -mem[64] + 100
                    if arg1 * stor16 / totalSupply < 0:
                        revert with 0, 17
                    _9244 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_9244] = 30
                    mem[_9244 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor16 / totalSupply:
                        if arg1 * stor16 / totalSupply < 0:
                            revert with 0, 17
                        return (arg1 * stor16 / totalSupply)
                    _9602 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _9602 + 68] = mem[idx + _9244 + 32]
                        idx = idx + 32
                        continue 
                    mem[_9602 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _9602 + -mem[64] + 100
                if 7 * arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / 7 * arg1 * _liquidityFee / 100:
                    revert with 0, 17
                if not 7 * arg1 * _liquidityFee / 100:
                    revert with 0, 18
                if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply / 7 * arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _8875 = mem[64]
                mem[64] = mem[64] + 64
                mem[_8875] = 30
                mem[_8875 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor16 / totalSupply:
                    _9243 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _9243 + 68] = mem[idx + _8875 + 32]
                        idx = idx + 32
                        continue 
                    mem[_9243 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _9243 + -mem[64] + 100
                if arg1 * stor16 / totalSupply < 0:
                    revert with 0, 17
                _10440 = mem[64]
                mem[64] = mem[64] + 64
                mem[_10440] = 30
                mem[_10440 + 32] = 'SafeMath: subtraction overflow'
                if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply <= arg1 * stor16 / totalSupply:
                    if arg1 * stor16 / totalSupply < 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                        revert with 0, 17
                    return ((arg1 * stor16 / totalSupply) - (7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply))
                _10865 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _10865 + 68] = mem[idx + _10440 + 32]
                    idx = idx + 32
                    continue 
                mem[_10865 + 98] = 0
                revert with memory
                  from mem[64]
                   len _10865 + -mem[64] + 100
            if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                revert with 0, 17
            if not arg1 * _taxFee / 100:
                revert with 0, 18
            if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 7 * arg1 * _liquidityFee / 100:
                _8874 = mem[64]
                mem[64] = mem[64] + 64
                mem[_8874] = 30
                mem[_8874 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                    _9242 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _9242 + 68] = mem[idx + _8874 + 32]
                        idx = idx + 32
                        continue 
                    mem[_9242 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _9242 + -mem[64] + 100
                if arg1 * stor16 / totalSupply < arg1 * _taxFee / 100 * stor16 / totalSupply:
                    revert with 0, 17
                _10438 = mem[64]
                mem[64] = mem[64] + 64
                mem[_10438] = 30
                mem[_10438 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply):
                    if (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) < 0:
                        revert with 0, 17
                    return ((arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply))
                _10864 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _10864 + 68] = mem[idx + _10438 + 32]
                    idx = idx + 32
                    continue 
                mem[_10864 + 98] = 0
                revert with memory
                  from mem[64]
                   len _10864 + -mem[64] + 100
            if 7 * arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / 7 * arg1 * _liquidityFee / 100:
                revert with 0, 17
            if not 7 * arg1 * _liquidityFee / 100:
                revert with 0, 18
            if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply / 7 * arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            _9977 = mem[64]
            mem[64] = mem[64] + 64
            mem[_9977] = 30
            mem[_9977 + 32] = 'SafeMath: subtraction overflow'
            if arg1 * _taxFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                _10437 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _10437 + 68] = mem[idx + _9977 + 32]
                    idx = idx + 32
                    continue 
                mem[_10437 + 98] = 0
                revert with memory
                  from mem[64]
                   len _10437 + -mem[64] + 100
            if arg1 * stor16 / totalSupply < arg1 * _taxFee / 100 * stor16 / totalSupply:
                revert with 0, 17
            _11653 = mem[64]
            mem[64] = mem[64] + 64
            mem[_11653] = 30
            mem[_11653 + 32] = 'SafeMath: subtraction overflow'
            if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply <= (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply):
                if (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) < 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                    revert with 0, 17
                return ((arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) - (7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply))
            _11912 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _11912 + 68] = mem[idx + _11653 + 32]
                idx = idx + 32
                continue 
            mem[_11912 + 98] = 0
            revert with memory
              from mem[64]
               len _11912 + -mem[64] + 100
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if t >= stor16 / totalSupply:
            if not s:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                if not arg1 * _taxFee / 100:
                    if not 7 * arg1 * _liquidityFee / 100:
                        return 0
                    if 7 * arg1 * _liquidityFee / 100 and t / s > -1 / 7 * arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not 7 * arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if 7 * arg1 * _liquidityFee / 100 * t / s / 7 * arg1 * _liquidityFee / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 7 * arg1 * _liquidityFee / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < 7 * arg1 * _liquidityFee / 100 * t / s:
                        revert with 0, 17
                    return (-1 * 7 * arg1 * _liquidityFee / 100 * t / s)
                if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 7 * arg1 * _liquidityFee / 100:
                    if arg1 * _taxFee / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * _taxFee / 100 * t / s:
                        revert with 0, 17
                    if 0 > -1 * arg1 * _taxFee / 100 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * _taxFee / 100 * t / s < 0:
                        revert with 0, 17
                    return (-1 * arg1 * _taxFee / 100 * t / s)
                if 7 * arg1 * _liquidityFee / 100 and t / s > -1 / 7 * arg1 * _liquidityFee / 100:
                    revert with 0, 17
                if not 7 * arg1 * _liquidityFee / 100:
                    revert with 0, 18
                if 7 * arg1 * _liquidityFee / 100 * t / s / 7 * arg1 * _liquidityFee / 100 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * _taxFee / 100 * t / s > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * _taxFee / 100 * t / s:
                    revert with 0, 17
                if 7 * arg1 * _liquidityFee / 100 * t / s > -1 * arg1 * _taxFee / 100 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * _taxFee / 100 * t / s < 7 * arg1 * _liquidityFee / 100 * t / s:
                    revert with 0, 17
                return ((-1 * arg1 * _taxFee / 100 * t / s) - (7 * arg1 * _liquidityFee / 100 * t / s))
            if arg1 and t / s > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * t / s / arg1 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _taxFee / 100:
                if not 7 * arg1 * _liquidityFee / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    return (arg1 * t / s)
                if 7 * arg1 * _liquidityFee / 100 and t / s > -1 / 7 * arg1 * _liquidityFee / 100:
                    revert with 0, 17
                if not 7 * arg1 * _liquidityFee / 100:
                    revert with 0, 18
                if 7 * arg1 * _liquidityFee / 100 * t / s / 7 * arg1 * _liquidityFee / 100 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < 0:
                    revert with 0, 17
                if 7 * arg1 * _liquidityFee / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < 7 * arg1 * _liquidityFee / 100 * t / s:
                    revert with 0, 17
                return ((arg1 * t / s) - (7 * arg1 * _liquidityFee / 100 * t / s))
            if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                revert with 0, 17
            if not arg1 * _taxFee / 100:
                revert with 0, 18
            if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 7 * arg1 * _liquidityFee / 100:
                if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < arg1 * _taxFee / 100 * t / s:
                    revert with 0, 17
                if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) < 0:
                    revert with 0, 17
                return ((arg1 * t / s) - (arg1 * _taxFee / 100 * t / s))
            if 7 * arg1 * _liquidityFee / 100 and t / s > -1 / 7 * arg1 * _liquidityFee / 100:
                revert with 0, 17
            if not 7 * arg1 * _liquidityFee / 100:
                revert with 0, 18
            if 7 * arg1 * _liquidityFee / 100 * t / s / 7 * arg1 * _liquidityFee / 100 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * t / s < arg1 * _taxFee / 100 * t / s:
                revert with 0, 17
            if 7 * arg1 * _liquidityFee / 100 * t / s > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) < 7 * arg1 * _liquidityFee / 100 * t / s:
                revert with 0, 17
            return ((arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) - (7 * arg1 * _liquidityFee / 100 * t / s))
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if not arg1:
            if not arg1 * _taxFee / 100:
                if not 7 * arg1 * _liquidityFee / 100:
                    return 0
                if 7 * arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / 7 * arg1 * _liquidityFee / 100:
                    revert with 0, 17
                if not 7 * arg1 * _liquidityFee / 100:
                    revert with 0, 18
                if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply / 7 * arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                    revert with 0, 17
                return (-1 * 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply)
            if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                revert with 0, 17
            if not arg1 * _taxFee / 100:
                revert with 0, 18
            if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 7 * arg1 * _liquidityFee / 100:
                if arg1 * _taxFee / 100 * stor16 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * _taxFee / 100 * stor16 / totalSupply:
                    revert with 0, 17
                if 0 > -1 * arg1 * _taxFee / 100 * stor16 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * _taxFee / 100 * stor16 / totalSupply < 0:
                    revert with 0, 17
                return (-1 * arg1 * _taxFee / 100 * stor16 / totalSupply)
            if 7 * arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / 7 * arg1 * _liquidityFee / 100:
                revert with 0, 17
            if not 7 * arg1 * _liquidityFee / 100:
                revert with 0, 18
            if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply / 7 * arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 * _taxFee / 100 * stor16 / totalSupply > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < arg1 * _taxFee / 100 * stor16 / totalSupply:
                revert with 0, 17
            if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply > -1 * arg1 * _taxFee / 100 * stor16 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if -1 * arg1 * _taxFee / 100 * stor16 / totalSupply < 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                revert with 0, 17
            return ((-1 * arg1 * _taxFee / 100 * stor16 / totalSupply) - (7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply))
        if arg1 and stor16 / totalSupply > -1 / arg1:
            revert with 0, 17
        if not arg1:
            revert with 0, 18
        if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
            revert with 0, 'SafeMath: multiplication overflow'
        if not arg1 * _taxFee / 100:
            if not 7 * arg1 * _liquidityFee / 100:
                if 0 > arg1 * stor16 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor16 / totalSupply < 0:
                    revert with 0, 17
                if 0 > arg1 * stor16 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor16 / totalSupply < 0:
                    revert with 0, 17
                return (arg1 * stor16 / totalSupply)
            if 7 * arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / 7 * arg1 * _liquidityFee / 100:
                revert with 0, 17
            if not 7 * arg1 * _liquidityFee / 100:
                revert with 0, 18
            if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply / 7 * arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 > arg1 * stor16 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor16 / totalSupply < 0:
                revert with 0, 17
            if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor16 / totalSupply < 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                revert with 0, 17
            return ((arg1 * stor16 / totalSupply) - (7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply))
        if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
            revert with 0, 17
        if not arg1 * _taxFee / 100:
            revert with 0, 18
        if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 7 * arg1 * _liquidityFee / 100:
            if arg1 * _taxFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor16 / totalSupply < arg1 * _taxFee / 100 * stor16 / totalSupply:
                revert with 0, 17
            if 0 > (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) < 0:
                revert with 0, 17
            return ((arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply))
        if 7 * arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / 7 * arg1 * _liquidityFee / 100:
            revert with 0, 17
        if not 7 * arg1 * _liquidityFee / 100:
            revert with 0, 18
        if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply / 7 * arg1 * _liquidityFee / 100 != stor16 / totalSupply:
            revert with 0, 'SafeMath: multiplication overflow'
        if arg1 * _taxFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 * stor16 / totalSupply < arg1 * _taxFee / 100 * stor16 / totalSupply:
            revert with 0, 17
        if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply > (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) < 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply:
            revert with 0, 17
        return ((arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) - (7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply))
    if not arg1:
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if launchedAt > -4:
            revert with 0, 17
        if launchedAt + 3 < launchedAt:
            revert with 0, 'SafeMath: addition overflow'
        if launchedAt + 3 < block.number:
            if not arg1:
                mem[160] = 26
                mem[192] = 'SafeMath: division by zero'
                mem[224] = 30
                mem[256] = 'SafeMath: subtraction overflow'
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 < 0:
                    revert with 0, 17
                mem[64] = 352
                mem[288] = 30
                mem[320] = 'SafeMath: subtraction overflow'
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 < 0:
                    revert with 0, 17
                idx = 0
                s = totalSupply
                t = stor16
                while idx < stor14.length:
                    mem[0] = stor14[idx]
                    mem[32] = 3
                    if stor3[stor14[idx]] > t:
                        _6726 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6726] = 26
                        mem[_6726 + 32] = 'SafeMath: division by zero'
                        if not totalSupply:
                            _6860 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _6860 + 68] = mem[idx + _6726 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6860 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _6860 + -mem[64] + 100
                        if not arg1:
                            return 0
                        if arg1 and stor16 / totalSupply > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _8164 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8164] = 30
                        mem[_8164 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor16 / totalSupply:
                            _8323 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8323 + 68] = mem[idx + _8164 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8323 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8323 + -mem[64] + 100
                        if arg1 * stor16 / totalSupply < 0:
                            revert with 0, 17
                        _9050 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9050] = 30
                        mem[_9050 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor16 / totalSupply:
                            if arg1 * stor16 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor16 / totalSupply)
                        _9367 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _9367 + 68] = mem[idx + _9050 + 32]
                            idx = idx + 32
                            continue 
                        mem[_9367 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _9367 + -mem[64] + 100
                    if idx >= stor14.length:
                        revert with 0, 50
                    mem[0] = stor14[idx]
                    mem[32] = 4
                    if stor4[stor14[idx]] <= s:
                        if idx >= stor14.length:
                            revert with 0, 50
                        mem[0] = stor14[idx]
                        mem[32] = 3
                        _6861 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6861] = 30
                        mem[_6861 + 32] = 'SafeMath: subtraction overflow'
                        if stor3[stor14[idx]] > t:
                            _6981 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _6981 + 68] = mem[idx + _6861 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6981 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _6981 + -mem[64] + 100
                        if t < stor3[stor14[idx]]:
                            revert with 0, 17
                        if idx >= stor14.length:
                            revert with 0, 50
                        mem[0] = stor14[idx]
                        mem[32] = 4
                        _7510 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7510] = 30
                        mem[_7510 + 32] = 'SafeMath: subtraction overflow'
                        if stor4[stor14[idx]] <= s:
                            if s < stor4[stor14[idx]]:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s - stor4[stor14[idx]]
                            t = t - stor3[stor14[idx]]
                            continue 
                        _7582 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _7582 + 68] = mem[idx + _7510 + 32]
                            idx = idx + 32
                            continue 
                        mem[_7582 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _7582 + -mem[64] + 100
                    _6862 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6862] = 26
                    mem[_6862 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _6982 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6982 + 68] = mem[idx + _6862 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6982 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _6982 + -mem[64] + 100
                    if not arg1:
                        return 0
                    if arg1 and stor16 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _8325 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8325] = 30
                    mem[_8325 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor16 / totalSupply:
                        _8462 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _8462 + 68] = mem[idx + _8325 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8462 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _8462 + -mem[64] + 100
                    if arg1 * stor16 / totalSupply < 0:
                        revert with 0, 17
                    _9368 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_9368] = 30
                    mem[_9368 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor16 / totalSupply:
                        if arg1 * stor16 / totalSupply < 0:
                            revert with 0, 17
                        return (arg1 * stor16 / totalSupply)
                    _9671 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _9671 + 68] = mem[idx + _9368 + 32]
                        idx = idx + 32
                        continue 
                    mem[_9671 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _9671 + -mem[64] + 100
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if t >= stor16 / totalSupply:
                    if not s:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not arg1:
                        return 0
                    if arg1 and t / s > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    return (arg1 * t / s)
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    return 0
                if arg1 and stor16 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * stor16 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor16 / totalSupply < 0:
                    revert with 0, 17
                if 0 > arg1 * stor16 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor16 / totalSupply < 0:
                    revert with 0, 17
            else:
                if arg1 and _liquidityFee > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * _liquidityFee / arg1 != _liquidityFee:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[160] = 26
                mem[192] = 'SafeMath: division by zero'
                mem[224] = 30
                mem[256] = 'SafeMath: subtraction overflow'
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 < 0:
                    revert with 0, 17
                mem[64] = 352
                mem[288] = 30
                mem[320] = 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 < arg1 * _liquidityFee / 100:
                    revert with 0, 17
                idx = 0
                s = totalSupply
                t = stor16
                while idx < stor14.length:
                    mem[0] = stor14[idx]
                    mem[32] = 3
                    if stor3[stor14[idx]] > t:
                        _6725 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6725] = 26
                        mem[_6725 + 32] = 'SafeMath: division by zero'
                        if not totalSupply:
                            _6857 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _6857 + 68] = mem[idx + _6725 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6857 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _6857 + -mem[64] + 100
                        if not arg1:
                            if not arg1 * _liquidityFee / 100:
                                return 0
                            if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                                revert with 0, 17
                            if not arg1 * _liquidityFee / 100:
                                revert with 0, 18
                            if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _8160 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8160] = 30
                            mem[_8160 + 32] = 'SafeMath: subtraction overflow'
                            _9044 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9044] = 30
                            mem[_9044 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _liquidityFee / 100 * stor16 / totalSupply <= 0:
                                if 0 < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                                    revert with 0, 17
                                else:
                                    return 0
                            _9362 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9362 + 68] = mem[idx + _9044 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9362 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9362 + -mem[64] + 100
                        if arg1 and stor16 / totalSupply > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * _liquidityFee / 100:
                            _8159 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8159] = 30
                            mem[_8159 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor16 / totalSupply:
                                _8319 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8319 + 68] = mem[idx + _8159 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8319 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8319 + -mem[64] + 100
                            if arg1 * stor16 / totalSupply < 0:
                                revert with 0, 17
                            _9042 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9042] = 30
                            mem[_9042 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor16 / totalSupply:
                                if arg1 * stor16 / totalSupply < 0:
                                    revert with 0, 17
                                return (arg1 * stor16 / totalSupply)
                            _9361 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9361 + 68] = mem[idx + _9042 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9361 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9361 + -mem[64] + 100
                        if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _8707 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8707] = 30
                        mem[_8707 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor16 / totalSupply:
                            _9041 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9041 + 68] = mem[idx + _8707 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9041 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9041 + -mem[64] + 100
                        if arg1 * stor16 / totalSupply < 0:
                            revert with 0, 17
                        _10169 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10169] = 30
                        mem[_10169 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor16 / totalSupply <= arg1 * stor16 / totalSupply:
                            if arg1 * stor16 / totalSupply < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                                revert with 0, 17
                            return (arg1 * stor16 / totalSupply)
                        _10599 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _10599 + 68] = mem[idx + _10169 + 32]
                            idx = idx + 32
                            continue 
                        mem[_10599 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _10599 + -mem[64] + 100
                    if idx >= stor14.length:
                        revert with 0, 50
                    mem[0] = stor14[idx]
                    mem[32] = 4
                    if stor4[stor14[idx]] <= s:
                        if idx >= stor14.length:
                            revert with 0, 50
                        mem[0] = stor14[idx]
                        mem[32] = 3
                        _6858 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6858] = 30
                        mem[_6858 + 32] = 'SafeMath: subtraction overflow'
                        if stor3[stor14[idx]] > t:
                            _6978 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _6978 + 68] = mem[idx + _6858 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6978 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _6978 + -mem[64] + 100
                        if t < stor3[stor14[idx]]:
                            revert with 0, 17
                        if idx >= stor14.length:
                            revert with 0, 50
                        mem[0] = stor14[idx]
                        mem[32] = 4
                        _7507 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7507] = 30
                        mem[_7507 + 32] = 'SafeMath: subtraction overflow'
                        if stor4[stor14[idx]] <= s:
                            if s < stor4[stor14[idx]]:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s - stor4[stor14[idx]]
                            t = t - stor3[stor14[idx]]
                            continue 
                        _7579 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _7579 + 68] = mem[idx + _7507 + 32]
                            idx = idx + 32
                            continue 
                        mem[_7579 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _7579 + -mem[64] + 100
                    _6859 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6859] = 26
                    mem[_6859 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _6979 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6979 + 68] = mem[idx + _6859 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6979 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _6979 + -mem[64] + 100
                    if not arg1:
                        if not arg1 * _liquidityFee / 100:
                            return 0
                        if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _8322 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8322] = 30
                        mem[_8322 + 32] = 'SafeMath: subtraction overflow'
                        _9366 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9366] = 30
                        mem[_9366 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor16 / totalSupply <= 0:
                            if 0 < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                                revert with 0, 17
                            else:
                                return 0
                        _9670 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _9670 + 68] = mem[idx + _9366 + 32]
                            idx = idx + 32
                            continue 
                        mem[_9670 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _9670 + -mem[64] + 100
                    if arg1 and stor16 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        _8321 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8321] = 30
                        mem[_8321 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor16 / totalSupply:
                            _8460 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8460 + 68] = mem[idx + _8321 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8460 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8460 + -mem[64] + 100
                        if arg1 * stor16 / totalSupply < 0:
                            revert with 0, 17
                        _9364 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9364] = 30
                        mem[_9364 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor16 / totalSupply:
                            if arg1 * stor16 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor16 / totalSupply)
                        _9669 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _9669 + 68] = mem[idx + _9364 + 32]
                            idx = idx + 32
                            continue 
                        mem[_9669 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _9669 + -mem[64] + 100
                    if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _9045 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_9045] = 30
                    mem[_9045 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor16 / totalSupply:
                        _9363 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _9363 + 68] = mem[idx + _9045 + 32]
                            idx = idx + 32
                            continue 
                        mem[_9363 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _9363 + -mem[64] + 100
                    if arg1 * stor16 / totalSupply < 0:
                        revert with 0, 17
                    _10602 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10602] = 30
                    mem[_10602 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor16 / totalSupply <= arg1 * stor16 / totalSupply:
                        if arg1 * stor16 / totalSupply < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                            revert with 0, 17
                        return (arg1 * stor16 / totalSupply)
                    _10917 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _10917 + 68] = mem[idx + _10602 + 32]
                        idx = idx + 32
                        continue 
                    mem[_10917 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _10917 + -mem[64] + 100
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if t >= stor16 / totalSupply:
                    if not s:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not arg1:
                        if arg1 * _liquidityFee / 100:
                            if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                                revert with 0, 17
                            if not arg1 * _liquidityFee / 100:
                                revert with 0, 18
                            if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * _liquidityFee / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _liquidityFee / 100 * t / s:
                                revert with 0, 17
                            else:
                                return 0
                        else:
                            return 0
                    if arg1 and t / s > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                    else:
                        if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if arg1 * _liquidityFee / 100 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < arg1 * _liquidityFee / 100 * t / s:
                            revert with 0, 17
                    return (arg1 * t / s)
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if arg1 * _liquidityFee / 100:
                        if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _liquidityFee / 100 * stor16 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                            revert with 0, 17
                        else:
                            return 0
                    else:
                        return 0
                if arg1 and stor16 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _liquidityFee / 100:
                    if 0 > arg1 * stor16 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor16 / totalSupply < 0:
                        revert with 0, 17
                    if 0 > arg1 * stor16 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor16 / totalSupply < 0:
                        revert with 0, 17
                else:
                    if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * stor16 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor16 / totalSupply < 0:
                        revert with 0, 17
                    if arg1 * _liquidityFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor16 / totalSupply < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                        revert with 0, 17
        else:
            if not _liquidityFee:
                if not arg1:
                    mem[160] = 26
                    mem[192] = 'SafeMath: division by zero'
                    mem[224] = 30
                    mem[256] = 'SafeMath: subtraction overflow'
                    if 0 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 < 0:
                        revert with 0, 17
                    mem[64] = 352
                    mem[288] = 30
                    mem[320] = 'SafeMath: subtraction overflow'
                    if 0 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 < 0:
                        revert with 0, 17
                    idx = 0
                    s = totalSupply
                    t = stor16
                    while idx < stor14.length:
                        mem[0] = stor14[idx]
                        mem[32] = 3
                        if stor3[stor14[idx]] > t:
                            _6730 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6730] = 26
                            mem[_6730 + 32] = 'SafeMath: division by zero'
                            if not totalSupply:
                                _6872 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _6872 + 68] = mem[idx + _6730 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_6872 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _6872 + -mem[64] + 100
                            if not arg1:
                                return 0
                            if arg1 and stor16 / totalSupply > -1 / arg1:
                                revert with 0, 17
                            if not arg1:
                                revert with 0, 18
                            if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _8178 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8178] = 30
                            mem[_8178 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor16 / totalSupply:
                                _8336 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8336 + 68] = mem[idx + _8178 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8336 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8336 + -mem[64] + 100
                            if arg1 * stor16 / totalSupply < 0:
                                revert with 0, 17
                            _9077 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9077] = 30
                            mem[_9077 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor16 / totalSupply:
                                if arg1 * stor16 / totalSupply < 0:
                                    revert with 0, 17
                                return (arg1 * stor16 / totalSupply)
                            _9384 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9384 + 68] = mem[idx + _9077 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9384 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9384 + -mem[64] + 100
                        if idx >= stor14.length:
                            revert with 0, 50
                        mem[0] = stor14[idx]
                        mem[32] = 4
                        if stor4[stor14[idx]] <= s:
                            if idx >= stor14.length:
                                revert with 0, 50
                            mem[0] = stor14[idx]
                            mem[32] = 3
                            _6873 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6873] = 30
                            mem[_6873 + 32] = 'SafeMath: subtraction overflow'
                            if stor3[stor14[idx]] > t:
                                _6993 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _6993 + 68] = mem[idx + _6873 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_6993 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _6993 + -mem[64] + 100
                            if t < stor3[stor14[idx]]:
                                revert with 0, 17
                            if idx >= stor14.length:
                                revert with 0, 50
                            mem[0] = stor14[idx]
                            mem[32] = 4
                            _7522 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7522] = 30
                            mem[_7522 + 32] = 'SafeMath: subtraction overflow'
                            if stor4[stor14[idx]] <= s:
                                if s < stor4[stor14[idx]]:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s - stor4[stor14[idx]]
                                t = t - stor3[stor14[idx]]
                                continue 
                            _7594 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _7594 + 68] = mem[idx + _7522 + 32]
                                idx = idx + 32
                                continue 
                            mem[_7594 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _7594 + -mem[64] + 100
                        _6874 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6874] = 26
                        mem[_6874 + 32] = 'SafeMath: division by zero'
                        if not totalSupply:
                            _6994 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _6994 + 68] = mem[idx + _6874 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6994 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _6994 + -mem[64] + 100
                        if not arg1:
                            return 0
                        if arg1 and stor16 / totalSupply > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _8338 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8338] = 30
                        mem[_8338 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor16 / totalSupply:
                            _8473 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8473 + 68] = mem[idx + _8338 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8473 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8473 + -mem[64] + 100
                        if arg1 * stor16 / totalSupply < 0:
                            revert with 0, 17
                        _9385 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9385] = 30
                        mem[_9385 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor16 / totalSupply:
                            if arg1 * stor16 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor16 / totalSupply)
                        _9678 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _9678 + 68] = mem[idx + _9385 + 32]
                            idx = idx + 32
                            continue 
                        mem[_9678 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _9678 + -mem[64] + 100
                else:
                    if arg1 and 0 > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if 0 / arg1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[160] = 26
                    mem[192] = 'SafeMath: division by zero'
                    mem[224] = 30
                    mem[256] = 'SafeMath: subtraction overflow'
                    if 0 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 < 0:
                        revert with 0, 17
                    mem[64] = 352
                    mem[288] = 30
                    mem[320] = 'SafeMath: subtraction overflow'
                    if 0 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 < 0:
                        revert with 0, 17
                    idx = 0
                    s = totalSupply
                    t = stor16
                    while idx < stor14.length:
                        mem[0] = stor14[idx]
                        mem[32] = 3
                        if stor3[stor14[idx]] > t:
                            _6729 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6729] = 26
                            mem[_6729 + 32] = 'SafeMath: division by zero'
                            if not totalSupply:
                                _6869 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _6869 + 68] = mem[idx + _6729 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_6869 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _6869 + -mem[64] + 100
                            if not arg1:
                                return 0
                            if arg1 and stor16 / totalSupply > -1 / arg1:
                                revert with 0, 17
                            if not arg1:
                                revert with 0, 18
                            if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _8175 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8175] = 30
                            mem[_8175 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor16 / totalSupply:
                                _8333 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8333 + 68] = mem[idx + _8175 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8333 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8333 + -mem[64] + 100
                            if arg1 * stor16 / totalSupply < 0:
                                revert with 0, 17
                            _9071 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9071] = 30
                            mem[_9071 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor16 / totalSupply:
                                if arg1 * stor16 / totalSupply < 0:
                                    revert with 0, 17
                                return (arg1 * stor16 / totalSupply)
                            _9381 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9381 + 68] = mem[idx + _9071 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9381 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9381 + -mem[64] + 100
                        if idx >= stor14.length:
                            revert with 0, 50
                        mem[0] = stor14[idx]
                        mem[32] = 4
                        if stor4[stor14[idx]] <= s:
                            if idx >= stor14.length:
                                revert with 0, 50
                            mem[0] = stor14[idx]
                            mem[32] = 3
                            _6870 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6870] = 30
                            mem[_6870 + 32] = 'SafeMath: subtraction overflow'
                            if stor3[stor14[idx]] > t:
                                _6990 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _6990 + 68] = mem[idx + _6870 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_6990 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _6990 + -mem[64] + 100
                            if t < stor3[stor14[idx]]:
                                revert with 0, 17
                            if idx >= stor14.length:
                                revert with 0, 50
                            mem[0] = stor14[idx]
                            mem[32] = 4
                            _7519 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7519] = 30
                            mem[_7519 + 32] = 'SafeMath: subtraction overflow'
                            if stor4[stor14[idx]] <= s:
                                if s < stor4[stor14[idx]]:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s - stor4[stor14[idx]]
                                t = t - stor3[stor14[idx]]
                                continue 
                            _7591 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _7591 + 68] = mem[idx + _7519 + 32]
                                idx = idx + 32
                                continue 
                            mem[_7591 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _7591 + -mem[64] + 100
                        _6871 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6871] = 26
                        mem[_6871 + 32] = 'SafeMath: division by zero'
                        if not totalSupply:
                            _6991 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _6991 + 68] = mem[idx + _6871 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6991 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _6991 + -mem[64] + 100
                        if not arg1:
                            return 0
                        if arg1 and stor16 / totalSupply > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _8335 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8335] = 30
                        mem[_8335 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor16 / totalSupply:
                            _8471 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8471 + 68] = mem[idx + _8335 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8471 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8471 + -mem[64] + 100
                        if arg1 * stor16 / totalSupply < 0:
                            revert with 0, 17
                        _9382 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9382] = 30
                        mem[_9382 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor16 / totalSupply:
                            if arg1 * stor16 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor16 / totalSupply)
                        _9677 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _9677 + 68] = mem[idx + _9382 + 32]
                            idx = idx + 32
                            continue 
                        mem[_9677 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _9677 + -mem[64] + 100
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if t >= stor16 / totalSupply:
                    if not s:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not arg1:
                        return 0
                    if arg1 and t / s > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    return (arg1 * t / s)
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    return 0
                if arg1 and stor16 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * stor16 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor16 / totalSupply < 0:
                    revert with 0, 17
                if 0 > arg1 * stor16 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor16 / totalSupply < 0:
                    revert with 0, 17
            else:
                if _liquidityFee and 7 > -1 / _liquidityFee:
                    revert with 0, 17
                if not _liquidityFee:
                    revert with 0, 18
                if 7 * _liquidityFee / _liquidityFee != 7:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1:
                    mem[160] = 26
                    mem[192] = 'SafeMath: division by zero'
                    mem[224] = 30
                    mem[256] = 'SafeMath: subtraction overflow'
                    if 0 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 < 0:
                        revert with 0, 17
                    mem[64] = 352
                    mem[288] = 30
                    mem[320] = 'SafeMath: subtraction overflow'
                    if 0 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 < 0:
                        revert with 0, 17
                    idx = 0
                    s = totalSupply
                    t = stor16
                    while idx < stor14.length:
                        mem[0] = stor14[idx]
                        mem[32] = 3
                        if stor3[stor14[idx]] > t:
                            _6728 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6728] = 26
                            mem[_6728 + 32] = 'SafeMath: division by zero'
                            if not totalSupply:
                                _6866 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _6866 + 68] = mem[idx + _6728 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_6866 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _6866 + -mem[64] + 100
                            if not arg1:
                                return 0
                            if arg1 and stor16 / totalSupply > -1 / arg1:
                                revert with 0, 17
                            if not arg1:
                                revert with 0, 18
                            if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _8172 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8172] = 30
                            mem[_8172 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor16 / totalSupply:
                                _8330 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8330 + 68] = mem[idx + _8172 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8330 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8330 + -mem[64] + 100
                            if arg1 * stor16 / totalSupply < 0:
                                revert with 0, 17
                            _9065 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9065] = 30
                            mem[_9065 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor16 / totalSupply:
                                if arg1 * stor16 / totalSupply < 0:
                                    revert with 0, 17
                                return (arg1 * stor16 / totalSupply)
                            _9378 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9378 + 68] = mem[idx + _9065 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9378 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9378 + -mem[64] + 100
                        if idx >= stor14.length:
                            revert with 0, 50
                        mem[0] = stor14[idx]
                        mem[32] = 4
                        if stor4[stor14[idx]] <= s:
                            if idx >= stor14.length:
                                revert with 0, 50
                            mem[0] = stor14[idx]
                            mem[32] = 3
                            _6867 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6867] = 30
                            mem[_6867 + 32] = 'SafeMath: subtraction overflow'
                            if stor3[stor14[idx]] > t:
                                _6987 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _6987 + 68] = mem[idx + _6867 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_6987 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _6987 + -mem[64] + 100
                            if t < stor3[stor14[idx]]:
                                revert with 0, 17
                            if idx >= stor14.length:
                                revert with 0, 50
                            mem[0] = stor14[idx]
                            mem[32] = 4
                            _7516 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7516] = 30
                            mem[_7516 + 32] = 'SafeMath: subtraction overflow'
                            if stor4[stor14[idx]] <= s:
                                if s < stor4[stor14[idx]]:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s - stor4[stor14[idx]]
                                t = t - stor3[stor14[idx]]
                                continue 
                            _7588 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _7588 + 68] = mem[idx + _7516 + 32]
                                idx = idx + 32
                                continue 
                            mem[_7588 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _7588 + -mem[64] + 100
                        _6868 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6868] = 26
                        mem[_6868 + 32] = 'SafeMath: division by zero'
                        if not totalSupply:
                            _6988 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _6988 + 68] = mem[idx + _6868 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6988 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _6988 + -mem[64] + 100
                        if not arg1:
                            return 0
                        if arg1 and stor16 / totalSupply > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _8332 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8332] = 30
                        mem[_8332 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor16 / totalSupply:
                            _8469 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8469 + 68] = mem[idx + _8332 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8469 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8469 + -mem[64] + 100
                        if arg1 * stor16 / totalSupply < 0:
                            revert with 0, 17
                        _9379 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9379] = 30
                        mem[_9379 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor16 / totalSupply:
                            if arg1 * stor16 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor16 / totalSupply)
                        _9676 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _9676 + 68] = mem[idx + _9379 + 32]
                            idx = idx + 32
                            continue 
                        mem[_9676 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _9676 + -mem[64] + 100
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero', 0
                    if t >= stor16 / totalSupply:
                        if not s:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not arg1:
                            return 0
                        if arg1 and t / s > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 * t / s / arg1 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        return (arg1 * t / s)
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not arg1:
                        return 0
                    if arg1 and stor16 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * stor16 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor16 / totalSupply < 0:
                        revert with 0, 17
                    if 0 > arg1 * stor16 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor16 / totalSupply < 0:
                        revert with 0, 17
                else:
                    if arg1 and 7 * _liquidityFee > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if 7 * arg1 * _liquidityFee / arg1 != 7 * _liquidityFee:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[160] = 26
                    mem[192] = 'SafeMath: division by zero'
                    mem[224] = 30
                    mem[256] = 'SafeMath: subtraction overflow'
                    if 0 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 < 0:
                        revert with 0, 17
                    mem[64] = 352
                    mem[288] = 30
                    mem[320] = 'SafeMath: subtraction overflow'
                    if 7 * arg1 * _liquidityFee / 100 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 < 7 * arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    idx = 0
                    s = totalSupply
                    t = stor16
                    while idx < stor14.length:
                        mem[0] = stor14[idx]
                        mem[32] = 3
                        if stor3[stor14[idx]] > t:
                            _6727 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6727] = 26
                            mem[_6727 + 32] = 'SafeMath: division by zero'
                            if not totalSupply:
                                _6863 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _6863 + 68] = mem[idx + _6727 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_6863 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _6863 + -mem[64] + 100
                            if not arg1:
                                if not 7 * arg1 * _liquidityFee / 100:
                                    return 0
                                if 7 * arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / 7 * arg1 * _liquidityFee / 100:
                                    revert with 0, 17
                                if not 7 * arg1 * _liquidityFee / 100:
                                    revert with 0, 18
                                if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply / 7 * arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _8168 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8168] = 30
                                mem[_8168 + 32] = 'SafeMath: subtraction overflow'
                                _9059 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9059] = 30
                                mem[_9059 + 32] = 'SafeMath: subtraction overflow'
                                if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply <= 0:
                                    if 0 < 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                                        revert with 0, 17
                                    else:
                                        return 0
                                _9373 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _9373 + 68] = mem[idx + _9059 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9373 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9373 + -mem[64] + 100
                            if arg1 and stor16 / totalSupply > -1 / arg1:
                                revert with 0, 17
                            if not arg1:
                                revert with 0, 18
                            if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not 7 * arg1 * _liquidityFee / 100:
                                _8167 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8167] = 30
                                mem[_8167 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > arg1 * stor16 / totalSupply:
                                    _8326 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _8326 + 68] = mem[idx + _8167 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_8326 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _8326 + -mem[64] + 100
                                if arg1 * stor16 / totalSupply < 0:
                                    revert with 0, 17
                                _9057 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9057] = 30
                                mem[_9057 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= arg1 * stor16 / totalSupply:
                                    if arg1 * stor16 / totalSupply < 0:
                                        revert with 0, 17
                                    return (arg1 * stor16 / totalSupply)
                                _9372 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _9372 + 68] = mem[idx + _9057 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9372 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9372 + -mem[64] + 100
                            if 7 * arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / 7 * arg1 * _liquidityFee / 100:
                                revert with 0, 17
                            if not 7 * arg1 * _liquidityFee / 100:
                                revert with 0, 18
                            if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply / 7 * arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _8715 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8715] = 30
                            mem[_8715 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor16 / totalSupply:
                                _9056 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _9056 + 68] = mem[idx + _8715 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9056 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9056 + -mem[64] + 100
                            if arg1 * stor16 / totalSupply < 0:
                                revert with 0, 17
                            _10185 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10185] = 30
                            mem[_10185 + 32] = 'SafeMath: subtraction overflow'
                            if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply <= arg1 * stor16 / totalSupply:
                                if arg1 * stor16 / totalSupply < 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                                    revert with 0, 17
                                return (arg1 * stor16 / totalSupply)
                            _10613 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _10613 + 68] = mem[idx + _10185 + 32]
                                idx = idx + 32
                                continue 
                            mem[_10613 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _10613 + -mem[64] + 100
                        if idx >= stor14.length:
                            revert with 0, 50
                        mem[0] = stor14[idx]
                        mem[32] = 4
                        if stor4[stor14[idx]] <= s:
                            if idx >= stor14.length:
                                revert with 0, 50
                            mem[0] = stor14[idx]
                            mem[32] = 3
                            _6864 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6864] = 30
                            mem[_6864 + 32] = 'SafeMath: subtraction overflow'
                            if stor3[stor14[idx]] > t:
                                _6984 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _6984 + 68] = mem[idx + _6864 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_6984 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _6984 + -mem[64] + 100
                            if t < stor3[stor14[idx]]:
                                revert with 0, 17
                            if idx >= stor14.length:
                                revert with 0, 50
                            mem[0] = stor14[idx]
                            mem[32] = 4
                            _7513 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7513] = 30
                            mem[_7513 + 32] = 'SafeMath: subtraction overflow'
                            if stor4[stor14[idx]] <= s:
                                if s < stor4[stor14[idx]]:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s - stor4[stor14[idx]]
                                t = t - stor3[stor14[idx]]
                                continue 
                            _7585 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _7585 + 68] = mem[idx + _7513 + 32]
                                idx = idx + 32
                                continue 
                            mem[_7585 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _7585 + -mem[64] + 100
                        _6865 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6865] = 26
                        mem[_6865 + 32] = 'SafeMath: division by zero'
                        if not totalSupply:
                            _6985 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _6985 + 68] = mem[idx + _6865 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6985 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _6985 + -mem[64] + 100
                        if not arg1:
                            if not 7 * arg1 * _liquidityFee / 100:
                                return 0
                            if 7 * arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / 7 * arg1 * _liquidityFee / 100:
                                revert with 0, 17
                            if not 7 * arg1 * _liquidityFee / 100:
                                revert with 0, 18
                            if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply / 7 * arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _8329 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8329] = 30
                            mem[_8329 + 32] = 'SafeMath: subtraction overflow'
                            _9377 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9377] = 30
                            mem[_9377 + 32] = 'SafeMath: subtraction overflow'
                            if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply <= 0:
                                if 0 < 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                                    revert with 0, 17
                                else:
                                    return 0
                            _9675 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9675 + 68] = mem[idx + _9377 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9675 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9675 + -mem[64] + 100
                        if arg1 and stor16 / totalSupply > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 7 * arg1 * _liquidityFee / 100:
                            _8328 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8328] = 30
                            mem[_8328 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor16 / totalSupply:
                                _8467 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8467 + 68] = mem[idx + _8328 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8467 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8467 + -mem[64] + 100
                            if arg1 * stor16 / totalSupply < 0:
                                revert with 0, 17
                            _9375 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9375] = 30
                            mem[_9375 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor16 / totalSupply:
                                if arg1 * stor16 / totalSupply < 0:
                                    revert with 0, 17
                                return (arg1 * stor16 / totalSupply)
                            _9674 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9674 + 68] = mem[idx + _9375 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9674 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9674 + -mem[64] + 100
                        if 7 * arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / 7 * arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not 7 * arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply / 7 * arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _9060 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9060] = 30
                        mem[_9060 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor16 / totalSupply:
                            _9374 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9374 + 68] = mem[idx + _9060 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9374 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9374 + -mem[64] + 100
                        if arg1 * stor16 / totalSupply < 0:
                            revert with 0, 17
                        _10616 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10616] = 30
                        mem[_10616 + 32] = 'SafeMath: subtraction overflow'
                        if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply <= arg1 * stor16 / totalSupply:
                            if arg1 * stor16 / totalSupply < 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                                revert with 0, 17
                            return (arg1 * stor16 / totalSupply)
                        _10921 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _10921 + 68] = mem[idx + _10616 + 32]
                            idx = idx + 32
                            continue 
                        mem[_10921 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _10921 + -mem[64] + 100
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero', 0
                    if t >= stor16 / totalSupply:
                        if not s:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not arg1:
                            if 7 * arg1 * _liquidityFee / 100:
                                if 7 * arg1 * _liquidityFee / 100 and t / s > -1 / 7 * arg1 * _liquidityFee / 100:
                                    revert with 0, 17
                                if not 7 * arg1 * _liquidityFee / 100:
                                    revert with 0, 18
                                if 7 * arg1 * _liquidityFee / 100 * t / s / 7 * arg1 * _liquidityFee / 100 != t / s:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if 7 * arg1 * _liquidityFee / 100 * t / s > 0:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if 0 < 7 * arg1 * _liquidityFee / 100 * t / s:
                                    revert with 0, 17
                                else:
                                    return 0
                            else:
                                return 0
                        if arg1 and t / s > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 * t / s / arg1 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 7 * arg1 * _liquidityFee / 100:
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < 0:
                                revert with 0, 17
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < 0:
                                revert with 0, 17
                        else:
                            if 7 * arg1 * _liquidityFee / 100 and t / s > -1 / 7 * arg1 * _liquidityFee / 100:
                                revert with 0, 17
                            if not 7 * arg1 * _liquidityFee / 100:
                                revert with 0, 18
                            if 7 * arg1 * _liquidityFee / 100 * t / s / 7 * arg1 * _liquidityFee / 100 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < 0:
                                revert with 0, 17
                            if 7 * arg1 * _liquidityFee / 100 * t / s > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < 7 * arg1 * _liquidityFee / 100 * t / s:
                                revert with 0, 17
                        return (arg1 * t / s)
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not arg1:
                        if 7 * arg1 * _liquidityFee / 100:
                            if 7 * arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / 7 * arg1 * _liquidityFee / 100:
                                revert with 0, 17
                            if not 7 * arg1 * _liquidityFee / 100:
                                revert with 0, 18
                            if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply / 7 * arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                                revert with 0, 17
                            else:
                                return 0
                        else:
                            return 0
                    if arg1 and stor16 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 7 * arg1 * _liquidityFee / 100:
                        if 0 > arg1 * stor16 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor16 / totalSupply < 0:
                            revert with 0, 17
                        if 0 > arg1 * stor16 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor16 / totalSupply < 0:
                            revert with 0, 17
                    else:
                        if 7 * arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / 7 * arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not 7 * arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply / 7 * arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > arg1 * stor16 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor16 / totalSupply < 0:
                            revert with 0, 17
                        if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor16 / totalSupply < 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                            revert with 0, 17
    else:
        if arg1 and _taxFee > -1 / arg1:
            revert with 0, 17
        if not arg1:
            revert with 0, 18
        if arg1 * _taxFee / arg1 != _taxFee:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if launchedAt > -4:
            revert with 0, 17
        if launchedAt + 3 < launchedAt:
            revert with 0, 'SafeMath: addition overflow'
        if launchedAt + 3 < block.number:
            if not arg1:
                mem[160] = 26
                mem[192] = 'SafeMath: division by zero'
                mem[224] = 30
                mem[256] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 < arg1 * _taxFee / 100:
                    revert with 0, 17
                mem[64] = 352
                mem[288] = 30
                mem[320] = 'SafeMath: subtraction overflow'
                if 0 > arg1 - (arg1 * _taxFee / 100):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 - (arg1 * _taxFee / 100) < 0:
                    revert with 0, 17
                idx = 0
                s = totalSupply
                t = stor16
                while idx < stor14.length:
                    mem[0] = stor14[idx]
                    mem[32] = 3
                    if stor3[stor14[idx]] > t:
                        _6720 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6720] = 26
                        mem[_6720 + 32] = 'SafeMath: division by zero'
                        if not totalSupply:
                            _6842 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _6842 + 68] = mem[idx + _6720 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6842 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _6842 + -mem[64] + 100
                        if not arg1:
                            if not arg1 * _taxFee / 100:
                                return 0
                            if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                                revert with 0, 17
                            if not arg1 * _taxFee / 100:
                                revert with 0, 18
                            if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _8126 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8126] = 30
                            mem[_8126 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _taxFee / 100 * stor16 / totalSupply > 0:
                                _8289 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8289 + 68] = mem[idx + _8126 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8289 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8289 + -mem[64] + 100
                            if 0 < arg1 * _taxFee / 100 * stor16 / totalSupply:
                                revert with 0, 17
                            _8981 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8981] = 30
                            mem[_8981 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * arg1 * _taxFee / 100 * stor16 / totalSupply:
                                if -1 * arg1 * _taxFee / 100 * stor16 / totalSupply < 0:
                                    revert with 0, 17
                                else:
                                    return 0
                            _9316 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9316 + 68] = mem[idx + _8981 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9316 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9316 + -mem[64] + 100
                        if arg1 and stor16 / totalSupply > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * _taxFee / 100:
                            _8125 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8125] = 30
                            mem[_8125 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor16 / totalSupply:
                                _8288 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8288 + 68] = mem[idx + _8125 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8288 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8288 + -mem[64] + 100
                            if arg1 * stor16 / totalSupply < 0:
                                revert with 0, 17
                            _8979 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8979] = 30
                            mem[_8979 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor16 / totalSupply:
                                if arg1 * stor16 / totalSupply < 0:
                                    revert with 0, 17
                                return (arg1 * stor16 / totalSupply)
                            _9315 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9315 + 68] = mem[idx + _8979 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9315 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9315 + -mem[64] + 100
                        if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _8668 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8668] = 30
                        mem[_8668 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                            _8978 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8978 + 68] = mem[idx + _8668 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8978 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8978 + -mem[64] + 100
                        if arg1 * stor16 / totalSupply < arg1 * _taxFee / 100 * stor16 / totalSupply:
                            revert with 0, 17
                        _10094 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10094] = 30
                        mem[_10094 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply):
                            if (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) < 0:
                                revert with 0, 17
                            return (arg1 * stor16 / totalSupply)
                        _10537 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _10537 + 68] = mem[idx + _10094 + 32]
                            idx = idx + 32
                            continue 
                        mem[_10537 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _10537 + -mem[64] + 100
                    if idx >= stor14.length:
                        revert with 0, 50
                    mem[0] = stor14[idx]
                    mem[32] = 4
                    if stor4[stor14[idx]] <= s:
                        if idx >= stor14.length:
                            revert with 0, 50
                        mem[0] = stor14[idx]
                        mem[32] = 3
                        _6843 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6843] = 30
                        mem[_6843 + 32] = 'SafeMath: subtraction overflow'
                        if stor3[stor14[idx]] > t:
                            _6963 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _6963 + 68] = mem[idx + _6843 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6963 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _6963 + -mem[64] + 100
                        if t < stor3[stor14[idx]]:
                            revert with 0, 17
                        if idx >= stor14.length:
                            revert with 0, 50
                        mem[0] = stor14[idx]
                        mem[32] = 4
                        _7492 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7492] = 30
                        mem[_7492 + 32] = 'SafeMath: subtraction overflow'
                        if stor4[stor14[idx]] <= s:
                            if s < stor4[stor14[idx]]:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s - stor4[stor14[idx]]
                            t = t - stor3[stor14[idx]]
                            continue 
                        _7564 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _7564 + 68] = mem[idx + _7492 + 32]
                            idx = idx + 32
                            continue 
                        mem[_7564 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _7564 + -mem[64] + 100
                    _6844 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6844] = 26
                    mem[_6844 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _6964 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6964 + 68] = mem[idx + _6844 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6964 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _6964 + -mem[64] + 100
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            return 0
                        if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _8293 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8293] = 30
                        mem[_8293 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor16 / totalSupply > 0:
                            _8439 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8439 + 68] = mem[idx + _8293 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8439 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8439 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 100 * stor16 / totalSupply:
                            revert with 0, 17
                        _9320 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9320] = 30
                        mem[_9320 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _taxFee / 100 * stor16 / totalSupply:
                            if -1 * arg1 * _taxFee / 100 * stor16 / totalSupply < 0:
                                revert with 0, 17
                            else:
                                return 0
                        _9643 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _9643 + 68] = mem[idx + _9320 + 32]
                            idx = idx + 32
                            continue 
                        mem[_9643 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _9643 + -mem[64] + 100
                    if arg1 and stor16 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        _8292 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8292] = 30
                        mem[_8292 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor16 / totalSupply:
                            _8438 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8438 + 68] = mem[idx + _8292 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8438 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8438 + -mem[64] + 100
                        if arg1 * stor16 / totalSupply < 0:
                            revert with 0, 17
                        _9318 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9318] = 30
                        mem[_9318 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor16 / totalSupply:
                            if arg1 * stor16 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor16 / totalSupply)
                        _9642 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _9642 + 68] = mem[idx + _9318 + 32]
                            idx = idx + 32
                            continue 
                        mem[_9642 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _9642 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _8983 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8983] = 30
                    mem[_8983 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                        _9317 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _9317 + 68] = mem[idx + _8983 + 32]
                            idx = idx + 32
                            continue 
                        mem[_9317 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _9317 + -mem[64] + 100
                    if arg1 * stor16 / totalSupply < arg1 * _taxFee / 100 * stor16 / totalSupply:
                        revert with 0, 17
                    _10540 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10540] = 30
                    mem[_10540 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply):
                        if (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) < 0:
                            revert with 0, 17
                        return (arg1 * stor16 / totalSupply)
                    _10897 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _10897 + 68] = mem[idx + _10540 + 32]
                        idx = idx + 32
                        continue 
                    mem[_10897 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _10897 + -mem[64] + 100
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if t >= stor16 / totalSupply:
                    if not s:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not arg1:
                        if arg1 * _taxFee / 100:
                            if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                                revert with 0, 17
                            if not arg1 * _taxFee / 100:
                                revert with 0, 18
                            if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * _taxFee / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _taxFee / 100 * t / s:
                                revert with 0, 17
                            if 0 > -1 * arg1 * _taxFee / 100 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _taxFee / 100 * t / s < 0:
                                revert with 0, 17
                            else:
                                return 0
                        else:
                            return 0
                    if arg1 and t / s > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                    else:
                        if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < arg1 * _taxFee / 100 * t / s:
                            revert with 0, 17
                        if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) < 0:
                            revert with 0, 17
                    return (arg1 * t / s)
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if arg1 * _taxFee / 100:
                        if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _taxFee / 100 * stor16 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _taxFee / 100 * stor16 / totalSupply:
                            revert with 0, 17
                        if 0 > -1 * arg1 * _taxFee / 100 * stor16 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * _taxFee / 100 * stor16 / totalSupply < 0:
                            revert with 0, 17
                        else:
                            return 0
                    else:
                        return 0
                if arg1 and stor16 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    if 0 > arg1 * stor16 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor16 / totalSupply < 0:
                        revert with 0, 17
                    if 0 > arg1 * stor16 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor16 / totalSupply < 0:
                        revert with 0, 17
                else:
                    if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _taxFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor16 / totalSupply < arg1 * _taxFee / 100 * stor16 / totalSupply:
                        revert with 0, 17
                    if 0 > (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) < 0:
                        revert with 0, 17
            else:
                if arg1 and _liquidityFee > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * _liquidityFee / arg1 != _liquidityFee:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[160] = 26
                mem[192] = 'SafeMath: division by zero'
                mem[224] = 30
                mem[256] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 < arg1 * _taxFee / 100:
                    revert with 0, 17
                mem[64] = 352
                mem[288] = 30
                mem[320] = 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 > arg1 - (arg1 * _taxFee / 100):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 - (arg1 * _taxFee / 100) < arg1 * _liquidityFee / 100:
                    revert with 0, 17
                idx = 0
                s = totalSupply
                t = stor16
                while idx < stor14.length:
                    mem[0] = stor14[idx]
                    mem[32] = 3
                    if stor3[stor14[idx]] > t:
                        _6719 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6719] = 26
                        mem[_6719 + 32] = 'SafeMath: division by zero'
                        if not totalSupply:
                            _6839 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _6839 + 68] = mem[idx + _6719 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6839 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _6839 + -mem[64] + 100
                        if not arg1:
                            if not arg1 * _taxFee / 100:
                                if not arg1 * _liquidityFee / 100:
                                    return 0
                                if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                                    revert with 0, 17
                                if not arg1 * _liquidityFee / 100:
                                    revert with 0, 18
                                if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _8118 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8118] = 30
                                mem[_8118 + 32] = 'SafeMath: subtraction overflow'
                                _8968 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8968] = 30
                                mem[_8968 + 32] = 'SafeMath: subtraction overflow'
                                if arg1 * _liquidityFee / 100 * stor16 / totalSupply <= 0:
                                    if 0 < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                                        revert with 0, 17
                                    else:
                                        return 0
                                _9306 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _9306 + 68] = mem[idx + _8968 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9306 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9306 + -mem[64] + 100
                            if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                                revert with 0, 17
                            if not arg1 * _taxFee / 100:
                                revert with 0, 18
                            if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not arg1 * _liquidityFee / 100:
                                _8117 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8117] = 30
                                mem[_8117 + 32] = 'SafeMath: subtraction overflow'
                                if arg1 * _taxFee / 100 * stor16 / totalSupply > 0:
                                    _8282 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _8282 + 68] = mem[idx + _8117 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_8282 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _8282 + -mem[64] + 100
                                if 0 < arg1 * _taxFee / 100 * stor16 / totalSupply:
                                    revert with 0, 17
                                _8966 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8966] = 30
                                mem[_8966 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= -1 * arg1 * _taxFee / 100 * stor16 / totalSupply:
                                    if -1 * arg1 * _taxFee / 100 * stor16 / totalSupply < 0:
                                        revert with 0, 17
                                    else:
                                        return 0
                                _9305 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _9305 + 68] = mem[idx + _8966 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9305 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9305 + -mem[64] + 100
                            if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                                revert with 0, 17
                            if not arg1 * _liquidityFee / 100:
                                revert with 0, 18
                            if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _8659 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8659] = 30
                            mem[_8659 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _taxFee / 100 * stor16 / totalSupply > 0:
                                _8965 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8965 + 68] = mem[idx + _8659 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8965 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8965 + -mem[64] + 100
                            if 0 < arg1 * _taxFee / 100 * stor16 / totalSupply:
                                revert with 0, 17
                            _10080 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10080] = 30
                            mem[_10080 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _liquidityFee / 100 * stor16 / totalSupply <= -1 * arg1 * _taxFee / 100 * stor16 / totalSupply:
                                if -1 * arg1 * _taxFee / 100 * stor16 / totalSupply < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                                    revert with 0, 17
                                else:
                                    return 0
                            _10522 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _10522 + 68] = mem[idx + _10080 + 32]
                                idx = idx + 32
                                continue 
                            mem[_10522 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _10522 + -mem[64] + 100
                        if arg1 and stor16 / totalSupply > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * _taxFee / 100:
                            if not arg1 * _liquidityFee / 100:
                                _8116 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8116] = 30
                                mem[_8116 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > arg1 * stor16 / totalSupply:
                                    _8281 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _8281 + 68] = mem[idx + _8116 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_8281 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _8281 + -mem[64] + 100
                                if arg1 * stor16 / totalSupply < 0:
                                    revert with 0, 17
                                _8963 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8963] = 30
                                mem[_8963 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= arg1 * stor16 / totalSupply:
                                    if arg1 * stor16 / totalSupply < 0:
                                        revert with 0, 17
                                    return (arg1 * stor16 / totalSupply)
                                _9304 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _9304 + 68] = mem[idx + _8963 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9304 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9304 + -mem[64] + 100
                            if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                                revert with 0, 17
                            if not arg1 * _liquidityFee / 100:
                                revert with 0, 18
                            if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _8658 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8658] = 30
                            mem[_8658 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor16 / totalSupply:
                                _8962 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8962 + 68] = mem[idx + _8658 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8962 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8962 + -mem[64] + 100
                            if arg1 * stor16 / totalSupply < 0:
                                revert with 0, 17
                            _10078 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10078] = 30
                            mem[_10078 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _liquidityFee / 100 * stor16 / totalSupply <= arg1 * stor16 / totalSupply:
                                if arg1 * stor16 / totalSupply < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                                    revert with 0, 17
                                return (arg1 * stor16 / totalSupply)
                            _10520 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _10520 + 68] = mem[idx + _10078 + 32]
                                idx = idx + 32
                                continue 
                            mem[_10520 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _10520 + -mem[64] + 100
                        if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * _liquidityFee / 100:
                            _8657 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8657] = 30
                            mem[_8657 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _taxFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                                _8961 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8961 + 68] = mem[idx + _8657 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8961 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8961 + -mem[64] + 100
                            if arg1 * stor16 / totalSupply < arg1 * _taxFee / 100 * stor16 / totalSupply:
                                revert with 0, 17
                            _10076 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10076] = 30
                            mem[_10076 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply):
                                if (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) < 0:
                                    revert with 0, 17
                                return (arg1 * stor16 / totalSupply)
                            _10519 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _10519 + 68] = mem[idx + _10076 + 32]
                                idx = idx + 32
                                continue 
                            mem[_10519 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _10519 + -mem[64] + 100
                        if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _9635 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9635] = 30
                        mem[_9635 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                            _10075 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _10075 + 68] = mem[idx + _9635 + 32]
                                idx = idx + 32
                                continue 
                            mem[_10075 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _10075 + -mem[64] + 100
                        if arg1 * stor16 / totalSupply < arg1 * _taxFee / 100 * stor16 / totalSupply:
                            revert with 0, 17
                        _11329 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11329] = 30
                        mem[_11329 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor16 / totalSupply <= (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply):
                            if (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                                revert with 0, 17
                            return (arg1 * stor16 / totalSupply)
                        _11727 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _11727 + 68] = mem[idx + _11329 + 32]
                            idx = idx + 32
                            continue 
                        mem[_11727 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _11727 + -mem[64] + 100
                    if idx >= stor14.length:
                        revert with 0, 50
                    mem[0] = stor14[idx]
                    mem[32] = 4
                    if stor4[stor14[idx]] <= s:
                        if idx >= stor14.length:
                            revert with 0, 50
                        mem[0] = stor14[idx]
                        mem[32] = 3
                        _6840 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6840] = 30
                        mem[_6840 + 32] = 'SafeMath: subtraction overflow'
                        if stor3[stor14[idx]] > t:
                            _6960 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _6960 + 68] = mem[idx + _6840 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6960 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _6960 + -mem[64] + 100
                        if t < stor3[stor14[idx]]:
                            revert with 0, 17
                        if idx >= stor14.length:
                            revert with 0, 50
                        mem[0] = stor14[idx]
                        mem[32] = 4
                        _7489 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7489] = 30
                        mem[_7489 + 32] = 'SafeMath: subtraction overflow'
                        if stor4[stor14[idx]] <= s:
                            if s < stor4[stor14[idx]]:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s - stor4[stor14[idx]]
                            t = t - stor3[stor14[idx]]
                            continue 
                        _7561 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _7561 + 68] = mem[idx + _7489 + 32]
                            idx = idx + 32
                            continue 
                        mem[_7561 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _7561 + -mem[64] + 100
                    _6841 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6841] = 26
                    mem[_6841 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _6961 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6961 + 68] = mem[idx + _6841 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6961 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _6961 + -mem[64] + 100
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            if not arg1 * _liquidityFee / 100:
                                return 0
                            if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                                revert with 0, 17
                            if not arg1 * _liquidityFee / 100:
                                revert with 0, 18
                            if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _8287 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8287] = 30
                            mem[_8287 + 32] = 'SafeMath: subtraction overflow'
                            _9314 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9314] = 30
                            mem[_9314 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _liquidityFee / 100 * stor16 / totalSupply <= 0:
                                if 0 < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                                    revert with 0, 17
                                else:
                                    return 0
                            _9639 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9639 + 68] = mem[idx + _9314 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9639 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9639 + -mem[64] + 100
                        if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * _liquidityFee / 100:
                            _8286 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8286] = 30
                            mem[_8286 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _taxFee / 100 * stor16 / totalSupply > 0:
                                _8436 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8436 + 68] = mem[idx + _8286 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8436 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8436 + -mem[64] + 100
                            if 0 < arg1 * _taxFee / 100 * stor16 / totalSupply:
                                revert with 0, 17
                            _9312 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9312] = 30
                            mem[_9312 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * arg1 * _taxFee / 100 * stor16 / totalSupply:
                                if -1 * arg1 * _taxFee / 100 * stor16 / totalSupply < 0:
                                    revert with 0, 17
                                else:
                                    return 0
                            _9638 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9638 + 68] = mem[idx + _9312 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9638 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9638 + -mem[64] + 100
                        if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _8971 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8971] = 30
                        mem[_8971 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor16 / totalSupply > 0:
                            _9311 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9311 + 68] = mem[idx + _8971 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9311 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9311 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 100 * stor16 / totalSupply:
                            revert with 0, 17
                        _10530 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10530] = 30
                        mem[_10530 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor16 / totalSupply <= -1 * arg1 * _taxFee / 100 * stor16 / totalSupply:
                            if -1 * arg1 * _taxFee / 100 * stor16 / totalSupply < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                                revert with 0, 17
                            else:
                                return 0
                        _10894 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _10894 + 68] = mem[idx + _10530 + 32]
                            idx = idx + 32
                            continue 
                        mem[_10894 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _10894 + -mem[64] + 100
                    if arg1 and stor16 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _liquidityFee / 100:
                            _8285 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8285] = 30
                            mem[_8285 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor16 / totalSupply:
                                _8435 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8435 + 68] = mem[idx + _8285 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8435 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8435 + -mem[64] + 100
                            if arg1 * stor16 / totalSupply < 0:
                                revert with 0, 17
                            _9309 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9309] = 30
                            mem[_9309 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor16 / totalSupply:
                                if arg1 * stor16 / totalSupply < 0:
                                    revert with 0, 17
                                return (arg1 * stor16 / totalSupply)
                            _9637 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9637 + 68] = mem[idx + _9309 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9637 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9637 + -mem[64] + 100
                        if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _8970 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8970] = 30
                        mem[_8970 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor16 / totalSupply:
                            _9308 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9308 + 68] = mem[idx + _8970 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9308 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9308 + -mem[64] + 100
                        if arg1 * stor16 / totalSupply < 0:
                            revert with 0, 17
                        _10528 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10528] = 30
                        mem[_10528 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor16 / totalSupply <= arg1 * stor16 / totalSupply:
                            if arg1 * stor16 / totalSupply < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                                revert with 0, 17
                            return (arg1 * stor16 / totalSupply)
                        _10892 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _10892 + 68] = mem[idx + _10528 + 32]
                            idx = idx + 32
                            continue 
                        mem[_10892 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _10892 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        _8969 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8969] = 30
                        mem[_8969 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                            _9307 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9307 + 68] = mem[idx + _8969 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9307 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9307 + -mem[64] + 100
                        if arg1 * stor16 / totalSupply < arg1 * _taxFee / 100 * stor16 / totalSupply:
                            revert with 0, 17
                        _10526 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10526] = 30
                        mem[_10526 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply):
                            if (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) < 0:
                                revert with 0, 17
                            return (arg1 * stor16 / totalSupply)
                        _10891 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _10891 + 68] = mem[idx + _10526 + 32]
                            idx = idx + 32
                            continue 
                        mem[_10891 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _10891 + -mem[64] + 100
                    if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _10083 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10083] = 30
                    mem[_10083 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                        _10525 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _10525 + 68] = mem[idx + _10083 + 32]
                            idx = idx + 32
                            continue 
                        mem[_10525 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _10525 + -mem[64] + 100
                    if arg1 * stor16 / totalSupply < arg1 * _taxFee / 100 * stor16 / totalSupply:
                        revert with 0, 17
                    _11731 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_11731] = 30
                    mem[_11731 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor16 / totalSupply <= (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply):
                        if (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                            revert with 0, 17
                        return (arg1 * stor16 / totalSupply)
                    _11921 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _11921 + 68] = mem[idx + _11731 + 32]
                        idx = idx + 32
                        continue 
                    mem[_11921 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _11921 + -mem[64] + 100
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if t >= stor16 / totalSupply:
                    if not s:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            if arg1 * _liquidityFee / 100:
                                if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                                    revert with 0, 17
                                if not arg1 * _liquidityFee / 100:
                                    revert with 0, 18
                                if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if arg1 * _liquidityFee / 100 * t / s > 0:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if 0 < arg1 * _liquidityFee / 100 * t / s:
                                    revert with 0, 17
                        else:
                            if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                                revert with 0, 17
                            if not arg1 * _taxFee / 100:
                                revert with 0, 18
                            if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not arg1 * _liquidityFee / 100:
                                if arg1 * _taxFee / 100 * t / s > 0:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if 0 < arg1 * _taxFee / 100 * t / s:
                                    revert with 0, 17
                                if 0 > -1 * arg1 * _taxFee / 100 * t / s:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if -1 * arg1 * _taxFee / 100 * t / s < 0:
                                    revert with 0, 17
                            else:
                                if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                                    revert with 0, 17
                                if not arg1 * _liquidityFee / 100:
                                    revert with 0, 18
                                if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if arg1 * _taxFee / 100 * t / s > 0:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if 0 < arg1 * _taxFee / 100 * t / s:
                                    revert with 0, 17
                                if arg1 * _liquidityFee / 100 * t / s > -1 * arg1 * _taxFee / 100 * t / s:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if -1 * arg1 * _taxFee / 100 * t / s < arg1 * _liquidityFee / 100 * t / s:
                                    revert with 0, 17
                        return 0
                    if arg1 and t / s > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _liquidityFee / 100:
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < 0:
                                revert with 0, 17
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < 0:
                                revert with 0, 17
                        else:
                            if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                                revert with 0, 17
                            if not arg1 * _liquidityFee / 100:
                                revert with 0, 18
                            if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < 0:
                                revert with 0, 17
                            if arg1 * _liquidityFee / 100 * t / s > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < arg1 * _liquidityFee / 100 * t / s:
                                revert with 0, 17
                    else:
                        if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * _liquidityFee / 100:
                            if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < arg1 * _taxFee / 100 * t / s:
                                revert with 0, 17
                            if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) < 0:
                                revert with 0, 17
                        else:
                            if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                                revert with 0, 17
                            if not arg1 * _liquidityFee / 100:
                                revert with 0, 18
                            if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < arg1 * _taxFee / 100 * t / s:
                                revert with 0, 17
                            if arg1 * _liquidityFee / 100 * t / s > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) < arg1 * _liquidityFee / 100 * t / s:
                                revert with 0, 17
                    return (arg1 * t / s)
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        if arg1 * _liquidityFee / 100:
                            if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                                revert with 0, 17
                            if not arg1 * _liquidityFee / 100:
                                revert with 0, 18
                            if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * _liquidityFee / 100 * stor16 / totalSupply > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                                revert with 0, 17
                    else:
                        if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * _liquidityFee / 100:
                            if arg1 * _taxFee / 100 * stor16 / totalSupply > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _taxFee / 100 * stor16 / totalSupply:
                                revert with 0, 17
                            if 0 > -1 * arg1 * _taxFee / 100 * stor16 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _taxFee / 100 * stor16 / totalSupply < 0:
                                revert with 0, 17
                        else:
                            if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                                revert with 0, 17
                            if not arg1 * _liquidityFee / 100:
                                revert with 0, 18
                            if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * _taxFee / 100 * stor16 / totalSupply > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _taxFee / 100 * stor16 / totalSupply:
                                revert with 0, 17
                            if arg1 * _liquidityFee / 100 * stor16 / totalSupply > -1 * arg1 * _taxFee / 100 * stor16 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _taxFee / 100 * stor16 / totalSupply < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                                revert with 0, 17
                    return 0
                if arg1 and stor16 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    if not arg1 * _liquidityFee / 100:
                        if 0 > arg1 * stor16 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor16 / totalSupply < 0:
                            revert with 0, 17
                        if 0 > arg1 * stor16 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor16 / totalSupply < 0:
                            revert with 0, 17
                    else:
                        if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > arg1 * stor16 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor16 / totalSupply < 0:
                            revert with 0, 17
                        if arg1 * _liquidityFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor16 / totalSupply < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                            revert with 0, 17
                else:
                    if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        if arg1 * _taxFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor16 / totalSupply < arg1 * _taxFee / 100 * stor16 / totalSupply:
                            revert with 0, 17
                        if 0 > (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) < 0:
                            revert with 0, 17
                    else:
                        if arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if arg1 * _liquidityFee / 100 * stor16 / totalSupply / arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _taxFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor16 / totalSupply < arg1 * _taxFee / 100 * stor16 / totalSupply:
                            revert with 0, 17
                        if arg1 * _liquidityFee / 100 * stor16 / totalSupply > (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) < arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                            revert with 0, 17
        else:
            if not _liquidityFee:
                if not arg1:
                    mem[160] = 26
                    mem[192] = 'SafeMath: division by zero'
                    mem[224] = 30
                    mem[256] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 < arg1 * _taxFee / 100:
                        revert with 0, 17
                    mem[64] = 352
                    mem[288] = 30
                    mem[320] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 - (arg1 * _taxFee / 100):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 - (arg1 * _taxFee / 100) < 0:
                        revert with 0, 17
                    idx = 0
                    s = totalSupply
                    t = stor16
                    while idx < stor14.length:
                        mem[0] = stor14[idx]
                        mem[32] = 3
                        if stor3[stor14[idx]] > t:
                            _6724 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6724] = 26
                            mem[_6724 + 32] = 'SafeMath: division by zero'
                            if not totalSupply:
                                _6854 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _6854 + 68] = mem[idx + _6724 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_6854 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _6854 + -mem[64] + 100
                            if not arg1:
                                if not arg1 * _taxFee / 100:
                                    return 0
                                if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                                    revert with 0, 17
                                if not arg1 * _taxFee / 100:
                                    revert with 0, 18
                                if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _8156 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8156] = 30
                                mem[_8156 + 32] = 'SafeMath: subtraction overflow'
                                if arg1 * _taxFee / 100 * stor16 / totalSupply > 0:
                                    _8314 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _8314 + 68] = mem[idx + _8156 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_8314 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _8314 + -mem[64] + 100
                                if 0 < arg1 * _taxFee / 100 * stor16 / totalSupply:
                                    revert with 0, 17
                                _9034 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9034] = 30
                                mem[_9034 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= -1 * arg1 * _taxFee / 100 * stor16 / totalSupply:
                                    if -1 * arg1 * _taxFee / 100 * stor16 / totalSupply < 0:
                                        revert with 0, 17
                                    else:
                                        return 0
                                _9353 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _9353 + 68] = mem[idx + _9034 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9353 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9353 + -mem[64] + 100
                            if arg1 and stor16 / totalSupply > -1 / arg1:
                                revert with 0, 17
                            if not arg1:
                                revert with 0, 18
                            if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not arg1 * _taxFee / 100:
                                _8155 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8155] = 30
                                mem[_8155 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > arg1 * stor16 / totalSupply:
                                    _8313 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _8313 + 68] = mem[idx + _8155 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_8313 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _8313 + -mem[64] + 100
                                if arg1 * stor16 / totalSupply < 0:
                                    revert with 0, 17
                                _9032 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9032] = 30
                                mem[_9032 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= arg1 * stor16 / totalSupply:
                                    if arg1 * stor16 / totalSupply < 0:
                                        revert with 0, 17
                                    return (arg1 * stor16 / totalSupply)
                                _9352 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _9352 + 68] = mem[idx + _9032 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9352 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9352 + -mem[64] + 100
                            if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                                revert with 0, 17
                            if not arg1 * _taxFee / 100:
                                revert with 0, 18
                            if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _8702 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8702] = 30
                            mem[_8702 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _taxFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                                _9031 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _9031 + 68] = mem[idx + _8702 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9031 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9031 + -mem[64] + 100
                            if arg1 * stor16 / totalSupply < arg1 * _taxFee / 100 * stor16 / totalSupply:
                                revert with 0, 17
                            _10158 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10158] = 30
                            mem[_10158 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply):
                                if (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) < 0:
                                    revert with 0, 17
                                return (arg1 * stor16 / totalSupply)
                            _10589 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _10589 + 68] = mem[idx + _10158 + 32]
                                idx = idx + 32
                                continue 
                            mem[_10589 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _10589 + -mem[64] + 100
                        if idx >= stor14.length:
                            revert with 0, 50
                        mem[0] = stor14[idx]
                        mem[32] = 4
                        if stor4[stor14[idx]] <= s:
                            if idx >= stor14.length:
                                revert with 0, 50
                            mem[0] = stor14[idx]
                            mem[32] = 3
                            _6855 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6855] = 30
                            mem[_6855 + 32] = 'SafeMath: subtraction overflow'
                            if stor3[stor14[idx]] > t:
                                _6975 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _6975 + 68] = mem[idx + _6855 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_6975 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _6975 + -mem[64] + 100
                            if t < stor3[stor14[idx]]:
                                revert with 0, 17
                            if idx >= stor14.length:
                                revert with 0, 50
                            mem[0] = stor14[idx]
                            mem[32] = 4
                            _7504 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7504] = 30
                            mem[_7504 + 32] = 'SafeMath: subtraction overflow'
                            if stor4[stor14[idx]] <= s:
                                if s < stor4[stor14[idx]]:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s - stor4[stor14[idx]]
                                t = t - stor3[stor14[idx]]
                                continue 
                            _7576 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _7576 + 68] = mem[idx + _7504 + 32]
                                idx = idx + 32
                                continue 
                            mem[_7576 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _7576 + -mem[64] + 100
                        _6856 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6856] = 26
                        mem[_6856 + 32] = 'SafeMath: division by zero'
                        if not totalSupply:
                            _6976 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _6976 + 68] = mem[idx + _6856 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6976 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _6976 + -mem[64] + 100
                        if not arg1:
                            if not arg1 * _taxFee / 100:
                                return 0
                            if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                                revert with 0, 17
                            if not arg1 * _taxFee / 100:
                                revert with 0, 18
                            if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _8318 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8318] = 30
                            mem[_8318 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _taxFee / 100 * stor16 / totalSupply > 0:
                                _8455 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8455 + 68] = mem[idx + _8318 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8455 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8455 + -mem[64] + 100
                            if 0 < arg1 * _taxFee / 100 * stor16 / totalSupply:
                                revert with 0, 17
                            _9357 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9357] = 30
                            mem[_9357 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * arg1 * _taxFee / 100 * stor16 / totalSupply:
                                if -1 * arg1 * _taxFee / 100 * stor16 / totalSupply < 0:
                                    revert with 0, 17
                                else:
                                    return 0
                            _9666 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9666 + 68] = mem[idx + _9357 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9666 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9666 + -mem[64] + 100
                        if arg1 and stor16 / totalSupply > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * _taxFee / 100:
                            _8317 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8317] = 30
                            mem[_8317 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor16 / totalSupply:
                                _8454 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8454 + 68] = mem[idx + _8317 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8454 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8454 + -mem[64] + 100
                            if arg1 * stor16 / totalSupply < 0:
                                revert with 0, 17
                            _9355 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9355] = 30
                            mem[_9355 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor16 / totalSupply:
                                if arg1 * stor16 / totalSupply < 0:
                                    revert with 0, 17
                                return (arg1 * stor16 / totalSupply)
                            _9665 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9665 + 68] = mem[idx + _9355 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9665 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9665 + -mem[64] + 100
                        if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _9036 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9036] = 30
                        mem[_9036 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                            _9354 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9354 + 68] = mem[idx + _9036 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9354 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9354 + -mem[64] + 100
                        if arg1 * stor16 / totalSupply < arg1 * _taxFee / 100 * stor16 / totalSupply:
                            revert with 0, 17
                        _10592 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10592] = 30
                        mem[_10592 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply):
                            if (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) < 0:
                                revert with 0, 17
                            return (arg1 * stor16 / totalSupply)
                        _10914 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _10914 + 68] = mem[idx + _10592 + 32]
                            idx = idx + 32
                            continue 
                        mem[_10914 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _10914 + -mem[64] + 100
                else:
                    if arg1 and 0 > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if 0 / arg1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[160] = 26
                    mem[192] = 'SafeMath: division by zero'
                    mem[224] = 30
                    mem[256] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 < arg1 * _taxFee / 100:
                        revert with 0, 17
                    mem[64] = 352
                    mem[288] = 30
                    mem[320] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 - (arg1 * _taxFee / 100):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 - (arg1 * _taxFee / 100) < 0:
                        revert with 0, 17
                    idx = 0
                    s = totalSupply
                    t = stor16
                    while idx < stor14.length:
                        mem[0] = stor14[idx]
                        mem[32] = 3
                        if stor3[stor14[idx]] > t:
                            _6723 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6723] = 26
                            mem[_6723 + 32] = 'SafeMath: division by zero'
                            if not totalSupply:
                                _6851 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _6851 + 68] = mem[idx + _6723 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_6851 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _6851 + -mem[64] + 100
                            if not arg1:
                                if not arg1 * _taxFee / 100:
                                    return 0
                                if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                                    revert with 0, 17
                                if not arg1 * _taxFee / 100:
                                    revert with 0, 18
                                if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _8149 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8149] = 30
                                mem[_8149 + 32] = 'SafeMath: subtraction overflow'
                                if arg1 * _taxFee / 100 * stor16 / totalSupply > 0:
                                    _8308 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _8308 + 68] = mem[idx + _8149 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_8308 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _8308 + -mem[64] + 100
                                if 0 < arg1 * _taxFee / 100 * stor16 / totalSupply:
                                    revert with 0, 17
                                _9022 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9022] = 30
                                mem[_9022 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= -1 * arg1 * _taxFee / 100 * stor16 / totalSupply:
                                    if -1 * arg1 * _taxFee / 100 * stor16 / totalSupply < 0:
                                        revert with 0, 17
                                    else:
                                        return 0
                                _9346 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _9346 + 68] = mem[idx + _9022 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9346 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9346 + -mem[64] + 100
                            if arg1 and stor16 / totalSupply > -1 / arg1:
                                revert with 0, 17
                            if not arg1:
                                revert with 0, 18
                            if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not arg1 * _taxFee / 100:
                                _8148 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8148] = 30
                                mem[_8148 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > arg1 * stor16 / totalSupply:
                                    _8307 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _8307 + 68] = mem[idx + _8148 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_8307 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _8307 + -mem[64] + 100
                                if arg1 * stor16 / totalSupply < 0:
                                    revert with 0, 17
                                _9020 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9020] = 30
                                mem[_9020 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= arg1 * stor16 / totalSupply:
                                    if arg1 * stor16 / totalSupply < 0:
                                        revert with 0, 17
                                    return (arg1 * stor16 / totalSupply)
                                _9345 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _9345 + 68] = mem[idx + _9020 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9345 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9345 + -mem[64] + 100
                            if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                                revert with 0, 17
                            if not arg1 * _taxFee / 100:
                                revert with 0, 18
                            if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _8695 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8695] = 30
                            mem[_8695 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _taxFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                                _9019 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _9019 + 68] = mem[idx + _8695 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9019 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9019 + -mem[64] + 100
                            if arg1 * stor16 / totalSupply < arg1 * _taxFee / 100 * stor16 / totalSupply:
                                revert with 0, 17
                            _10145 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10145] = 30
                            mem[_10145 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply):
                                if (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) < 0:
                                    revert with 0, 17
                                return (arg1 * stor16 / totalSupply)
                            _10579 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _10579 + 68] = mem[idx + _10145 + 32]
                                idx = idx + 32
                                continue 
                            mem[_10579 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _10579 + -mem[64] + 100
                        if idx >= stor14.length:
                            revert with 0, 50
                        mem[0] = stor14[idx]
                        mem[32] = 4
                        if stor4[stor14[idx]] <= s:
                            if idx >= stor14.length:
                                revert with 0, 50
                            mem[0] = stor14[idx]
                            mem[32] = 3
                            _6852 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6852] = 30
                            mem[_6852 + 32] = 'SafeMath: subtraction overflow'
                            if stor3[stor14[idx]] > t:
                                _6972 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _6972 + 68] = mem[idx + _6852 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_6972 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _6972 + -mem[64] + 100
                            if t < stor3[stor14[idx]]:
                                revert with 0, 17
                            if idx >= stor14.length:
                                revert with 0, 50
                            mem[0] = stor14[idx]
                            mem[32] = 4
                            _7501 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7501] = 30
                            mem[_7501 + 32] = 'SafeMath: subtraction overflow'
                            if stor4[stor14[idx]] <= s:
                                if s < stor4[stor14[idx]]:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s - stor4[stor14[idx]]
                                t = t - stor3[stor14[idx]]
                                continue 
                            _7573 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _7573 + 68] = mem[idx + _7501 + 32]
                                idx = idx + 32
                                continue 
                            mem[_7573 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _7573 + -mem[64] + 100
                        _6853 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6853] = 26
                        mem[_6853 + 32] = 'SafeMath: division by zero'
                        if not totalSupply:
                            _6973 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _6973 + 68] = mem[idx + _6853 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6973 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _6973 + -mem[64] + 100
                        if not arg1:
                            if not arg1 * _taxFee / 100:
                                return 0
                            if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                                revert with 0, 17
                            if not arg1 * _taxFee / 100:
                                revert with 0, 18
                            if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _8312 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8312] = 30
                            mem[_8312 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _taxFee / 100 * stor16 / totalSupply > 0:
                                _8452 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8452 + 68] = mem[idx + _8312 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8452 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8452 + -mem[64] + 100
                            if 0 < arg1 * _taxFee / 100 * stor16 / totalSupply:
                                revert with 0, 17
                            _9350 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9350] = 30
                            mem[_9350 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * arg1 * _taxFee / 100 * stor16 / totalSupply:
                                if -1 * arg1 * _taxFee / 100 * stor16 / totalSupply < 0:
                                    revert with 0, 17
                                else:
                                    return 0
                            _9662 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9662 + 68] = mem[idx + _9350 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9662 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9662 + -mem[64] + 100
                        if arg1 and stor16 / totalSupply > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * _taxFee / 100:
                            _8311 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8311] = 30
                            mem[_8311 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor16 / totalSupply:
                                _8451 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8451 + 68] = mem[idx + _8311 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8451 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8451 + -mem[64] + 100
                            if arg1 * stor16 / totalSupply < 0:
                                revert with 0, 17
                            _9348 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9348] = 30
                            mem[_9348 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor16 / totalSupply:
                                if arg1 * stor16 / totalSupply < 0:
                                    revert with 0, 17
                                return (arg1 * stor16 / totalSupply)
                            _9661 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9661 + 68] = mem[idx + _9348 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9661 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9661 + -mem[64] + 100
                        if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _9024 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9024] = 30
                        mem[_9024 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                            _9347 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9347 + 68] = mem[idx + _9024 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9347 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9347 + -mem[64] + 100
                        if arg1 * stor16 / totalSupply < arg1 * _taxFee / 100 * stor16 / totalSupply:
                            revert with 0, 17
                        _10582 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10582] = 30
                        mem[_10582 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply):
                            if (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) < 0:
                                revert with 0, 17
                            return (arg1 * stor16 / totalSupply)
                        _10911 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _10911 + 68] = mem[idx + _10582 + 32]
                            idx = idx + 32
                            continue 
                        mem[_10911 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _10911 + -mem[64] + 100
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if t >= stor16 / totalSupply:
                    if not s:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not arg1:
                        if arg1 * _taxFee / 100:
                            if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                                revert with 0, 17
                            if not arg1 * _taxFee / 100:
                                revert with 0, 18
                            if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * _taxFee / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _taxFee / 100 * t / s:
                                revert with 0, 17
                            if 0 > -1 * arg1 * _taxFee / 100 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _taxFee / 100 * t / s < 0:
                                revert with 0, 17
                            else:
                                return 0
                        else:
                            return 0
                    if arg1 and t / s > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                    else:
                        if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < arg1 * _taxFee / 100 * t / s:
                            revert with 0, 17
                        if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) < 0:
                            revert with 0, 17
                    return (arg1 * t / s)
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if arg1 * _taxFee / 100:
                        if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _taxFee / 100 * stor16 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _taxFee / 100 * stor16 / totalSupply:
                            revert with 0, 17
                        if 0 > -1 * arg1 * _taxFee / 100 * stor16 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * _taxFee / 100 * stor16 / totalSupply < 0:
                            revert with 0, 17
                        else:
                            return 0
                    else:
                        return 0
                if arg1 and stor16 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    if 0 > arg1 * stor16 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor16 / totalSupply < 0:
                        revert with 0, 17
                    if 0 > arg1 * stor16 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor16 / totalSupply < 0:
                        revert with 0, 17
                else:
                    if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _taxFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor16 / totalSupply < arg1 * _taxFee / 100 * stor16 / totalSupply:
                        revert with 0, 17
                    if 0 > (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) < 0:
                        revert with 0, 17
            else:
                if _liquidityFee and 7 > -1 / _liquidityFee:
                    revert with 0, 17
                if not _liquidityFee:
                    revert with 0, 18
                if 7 * _liquidityFee / _liquidityFee != 7:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1:
                    mem[160] = 26
                    mem[192] = 'SafeMath: division by zero'
                    mem[224] = 30
                    mem[256] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 < arg1 * _taxFee / 100:
                        revert with 0, 17
                    mem[64] = 352
                    mem[288] = 30
                    mem[320] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 - (arg1 * _taxFee / 100):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 - (arg1 * _taxFee / 100) < 0:
                        revert with 0, 17
                    idx = 0
                    s = totalSupply
                    t = stor16
                    while idx < stor14.length:
                        mem[0] = stor14[idx]
                        mem[32] = 3
                        if stor3[stor14[idx]] > t:
                            _6722 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6722] = 26
                            mem[_6722 + 32] = 'SafeMath: division by zero'
                            if not totalSupply:
                                _6848 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _6848 + 68] = mem[idx + _6722 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_6848 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _6848 + -mem[64] + 100
                            if not arg1:
                                if not arg1 * _taxFee / 100:
                                    return 0
                                if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                                    revert with 0, 17
                                if not arg1 * _taxFee / 100:
                                    revert with 0, 18
                                if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _8142 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8142] = 30
                                mem[_8142 + 32] = 'SafeMath: subtraction overflow'
                                if arg1 * _taxFee / 100 * stor16 / totalSupply > 0:
                                    _8302 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _8302 + 68] = mem[idx + _8142 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_8302 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _8302 + -mem[64] + 100
                                if 0 < arg1 * _taxFee / 100 * stor16 / totalSupply:
                                    revert with 0, 17
                                _9010 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9010] = 30
                                mem[_9010 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= -1 * arg1 * _taxFee / 100 * stor16 / totalSupply:
                                    if -1 * arg1 * _taxFee / 100 * stor16 / totalSupply < 0:
                                        revert with 0, 17
                                    else:
                                        return 0
                                _9339 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _9339 + 68] = mem[idx + _9010 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9339 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9339 + -mem[64] + 100
                            if arg1 and stor16 / totalSupply > -1 / arg1:
                                revert with 0, 17
                            if not arg1:
                                revert with 0, 18
                            if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not arg1 * _taxFee / 100:
                                _8141 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8141] = 30
                                mem[_8141 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > arg1 * stor16 / totalSupply:
                                    _8301 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _8301 + 68] = mem[idx + _8141 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_8301 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _8301 + -mem[64] + 100
                                if arg1 * stor16 / totalSupply < 0:
                                    revert with 0, 17
                                _9008 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9008] = 30
                                mem[_9008 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= arg1 * stor16 / totalSupply:
                                    if arg1 * stor16 / totalSupply < 0:
                                        revert with 0, 17
                                    return (arg1 * stor16 / totalSupply)
                                _9338 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _9338 + 68] = mem[idx + _9008 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9338 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9338 + -mem[64] + 100
                            if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                                revert with 0, 17
                            if not arg1 * _taxFee / 100:
                                revert with 0, 18
                            if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _8688 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8688] = 30
                            mem[_8688 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _taxFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                                _9007 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _9007 + 68] = mem[idx + _8688 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9007 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9007 + -mem[64] + 100
                            if arg1 * stor16 / totalSupply < arg1 * _taxFee / 100 * stor16 / totalSupply:
                                revert with 0, 17
                            _10132 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10132] = 30
                            mem[_10132 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply):
                                if (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) < 0:
                                    revert with 0, 17
                                return (arg1 * stor16 / totalSupply)
                            _10569 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _10569 + 68] = mem[idx + _10132 + 32]
                                idx = idx + 32
                                continue 
                            mem[_10569 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _10569 + -mem[64] + 100
                        if idx >= stor14.length:
                            revert with 0, 50
                        mem[0] = stor14[idx]
                        mem[32] = 4
                        if stor4[stor14[idx]] <= s:
                            if idx >= stor14.length:
                                revert with 0, 50
                            mem[0] = stor14[idx]
                            mem[32] = 3
                            _6849 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6849] = 30
                            mem[_6849 + 32] = 'SafeMath: subtraction overflow'
                            if stor3[stor14[idx]] > t:
                                _6969 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _6969 + 68] = mem[idx + _6849 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_6969 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _6969 + -mem[64] + 100
                            if t < stor3[stor14[idx]]:
                                revert with 0, 17
                            if idx >= stor14.length:
                                revert with 0, 50
                            mem[0] = stor14[idx]
                            mem[32] = 4
                            _7498 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7498] = 30
                            mem[_7498 + 32] = 'SafeMath: subtraction overflow'
                            if stor4[stor14[idx]] <= s:
                                if s < stor4[stor14[idx]]:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s - stor4[stor14[idx]]
                                t = t - stor3[stor14[idx]]
                                continue 
                            _7570 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _7570 + 68] = mem[idx + _7498 + 32]
                                idx = idx + 32
                                continue 
                            mem[_7570 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _7570 + -mem[64] + 100
                        _6850 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6850] = 26
                        mem[_6850 + 32] = 'SafeMath: division by zero'
                        if not totalSupply:
                            _6970 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _6970 + 68] = mem[idx + _6850 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6970 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _6970 + -mem[64] + 100
                        if not arg1:
                            if not arg1 * _taxFee / 100:
                                return 0
                            if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                                revert with 0, 17
                            if not arg1 * _taxFee / 100:
                                revert with 0, 18
                            if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _8306 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8306] = 30
                            mem[_8306 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _taxFee / 100 * stor16 / totalSupply > 0:
                                _8449 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8449 + 68] = mem[idx + _8306 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8449 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8449 + -mem[64] + 100
                            if 0 < arg1 * _taxFee / 100 * stor16 / totalSupply:
                                revert with 0, 17
                            _9343 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9343] = 30
                            mem[_9343 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * arg1 * _taxFee / 100 * stor16 / totalSupply:
                                if -1 * arg1 * _taxFee / 100 * stor16 / totalSupply < 0:
                                    revert with 0, 17
                                else:
                                    return 0
                            _9658 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9658 + 68] = mem[idx + _9343 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9658 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9658 + -mem[64] + 100
                        if arg1 and stor16 / totalSupply > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * _taxFee / 100:
                            _8305 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8305] = 30
                            mem[_8305 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor16 / totalSupply:
                                _8448 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8448 + 68] = mem[idx + _8305 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8448 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8448 + -mem[64] + 100
                            if arg1 * stor16 / totalSupply < 0:
                                revert with 0, 17
                            _9341 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9341] = 30
                            mem[_9341 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor16 / totalSupply:
                                if arg1 * stor16 / totalSupply < 0:
                                    revert with 0, 17
                                return (arg1 * stor16 / totalSupply)
                            _9657 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9657 + 68] = mem[idx + _9341 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9657 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9657 + -mem[64] + 100
                        if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _9012 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_9012] = 30
                        mem[_9012 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                            _9340 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _9340 + 68] = mem[idx + _9012 + 32]
                                idx = idx + 32
                                continue 
                            mem[_9340 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _9340 + -mem[64] + 100
                        if arg1 * stor16 / totalSupply < arg1 * _taxFee / 100 * stor16 / totalSupply:
                            revert with 0, 17
                        _10572 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10572] = 30
                        mem[_10572 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply):
                            if (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) < 0:
                                revert with 0, 17
                            return (arg1 * stor16 / totalSupply)
                        _10908 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _10908 + 68] = mem[idx + _10572 + 32]
                            idx = idx + 32
                            continue 
                        mem[_10908 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _10908 + -mem[64] + 100
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero', 0
                    if t >= stor16 / totalSupply:
                        if not s:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not arg1:
                            if arg1 * _taxFee / 100:
                                if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                                    revert with 0, 17
                                if not arg1 * _taxFee / 100:
                                    revert with 0, 18
                                if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if arg1 * _taxFee / 100 * t / s > 0:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if 0 < arg1 * _taxFee / 100 * t / s:
                                    revert with 0, 17
                                if 0 > -1 * arg1 * _taxFee / 100 * t / s:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if -1 * arg1 * _taxFee / 100 * t / s < 0:
                                    revert with 0, 17
                                else:
                                    return 0
                            else:
                                return 0
                        if arg1 and t / s > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 * t / s / arg1 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * _taxFee / 100:
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < 0:
                                revert with 0, 17
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < 0:
                                revert with 0, 17
                        else:
                            if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                                revert with 0, 17
                            if not arg1 * _taxFee / 100:
                                revert with 0, 18
                            if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < arg1 * _taxFee / 100 * t / s:
                                revert with 0, 17
                            if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) < 0:
                                revert with 0, 17
                        return (arg1 * t / s)
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not arg1:
                        if arg1 * _taxFee / 100:
                            if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                                revert with 0, 17
                            if not arg1 * _taxFee / 100:
                                revert with 0, 18
                            if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * _taxFee / 100 * stor16 / totalSupply > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _taxFee / 100 * stor16 / totalSupply:
                                revert with 0, 17
                            if 0 > -1 * arg1 * _taxFee / 100 * stor16 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _taxFee / 100 * stor16 / totalSupply < 0:
                                revert with 0, 17
                            else:
                                return 0
                        else:
                            return 0
                    if arg1 and stor16 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        if 0 > arg1 * stor16 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor16 / totalSupply < 0:
                            revert with 0, 17
                        if 0 > arg1 * stor16 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor16 / totalSupply < 0:
                            revert with 0, 17
                    else:
                        if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _taxFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor16 / totalSupply < arg1 * _taxFee / 100 * stor16 / totalSupply:
                            revert with 0, 17
                        if 0 > (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) < 0:
                            revert with 0, 17
                else:
                    if arg1 and 7 * _liquidityFee > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if 7 * arg1 * _liquidityFee / arg1 != 7 * _liquidityFee:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[160] = 26
                    mem[192] = 'SafeMath: division by zero'
                    mem[224] = 30
                    mem[256] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 < arg1 * _taxFee / 100:
                        revert with 0, 17
                    mem[64] = 352
                    mem[288] = 30
                    mem[320] = 'SafeMath: subtraction overflow'
                    if 7 * arg1 * _liquidityFee / 100 > arg1 - (arg1 * _taxFee / 100):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 - (arg1 * _taxFee / 100) < 7 * arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    idx = 0
                    s = totalSupply
                    t = stor16
                    while idx < stor14.length:
                        mem[0] = stor14[idx]
                        mem[32] = 3
                        if stor3[stor14[idx]] > t:
                            _6721 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6721] = 26
                            mem[_6721 + 32] = 'SafeMath: division by zero'
                            if not totalSupply:
                                _6845 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _6845 + 68] = mem[idx + _6721 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_6845 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _6845 + -mem[64] + 100
                            if not arg1:
                                if not arg1 * _taxFee / 100:
                                    if not 7 * arg1 * _liquidityFee / 100:
                                        return 0
                                    if 7 * arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / 7 * arg1 * _liquidityFee / 100:
                                        revert with 0, 17
                                    if not 7 * arg1 * _liquidityFee / 100:
                                        revert with 0, 18
                                    if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply / 7 * arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _8134 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8134] = 30
                                    mem[_8134 + 32] = 'SafeMath: subtraction overflow'
                                    _8997 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8997] = 30
                                    mem[_8997 + 32] = 'SafeMath: subtraction overflow'
                                    if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply <= 0:
                                        if 0 < 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                                            revert with 0, 17
                                        else:
                                            return 0
                                    _9329 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _9329 + 68] = mem[idx + _8997 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9329 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9329 + -mem[64] + 100
                                if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                                    revert with 0, 17
                                if not arg1 * _taxFee / 100:
                                    revert with 0, 18
                                if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not 7 * arg1 * _liquidityFee / 100:
                                    _8133 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8133] = 30
                                    mem[_8133 + 32] = 'SafeMath: subtraction overflow'
                                    if arg1 * _taxFee / 100 * stor16 / totalSupply > 0:
                                        _8295 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _8295 + 68] = mem[idx + _8133 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_8295 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _8295 + -mem[64] + 100
                                    if 0 < arg1 * _taxFee / 100 * stor16 / totalSupply:
                                        revert with 0, 17
                                    _8995 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8995] = 30
                                    mem[_8995 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 <= -1 * arg1 * _taxFee / 100 * stor16 / totalSupply:
                                        if -1 * arg1 * _taxFee / 100 * stor16 / totalSupply < 0:
                                            revert with 0, 17
                                        else:
                                            return 0
                                    _9328 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _9328 + 68] = mem[idx + _8995 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9328 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9328 + -mem[64] + 100
                                if 7 * arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / 7 * arg1 * _liquidityFee / 100:
                                    revert with 0, 17
                                if not 7 * arg1 * _liquidityFee / 100:
                                    revert with 0, 18
                                if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply / 7 * arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _8679 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8679] = 30
                                mem[_8679 + 32] = 'SafeMath: subtraction overflow'
                                if arg1 * _taxFee / 100 * stor16 / totalSupply > 0:
                                    _8994 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _8994 + 68] = mem[idx + _8679 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_8994 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _8994 + -mem[64] + 100
                                if 0 < arg1 * _taxFee / 100 * stor16 / totalSupply:
                                    revert with 0, 17
                                _10118 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_10118] = 30
                                mem[_10118 + 32] = 'SafeMath: subtraction overflow'
                                if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply <= -1 * arg1 * _taxFee / 100 * stor16 / totalSupply:
                                    if -1 * arg1 * _taxFee / 100 * stor16 / totalSupply < 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                                        revert with 0, 17
                                    else:
                                        return 0
                                _10554 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _10554 + 68] = mem[idx + _10118 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_10554 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _10554 + -mem[64] + 100
                            if arg1 and stor16 / totalSupply > -1 / arg1:
                                revert with 0, 17
                            if not arg1:
                                revert with 0, 18
                            if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not arg1 * _taxFee / 100:
                                if not 7 * arg1 * _liquidityFee / 100:
                                    _8132 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8132] = 30
                                    mem[_8132 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 > arg1 * stor16 / totalSupply:
                                        _8294 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _8294 + 68] = mem[idx + _8132 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_8294 + 98] = 0
                                        revert with memory
                                          from mem[64]
                                           len _8294 + -mem[64] + 100
                                    if arg1 * stor16 / totalSupply < 0:
                                        revert with 0, 17
                                    _8992 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_8992] = 30
                                    mem[_8992 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 <= arg1 * stor16 / totalSupply:
                                        if arg1 * stor16 / totalSupply < 0:
                                            revert with 0, 17
                                        return (arg1 * stor16 / totalSupply)
                                    _9327 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _9327 + 68] = mem[idx + _8992 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_9327 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _9327 + -mem[64] + 100
                                if 7 * arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / 7 * arg1 * _liquidityFee / 100:
                                    revert with 0, 17
                                if not 7 * arg1 * _liquidityFee / 100:
                                    revert with 0, 18
                                if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply / 7 * arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _8678 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8678] = 30
                                mem[_8678 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > arg1 * stor16 / totalSupply:
                                    _8991 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _8991 + 68] = mem[idx + _8678 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_8991 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _8991 + -mem[64] + 100
                                if arg1 * stor16 / totalSupply < 0:
                                    revert with 0, 17
                                _10116 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_10116] = 30
                                mem[_10116 + 32] = 'SafeMath: subtraction overflow'
                                if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply <= arg1 * stor16 / totalSupply:
                                    if arg1 * stor16 / totalSupply < 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                                        revert with 0, 17
                                    return (arg1 * stor16 / totalSupply)
                                _10552 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _10552 + 68] = mem[idx + _10116 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_10552 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _10552 + -mem[64] + 100
                            if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                                revert with 0, 17
                            if not arg1 * _taxFee / 100:
                                revert with 0, 18
                            if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not 7 * arg1 * _liquidityFee / 100:
                                _8677 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8677] = 30
                                mem[_8677 + 32] = 'SafeMath: subtraction overflow'
                                if arg1 * _taxFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                                    _8990 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _8990 + 68] = mem[idx + _8677 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_8990 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _8990 + -mem[64] + 100
                                if arg1 * stor16 / totalSupply < arg1 * _taxFee / 100 * stor16 / totalSupply:
                                    revert with 0, 17
                                _10114 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_10114] = 30
                                mem[_10114 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply):
                                    if (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) < 0:
                                        revert with 0, 17
                                    return (arg1 * stor16 / totalSupply)
                                _10551 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _10551 + 68] = mem[idx + _10114 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_10551 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _10551 + -mem[64] + 100
                            if 7 * arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / 7 * arg1 * _liquidityFee / 100:
                                revert with 0, 17
                            if not 7 * arg1 * _liquidityFee / 100:
                                revert with 0, 18
                            if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply / 7 * arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _9650 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9650] = 30
                            mem[_9650 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _taxFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                                _10113 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _10113 + 68] = mem[idx + _9650 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_10113 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _10113 + -mem[64] + 100
                            if arg1 * stor16 / totalSupply < arg1 * _taxFee / 100 * stor16 / totalSupply:
                                revert with 0, 17
                            _11358 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11358] = 30
                            mem[_11358 + 32] = 'SafeMath: subtraction overflow'
                            if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply <= (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply):
                                if (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) < 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                                    revert with 0, 17
                                return (arg1 * stor16 / totalSupply)
                            _11757 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _11757 + 68] = mem[idx + _11358 + 32]
                                idx = idx + 32
                                continue 
                            mem[_11757 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _11757 + -mem[64] + 100
                        if idx >= stor14.length:
                            revert with 0, 50
                        mem[0] = stor14[idx]
                        mem[32] = 4
                        if stor4[stor14[idx]] <= s:
                            if idx >= stor14.length:
                                revert with 0, 50
                            mem[0] = stor14[idx]
                            mem[32] = 3
                            _6846 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6846] = 30
                            mem[_6846 + 32] = 'SafeMath: subtraction overflow'
                            if stor3[stor14[idx]] > t:
                                _6966 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _6966 + 68] = mem[idx + _6846 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_6966 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _6966 + -mem[64] + 100
                            if t < stor3[stor14[idx]]:
                                revert with 0, 17
                            if idx >= stor14.length:
                                revert with 0, 50
                            mem[0] = stor14[idx]
                            mem[32] = 4
                            _7495 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7495] = 30
                            mem[_7495 + 32] = 'SafeMath: subtraction overflow'
                            if stor4[stor14[idx]] <= s:
                                if s < stor4[stor14[idx]]:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s - stor4[stor14[idx]]
                                t = t - stor3[stor14[idx]]
                                continue 
                            _7567 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _7567 + 68] = mem[idx + _7495 + 32]
                                idx = idx + 32
                                continue 
                            mem[_7567 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _7567 + -mem[64] + 100
                        _6847 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6847] = 26
                        mem[_6847 + 32] = 'SafeMath: division by zero'
                        if not totalSupply:
                            _6967 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _6967 + 68] = mem[idx + _6847 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6967 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _6967 + -mem[64] + 100
                        if not arg1:
                            if not arg1 * _taxFee / 100:
                                if not 7 * arg1 * _liquidityFee / 100:
                                    return 0
                                if 7 * arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / 7 * arg1 * _liquidityFee / 100:
                                    revert with 0, 17
                                if not 7 * arg1 * _liquidityFee / 100:
                                    revert with 0, 18
                                if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply / 7 * arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _8300 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8300] = 30
                                mem[_8300 + 32] = 'SafeMath: subtraction overflow'
                                _9337 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9337] = 30
                                mem[_9337 + 32] = 'SafeMath: subtraction overflow'
                                if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply <= 0:
                                    if 0 < 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                                        revert with 0, 17
                                    else:
                                        return 0
                                _9654 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _9654 + 68] = mem[idx + _9337 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9654 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9654 + -mem[64] + 100
                            if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                                revert with 0, 17
                            if not arg1 * _taxFee / 100:
                                revert with 0, 18
                            if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not 7 * arg1 * _liquidityFee / 100:
                                _8299 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8299] = 30
                                mem[_8299 + 32] = 'SafeMath: subtraction overflow'
                                if arg1 * _taxFee / 100 * stor16 / totalSupply > 0:
                                    _8446 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _8446 + 68] = mem[idx + _8299 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_8446 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _8446 + -mem[64] + 100
                                if 0 < arg1 * _taxFee / 100 * stor16 / totalSupply:
                                    revert with 0, 17
                                _9335 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9335] = 30
                                mem[_9335 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= -1 * arg1 * _taxFee / 100 * stor16 / totalSupply:
                                    if -1 * arg1 * _taxFee / 100 * stor16 / totalSupply < 0:
                                        revert with 0, 17
                                    else:
                                        return 0
                                _9653 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _9653 + 68] = mem[idx + _9335 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9653 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9653 + -mem[64] + 100
                            if 7 * arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / 7 * arg1 * _liquidityFee / 100:
                                revert with 0, 17
                            if not 7 * arg1 * _liquidityFee / 100:
                                revert with 0, 18
                            if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply / 7 * arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _9000 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9000] = 30
                            mem[_9000 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _taxFee / 100 * stor16 / totalSupply > 0:
                                _9334 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _9334 + 68] = mem[idx + _9000 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9334 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9334 + -mem[64] + 100
                            if 0 < arg1 * _taxFee / 100 * stor16 / totalSupply:
                                revert with 0, 17
                            _10562 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10562] = 30
                            mem[_10562 + 32] = 'SafeMath: subtraction overflow'
                            if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply <= -1 * arg1 * _taxFee / 100 * stor16 / totalSupply:
                                if -1 * arg1 * _taxFee / 100 * stor16 / totalSupply < 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                                    revert with 0, 17
                                else:
                                    return 0
                            _10905 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _10905 + 68] = mem[idx + _10562 + 32]
                                idx = idx + 32
                                continue 
                            mem[_10905 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _10905 + -mem[64] + 100
                        if arg1 and stor16 / totalSupply > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * _taxFee / 100:
                            if not 7 * arg1 * _liquidityFee / 100:
                                _8298 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8298] = 30
                                mem[_8298 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > arg1 * stor16 / totalSupply:
                                    _8445 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _8445 + 68] = mem[idx + _8298 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_8445 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _8445 + -mem[64] + 100
                                if arg1 * stor16 / totalSupply < 0:
                                    revert with 0, 17
                                _9332 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9332] = 30
                                mem[_9332 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= arg1 * stor16 / totalSupply:
                                    if arg1 * stor16 / totalSupply < 0:
                                        revert with 0, 17
                                    return (arg1 * stor16 / totalSupply)
                                _9652 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _9652 + 68] = mem[idx + _9332 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9652 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9652 + -mem[64] + 100
                            if 7 * arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / 7 * arg1 * _liquidityFee / 100:
                                revert with 0, 17
                            if not 7 * arg1 * _liquidityFee / 100:
                                revert with 0, 18
                            if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply / 7 * arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _8999 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8999] = 30
                            mem[_8999 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor16 / totalSupply:
                                _9331 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _9331 + 68] = mem[idx + _8999 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9331 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9331 + -mem[64] + 100
                            if arg1 * stor16 / totalSupply < 0:
                                revert with 0, 17
                            _10560 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10560] = 30
                            mem[_10560 + 32] = 'SafeMath: subtraction overflow'
                            if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply <= arg1 * stor16 / totalSupply:
                                if arg1 * stor16 / totalSupply < 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                                    revert with 0, 17
                                return (arg1 * stor16 / totalSupply)
                            _10903 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _10903 + 68] = mem[idx + _10560 + 32]
                                idx = idx + 32
                                continue 
                            mem[_10903 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _10903 + -mem[64] + 100
                        if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 7 * arg1 * _liquidityFee / 100:
                            _8998 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8998] = 30
                            mem[_8998 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _taxFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                                _9330 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _9330 + 68] = mem[idx + _8998 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9330 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _9330 + -mem[64] + 100
                            if arg1 * stor16 / totalSupply < arg1 * _taxFee / 100 * stor16 / totalSupply:
                                revert with 0, 17
                            _10558 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10558] = 30
                            mem[_10558 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply):
                                if (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) < 0:
                                    revert with 0, 17
                                return (arg1 * stor16 / totalSupply)
                            _10902 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _10902 + 68] = mem[idx + _10558 + 32]
                                idx = idx + 32
                                continue 
                            mem[_10902 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _10902 + -mem[64] + 100
                        if 7 * arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / 7 * arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not 7 * arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply / 7 * arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _10121 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10121] = 30
                        mem[_10121 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                            _10557 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _10557 + 68] = mem[idx + _10121 + 32]
                                idx = idx + 32
                                continue 
                            mem[_10557 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _10557 + -mem[64] + 100
                        if arg1 * stor16 / totalSupply < arg1 * _taxFee / 100 * stor16 / totalSupply:
                            revert with 0, 17
                        _11761 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11761] = 30
                        mem[_11761 + 32] = 'SafeMath: subtraction overflow'
                        if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply <= (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply):
                            if (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) < 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                                revert with 0, 17
                            return (arg1 * stor16 / totalSupply)
                        _11926 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _11926 + 68] = mem[idx + _11761 + 32]
                            idx = idx + 32
                            continue 
                        mem[_11926 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _11926 + -mem[64] + 100
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero', 0
                    if t >= stor16 / totalSupply:
                        if not s:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not arg1:
                            if not arg1 * _taxFee / 100:
                                if 7 * arg1 * _liquidityFee / 100:
                                    if 7 * arg1 * _liquidityFee / 100 and t / s > -1 / 7 * arg1 * _liquidityFee / 100:
                                        revert with 0, 17
                                    if not 7 * arg1 * _liquidityFee / 100:
                                        revert with 0, 18
                                    if 7 * arg1 * _liquidityFee / 100 * t / s / 7 * arg1 * _liquidityFee / 100 != t / s:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if 7 * arg1 * _liquidityFee / 100 * t / s > 0:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if 0 < 7 * arg1 * _liquidityFee / 100 * t / s:
                                        revert with 0, 17
                            else:
                                if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                                    revert with 0, 17
                                if not arg1 * _taxFee / 100:
                                    revert with 0, 18
                                if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not 7 * arg1 * _liquidityFee / 100:
                                    if arg1 * _taxFee / 100 * t / s > 0:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if 0 < arg1 * _taxFee / 100 * t / s:
                                        revert with 0, 17
                                    if 0 > -1 * arg1 * _taxFee / 100 * t / s:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if -1 * arg1 * _taxFee / 100 * t / s < 0:
                                        revert with 0, 17
                                else:
                                    if 7 * arg1 * _liquidityFee / 100 and t / s > -1 / 7 * arg1 * _liquidityFee / 100:
                                        revert with 0, 17
                                    if not 7 * arg1 * _liquidityFee / 100:
                                        revert with 0, 18
                                    if 7 * arg1 * _liquidityFee / 100 * t / s / 7 * arg1 * _liquidityFee / 100 != t / s:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if arg1 * _taxFee / 100 * t / s > 0:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if 0 < arg1 * _taxFee / 100 * t / s:
                                        revert with 0, 17
                                    if 7 * arg1 * _liquidityFee / 100 * t / s > -1 * arg1 * _taxFee / 100 * t / s:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if -1 * arg1 * _taxFee / 100 * t / s < 7 * arg1 * _liquidityFee / 100 * t / s:
                                        revert with 0, 17
                            return 0
                        if arg1 and t / s > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 * t / s / arg1 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * _taxFee / 100:
                            if not 7 * arg1 * _liquidityFee / 100:
                                if 0 > arg1 * t / s:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg1 * t / s < 0:
                                    revert with 0, 17
                                if 0 > arg1 * t / s:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg1 * t / s < 0:
                                    revert with 0, 17
                            else:
                                if 7 * arg1 * _liquidityFee / 100 and t / s > -1 / 7 * arg1 * _liquidityFee / 100:
                                    revert with 0, 17
                                if not 7 * arg1 * _liquidityFee / 100:
                                    revert with 0, 18
                                if 7 * arg1 * _liquidityFee / 100 * t / s / 7 * arg1 * _liquidityFee / 100 != t / s:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if 0 > arg1 * t / s:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg1 * t / s < 0:
                                    revert with 0, 17
                                if 7 * arg1 * _liquidityFee / 100 * t / s > arg1 * t / s:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg1 * t / s < 7 * arg1 * _liquidityFee / 100 * t / s:
                                    revert with 0, 17
                        else:
                            if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                                revert with 0, 17
                            if not arg1 * _taxFee / 100:
                                revert with 0, 18
                            if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not 7 * arg1 * _liquidityFee / 100:
                                if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg1 * t / s < arg1 * _taxFee / 100 * t / s:
                                    revert with 0, 17
                                if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) < 0:
                                    revert with 0, 17
                            else:
                                if 7 * arg1 * _liquidityFee / 100 and t / s > -1 / 7 * arg1 * _liquidityFee / 100:
                                    revert with 0, 17
                                if not 7 * arg1 * _liquidityFee / 100:
                                    revert with 0, 18
                                if 7 * arg1 * _liquidityFee / 100 * t / s / 7 * arg1 * _liquidityFee / 100 != t / s:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg1 * t / s < arg1 * _taxFee / 100 * t / s:
                                    revert with 0, 17
                                if 7 * arg1 * _liquidityFee / 100 * t / s > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) < 7 * arg1 * _liquidityFee / 100 * t / s:
                                    revert with 0, 17
                        return (arg1 * t / s)
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            if 7 * arg1 * _liquidityFee / 100:
                                if 7 * arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / 7 * arg1 * _liquidityFee / 100:
                                    revert with 0, 17
                                if not 7 * arg1 * _liquidityFee / 100:
                                    revert with 0, 18
                                if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply / 7 * arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply > 0:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if 0 < 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                                    revert with 0, 17
                        else:
                            if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                                revert with 0, 17
                            if not arg1 * _taxFee / 100:
                                revert with 0, 18
                            if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not 7 * arg1 * _liquidityFee / 100:
                                if arg1 * _taxFee / 100 * stor16 / totalSupply > 0:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if 0 < arg1 * _taxFee / 100 * stor16 / totalSupply:
                                    revert with 0, 17
                                if 0 > -1 * arg1 * _taxFee / 100 * stor16 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if -1 * arg1 * _taxFee / 100 * stor16 / totalSupply < 0:
                                    revert with 0, 17
                            else:
                                if 7 * arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / 7 * arg1 * _liquidityFee / 100:
                                    revert with 0, 17
                                if not 7 * arg1 * _liquidityFee / 100:
                                    revert with 0, 18
                                if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply / 7 * arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if arg1 * _taxFee / 100 * stor16 / totalSupply > 0:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if 0 < arg1 * _taxFee / 100 * stor16 / totalSupply:
                                    revert with 0, 17
                                if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply > -1 * arg1 * _taxFee / 100 * stor16 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if -1 * arg1 * _taxFee / 100 * stor16 / totalSupply < 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                                    revert with 0, 17
                        return 0
                    if arg1 and stor16 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor16 / totalSupply / arg1 != stor16 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        if not 7 * arg1 * _liquidityFee / 100:
                            if 0 > arg1 * stor16 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor16 / totalSupply < 0:
                                revert with 0, 17
                            if 0 > arg1 * stor16 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor16 / totalSupply < 0:
                                revert with 0, 17
                        else:
                            if 7 * arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / 7 * arg1 * _liquidityFee / 100:
                                revert with 0, 17
                            if not 7 * arg1 * _liquidityFee / 100:
                                revert with 0, 18
                            if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply / 7 * arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > arg1 * stor16 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor16 / totalSupply < 0:
                                revert with 0, 17
                            if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor16 / totalSupply < 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                                revert with 0, 17
                    else:
                        if arg1 * _taxFee / 100 and stor16 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * stor16 / totalSupply / arg1 * _taxFee / 100 != stor16 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 7 * arg1 * _liquidityFee / 100:
                            if arg1 * _taxFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor16 / totalSupply < arg1 * _taxFee / 100 * stor16 / totalSupply:
                                revert with 0, 17
                            if 0 > (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) < 0:
                                revert with 0, 17
                        else:
                            if 7 * arg1 * _liquidityFee / 100 and stor16 / totalSupply > -1 / 7 * arg1 * _liquidityFee / 100:
                                revert with 0, 17
                            if not 7 * arg1 * _liquidityFee / 100:
                                revert with 0, 18
                            if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply / 7 * arg1 * _liquidityFee / 100 != stor16 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * _taxFee / 100 * stor16 / totalSupply > arg1 * stor16 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor16 / totalSupply < arg1 * _taxFee / 100 * stor16 / totalSupply:
                                revert with 0, 17
                            if 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply > (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if (arg1 * stor16 / totalSupply) - (arg1 * _taxFee / 100 * stor16 / totalSupply) < 7 * arg1 * _liquidityFee / 100 * stor16 / totalSupply:
                                revert with 0, 17
    return (arg1 * stor16 / totalSupply)
}



}
