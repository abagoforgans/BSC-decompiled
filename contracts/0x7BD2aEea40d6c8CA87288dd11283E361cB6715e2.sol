contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transferOwner(address arg1)
#  - sub_8fc3bd15(?)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const maxBuyTaxes = 2000

const maxTransferTaxes = 2000

const maxSellTaxes = 2000


address owner;
mapping of uint256 balanceOf;
mapping of uint8 stor2;
uint256 stor3;
mapping of uint256 allowance;
mapping of uint8 stor5;
mapping of uint8 stor6;
array of struct stor9;
array of struct stor10;
uint256 _buyFee;
uint256 _sellFee;
uint256 _transferFee;
uint256 _liquidityRatio;
uint256 _marketingRatio;
uint256 sub_fd0dde63;
uint8 decimals;
uint256 totalSupply;
address dexRouterAddress;
address lpPairAddress;
address DEADAddress;
address ZEROAddress;
uint8 swapAndLiquifyEnabled; offset 168
uint128 stor27; offset 168
address stor27;
uint256 _maxTxAmount;
uint256 _maxWalletSize;
uint256 stor30;
uint256 stor31;
uint256 bonusTime;
uint256 stor33;
uint8 tradingEnabled;
uint8 launched; offset 8
uint8 sub_fc739af0; offset 16
uint8 _hasLiqBeenAdded; offset 24
uint256 stor34; offset 16
uint256 stor34;
uint256 stor35;
uint256 sub_d04102b3;
uint8 stor37;
uint256 stor37; offset 8
uint256 stor37;
uint256 snipersCaught;
uint8 sub_f9017966;
uint256 gasPriceLimit;
uint8 sub_79c4bdc1;

function DEAD() {
    return DEADAddress
}

function dexRouter() {
    return dexRouterAddress
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function _liquidityRatio() {
    return _liquidityRatio
}

function _transferFee() {
    return _transferFee
}

function _buyFee() {
    return _buyFee
}

function lpPair() {
    return lpPairAddress
}

function swapAndLiquifyEnabled() {
    return bool(swapAndLiquifyEnabled)
}

function tradingEnabled() {
    return bool(tradingEnabled)
}

function _marketingRatio() {
    return _marketingRatio
}

function isExcludedFromFees(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor5[address(arg1)])
}

function _hasLiqBeenAdded() {
    return bool(_hasLiqBeenAdded)
}

function ZERO() {
    return ZEROAddress
}

function _sellFee() {
    return _sellFee
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_79c4bdc1(?) {
    return bool(sub_79c4bdc1)
}

function _maxTxAmount() {
    return _maxTxAmount
}

function launched() {
    return bool(launched)
}

function getOwner() {
    return owner
}

function isSniperOrBlacklisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor6[address(arg1)])
}

function owner() {
    return owner
}

function _maxWalletSize() {
    return _maxWalletSize
}

function gasPriceLimit() {
    return gasPriceLimit
}

function bonusTime() {
    return bonusTime
}

function sub_d04102b3(?) {
    return sub_d04102b3
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function snipersCaught() {
    return snipersCaught
}

function sub_f9017966(?) {
    return bool(sub_f9017966)
}

function sub_fc739af0(?) {
    return bool(sub_fc739af0)
}

function sub_fd0dde63(?) {
    return sub_fd0dde63
}

function setWallets(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stor27.field_0) = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5[stor0] = 0
    owner = 0
    emit OwnershipTransferred(address arg1, address arg2)
    emit 0x0 
    emit 0x0 
}

function sub_1dff247f(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 2 * 3600:
        revert with 0, 'Cannot set above 2 hrs.'
    bonusTime = arg1
}

function setExcludedFromFees(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5[address(arg1)] = uint8(arg2)
}

function setBlacklistEnabled(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6[address(arg1)] = uint8(arg2)
}

function setSwapAndLiquifyEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(88, 0, stor27.field_168) = Mask(88, 0, arg1)
    emit SwapAndLiquifyEnabledUpdated(arg1);
}

function setGasPriceLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 >= 75
    if arg1 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
        revert with 0, 17
    gasPriceLimit = 10^9 * arg1
}

function setProtectionSettings(bool arg1, bool arg2, bool arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(240, 0, stor34.field_16) = Mask(240, 0, arg1)
    sub_f9017966 = uint8(arg2)
    sub_79c4bdc1 = uint8(arg3)
}

function setTaxes(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 2000:
        revert with 0, 'Cannot exceed maximums.'
    if arg2 > 2000:
        revert with 0, 'Cannot exceed maximums.'
    if arg3 > 2000:
        revert with 0, 'Cannot exceed maximums.'
    _buyFee = arg1
    _sellFee = arg2
    _transferFee = arg3
}

function setRatios(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 > !arg3:
        revert with 0, 17
    if arg1 + arg2 + arg3 != 100:
        revert with 0, 'Must add up to 100%'
    if arg2:
        require arg2 <= 30
    _liquidityRatio = arg1
    _marketingRatio = arg2
    sub_fd0dde63 = arg3
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setStartingProtections(uint8 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require not uint256(stor37.field_0)
    require not gasPriceLimit
    require not _hasLiqBeenAdded
    uint8(stor37.field_0) = arg1
    Mask(248, 0, stor37.field_8) = 0
    if arg2 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
        revert with 0, 17
    gasPriceLimit = 10^9 * arg2
}

function setSwapSettings(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if totalSupply and arg1 > -1 / totalSupply:
        revert with 0, 17
    if not arg2:
        revert with 0, 18
    stor30 = totalSupply * arg1 / arg2
    if totalSupply and arg3 > -1 / totalSupply:
        revert with 0, 17
    if not arg4:
        revert with 0, 18
    stor31 = totalSupply * arg3 / arg4
}

function setLpPair(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg2:
        stor2[address(arg1)] = 0
    else:
        if stor3:
            if block.timestamp < stor3:
                revert with 0, 17
            if block.timestamp - stor3 <= 168 * 24 * 3600:
                revert with 0, 'Cannot set a new pair this week!'
        stor2[address(arg1)] = 1
        stor3 = block.timestamp
}

function enableTrading() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if tradingEnabled:
        revert with 0, 'Trading already enabled!'
    if not uint256(stor37.field_0):
        if 10 > !block.number:
            revert with 0, 17
        stor35 = block.number + 10
    else:
        if uint256(stor37.field_0) <= 5:
            stor35 = block.number
        else:
            if 10 > !block.number:
                revert with 0, 17
            stor35 = block.number + 10
    sub_d04102b3 = block.timestamp
    uint256(stor34.field_0) = 16777217
}

function setMaxWalletSize(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if totalSupply and arg1 > -1 / totalSupply:
        revert with 0, 17
    if not arg2:
        revert with 0, 18
    if totalSupply * arg1 / arg2 < totalSupply / 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Max Wallet amt must be above 0.1% of total supply.'
    if totalSupply and arg1 > -1 / totalSupply:
        revert with 0, 17
    if not arg2:
        revert with 0, 18
    _maxWalletSize = totalSupply * arg1 / arg2
}

function setMaxTxPercent(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if totalSupply and arg1 > -1 / totalSupply:
        revert with 0, 17
    if not arg2:
        revert with 0, 18
    if totalSupply * arg1 / arg2 < totalSupply / 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Max Transaction amt must be above 0.1% of total supply.'
    if totalSupply and arg1 > -1 / totalSupply:
        revert with 0, 17
    if not arg2:
        revert with 0, 18
    _maxTxAmount = totalSupply * arg1 / arg2
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function getMaxTX() {
    if not decimals:
        return _maxTxAmount
    if bool(bool(decimals < 78)) or bool(bool(decimals < 32)):
        if not 10^decimals:
            revert with 0, 18
        return (_maxTxAmount / 10^decimals)
    s = 10
    t = 1
    idx = decimals
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    if not s * t:
        revert with 0, 18
    return (_maxTxAmount / s * t)
}

function getMaxWallet() {
    if not decimals:
        return _maxWalletSize
    if bool(bool(decimals < 78)) or bool(bool(decimals < 32)):
        if not 10^decimals:
            revert with 0, 18
        return (_maxWalletSize / 10^decimals)
    s = 10
    t = 1
    idx = decimals
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    if not s * t:
        revert with 0, 18
    return (_maxWalletSize / s * t)
}

function buybackAndBurn(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 0x734aca5f6226f0ada6175f343cc4d4d9dfb8b60d6e93f84291e:
        revert with 0, 17
    if eth.balance(this.address) < 10^16 * arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract does not have enough BNB.'
    staticcall dexRouterAddress.0xad5c4648 with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[128] = ext_call.return_data[12 len 20]
    mem[160] = this.address
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
    require ext_code.size(dexRouterAddress)
    call dexRouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value 10^16 * arg1 wei
         gas gas_remaining wei
        args 0, 128, DEADAddress, block.timestamp, 2, mem[ceil32(return_data.size) + 356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if block.timestamp > !bonusTime:
        revert with 0, 17
    stor33 = block.timestamp + bonusTime
}

function setNewRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall arg1.0xad5c4648 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        staticcall arg1.factory() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        staticcall arg1.0xad5c4648 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
             gas gas_remaining wei
            args address(this.address), address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    lpPairAddress = ext_call.return_data[12 len 20]
    dexRouterAddress = arg1
}

function name() {
    if bool(stor9.length):
        if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor9.length):
            if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor9.length):
                if 31 < uint255(stor9.length) * 0.5:
                    mem[128] = uint256(stor9.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor9.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor9[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor9.length), data=mem[128 len ceil32(uint255(stor9.length) * 0.5)])
                mem[128] = 256 * stor9.length.field_8
        else:
            if bool(stor9.length) == stor9.length.field_1 < 32:
                revert with 0, 34
            if stor9.length.field_1:
                if 31 < stor9.length.field_1:
                    mem[128] = uint256(stor9.field_0)
                    idx = 128
                    s = 0
                    while stor9.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor9[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor9.length), data=mem[128 len ceil32(uint255(stor9.length) * 0.5)])
                mem[128] = 256 * stor9.length.field_8
        mem[ceil32(uint255(stor9.length) * 0.5) + 192 len ceil32(uint255(stor9.length) * 0.5)] = mem[128 len ceil32(uint255(stor9.length) * 0.5)]
        if ceil32(uint255(stor9.length) * 0.5) > uint255(stor9.length) * 0.5:
            mem[ceil32(uint255(stor9.length) * 0.5) + (uint255(stor9.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor9.length), data=mem[128 len ceil32(uint255(stor9.length) * 0.5)], mem[(2 * ceil32(uint255(stor9.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor9.length) * 0.5)]), 
    if bool(stor9.length) == stor9.length.field_1 < 32:
        revert with 0, 34
    if bool(stor9.length):
        if bool(stor9.length) == uint255(stor9.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor9.length):
            if 31 < uint255(stor9.length) * 0.5:
                mem[128] = uint256(stor9.field_0)
                idx = 128
                s = 0
                while (uint255(stor9.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor9[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1)])
            mem[128] = 256 * stor9.length.field_8
    else:
        if bool(stor9.length) == stor9.length.field_1 < 32:
            revert with 0, 34
        if stor9.length.field_1:
            if 31 < stor9.length.field_1:
                mem[128] = uint256(stor9.field_0)
                idx = 128
                s = 0
                while stor9.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor9[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1)])
            mem[128] = 256 * stor9.length.field_8
    mem[ceil32(stor9.length.field_1) + 192 len ceil32(stor9.length.field_1)] = mem[128 len ceil32(stor9.length.field_1)]
    if ceil32(stor9.length.field_1) > stor9.length.field_1:
        mem[ceil32(stor9.length.field_1) + stor9.length.field_1 + 192] = 0
    return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1)], mem[(2 * ceil32(stor9.length.field_1)) + 192 len 2 * ceil32(stor9.length.field_1)]), 
}

function symbol() {
    if bool(stor10.length):
        if bool(stor10.length) == uint255(stor10.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor10.length):
            if bool(stor10.length) == uint255(stor10.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor10.length):
                if 31 < uint255(stor10.length) * 0.5:
                    mem[128] = uint256(stor10.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor10.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor10[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor10.length), data=mem[128 len ceil32(uint255(stor10.length) * 0.5)])
                mem[128] = 256 * stor10.length.field_8
        else:
            if bool(stor10.length) == stor10.length.field_1 < 32:
                revert with 0, 34
            if stor10.length.field_1:
                if 31 < stor10.length.field_1:
                    mem[128] = uint256(stor10.field_0)
                    idx = 128
                    s = 0
                    while stor10.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor10[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor10.length), data=mem[128 len ceil32(uint255(stor10.length) * 0.5)])
                mem[128] = 256 * stor10.length.field_8
        mem[ceil32(uint255(stor10.length) * 0.5) + 192 len ceil32(uint255(stor10.length) * 0.5)] = mem[128 len ceil32(uint255(stor10.length) * 0.5)]
        if ceil32(uint255(stor10.length) * 0.5) > uint255(stor10.length) * 0.5:
            mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor10.length), data=mem[128 len ceil32(uint255(stor10.length) * 0.5)], mem[(2 * ceil32(uint255(stor10.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor10.length) * 0.5)]), 
    if bool(stor10.length) == stor10.length.field_1 < 32:
        revert with 0, 34
    if bool(stor10.length):
        if bool(stor10.length) == uint255(stor10.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor10.length):
            if 31 < uint255(stor10.length) * 0.5:
                mem[128] = uint256(stor10.field_0)
                idx = 128
                s = 0
                while (uint255(stor10.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor10[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor10.length % 128, data=mem[128 len ceil32(stor10.length.field_1)])
            mem[128] = 256 * stor10.length.field_8
    else:
        if bool(stor10.length) == stor10.length.field_1 < 32:
            revert with 0, 34
        if stor10.length.field_1:
            if 31 < stor10.length.field_1:
                mem[128] = uint256(stor10.field_0)
                idx = 128
                s = 0
                while stor10.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor10[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor10.length % 128, data=mem[128 len ceil32(stor10.length.field_1)])
            mem[128] = 256 * stor10.length.field_8
    mem[ceil32(stor10.length.field_1) + 192 len ceil32(stor10.length.field_1)] = mem[128 len ceil32(stor10.length.field_1)]
    if ceil32(stor10.length.field_1) > stor10.length.field_1:
        mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 192] = 0
    return Array(len=stor10.length % 128, data=mem[128 len ceil32(stor10.length.field_1)], mem[(2 * ceil32(stor10.length.field_1)) + 192 len 2 * ceil32(stor10.length.field_1)]), 
}



}
