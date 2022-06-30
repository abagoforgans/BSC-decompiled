contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - deliver(uint256 arg1)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
address owner;
mapping of uint256 stor1;
mapping of uint256 stor2;
mapping of uint256 allowance;
mapping of uint8 stor4;
mapping of uint8 stor5;
array of address stor6;
mapping of uint8 stor7;
uint256 stor9;
uint8 decimals;
uint256 stor11;
uint256 totalSupply;
uint256 stor13;
uint256 totalFees;
array of struct stor15;
array of struct stor16;
uint256 _reflectFee;
uint256 sub_104a6f82;
uint256 _liquidityFee;
uint256 sub_22592c5a;
uint256 _marketingFee;
uint256 sub_bb608c50;
uint256 _buyBackFee;
uint256 sub_f6b8837e;
uint256 _devFee;
uint256 sub_4677b299;
uint256 stor32;
uint256 stor33;
address dexRouterAddress;
address lpPairAddress;
address burnAddress;
address stor38;
uint8 swapAndLiquifyEnabled; offset 168
uint8 buyBackEnabled; offset 176
uint128 stor39; offset 176
uint128 stor39; offset 168
uint256 buyBackSellLimit;
uint256 sub_395e8ed0;
uint8 sub_b8a77087;
uint8 sub_f9c10436; offset 8
uint256 stor45;
uint256 maxTxAmountUI;
uint256 stor50;
uint256 sub_be993755;
uint256 sub_ddd5ba14;
uint256 stor54;

function dexRouter() {
    return dexRouterAddress
}

function sub_104a6f82(?) {
    return sub_104a6f82
}

function _buyBackFee() {
    return _buyBackFee
}

function totalFees() {
    return totalFees
}

function _reflectFee() {
    return _reflectFee
}

function totalSupply() {
    return totalSupply
}

function buyBackSellLimit() {
    return buyBackSellLimit
}

function sub_22592c5a(?) {
    return sub_22592c5a
}

function _marketingFee() {
    return _marketingFee
}

function decimals() {
    return decimals
}

function sub_395e8ed0(?) {
    return sub_395e8ed0
}

function lpPair() {
    return lpPairAddress
}

function sub_4677b299(?) {
    return sub_4677b299
}

function swapAndLiquifyEnabled() {
    return bool(swapAndLiquifyEnabled)
}

function isExcludedFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor4[address(arg1)])
}

function buyBackEnabled() {
    return bool(buyBackEnabled)
}

function maxTxAmountUI() {
    return maxTxAmountUI
}

function _liquidityFee() {
    return _liquidityFee
}

function burnAddress() {
    return burnAddress
}

function isExcludedFromReward(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor5[address(arg1)])
}

function getOwner() {
    return owner
}

function owner() {
    return owner
}

function _devFee() {
    return _devFee
}

function sub_b8a77087(?) {
    return bool(sub_b8a77087)
}

function sub_bb608c50(?) {
    return sub_bb608c50
}

function sub_be993755(?) {
    return sub_be993755
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_ddd5ba14(?) {
    return sub_ddd5ba14
}

function sub_f6b8837e(?) {
    return sub_f6b8837e
}

function sub_f9c10436(?) {
    return bool(sub_f9c10436)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function includeInFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4[address(arg1)] = 0
}

function excludeFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4[address(arg1)] = 1
}

function setBoostedTaxesEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 != bool(sub_b8a77087):
        sub_b8a77087 = uint8(arg1)
}

function setMarketingWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor38 == arg1:
        revert with 0, 'Wallet already set!'
    stor38 = arg1
}

function setBuyBackEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(80, 0, stor39.field_176) = Mask(80, 0, arg1)
    emit BuyBackEnabledUpdated(arg1);
}

function sub_5c8e7464(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_ddd5ba14 = arg1
    if totalSupply and arg1 > -1 / totalSupply:
        revert with 0, 17
    stor54 = totalSupply * arg1 / 10000
}

function setSwapAndLiquifyEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(88, 0, stor39.field_168) = Mask(88, 0, arg1)
    emit SwapAndLiquifyEnabledUpdated(arg1);
}

function setBlacklistAddress(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 != bool(stor7[address(arg1)]):
        stor7[address(arg1)] = uint8(arg2)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
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

function setTaxes(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 > !arg3:
        revert with 0, 17
    if arg1 + arg2 + arg3 > !arg4:
        revert with 0, 17
    if arg1 + arg2 + arg3 + arg4 > !arg5:
        revert with 0, 17
    require arg1 + arg2 + arg3 + arg4 + arg5 <= stor33
    _reflectFee = arg1
    _liquidityFee = arg2
    _marketingFee = arg3
    _buyBackFee = arg4
    _devFee = arg5
}

function setBoostedTaxes(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 > !arg3:
        revert with 0, 17
    if arg1 + arg2 + arg3 > !arg4:
        revert with 0, 17
    if arg1 + arg2 + arg3 + arg4 > !arg5:
        revert with 0, 17
    require arg1 + arg2 + arg3 + arg4 + arg5 <= stor33
    sub_104a6f82 = arg1
    sub_22592c5a = arg2
    sub_bb608c50 = arg3
    sub_f6b8837e = arg4
    sub_4677b299 = arg5
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > allowance[msg.sender][address(arg1)]:
        revert with 0, 32, 37, 0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if allowance[msg.sender][address(arg1)] + arg2 < allowance[msg.sender][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function includeInReward(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor5[address(arg1)]:
        revert with 0, 'Account is already excluded'
    idx = 0
    while idx < stor6.length:
        mem[0] = 6
        if stor6[idx] != arg1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if stor6.length < 1:
            revert with 0, 17
        if stor6.length - 1 >= stor6.length:
            revert with 0, 50
        if idx >= stor6.length:
            revert with 0, 50
        stor6[idx] = stor6[stor6.length]
        stor2[address(arg1)] = 0
        stor5[address(arg1)] = 0
        if not stor6.length:
            revert with 0, 49
        stor6[stor6.length] = 0
        stor6.length--
}

function setBuyBackAmount(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg2:
        if arg1 and 1 > -1 / arg1:
            revert with 0, 17
        sub_395e8ed0 = arg1
    else:
        if bool(bool(arg2 < 78)) or bool(bool(arg2 < 32)):
            if arg1 and 10^arg2 > -1 / arg1:
                revert with 0, 17
            sub_395e8ed0 = arg1 * 10^arg2
        else:
            s = 10
            t = 1
            idx = arg2
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
            if arg1 and s * t > -1 / arg1:
                revert with 0, 17
            sub_395e8ed0 = arg1 * s * t
}

function setBuyBackSellLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor11:
        if arg1 and 1 > -1 / arg1:
            revert with 0, 17
        buyBackSellLimit = arg1
    else:
        if bool(bool(stor11 < 78)) or bool(bool(stor11 < 32)):
            if arg1 and 10^stor11 > -1 / arg1:
                revert with 0, 17
            buyBackSellLimit = arg1 * 10^stor11
        else:
            s = 10
            t = 1
            idx = stor11
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
            if arg1 and s * t > -1 / arg1:
                revert with 0, 17
            buyBackSellLimit = arg1 * s * t
}

function setMaxWallet(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg2 <= 1000
    if not totalSupply:
        if not arg2:
            revert with 0, 'SafeMath: division by zero', 0
        stor50 = 0 / arg2
    else:
        if totalSupply and arg1 > -1 / totalSupply:
            revert with 0, 17
        if not totalSupply:
            revert with 0, 18
        if totalSupply * arg1 / totalSupply != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not arg2:
            revert with 0, 'SafeMath: division by zero', 0
        stor50 = totalSupply * arg1 / arg2
    if not stor9:
        if not arg2:
            revert with 0, 'SafeMath: division by zero', 0
        sub_be993755 = 0 / arg2
    else:
        if stor9 and arg1 > -1 / stor9:
            revert with 0, 17
        if not stor9:
            revert with 0, 18
        if stor9 * arg1 / stor9 != arg1:
            revert with 0, 'SafeMath: multiplication overflow'
        if not arg2:
            revert with 0, 'SafeMath: division by zero', 0
        sub_be993755 = stor9 * arg1 / arg2
}

function setMaxTxPercent(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg2 <= 10000
    if not totalSupply:
        if not arg2:
            revert with 0, 'SafeMath: division by zero', 0
        stor45 = 0 / arg2
    else:
        if totalSupply and arg1 > -1 / totalSupply:
            revert with 0, 17
        if not totalSupply:
            revert with 0, 18
        if totalSupply * arg1 / totalSupply != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not arg2:
            revert with 0, 'SafeMath: division by zero', 0
        stor45 = totalSupply * arg1 / arg2
    if not stor9:
        if not arg2:
            revert with 0, 'SafeMath: division by zero', 0
        maxTxAmountUI = 0 / arg2
    else:
        if stor9 and arg1 > -1 / stor9:
            revert with 0, 17
        if not stor9:
            revert with 0, 18
        if stor9 * arg1 / stor9 != arg1:
            revert with 0, 'SafeMath: multiplication overflow'
        if not arg2:
            revert with 0, 'SafeMath: division by zero', 0
        maxTxAmountUI = stor9 * arg1 / arg2
}

function setNewRouter(address arg1) {
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
    lpPairAddress = ext_call.return_data[12 len 20]
    dexRouterAddress = arg1
}

function name() {
    if bool(stor15.length):
        if bool(stor15.length) == uint255(stor15.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor15.length):
            if bool(stor15.length) == uint255(stor15.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor15.length):
                if 31 < uint255(stor15.length) * 0.5:
                    mem[128] = uint256(stor15.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor15.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor15[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor15.length), data=mem[128 len ceil32(uint255(stor15.length) * 0.5)])
                mem[128] = 256 * stor15.length.field_8
        else:
            if bool(stor15.length) == stor15.length.field_1 < 32:
                revert with 0, 34
            if stor15.length.field_1:
                if 31 < stor15.length.field_1:
                    mem[128] = uint256(stor15.field_0)
                    idx = 128
                    s = 0
                    while stor15.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor15[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor15.length), data=mem[128 len ceil32(uint255(stor15.length) * 0.5)])
                mem[128] = 256 * stor15.length.field_8
        mem[ceil32(uint255(stor15.length) * 0.5) + 192 len ceil32(uint255(stor15.length) * 0.5)] = mem[128 len ceil32(uint255(stor15.length) * 0.5)]
        if ceil32(uint255(stor15.length) * 0.5) > uint255(stor15.length) * 0.5:
            mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor15.length), data=mem[128 len ceil32(uint255(stor15.length) * 0.5)], mem[(2 * ceil32(uint255(stor15.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor15.length) * 0.5)]), 
    if bool(stor15.length) == stor15.length.field_1 < 32:
        revert with 0, 34
    if bool(stor15.length):
        if bool(stor15.length) == uint255(stor15.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor15.length):
            if 31 < uint255(stor15.length) * 0.5:
                mem[128] = uint256(stor15.field_0)
                idx = 128
                s = 0
                while (uint255(stor15.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor15[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor15.length % 128, data=mem[128 len ceil32(stor15.length.field_1)])
            mem[128] = 256 * stor15.length.field_8
    else:
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 0, 34
        if stor15.length.field_1:
            if 31 < stor15.length.field_1:
                mem[128] = uint256(stor15.field_0)
                idx = 128
                s = 0
                while stor15.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor15[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor15.length % 128, data=mem[128 len ceil32(stor15.length.field_1)])
            mem[128] = 256 * stor15.length.field_8
    mem[ceil32(stor15.length.field_1) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
    if ceil32(stor15.length.field_1) > stor15.length.field_1:
        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 192] = 0
    return Array(len=stor15.length % 128, data=mem[128 len ceil32(stor15.length.field_1)], mem[(2 * ceil32(stor15.length.field_1)) + 192 len 2 * ceil32(stor15.length.field_1)]), 
}

function symbol() {
    if bool(stor16.length):
        if bool(stor16.length) == uint255(stor16.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor16.length):
            if bool(stor16.length) == uint255(stor16.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor16.length):
                if 31 < uint255(stor16.length) * 0.5:
                    mem[128] = uint256(stor16.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor16.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor16[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor16.length), data=mem[128 len ceil32(uint255(stor16.length) * 0.5)])
                mem[128] = 256 * stor16.length.field_8
        else:
            if bool(stor16.length) == stor16.length.field_1 < 32:
                revert with 0, 34
            if stor16.length.field_1:
                if 31 < stor16.length.field_1:
                    mem[128] = uint256(stor16.field_0)
                    idx = 128
                    s = 0
                    while stor16.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor16[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor16.length), data=mem[128 len ceil32(uint255(stor16.length) * 0.5)])
                mem[128] = 256 * stor16.length.field_8
        mem[ceil32(uint255(stor16.length) * 0.5) + 192 len ceil32(uint255(stor16.length) * 0.5)] = mem[128 len ceil32(uint255(stor16.length) * 0.5)]
        if ceil32(uint255(stor16.length) * 0.5) > uint255(stor16.length) * 0.5:
            mem[ceil32(uint255(stor16.length) * 0.5) + (uint255(stor16.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor16.length), data=mem[128 len ceil32(uint255(stor16.length) * 0.5)], mem[(2 * ceil32(uint255(stor16.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor16.length) * 0.5)]), 
    if bool(stor16.length) == stor16.length.field_1 < 32:
        revert with 0, 34
    if bool(stor16.length):
        if bool(stor16.length) == uint255(stor16.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor16.length):
            if 31 < uint255(stor16.length) * 0.5:
                mem[128] = uint256(stor16.field_0)
                idx = 128
                s = 0
                while (uint255(stor16.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor16[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor16.length % 128, data=mem[128 len ceil32(stor16.length.field_1)])
            mem[128] = 256 * stor16.length.field_8
    else:
        if bool(stor16.length) == stor16.length.field_1 < 32:
            revert with 0, 34
        if stor16.length.field_1:
            if 31 < stor16.length.field_1:
                mem[128] = uint256(stor16.field_0)
                idx = 128
                s = 0
                while stor16.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor16[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor16.length % 128, data=mem[128 len ceil32(stor16.length.field_1)])
            mem[128] = 256 * stor16.length.field_8
    mem[ceil32(stor16.length.field_1) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
    if ceil32(stor16.length.field_1) > stor16.length.field_1:
        mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 192] = 0
    return Array(len=stor16.length % 128, data=mem[128 len ceil32(stor16.length.field_1)], mem[(2 * ceil32(stor16.length.field_1)) + 192 len 2 * ceil32(stor16.length.field_1)]), 
}

function tokenFromReflection(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if arg1 > stor13:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    idx = 0
    s = totalSupply
    t = stor13
    while idx < stor6.length:
        mem[0] = stor6[idx]
        mem[32] = 1
        if stor1[stor6[idx]] > t:
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
            if stor13 / totalSupply:
                return (arg1 / stor13 / totalSupply)
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
        if idx >= stor6.length:
            revert with 0, 50
        mem[0] = stor6[idx]
        mem[32] = 2
        if stor2[stor6[idx]] > s:
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
            if stor13 / totalSupply:
                return (arg1 / stor13 / totalSupply)
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
        if idx >= stor6.length:
            revert with 0, 50
        mem[0] = stor6[idx]
        mem[32] = 1
        _97 = mem[64]
        mem[64] = mem[64] + 64
        mem[_97] = 30
        mem[_97 + 32] = 'SafeMath: subtraction overflow'
        if stor1[stor6[idx]] > t:
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
        if t < stor1[stor6[idx]]:
            revert with 0, 17
        if idx >= stor6.length:
            revert with 0, 50
        mem[0] = stor6[idx]
        mem[32] = 2
        _127 = mem[64]
        mem[64] = mem[64] + 64
        mem[_127] = 30
        mem[_127 + 32] = 'SafeMath: subtraction overflow'
        if stor2[stor6[idx]] <= s:
            if s < stor2[stor6[idx]]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s - stor2[stor6[idx]]
            t = t - stor1[stor6[idx]]
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
    if t >= stor13 / totalSupply:
        if not s:
            revert with 0, 'SafeMath: division by zero', 0
        if not t / s:
            revert with 0, 'SafeMath: division by zero', 0
        return (arg1 / t / s)
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor13 / totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    return (arg1 / stor13 / totalSupply)
}

function balanceOf(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor5[address(arg1)]:
        return stor2[address(arg1)]
    mem[0] = arg1
    mem[32] = 1
    if stor1[address(arg1)] > stor13:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    idx = 0
    s = totalSupply
    t = stor13
    while idx < stor6.length:
        mem[0] = stor6[idx]
        mem[32] = 1
        if stor1[stor6[idx]] > t:
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
            if stor13 / totalSupply:
                return (stor1[address(arg1)] / stor13 / totalSupply)
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
        if idx >= stor6.length:
            revert with 0, 50
        mem[0] = stor6[idx]
        mem[32] = 2
        if stor2[stor6[idx]] > s:
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
            if stor13 / totalSupply:
                return (stor1[address(arg1)] / stor13 / totalSupply)
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
        if idx >= stor6.length:
            revert with 0, 50
        mem[0] = stor6[idx]
        mem[32] = 1
        _102 = mem[64]
        mem[64] = mem[64] + 64
        mem[_102] = 30
        mem[_102 + 32] = 'SafeMath: subtraction overflow'
        if stor1[stor6[idx]] > t:
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
        if t < stor1[stor6[idx]]:
            revert with 0, 17
        if idx >= stor6.length:
            revert with 0, 50
        mem[0] = stor6[idx]
        mem[32] = 2
        _132 = mem[64]
        mem[64] = mem[64] + 64
        mem[_132] = 30
        mem[_132 + 32] = 'SafeMath: subtraction overflow'
        if stor2[stor6[idx]] <= s:
            if s < stor2[stor6[idx]]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s - stor2[stor6[idx]]
            t = t - stor1[stor6[idx]]
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
    if t >= stor13 / totalSupply:
        if not s:
            revert with 0, 'SafeMath: division by zero', 0
        if not t / s:
            revert with 0, 'SafeMath: division by zero', 0
        return (stor1[address(arg1)] / t / s)
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor13 / totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    return (stor1[address(arg1)] / stor13 / totalSupply)
}

function excludeFromReward(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor5[address(arg1)]:
        revert with 0, 'Account is already excluded'
    if stor1[address(arg1)]:
        mem[0] = arg1
        mem[32] = 1
        if stor1[address(arg1)] > stor13:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
        idx = 0
        s = totalSupply
        t = stor13
        while idx < stor6.length:
            mem[0] = stor6[idx]
            mem[32] = 1
            if stor1[stor6[idx]] > t:
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
                if stor13 / totalSupply:
                    stor2[address(arg1)] = stor1[address(arg1)] / stor13 / totalSupply
                    stor5[address(arg1)] = 1
                    stor6.length++
                    stor6[stor6.length] = arg1
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
            if idx >= stor6.length:
                revert with 0, 50
            mem[0] = stor6[idx]
            mem[32] = 2
            if stor2[stor6[idx]] > s:
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
                if stor13 / totalSupply:
                    stor2[address(arg1)] = stor1[address(arg1)] / stor13 / totalSupply
                    stor5[address(arg1)] = 1
                    stor6.length++
                    stor6[stor6.length] = arg1
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
            if idx >= stor6.length:
                revert with 0, 50
            mem[0] = stor6[idx]
            mem[32] = 1
            _105 = mem[64]
            mem[64] = mem[64] + 64
            mem[_105] = 30
            mem[_105 + 32] = 'SafeMath: subtraction overflow'
            if stor1[stor6[idx]] > t:
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
            if t < stor1[stor6[idx]]:
                revert with 0, 17
            if idx >= stor6.length:
                revert with 0, 50
            mem[0] = stor6[idx]
            mem[32] = 2
            _135 = mem[64]
            mem[64] = mem[64] + 64
            mem[_135] = 30
            mem[_135 + 32] = 'SafeMath: subtraction overflow'
            if stor2[stor6[idx]] <= s:
                if s < stor2[stor6[idx]]:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - stor2[stor6[idx]]
                t = t - stor1[stor6[idx]]
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
        if t >= stor13 / totalSupply:
            if not s:
                revert with 0, 'SafeMath: division by zero', 0
            if not t / s:
                revert with 0, 'SafeMath: division by zero', 0
            stor2[address(arg1)] = stor1[address(arg1)] / t / s
        else:
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not stor13 / totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            stor2[address(arg1)] = stor1[address(arg1)] / stor13 / totalSupply
    stor5[address(arg1)] = 1
    stor6.length++
    stor6[stor6.length] = arg1
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
            if not stor32:
                revert with 0, 'SafeMath: division by zero', 0
            if _liquidityFee > !_buyBackFee:
                revert with 0, 17
            if _liquidityFee + _buyBackFee < _liquidityFee:
                revert with 0, 'SafeMath: addition overflow'
            if _liquidityFee + _buyBackFee > !_marketingFee:
                revert with 0, 17
            if _marketingFee < 0:
                revert with 0, 'SafeMath: addition overflow'
            if _liquidityFee + _buyBackFee + _marketingFee > !_devFee:
                revert with 0, 17
            if _devFee < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not arg1:
                mem[160] = 26
                mem[192] = 'SafeMath: division by zero'
                if not stor32:
                    revert with 0, 'SafeMath: division by zero', 0
                mem[224] = 30
                mem[256] = 'SafeMath: subtraction overflow'
                if 0 / stor32 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 < 0 / stor32:
                    revert with 0, 17
                mem[64] = 352
                mem[288] = 30
                mem[320] = 'SafeMath: subtraction overflow'
                if 0 / stor32 > arg1 - (0 / stor32):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 - (0 / stor32) < 0 / stor32:
                    revert with 0, 17
                idx = 0
                s = totalSupply
                t = stor13
                while idx < stor6.length:
                    mem[0] = stor6[idx]
                    mem[32] = 1
                    if stor1[stor6[idx]] > t:
                        _4086 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4086] = 26
                        mem[_4086 + 32] = 'SafeMath: division by zero'
                        if not totalSupply:
                            _4124 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _4124 + 68] = mem[idx + _4086 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4124 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _4124 + -mem[64] + 100
                        if not arg1:
                            if not 0 / stor32:
                                return 0
                            if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                                revert with 0, 17
                            if not 0 / stor32:
                                revert with 0, 18
                            if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not 0 / stor32:
                                _4584 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4584] = 30
                                mem[_4584 + 32] = 'SafeMath: subtraction overflow'
                                if 0 / stor32 * stor13 / totalSupply > 0:
                                    _4671 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _4671 + 68] = mem[idx + _4584 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4671 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4671 + -mem[64] + 100
                                if 0 < 0 / stor32 * stor13 / totalSupply:
                                    revert with 0, 17
                                _5054 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5054] = 30
                                mem[_5054 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= -1 * 0 / stor32 * stor13 / totalSupply:
                                    if -1 * 0 / stor32 * stor13 / totalSupply < 0:
                                        revert with 0, 17
                                    return (-1 * 0 / stor32 * stor13 / totalSupply)
                                _5245 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _5245 + 68] = mem[idx + _5054 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5245 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _5245 + -mem[64] + 100
                            if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                                revert with 0, 17
                            if not 0 / stor32:
                                revert with 0, 18
                            if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _4881 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4881] = 30
                            mem[_4881 + 32] = 'SafeMath: subtraction overflow'
                            if 0 / stor32 * stor13 / totalSupply > 0:
                                _5053 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _5053 + 68] = mem[idx + _4881 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5053 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _5053 + -mem[64] + 100
                            if 0 < 0 / stor32 * stor13 / totalSupply:
                                revert with 0, 17
                            _5753 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5753] = 30
                            mem[_5753 + 32] = 'SafeMath: subtraction overflow'
                            if 0 / stor32 * stor13 / totalSupply <= -1 * 0 / stor32 * stor13 / totalSupply:
                                if -1 * 0 / stor32 * stor13 / totalSupply < 0 / stor32 * stor13 / totalSupply:
                                    revert with 0, 17
                                return ((-1 * 0 / stor32 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply))
                            _6051 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _6051 + 68] = mem[idx + _5753 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6051 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _6051 + -mem[64] + 100
                        if arg1 and stor13 / totalSupply > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 0 / stor32:
                            _4583 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4583] = 30
                            mem[_4583 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor13 / totalSupply:
                                _4670 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4670 + 68] = mem[idx + _4583 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4670 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _4670 + -mem[64] + 100
                            if arg1 * stor13 / totalSupply < 0:
                                revert with 0, 17
                            _5051 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5051] = 30
                            mem[_5051 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor13 / totalSupply:
                                if arg1 * stor13 / totalSupply < 0:
                                    revert with 0, 17
                                return (arg1 * stor13 / totalSupply)
                            _5244 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5244 + 68] = mem[idx + _5051 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5244 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5244 + -mem[64] + 100
                        if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                            revert with 0, 17
                        if not 0 / stor32:
                            revert with 0, 18
                        if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 0 / stor32:
                            _4880 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4880] = 30
                            mem[_4880 + 32] = 'SafeMath: subtraction overflow'
                            if 0 / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                                _5050 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _5050 + 68] = mem[idx + _4880 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5050 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _5050 + -mem[64] + 100
                            if arg1 * stor13 / totalSupply < 0 / stor32 * stor13 / totalSupply:
                                revert with 0, 17
                            _5751 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5751] = 30
                            mem[_5751 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= (arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply):
                                if (arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply) < 0:
                                    revert with 0, 17
                                return ((arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply))
                            _6049 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _6049 + 68] = mem[idx + _5751 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6049 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _6049 + -mem[64] + 100
                        if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                            revert with 0, 17
                        if not 0 / stor32:
                            revert with 0, 18
                        if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _5482 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5482] = 30
                        mem[_5482 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                            _5750 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5750 + 68] = mem[idx + _5482 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5750 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5750 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < 0 / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        _6626 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6626] = 30
                        mem[_6626 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor32 * stor13 / totalSupply <= (arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply):
                            if (arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply) < 0 / stor32 * stor13 / totalSupply:
                                revert with 0, 17
                            return ((arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply))
                        _6914 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6914 + 68] = mem[idx + _6626 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6914 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6914 + -mem[64] + 100
                    if idx >= stor6.length:
                        revert with 0, 50
                    mem[0] = stor6[idx]
                    mem[32] = 2
                    if stor2[stor6[idx]] <= s:
                        if idx >= stor6.length:
                            revert with 0, 50
                        mem[0] = stor6[idx]
                        mem[32] = 1
                        _4125 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4125] = 30
                        mem[_4125 + 32] = 'SafeMath: subtraction overflow'
                        if stor1[stor6[idx]] > t:
                            _4165 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4165 + 68] = mem[idx + _4125 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4165 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4165 + -mem[64] + 100
                        if t < stor1[stor6[idx]]:
                            revert with 0, 17
                        if idx >= stor6.length:
                            revert with 0, 50
                        mem[0] = stor6[idx]
                        mem[32] = 2
                        _4342 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4342] = 30
                        mem[_4342 + 32] = 'SafeMath: subtraction overflow'
                        if stor2[stor6[idx]] <= s:
                            if s < stor2[stor6[idx]]:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s - stor2[stor6[idx]]
                            t = t - stor1[stor6[idx]]
                            continue 
                        _4366 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4366 + 68] = mem[idx + _4342 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4366 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4366 + -mem[64] + 100
                    _4126 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4126] = 26
                    mem[_4126 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _4166 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _4166 + 68] = mem[idx + _4126 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4166 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _4166 + -mem[64] + 100
                    if not arg1:
                        if not 0 / stor32:
                            return 0
                        if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                            revert with 0, 17
                        if not 0 / stor32:
                            revert with 0, 18
                        if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 0 / stor32:
                            _4675 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4675] = 30
                            mem[_4675 + 32] = 'SafeMath: subtraction overflow'
                            if 0 / stor32 * stor13 / totalSupply > 0:
                                _4750 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4750 + 68] = mem[idx + _4675 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4750 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _4750 + -mem[64] + 100
                            if 0 < 0 / stor32 * stor13 / totalSupply:
                                revert with 0, 17
                            _5250 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5250] = 30
                            mem[_5250 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * 0 / stor32 * stor13 / totalSupply:
                                if -1 * 0 / stor32 * stor13 / totalSupply < 0:
                                    revert with 0, 17
                                return (-1 * 0 / stor32 * stor13 / totalSupply)
                            _5485 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5485 + 68] = mem[idx + _5250 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5485 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5485 + -mem[64] + 100
                        if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                            revert with 0, 17
                        if not 0 / stor32:
                            revert with 0, 18
                        if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _5057 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5057] = 30
                        mem[_5057 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor32 * stor13 / totalSupply > 0:
                            _5249 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5249 + 68] = mem[idx + _5057 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5249 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5249 + -mem[64] + 100
                        if 0 < 0 / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        _6056 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6056] = 30
                        mem[_6056 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor32 * stor13 / totalSupply <= -1 * 0 / stor32 * stor13 / totalSupply:
                            if -1 * 0 / stor32 * stor13 / totalSupply < 0 / stor32 * stor13 / totalSupply:
                                revert with 0, 17
                            return ((-1 * 0 / stor32 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply))
                        _6333 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6333 + 68] = mem[idx + _6056 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6333 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6333 + -mem[64] + 100
                    if arg1 and stor13 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor32:
                        _4674 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4674] = 30
                        mem[_4674 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor13 / totalSupply:
                            _4749 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4749 + 68] = mem[idx + _4674 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4749 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4749 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        _5247 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5247] = 30
                        mem[_5247 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor13 / totalSupply:
                            if arg1 * stor13 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor13 / totalSupply)
                        _5484 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5484 + 68] = mem[idx + _5247 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5484 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5484 + -mem[64] + 100
                    if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                        revert with 0, 17
                    if not 0 / stor32:
                        revert with 0, 18
                    if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor32:
                        _5056 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5056] = 30
                        mem[_5056 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                            _5246 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5246 + 68] = mem[idx + _5056 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5246 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5246 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < 0 / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        _6054 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6054] = 30
                        mem[_6054 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply):
                            if (arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply) < 0:
                                revert with 0, 17
                            return ((arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply))
                        _6331 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6331 + 68] = mem[idx + _6054 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6331 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6331 + -mem[64] + 100
                    if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                        revert with 0, 17
                    if not 0 / stor32:
                        revert with 0, 18
                    if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _5756 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5756] = 30
                    mem[_5756 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        _6053 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6053 + 68] = mem[idx + _5756 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6053 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6053 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < 0 / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    _6917 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6917] = 30
                    mem[_6917 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor32 * stor13 / totalSupply <= (arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply):
                        if (arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply) < 0 / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        return ((arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply))
                    _7101 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _7101 + 68] = mem[idx + _6917 + 32]
                        idx = idx + 32
                        continue 
                    mem[_7101 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _7101 + -mem[64] + 100
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if t >= stor13 / totalSupply:
                    if not s:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not arg1:
                        if not 0 / stor32:
                            return 0
                        if 0 / stor32 and t / s > -1 / 0 / stor32:
                            revert with 0, 17
                        if not 0 / stor32:
                            revert with 0, 18
                        if 0 / stor32 * t / s / 0 / stor32 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 0 / stor32:
                            if 0 / stor32 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < 0 / stor32 * t / s:
                                revert with 0, 17
                            if 0 > -1 * 0 / stor32 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * 0 / stor32 * t / s < 0:
                                revert with 0, 17
                            return (-1 * 0 / stor32 * t / s)
                        if 0 / stor32 and t / s > -1 / 0 / stor32:
                            revert with 0, 17
                        if not 0 / stor32:
                            revert with 0, 18
                        if 0 / stor32 * t / s / 0 / stor32 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 / stor32 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < 0 / stor32 * t / s:
                            revert with 0, 17
                        if 0 / stor32 * t / s > -1 * 0 / stor32 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * 0 / stor32 * t / s < 0 / stor32 * t / s:
                            revert with 0, 17
                        return ((-1 * 0 / stor32 * t / s) - (0 / stor32 * t / s))
                    if arg1 and t / s > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor32:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        return (arg1 * t / s)
                    if 0 / stor32 and t / s > -1 / 0 / stor32:
                        revert with 0, 17
                    if not 0 / stor32:
                        revert with 0, 18
                    if 0 / stor32 * t / s / 0 / stor32 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor32:
                        if 0 / stor32 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0 / stor32 * t / s:
                            revert with 0, 17
                        if 0 > (arg1 * t / s) - (0 / stor32 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * t / s) - (0 / stor32 * t / s) < 0:
                            revert with 0, 17
                        return ((arg1 * t / s) - (0 / stor32 * t / s))
                    if 0 / stor32 and t / s > -1 / 0 / stor32:
                        revert with 0, 17
                    if not 0 / stor32:
                        revert with 0, 18
                    if 0 / stor32 * t / s / 0 / stor32 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 / stor32 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0 / stor32 * t / s:
                        revert with 0, 17
                    if 0 / stor32 * t / s > (arg1 * t / s) - (0 / stor32 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * t / s) - (0 / stor32 * t / s) < 0 / stor32 * t / s:
                        revert with 0, 17
                    return ((arg1 * t / s) - (0 / stor32 * t / s) - (0 / stor32 * t / s))
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if not 0 / stor32:
                        return 0
                    if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                        revert with 0, 17
                    if not 0 / stor32:
                        revert with 0, 18
                    if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor32:
                        if 0 / stor32 * stor13 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < 0 / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        if 0 > -1 * 0 / stor32 * stor13 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * 0 / stor32 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        return (-1 * 0 / stor32 * stor13 / totalSupply)
                    if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                        revert with 0, 17
                    if not 0 / stor32:
                        revert with 0, 18
                    if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 / stor32 * stor13 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < 0 / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    if 0 / stor32 * stor13 / totalSupply > -1 * 0 / stor32 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * 0 / stor32 * stor13 / totalSupply < 0 / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    return ((-1 * 0 / stor32 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply))
                if arg1 and stor13 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / stor32:
                    if 0 > arg1 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                    if 0 > arg1 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                    return (arg1 * stor13 / totalSupply)
                if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                    revert with 0, 17
                if not 0 / stor32:
                    revert with 0, 18
                if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / stor32:
                    if 0 / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor13 / totalSupply < 0 / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    if 0 > (arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply) < 0:
                        revert with 0, 17
                    return ((arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply))
                if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                    revert with 0, 17
                if not 0 / stor32:
                    revert with 0, 18
                if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor13 / totalSupply < 0 / stor32 * stor13 / totalSupply:
                    revert with 0, 17
                if 0 / stor32 * stor13 / totalSupply > (arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply) < 0 / stor32 * stor13 / totalSupply:
                    revert with 0, 17
                return ((arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply))
            if arg1 and _liquidityFee + _buyBackFee + _marketingFee + _devFee > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / arg1 != _liquidityFee + _buyBackFee + _marketingFee + _devFee:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            if not stor32:
                revert with 0, 'SafeMath: division by zero', 0
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if 0 / stor32 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < 0 / stor32:
                revert with 0, 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 > arg1 - (0 / stor32):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (0 / stor32) < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                revert with 0, 17
            idx = 0
            s = totalSupply
            t = stor13
            while idx < stor6.length:
                mem[0] = stor6[idx]
                mem[32] = 1
                if stor1[stor6[idx]] > t:
                    _4085 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4085] = 26
                    mem[_4085 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _4121 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _4121 + 68] = mem[idx + _4085 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4121 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _4121 + -mem[64] + 100
                    if not arg1:
                        if not 0 / stor32:
                            if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                                return 0
                            if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                                revert with 0, 17
                            if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                                revert with 0, 18
                            if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != stor13 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _4576 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4576] = 30
                            mem[_4576 + 32] = 'SafeMath: subtraction overflow'
                            _5040 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5040] = 30
                            mem[_5040 + 32] = 'SafeMath: subtraction overflow'
                            if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply <= 0:
                                if 0 < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply:
                                    revert with 0, 17
                                return (-1 * (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply)
                            _5232 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5232 + 68] = mem[idx + _5040 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5232 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5232 + -mem[64] + 100
                        if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                            revert with 0, 17
                        if not 0 / stor32:
                            revert with 0, 18
                        if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            _4575 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4575] = 30
                            mem[_4575 + 32] = 'SafeMath: subtraction overflow'
                            if 0 / stor32 * stor13 / totalSupply > 0:
                                _4664 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4664 + 68] = mem[idx + _4575 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4664 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _4664 + -mem[64] + 100
                            if 0 < 0 / stor32 * stor13 / totalSupply:
                                revert with 0, 17
                            _5038 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5038] = 30
                            mem[_5038 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * 0 / stor32 * stor13 / totalSupply:
                                if -1 * 0 / stor32 * stor13 / totalSupply < 0:
                                    revert with 0, 17
                                return (-1 * 0 / stor32 * stor13 / totalSupply)
                            _5231 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5231 + 68] = mem[idx + _5038 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5231 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5231 + -mem[64] + 100
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            revert with 0, 17
                        if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            revert with 0, 18
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _4871 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4871] = 30
                        mem[_4871 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor32 * stor13 / totalSupply > 0:
                            _5037 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5037 + 68] = mem[idx + _4871 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5037 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5037 + -mem[64] + 100
                        if 0 < 0 / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        _5734 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5734] = 30
                        mem[_5734 + 32] = 'SafeMath: subtraction overflow'
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply <= -1 * 0 / stor32 * stor13 / totalSupply:
                            if -1 * 0 / stor32 * stor13 / totalSupply < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply:
                                revert with 0, 17
                            return ((-1 * 0 / stor32 * stor13 / totalSupply) - ((_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply))
                        _6032 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6032 + 68] = mem[idx + _5734 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6032 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6032 + -mem[64] + 100
                    if arg1 and stor13 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor32:
                        if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            _4574 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4574] = 30
                            mem[_4574 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor13 / totalSupply:
                                _4663 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4663 + 68] = mem[idx + _4574 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4663 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _4663 + -mem[64] + 100
                            if arg1 * stor13 / totalSupply < 0:
                                revert with 0, 17
                            _5035 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5035] = 30
                            mem[_5035 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor13 / totalSupply:
                                if arg1 * stor13 / totalSupply < 0:
                                    revert with 0, 17
                                return (arg1 * stor13 / totalSupply)
                            _5230 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5230 + 68] = mem[idx + _5035 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5230 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5230 + -mem[64] + 100
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            revert with 0, 17
                        if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            revert with 0, 18
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _4870 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4870] = 30
                        mem[_4870 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor13 / totalSupply:
                            _5034 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5034 + 68] = mem[idx + _4870 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5034 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5034 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        _5732 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5732] = 30
                        mem[_5732 + 32] = 'SafeMath: subtraction overflow'
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply <= arg1 * stor13 / totalSupply:
                            if arg1 * stor13 / totalSupply < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply:
                                revert with 0, 17
                            return ((arg1 * stor13 / totalSupply) - ((_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply))
                        _6030 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6030 + 68] = mem[idx + _5732 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6030 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6030 + -mem[64] + 100
                    if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                        revert with 0, 17
                    if not 0 / stor32:
                        revert with 0, 18
                    if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        _4869 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4869] = 30
                        mem[_4869 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                            _5033 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5033 + 68] = mem[idx + _4869 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5033 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5033 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < 0 / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        _5730 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5730] = 30
                        mem[_5730 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply):
                            if (arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply) < 0:
                                revert with 0, 17
                            return ((arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply))
                        _6029 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6029 + 68] = mem[idx + _5730 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6029 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6029 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _5473 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5473] = 30
                    mem[_5473 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        _5729 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5729 + 68] = mem[idx + _5473 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5729 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5729 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < 0 / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    _6609 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6609] = 30
                    mem[_6609 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply <= (arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply):
                        if (arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply) < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        return ((arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply) - ((_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply))
                    _6897 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6897 + 68] = mem[idx + _6609 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6897 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6897 + -mem[64] + 100
                if idx >= stor6.length:
                    revert with 0, 50
                mem[0] = stor6[idx]
                mem[32] = 2
                if stor2[stor6[idx]] <= s:
                    if idx >= stor6.length:
                        revert with 0, 50
                    mem[0] = stor6[idx]
                    mem[32] = 1
                    _4122 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4122] = 30
                    mem[_4122 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor6[idx]] > t:
                        _4162 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4162 + 68] = mem[idx + _4122 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4162 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4162 + -mem[64] + 100
                    if t < stor1[stor6[idx]]:
                        revert with 0, 17
                    if idx >= stor6.length:
                        revert with 0, 50
                    mem[0] = stor6[idx]
                    mem[32] = 2
                    _4339 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4339] = 30
                    mem[_4339 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor6[idx]] <= s:
                        if s < stor2[stor6[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor2[stor6[idx]]
                        t = t - stor1[stor6[idx]]
                        continue 
                    _4363 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4363 + 68] = mem[idx + _4339 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4363 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4363 + -mem[64] + 100
                _4123 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4123] = 26
                mem[_4123 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _4163 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _4163 + 68] = mem[idx + _4123 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4163 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _4163 + -mem[64] + 100
                if not arg1:
                    if not 0 / stor32:
                        if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            return 0
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            revert with 0, 17
                        if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            revert with 0, 18
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _4669 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4669] = 30
                        mem[_4669 + 32] = 'SafeMath: subtraction overflow'
                        _5240 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5240] = 30
                        mem[_5240 + 32] = 'SafeMath: subtraction overflow'
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply <= 0:
                            if 0 < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply:
                                revert with 0, 17
                            return (-1 * (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply)
                        _5477 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5477 + 68] = mem[idx + _5240 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5477 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5477 + -mem[64] + 100
                    if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                        revert with 0, 17
                    if not 0 / stor32:
                        revert with 0, 18
                    if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        _4668 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4668] = 30
                        mem[_4668 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor32 * stor13 / totalSupply > 0:
                            _4746 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4746 + 68] = mem[idx + _4668 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4746 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4746 + -mem[64] + 100
                        if 0 < 0 / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        _5238 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5238] = 30
                        mem[_5238 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * 0 / stor32 * stor13 / totalSupply:
                            if -1 * 0 / stor32 * stor13 / totalSupply < 0:
                                revert with 0, 17
                            return (-1 * 0 / stor32 * stor13 / totalSupply)
                        _5476 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5476 + 68] = mem[idx + _5238 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5476 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5476 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _5043 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5043] = 30
                    mem[_5043 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor32 * stor13 / totalSupply > 0:
                        _5237 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5237 + 68] = mem[idx + _5043 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5237 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5237 + -mem[64] + 100
                    if 0 < 0 / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    _6040 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6040] = 30
                    mem[_6040 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply <= -1 * 0 / stor32 * stor13 / totalSupply:
                        if -1 * 0 / stor32 * stor13 / totalSupply < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        return ((-1 * 0 / stor32 * stor13 / totalSupply) - ((_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply))
                    _6326 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6326 + 68] = mem[idx + _6040 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6326 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6326 + -mem[64] + 100
                if arg1 and stor13 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / stor32:
                    if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        _4667 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4667] = 30
                        mem[_4667 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor13 / totalSupply:
                            _4745 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4745 + 68] = mem[idx + _4667 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4745 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4745 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        _5235 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5235] = 30
                        mem[_5235 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor13 / totalSupply:
                            if arg1 * stor13 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor13 / totalSupply)
                        _5475 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5475 + 68] = mem[idx + _5235 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5475 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5475 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _5042 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5042] = 30
                    mem[_5042 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor13 / totalSupply:
                        _5234 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5234 + 68] = mem[idx + _5042 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5234 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5234 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                    _6038 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6038] = 30
                    mem[_6038 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply <= arg1 * stor13 / totalSupply:
                        if arg1 * stor13 / totalSupply < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        return ((arg1 * stor13 / totalSupply) - ((_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply))
                    _6324 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6324 + 68] = mem[idx + _6038 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6324 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6324 + -mem[64] + 100
                if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                    revert with 0, 17
                if not 0 / stor32:
                    revert with 0, 18
                if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                    _5041 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5041] = 30
                    mem[_5041 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        _5233 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5233 + 68] = mem[idx + _5041 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5233 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5233 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < 0 / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    _6036 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6036] = 30
                    mem[_6036 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply):
                        if (arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply) < 0:
                            revert with 0, 17
                        return ((arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply))
                    _6323 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6323 + 68] = mem[idx + _6036 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6323 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6323 + -mem[64] + 100
                if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                    revert with 0, 17
                if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                    revert with 0, 18
                if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _5737 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5737] = 30
                mem[_5737 + 32] = 'SafeMath: subtraction overflow'
                if 0 / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                    _6035 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6035 + 68] = mem[idx + _5737 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6035 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6035 + -mem[64] + 100
                if arg1 * stor13 / totalSupply < 0 / stor32 * stor13 / totalSupply:
                    revert with 0, 17
                _6901 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6901] = 30
                mem[_6901 + 32] = 'SafeMath: subtraction overflow'
                if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply <= (arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply):
                    if (arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply) < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    return ((arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply) - ((_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply))
                _7097 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _7097 + 68] = mem[idx + _6901 + 32]
                    idx = idx + 32
                    continue 
                mem[_7097 + 98] = 0
                revert with memory
                  from mem[64]
                   len _7097 + -mem[64] + 100
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor13 / totalSupply:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if not 0 / stor32:
                        if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            return 0
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and t / s > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            revert with 0, 17
                        if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            revert with 0, 18
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * t / s / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * t / s:
                            revert with 0, 17
                        return (-1 * (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * t / s)
                    if 0 / stor32 and t / s > -1 / 0 / stor32:
                        revert with 0, 17
                    if not 0 / stor32:
                        revert with 0, 18
                    if 0 / stor32 * t / s / 0 / stor32 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        if 0 / stor32 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < 0 / stor32 * t / s:
                            revert with 0, 17
                        if 0 > -1 * 0 / stor32 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * 0 / stor32 * t / s < 0:
                            revert with 0, 17
                        return (-1 * 0 / stor32 * t / s)
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and t / s > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * t / s / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 / stor32 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < 0 / stor32 * t / s:
                        revert with 0, 17
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * t / s > -1 * 0 / stor32 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * 0 / stor32 * t / s < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * t / s:
                        revert with 0, 17
                    return ((-1 * 0 / stor32 * t / s) - ((_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * t / s))
                if arg1 and t / s > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / stor32:
                    if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        return (arg1 * t / s)
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and t / s > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * t / s / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * t / s:
                        revert with 0, 17
                    return ((arg1 * t / s) - ((_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * t / s))
                if 0 / stor32 and t / s > -1 / 0 / stor32:
                    revert with 0, 17
                if not 0 / stor32:
                    revert with 0, 18
                if 0 / stor32 * t / s / 0 / stor32 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                    if 0 / stor32 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0 / stor32 * t / s:
                        revert with 0, 17
                    if 0 > (arg1 * t / s) - (0 / stor32 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * t / s) - (0 / stor32 * t / s) < 0:
                        revert with 0, 17
                    return ((arg1 * t / s) - (0 / stor32 * t / s))
                if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and t / s > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                    revert with 0, 17
                if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                    revert with 0, 18
                if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * t / s / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 / stor32 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < 0 / stor32 * t / s:
                    revert with 0, 17
                if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * t / s > (arg1 * t / s) - (0 / stor32 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * t / s) - (0 / stor32 * t / s) < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * t / s:
                    revert with 0, 17
                return ((arg1 * t / s) - (0 / stor32 * t / s) - ((_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * t / s))
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                if not 0 / stor32:
                    if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        return 0
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    return (-1 * (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply)
                if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                    revert with 0, 17
                if not 0 / stor32:
                    revert with 0, 18
                if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                    if 0 / stor32 * stor13 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < 0 / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    if 0 > -1 * 0 / stor32 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * 0 / stor32 * stor13 / totalSupply < 0:
                        revert with 0, 17
                    return (-1 * 0 / stor32 * stor13 / totalSupply)
                if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                    revert with 0, 17
                if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                    revert with 0, 18
                if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 / stor32 * stor13 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < 0 / stor32 * stor13 / totalSupply:
                    revert with 0, 17
                if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply > -1 * 0 / stor32 * stor13 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * 0 / stor32 * stor13 / totalSupply < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply:
                    revert with 0, 17
                return ((-1 * 0 / stor32 * stor13 / totalSupply) - ((_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply))
            if arg1 and stor13 / totalSupply > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 0 / stor32:
                if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                    if 0 > arg1 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                    if 0 > arg1 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                    return (arg1 * stor13 / totalSupply)
                if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                    revert with 0, 17
                if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                    revert with 0, 18
                if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * stor13 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor13 / totalSupply < 0:
                    revert with 0, 17
                if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor13 / totalSupply < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply:
                    revert with 0, 17
                return ((arg1 * stor13 / totalSupply) - ((_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply))
            if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                revert with 0, 17
            if not 0 / stor32:
                revert with 0, 18
            if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                if 0 / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor13 / totalSupply < 0 / stor32 * stor13 / totalSupply:
                    revert with 0, 17
                if 0 > (arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply) < 0:
                    revert with 0, 17
                return ((arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply))
            if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                revert with 0, 17
            if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                revert with 0, 18
            if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != stor13 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor13 / totalSupply < 0 / stor32 * stor13 / totalSupply:
                revert with 0, 17
            if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply > (arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply) < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply:
                revert with 0, 17
            return ((arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply) - ((_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply))
        if arg1 and _reflectFee > -1 / arg1:
            revert with 0, 17
        if not arg1:
            revert with 0, 18
        if arg1 * _reflectFee / arg1 != _reflectFee:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if not stor32:
            revert with 0, 'SafeMath: division by zero', 0
        if _liquidityFee > !_buyBackFee:
            revert with 0, 17
        if _liquidityFee + _buyBackFee < _liquidityFee:
            revert with 0, 'SafeMath: addition overflow'
        if _liquidityFee + _buyBackFee > !_marketingFee:
            revert with 0, 17
        if _marketingFee < 0:
            revert with 0, 'SafeMath: addition overflow'
        if _liquidityFee + _buyBackFee + _marketingFee > !_devFee:
            revert with 0, 17
        if _devFee < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not arg1:
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            if not stor32:
                revert with 0, 'SafeMath: division by zero', 0
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if arg1 * _reflectFee / stor32 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * _reflectFee / stor32:
                revert with 0, 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if 0 / stor32 > arg1 - (arg1 * _reflectFee / stor32):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (arg1 * _reflectFee / stor32) < 0 / stor32:
                revert with 0, 17
            idx = 0
            s = totalSupply
            t = stor13
            while idx < stor6.length:
                mem[0] = stor6[idx]
                mem[32] = 1
                if stor1[stor6[idx]] > t:
                    _4084 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4084] = 26
                    mem[_4084 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _4118 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _4118 + 68] = mem[idx + _4084 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4118 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _4118 + -mem[64] + 100
                    if not arg1:
                        if not arg1 * _reflectFee / stor32:
                            if not 0 / stor32:
                                return 0
                            if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                                revert with 0, 17
                            if not 0 / stor32:
                                revert with 0, 18
                            if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _4567 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4567] = 30
                            mem[_4567 + 32] = 'SafeMath: subtraction overflow'
                            _5023 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5023] = 30
                            mem[_5023 + 32] = 'SafeMath: subtraction overflow'
                            if 0 / stor32 * stor13 / totalSupply <= 0:
                                if 0 < 0 / stor32 * stor13 / totalSupply:
                                    revert with 0, 17
                                return (-1 * 0 / stor32 * stor13 / totalSupply)
                            _5216 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5216 + 68] = mem[idx + _5023 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5216 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5216 + -mem[64] + 100
                        if arg1 * _reflectFee / stor32 and stor13 / totalSupply > -1 / arg1 * _reflectFee / stor32:
                            revert with 0, 17
                        if not arg1 * _reflectFee / stor32:
                            revert with 0, 18
                        if arg1 * _reflectFee / stor32 * stor13 / totalSupply / arg1 * _reflectFee / stor32 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 0 / stor32:
                            _4566 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4566] = 30
                            mem[_4566 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _reflectFee / stor32 * stor13 / totalSupply > 0:
                                _4657 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4657 + 68] = mem[idx + _4566 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4657 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _4657 + -mem[64] + 100
                            if 0 < arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                                revert with 0, 17
                            _5021 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5021] = 30
                            mem[_5021 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                                if -1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply < 0:
                                    revert with 0, 17
                                return (-1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply)
                            _5215 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5215 + 68] = mem[idx + _5021 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5215 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5215 + -mem[64] + 100
                        if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                            revert with 0, 17
                        if not 0 / stor32:
                            revert with 0, 18
                        if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _4858 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4858] = 30
                        mem[_4858 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _reflectFee / stor32 * stor13 / totalSupply > 0:
                            _5020 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5020 + 68] = mem[idx + _4858 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5020 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5020 + -mem[64] + 100
                        if 0 < arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        _5709 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5709] = 30
                        mem[_5709 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor32 * stor13 / totalSupply <= -1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                            if -1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply < 0 / stor32 * stor13 / totalSupply:
                                revert with 0, 17
                            return ((-1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply))
                        _6010 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6010 + 68] = mem[idx + _5709 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6010 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6010 + -mem[64] + 100
                    if arg1 and stor13 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _reflectFee / stor32:
                        if not 0 / stor32:
                            _4565 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4565] = 30
                            mem[_4565 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor13 / totalSupply:
                                _4656 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4656 + 68] = mem[idx + _4565 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4656 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _4656 + -mem[64] + 100
                            if arg1 * stor13 / totalSupply < 0:
                                revert with 0, 17
                            _5018 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5018] = 30
                            mem[_5018 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor13 / totalSupply:
                                if arg1 * stor13 / totalSupply < 0:
                                    revert with 0, 17
                                return (arg1 * stor13 / totalSupply)
                            _5214 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5214 + 68] = mem[idx + _5018 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5214 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5214 + -mem[64] + 100
                        if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                            revert with 0, 17
                        if not 0 / stor32:
                            revert with 0, 18
                        if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _4857 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4857] = 30
                        mem[_4857 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor13 / totalSupply:
                            _5017 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5017 + 68] = mem[idx + _4857 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5017 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5017 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        _5707 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5707] = 30
                        mem[_5707 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor32 * stor13 / totalSupply <= arg1 * stor13 / totalSupply:
                            if arg1 * stor13 / totalSupply < 0 / stor32 * stor13 / totalSupply:
                                revert with 0, 17
                            return ((arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply))
                        _6008 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6008 + 68] = mem[idx + _5707 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6008 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6008 + -mem[64] + 100
                    if arg1 * _reflectFee / stor32 and stor13 / totalSupply > -1 / arg1 * _reflectFee / stor32:
                        revert with 0, 17
                    if not arg1 * _reflectFee / stor32:
                        revert with 0, 18
                    if arg1 * _reflectFee / stor32 * stor13 / totalSupply / arg1 * _reflectFee / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor32:
                        _4856 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4856] = 30
                        mem[_4856 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _reflectFee / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                            _5016 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5016 + 68] = mem[idx + _4856 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5016 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5016 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        _5705 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5705] = 30
                        mem[_5705 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply):
                            if (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply) < 0:
                                revert with 0, 17
                            return ((arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply))
                        _6007 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6007 + 68] = mem[idx + _5705 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6007 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6007 + -mem[64] + 100
                    if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                        revert with 0, 17
                    if not 0 / stor32:
                        revert with 0, 18
                    if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _5462 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5462] = 30
                    mem[_5462 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _reflectFee / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        _5704 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5704 + 68] = mem[idx + _5462 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5704 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5704 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    _6588 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6588] = 30
                    mem[_6588 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor32 * stor13 / totalSupply <= (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply):
                        if (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply) < 0 / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        return ((arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply))
                    _6876 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6876 + 68] = mem[idx + _6588 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6876 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6876 + -mem[64] + 100
                if idx >= stor6.length:
                    revert with 0, 50
                mem[0] = stor6[idx]
                mem[32] = 2
                if stor2[stor6[idx]] <= s:
                    if idx >= stor6.length:
                        revert with 0, 50
                    mem[0] = stor6[idx]
                    mem[32] = 1
                    _4119 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4119] = 30
                    mem[_4119 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor6[idx]] > t:
                        _4159 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4159 + 68] = mem[idx + _4119 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4159 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4159 + -mem[64] + 100
                    if t < stor1[stor6[idx]]:
                        revert with 0, 17
                    if idx >= stor6.length:
                        revert with 0, 50
                    mem[0] = stor6[idx]
                    mem[32] = 2
                    _4336 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4336] = 30
                    mem[_4336 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor6[idx]] <= s:
                        if s < stor2[stor6[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor2[stor6[idx]]
                        t = t - stor1[stor6[idx]]
                        continue 
                    _4360 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4360 + 68] = mem[idx + _4336 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4360 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4360 + -mem[64] + 100
                _4120 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4120] = 26
                mem[_4120 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _4160 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _4160 + 68] = mem[idx + _4120 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4160 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _4160 + -mem[64] + 100
                if not arg1:
                    if not arg1 * _reflectFee / stor32:
                        if not 0 / stor32:
                            return 0
                        if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                            revert with 0, 17
                        if not 0 / stor32:
                            revert with 0, 18
                        if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _4662 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4662] = 30
                        mem[_4662 + 32] = 'SafeMath: subtraction overflow'
                        _5224 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5224] = 30
                        mem[_5224 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor32 * stor13 / totalSupply <= 0:
                            if 0 < 0 / stor32 * stor13 / totalSupply:
                                revert with 0, 17
                            return (-1 * 0 / stor32 * stor13 / totalSupply)
                        _5466 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5466 + 68] = mem[idx + _5224 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5466 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5466 + -mem[64] + 100
                    if arg1 * _reflectFee / stor32 and stor13 / totalSupply > -1 / arg1 * _reflectFee / stor32:
                        revert with 0, 17
                    if not arg1 * _reflectFee / stor32:
                        revert with 0, 18
                    if arg1 * _reflectFee / stor32 * stor13 / totalSupply / arg1 * _reflectFee / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor32:
                        _4661 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4661] = 30
                        mem[_4661 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _reflectFee / stor32 * stor13 / totalSupply > 0:
                            _4739 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4739 + 68] = mem[idx + _4661 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4739 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4739 + -mem[64] + 100
                        if 0 < arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        _5222 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5222] = 30
                        mem[_5222 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                            if -1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply < 0:
                                revert with 0, 17
                            return (-1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply)
                        _5465 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5465 + 68] = mem[idx + _5222 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5465 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5465 + -mem[64] + 100
                    if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                        revert with 0, 17
                    if not 0 / stor32:
                        revert with 0, 18
                    if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _5026 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5026] = 30
                    mem[_5026 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _reflectFee / stor32 * stor13 / totalSupply > 0:
                        _5221 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5221 + 68] = mem[idx + _5026 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5221 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5221 + -mem[64] + 100
                    if 0 < arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    _6018 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6018] = 30
                    mem[_6018 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor32 * stor13 / totalSupply <= -1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                        if -1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply < 0 / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        return ((-1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply))
                    _6318 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6318 + 68] = mem[idx + _6018 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6318 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6318 + -mem[64] + 100
                if arg1 and stor13 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _reflectFee / stor32:
                    if not 0 / stor32:
                        _4660 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4660] = 30
                        mem[_4660 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor13 / totalSupply:
                            _4738 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4738 + 68] = mem[idx + _4660 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4738 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4738 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        _5219 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5219] = 30
                        mem[_5219 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor13 / totalSupply:
                            if arg1 * stor13 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor13 / totalSupply)
                        _5464 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5464 + 68] = mem[idx + _5219 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5464 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5464 + -mem[64] + 100
                    if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                        revert with 0, 17
                    if not 0 / stor32:
                        revert with 0, 18
                    if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _5025 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5025] = 30
                    mem[_5025 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor13 / totalSupply:
                        _5218 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5218 + 68] = mem[idx + _5025 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5218 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5218 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                    _6016 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6016] = 30
                    mem[_6016 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor32 * stor13 / totalSupply <= arg1 * stor13 / totalSupply:
                        if arg1 * stor13 / totalSupply < 0 / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        return ((arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply))
                    _6316 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6316 + 68] = mem[idx + _6016 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6316 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6316 + -mem[64] + 100
                if arg1 * _reflectFee / stor32 and stor13 / totalSupply > -1 / arg1 * _reflectFee / stor32:
                    revert with 0, 17
                if not arg1 * _reflectFee / stor32:
                    revert with 0, 18
                if arg1 * _reflectFee / stor32 * stor13 / totalSupply / arg1 * _reflectFee / stor32 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / stor32:
                    _5024 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5024] = 30
                    mem[_5024 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _reflectFee / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        _5217 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5217 + 68] = mem[idx + _5024 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5217 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5217 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    _6014 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6014] = 30
                    mem[_6014 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply):
                        if (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply) < 0:
                            revert with 0, 17
                        return ((arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply))
                    _6315 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6315 + 68] = mem[idx + _6014 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6315 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6315 + -mem[64] + 100
                if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                    revert with 0, 17
                if not 0 / stor32:
                    revert with 0, 18
                if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _5712 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5712] = 30
                mem[_5712 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _reflectFee / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                    _6013 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6013 + 68] = mem[idx + _5712 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6013 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6013 + -mem[64] + 100
                if arg1 * stor13 / totalSupply < arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                    revert with 0, 17
                _6880 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6880] = 30
                mem[_6880 + 32] = 'SafeMath: subtraction overflow'
                if 0 / stor32 * stor13 / totalSupply <= (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply):
                    if (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply) < 0 / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    return ((arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply))
                _7093 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _7093 + 68] = mem[idx + _6880 + 32]
                    idx = idx + 32
                    continue 
                mem[_7093 + 98] = 0
                revert with memory
                  from mem[64]
                   len _7093 + -mem[64] + 100
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor13 / totalSupply:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if not arg1 * _reflectFee / stor32:
                        if not 0 / stor32:
                            return 0
                        if 0 / stor32 and t / s > -1 / 0 / stor32:
                            revert with 0, 17
                        if not 0 / stor32:
                            revert with 0, 18
                        if 0 / stor32 * t / s / 0 / stor32 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 / stor32 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < 0 / stor32 * t / s:
                            revert with 0, 17
                        return (-1 * 0 / stor32 * t / s)
                    if arg1 * _reflectFee / stor32 and t / s > -1 / arg1 * _reflectFee / stor32:
                        revert with 0, 17
                    if not arg1 * _reflectFee / stor32:
                        revert with 0, 18
                    if arg1 * _reflectFee / stor32 * t / s / arg1 * _reflectFee / stor32 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor32:
                        if arg1 * _reflectFee / stor32 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _reflectFee / stor32 * t / s:
                            revert with 0, 17
                        if 0 > -1 * arg1 * _reflectFee / stor32 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * _reflectFee / stor32 * t / s < 0:
                            revert with 0, 17
                        return (-1 * arg1 * _reflectFee / stor32 * t / s)
                    if 0 / stor32 and t / s > -1 / 0 / stor32:
                        revert with 0, 17
                    if not 0 / stor32:
                        revert with 0, 18
                    if 0 / stor32 * t / s / 0 / stor32 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _reflectFee / stor32 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * _reflectFee / stor32 * t / s:
                        revert with 0, 17
                    if 0 / stor32 * t / s > -1 * arg1 * _reflectFee / stor32 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * _reflectFee / stor32 * t / s < 0 / stor32 * t / s:
                        revert with 0, 17
                    return ((-1 * arg1 * _reflectFee / stor32 * t / s) - (0 / stor32 * t / s))
                if arg1 and t / s > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _reflectFee / stor32:
                    if not 0 / stor32:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        return (arg1 * t / s)
                    if 0 / stor32 and t / s > -1 / 0 / stor32:
                        revert with 0, 17
                    if not 0 / stor32:
                        revert with 0, 18
                    if 0 / stor32 * t / s / 0 / stor32 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if 0 / stor32 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0 / stor32 * t / s:
                        revert with 0, 17
                    return ((arg1 * t / s) - (0 / stor32 * t / s))
                if arg1 * _reflectFee / stor32 and t / s > -1 / arg1 * _reflectFee / stor32:
                    revert with 0, 17
                if not arg1 * _reflectFee / stor32:
                    revert with 0, 18
                if arg1 * _reflectFee / stor32 * t / s / arg1 * _reflectFee / stor32 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / stor32:
                    if arg1 * _reflectFee / stor32 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < arg1 * _reflectFee / stor32 * t / s:
                        revert with 0, 17
                    if 0 > (arg1 * t / s) - (arg1 * _reflectFee / stor32 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * t / s) - (arg1 * _reflectFee / stor32 * t / s) < 0:
                        revert with 0, 17
                    return ((arg1 * t / s) - (arg1 * _reflectFee / stor32 * t / s))
                if 0 / stor32 and t / s > -1 / 0 / stor32:
                    revert with 0, 17
                if not 0 / stor32:
                    revert with 0, 18
                if 0 / stor32 * t / s / 0 / stor32 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * _reflectFee / stor32 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < arg1 * _reflectFee / stor32 * t / s:
                    revert with 0, 17
                if 0 / stor32 * t / s > (arg1 * t / s) - (arg1 * _reflectFee / stor32 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * t / s) - (arg1 * _reflectFee / stor32 * t / s) < 0 / stor32 * t / s:
                    revert with 0, 17
                return ((arg1 * t / s) - (arg1 * _reflectFee / stor32 * t / s) - (0 / stor32 * t / s))
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                if not arg1 * _reflectFee / stor32:
                    if not 0 / stor32:
                        return 0
                    if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                        revert with 0, 17
                    if not 0 / stor32:
                        revert with 0, 18
                    if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 / stor32 * stor13 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < 0 / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    return (-1 * 0 / stor32 * stor13 / totalSupply)
                if arg1 * _reflectFee / stor32 and stor13 / totalSupply > -1 / arg1 * _reflectFee / stor32:
                    revert with 0, 17
                if not arg1 * _reflectFee / stor32:
                    revert with 0, 18
                if arg1 * _reflectFee / stor32 * stor13 / totalSupply / arg1 * _reflectFee / stor32 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / stor32:
                    if arg1 * _reflectFee / stor32 * stor13 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    if 0 > -1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply < 0:
                        revert with 0, 17
                    return (-1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply)
                if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                    revert with 0, 17
                if not 0 / stor32:
                    revert with 0, 18
                if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * _reflectFee / stor32 * stor13 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                    revert with 0, 17
                if 0 / stor32 * stor13 / totalSupply > -1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply < 0 / stor32 * stor13 / totalSupply:
                    revert with 0, 17
                return ((-1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply))
            if arg1 and stor13 / totalSupply > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _reflectFee / stor32:
                if not 0 / stor32:
                    if 0 > arg1 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                    if 0 > arg1 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                    return (arg1 * stor13 / totalSupply)
                if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                    revert with 0, 17
                if not 0 / stor32:
                    revert with 0, 18
                if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * stor13 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor13 / totalSupply < 0:
                    revert with 0, 17
                if 0 / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor13 / totalSupply < 0 / stor32 * stor13 / totalSupply:
                    revert with 0, 17
                return ((arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply))
            if arg1 * _reflectFee / stor32 and stor13 / totalSupply > -1 / arg1 * _reflectFee / stor32:
                revert with 0, 17
            if not arg1 * _reflectFee / stor32:
                revert with 0, 18
            if arg1 * _reflectFee / stor32 * stor13 / totalSupply / arg1 * _reflectFee / stor32 != stor13 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 0 / stor32:
                if arg1 * _reflectFee / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor13 / totalSupply < arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                    revert with 0, 17
                if 0 > (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply) < 0:
                    revert with 0, 17
                return ((arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply))
            if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                revert with 0, 17
            if not 0 / stor32:
                revert with 0, 18
            if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 * _reflectFee / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor13 / totalSupply < arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                revert with 0, 17
            if 0 / stor32 * stor13 / totalSupply > (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply) < 0 / stor32 * stor13 / totalSupply:
                revert with 0, 17
            return ((arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply))
        if arg1 and _liquidityFee + _buyBackFee + _marketingFee + _devFee > -1 / arg1:
            revert with 0, 17
        if not arg1:
            revert with 0, 18
        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / arg1 != _liquidityFee + _buyBackFee + _marketingFee + _devFee:
            revert with 0, 'SafeMath: multiplication overflow'
        mem[160] = 26
        mem[192] = 'SafeMath: division by zero'
        if not stor32:
            revert with 0, 'SafeMath: division by zero', 0
        mem[224] = 30
        mem[256] = 'SafeMath: subtraction overflow'
        if arg1 * _reflectFee / stor32 > arg1:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 < arg1 * _reflectFee / stor32:
            revert with 0, 17
        mem[64] = 352
        mem[288] = 30
        mem[320] = 'SafeMath: subtraction overflow'
        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 > arg1 - (arg1 * _reflectFee / stor32):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 - (arg1 * _reflectFee / stor32) < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
            revert with 0, 17
        idx = 0
        s = totalSupply
        t = stor13
        while idx < stor6.length:
            mem[0] = stor6[idx]
            mem[32] = 1
            if stor1[stor6[idx]] > t:
                _4083 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4083] = 26
                mem[_4083 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _4115 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _4115 + 68] = mem[idx + _4083 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4115 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _4115 + -mem[64] + 100
                if not arg1:
                    if not arg1 * _reflectFee / stor32:
                        if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            return 0
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            revert with 0, 17
                        if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            revert with 0, 18
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _4558 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4558] = 30
                        mem[_4558 + 32] = 'SafeMath: subtraction overflow'
                        _5006 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5006] = 30
                        mem[_5006 + 32] = 'SafeMath: subtraction overflow'
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply <= 0:
                            if 0 < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply:
                                revert with 0, 17
                            return (-1 * (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply)
                        _5200 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5200 + 68] = mem[idx + _5006 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5200 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5200 + -mem[64] + 100
                    if arg1 * _reflectFee / stor32 and stor13 / totalSupply > -1 / arg1 * _reflectFee / stor32:
                        revert with 0, 17
                    if not arg1 * _reflectFee / stor32:
                        revert with 0, 18
                    if arg1 * _reflectFee / stor32 * stor13 / totalSupply / arg1 * _reflectFee / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        _4557 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4557] = 30
                        mem[_4557 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _reflectFee / stor32 * stor13 / totalSupply > 0:
                            _4650 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4650 + 68] = mem[idx + _4557 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4650 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4650 + -mem[64] + 100
                        if 0 < arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        _5004 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5004] = 30
                        mem[_5004 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                            if -1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply < 0:
                                revert with 0, 17
                            return (-1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply)
                        _5199 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5199 + 68] = mem[idx + _5004 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5199 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5199 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _4845 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4845] = 30
                    mem[_4845 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _reflectFee / stor32 * stor13 / totalSupply > 0:
                        _5003 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5003 + 68] = mem[idx + _4845 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5003 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5003 + -mem[64] + 100
                    if 0 < arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    _5684 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5684] = 30
                    mem[_5684 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply <= -1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                        if -1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        return ((-1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply) - ((_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply))
                    _5988 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _5988 + 68] = mem[idx + _5684 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5988 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _5988 + -mem[64] + 100
                if arg1 and stor13 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _reflectFee / stor32:
                    if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        _4556 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4556] = 30
                        mem[_4556 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor13 / totalSupply:
                            _4649 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4649 + 68] = mem[idx + _4556 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4649 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4649 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        _5001 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5001] = 30
                        mem[_5001 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor13 / totalSupply:
                            if arg1 * stor13 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor13 / totalSupply)
                        _5198 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5198 + 68] = mem[idx + _5001 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5198 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5198 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _4844 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4844] = 30
                    mem[_4844 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor13 / totalSupply:
                        _5000 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5000 + 68] = mem[idx + _4844 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5000 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5000 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                    _5682 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5682] = 30
                    mem[_5682 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply <= arg1 * stor13 / totalSupply:
                        if arg1 * stor13 / totalSupply < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        return ((arg1 * stor13 / totalSupply) - ((_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply))
                    _5986 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _5986 + 68] = mem[idx + _5682 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5986 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _5986 + -mem[64] + 100
                if arg1 * _reflectFee / stor32 and stor13 / totalSupply > -1 / arg1 * _reflectFee / stor32:
                    revert with 0, 17
                if not arg1 * _reflectFee / stor32:
                    revert with 0, 18
                if arg1 * _reflectFee / stor32 * stor13 / totalSupply / arg1 * _reflectFee / stor32 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                    _4843 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4843] = 30
                    mem[_4843 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _reflectFee / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        _4999 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4999 + 68] = mem[idx + _4843 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4999 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4999 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    _5680 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5680] = 30
                    mem[_5680 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply):
                        if (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply) < 0:
                            revert with 0, 17
                        return ((arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply))
                    _5985 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _5985 + 68] = mem[idx + _5680 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5985 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _5985 + -mem[64] + 100
                if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                    revert with 0, 17
                if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                    revert with 0, 18
                if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _5451 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5451] = 30
                mem[_5451 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _reflectFee / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                    _5679 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _5679 + 68] = mem[idx + _5451 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5679 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _5679 + -mem[64] + 100
                if arg1 * stor13 / totalSupply < arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                    revert with 0, 17
                _6567 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6567] = 30
                mem[_6567 + 32] = 'SafeMath: subtraction overflow'
                if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply <= (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply):
                    if (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply) < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    return ((arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply) - ((_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply))
                _6855 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _6855 + 68] = mem[idx + _6567 + 32]
                    idx = idx + 32
                    continue 
                mem[_6855 + 98] = 0
                revert with memory
                  from mem[64]
                   len _6855 + -mem[64] + 100
            if idx >= stor6.length:
                revert with 0, 50
            mem[0] = stor6[idx]
            mem[32] = 2
            if stor2[stor6[idx]] <= s:
                if idx >= stor6.length:
                    revert with 0, 50
                mem[0] = stor6[idx]
                mem[32] = 1
                _4116 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4116] = 30
                mem[_4116 + 32] = 'SafeMath: subtraction overflow'
                if stor1[stor6[idx]] > t:
                    _4156 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4156 + 68] = mem[idx + _4116 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4156 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4156 + -mem[64] + 100
                if t < stor1[stor6[idx]]:
                    revert with 0, 17
                if idx >= stor6.length:
                    revert with 0, 50
                mem[0] = stor6[idx]
                mem[32] = 2
                _4333 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4333] = 30
                mem[_4333 + 32] = 'SafeMath: subtraction overflow'
                if stor2[stor6[idx]] <= s:
                    if s < stor2[stor6[idx]]:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s - stor2[stor6[idx]]
                    t = t - stor1[stor6[idx]]
                    continue 
                _4357 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4357 + 68] = mem[idx + _4333 + 32]
                    idx = idx + 32
                    continue 
                mem[_4357 + 98] = 0
                revert with memory
                  from mem[64]
                   len _4357 + -mem[64] + 100
            _4117 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4117] = 26
            mem[_4117 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                _4157 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _4157 + 68] = mem[idx + _4117 + 32]
                    idx = idx + 32
                    continue 
                mem[_4157 + 94] = 0
                revert with memory
                  from mem[64]
                   len _4157 + -mem[64] + 100
            if not arg1:
                if not arg1 * _reflectFee / stor32:
                    if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        return 0
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _4655 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4655] = 30
                    mem[_4655 + 32] = 'SafeMath: subtraction overflow'
                    _5208 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5208] = 30
                    mem[_5208 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply <= 0:
                        if 0 < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        return (-1 * (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply)
                    _5455 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _5455 + 68] = mem[idx + _5208 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5455 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _5455 + -mem[64] + 100
                if arg1 * _reflectFee / stor32 and stor13 / totalSupply > -1 / arg1 * _reflectFee / stor32:
                    revert with 0, 17
                if not arg1 * _reflectFee / stor32:
                    revert with 0, 18
                if arg1 * _reflectFee / stor32 * stor13 / totalSupply / arg1 * _reflectFee / stor32 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                    _4654 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4654] = 30
                    mem[_4654 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _reflectFee / stor32 * stor13 / totalSupply > 0:
                        _4732 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4732 + 68] = mem[idx + _4654 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4732 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4732 + -mem[64] + 100
                    if 0 < arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    _5206 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5206] = 30
                    mem[_5206 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                        if -1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        return (-1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply)
                    _5454 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _5454 + 68] = mem[idx + _5206 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5454 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _5454 + -mem[64] + 100
                if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                    revert with 0, 17
                if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                    revert with 0, 18
                if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _5009 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5009] = 30
                mem[_5009 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _reflectFee / stor32 * stor13 / totalSupply > 0:
                    _5205 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _5205 + 68] = mem[idx + _5009 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5205 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _5205 + -mem[64] + 100
                if 0 < arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                    revert with 0, 17
                _5996 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5996] = 30
                mem[_5996 + 32] = 'SafeMath: subtraction overflow'
                if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply <= -1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                    if -1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    return ((-1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply) - ((_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply))
                _6310 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _6310 + 68] = mem[idx + _5996 + 32]
                    idx = idx + 32
                    continue 
                mem[_6310 + 98] = 0
                revert with memory
                  from mem[64]
                   len _6310 + -mem[64] + 100
            if arg1 and stor13 / totalSupply > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _reflectFee / stor32:
                if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                    _4653 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4653] = 30
                    mem[_4653 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor13 / totalSupply:
                        _4731 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4731 + 68] = mem[idx + _4653 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4731 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4731 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                    _5203 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5203] = 30
                    mem[_5203 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor13 / totalSupply:
                        if arg1 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        return (arg1 * stor13 / totalSupply)
                    _5453 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _5453 + 68] = mem[idx + _5203 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5453 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _5453 + -mem[64] + 100
                if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                    revert with 0, 17
                if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                    revert with 0, 18
                if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _5008 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5008] = 30
                mem[_5008 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor13 / totalSupply:
                    _5202 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _5202 + 68] = mem[idx + _5008 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5202 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _5202 + -mem[64] + 100
                if arg1 * stor13 / totalSupply < 0:
                    revert with 0, 17
                _5994 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5994] = 30
                mem[_5994 + 32] = 'SafeMath: subtraction overflow'
                if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply <= arg1 * stor13 / totalSupply:
                    if arg1 * stor13 / totalSupply < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    return ((arg1 * stor13 / totalSupply) - ((_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply))
                _6308 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _6308 + 68] = mem[idx + _5994 + 32]
                    idx = idx + 32
                    continue 
                mem[_6308 + 98] = 0
                revert with memory
                  from mem[64]
                   len _6308 + -mem[64] + 100
            if arg1 * _reflectFee / stor32 and stor13 / totalSupply > -1 / arg1 * _reflectFee / stor32:
                revert with 0, 17
            if not arg1 * _reflectFee / stor32:
                revert with 0, 18
            if arg1 * _reflectFee / stor32 * stor13 / totalSupply / arg1 * _reflectFee / stor32 != stor13 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                _5007 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5007] = 30
                mem[_5007 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _reflectFee / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                    _5201 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _5201 + 68] = mem[idx + _5007 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5201 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _5201 + -mem[64] + 100
                if arg1 * stor13 / totalSupply < arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                    revert with 0, 17
                _5992 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5992] = 30
                mem[_5992 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply):
                    if (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply) < 0:
                        revert with 0, 17
                    return ((arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply))
                _6307 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _6307 + 68] = mem[idx + _5992 + 32]
                    idx = idx + 32
                    continue 
                mem[_6307 + 98] = 0
                revert with memory
                  from mem[64]
                   len _6307 + -mem[64] + 100
            if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                revert with 0, 17
            if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                revert with 0, 18
            if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != stor13 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            _5687 = mem[64]
            mem[64] = mem[64] + 64
            mem[_5687] = 30
            mem[_5687 + 32] = 'SafeMath: subtraction overflow'
            if arg1 * _reflectFee / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                _5991 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _5991 + 68] = mem[idx + _5687 + 32]
                    idx = idx + 32
                    continue 
                mem[_5991 + 98] = 0
                revert with memory
                  from mem[64]
                   len _5991 + -mem[64] + 100
            if arg1 * stor13 / totalSupply < arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                revert with 0, 17
            _6859 = mem[64]
            mem[64] = mem[64] + 64
            mem[_6859] = 30
            mem[_6859 + 32] = 'SafeMath: subtraction overflow'
            if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply <= (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply):
                if (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply) < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply:
                    revert with 0, 17
                return ((arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply) - ((_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply))
            _7089 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _7089 + 68] = mem[idx + _6859 + 32]
                idx = idx + 32
                continue 
            mem[_7089 + 98] = 0
            revert with memory
              from mem[64]
               len _7089 + -mem[64] + 100
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if t >= stor13 / totalSupply:
            if not s:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                if not arg1 * _reflectFee / stor32:
                    if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        return 0
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and t / s > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * t / s / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * t / s:
                        revert with 0, 17
                    return (-1 * (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * t / s)
                if arg1 * _reflectFee / stor32 and t / s > -1 / arg1 * _reflectFee / stor32:
                    revert with 0, 17
                if not arg1 * _reflectFee / stor32:
                    revert with 0, 18
                if arg1 * _reflectFee / stor32 * t / s / arg1 * _reflectFee / stor32 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                    if arg1 * _reflectFee / stor32 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * _reflectFee / stor32 * t / s:
                        revert with 0, 17
                    if 0 > -1 * arg1 * _reflectFee / stor32 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * _reflectFee / stor32 * t / s < 0:
                        revert with 0, 17
                    return (-1 * arg1 * _reflectFee / stor32 * t / s)
                if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and t / s > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                    revert with 0, 17
                if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                    revert with 0, 18
                if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * t / s / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * _reflectFee / stor32 * t / s > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * _reflectFee / stor32 * t / s:
                    revert with 0, 17
                if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * t / s > -1 * arg1 * _reflectFee / stor32 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * _reflectFee / stor32 * t / s < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * t / s:
                    revert with 0, 17
                return ((-1 * arg1 * _reflectFee / stor32 * t / s) - ((_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * t / s))
            if arg1 and t / s > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * t / s / arg1 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _reflectFee / stor32:
                if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    return (arg1 * t / s)
                if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and t / s > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                    revert with 0, 17
                if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                    revert with 0, 18
                if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * t / s / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < 0:
                    revert with 0, 17
                if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * t / s:
                    revert with 0, 17
                return ((arg1 * t / s) - ((_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * t / s))
            if arg1 * _reflectFee / stor32 and t / s > -1 / arg1 * _reflectFee / stor32:
                revert with 0, 17
            if not arg1 * _reflectFee / stor32:
                revert with 0, 18
            if arg1 * _reflectFee / stor32 * t / s / arg1 * _reflectFee / stor32 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                if arg1 * _reflectFee / stor32 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < arg1 * _reflectFee / stor32 * t / s:
                    revert with 0, 17
                if 0 > (arg1 * t / s) - (arg1 * _reflectFee / stor32 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * t / s) - (arg1 * _reflectFee / stor32 * t / s) < 0:
                    revert with 0, 17
                return ((arg1 * t / s) - (arg1 * _reflectFee / stor32 * t / s))
            if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and t / s > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                revert with 0, 17
            if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                revert with 0, 18
            if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * t / s / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 * _reflectFee / stor32 * t / s > arg1 * t / s:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * t / s < arg1 * _reflectFee / stor32 * t / s:
                revert with 0, 17
            if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * t / s > (arg1 * t / s) - (arg1 * _reflectFee / stor32 * t / s):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * t / s) - (arg1 * _reflectFee / stor32 * t / s) < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * t / s:
                revert with 0, 17
            return ((arg1 * t / s) - (arg1 * _reflectFee / stor32 * t / s) - ((_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * t / s))
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if not arg1:
            if not arg1 * _reflectFee / stor32:
                if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                    return 0
                if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                    revert with 0, 17
                if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                    revert with 0, 18
                if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply:
                    revert with 0, 17
                return (-1 * (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply)
            if arg1 * _reflectFee / stor32 and stor13 / totalSupply > -1 / arg1 * _reflectFee / stor32:
                revert with 0, 17
            if not arg1 * _reflectFee / stor32:
                revert with 0, 18
            if arg1 * _reflectFee / stor32 * stor13 / totalSupply / arg1 * _reflectFee / stor32 != stor13 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                if arg1 * _reflectFee / stor32 * stor13 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                    revert with 0, 17
                if 0 > -1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply < 0:
                    revert with 0, 17
                return (-1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply)
            if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                revert with 0, 17
            if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                revert with 0, 18
            if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != stor13 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 * _reflectFee / stor32 * stor13 / totalSupply > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                revert with 0, 17
            if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply > -1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if -1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply:
                revert with 0, 17
            return ((-1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply) - ((_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply))
        if arg1 and stor13 / totalSupply > -1 / arg1:
            revert with 0, 17
        if not arg1:
            revert with 0, 18
        if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
            revert with 0, 'SafeMath: multiplication overflow'
        if not arg1 * _reflectFee / stor32:
            if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                if 0 > arg1 * stor13 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor13 / totalSupply < 0:
                    revert with 0, 17
                if 0 > arg1 * stor13 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor13 / totalSupply < 0:
                    revert with 0, 17
                return (arg1 * stor13 / totalSupply)
            if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                revert with 0, 17
            if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                revert with 0, 18
            if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != stor13 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 > arg1 * stor13 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor13 / totalSupply < 0:
                revert with 0, 17
            if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor13 / totalSupply < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply:
                revert with 0, 17
            return ((arg1 * stor13 / totalSupply) - ((_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply))
        if arg1 * _reflectFee / stor32 and stor13 / totalSupply > -1 / arg1 * _reflectFee / stor32:
            revert with 0, 17
        if not arg1 * _reflectFee / stor32:
            revert with 0, 18
        if arg1 * _reflectFee / stor32 * stor13 / totalSupply / arg1 * _reflectFee / stor32 != stor13 / totalSupply:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
            if arg1 * _reflectFee / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor13 / totalSupply < arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                revert with 0, 17
            if 0 > (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply) < 0:
                revert with 0, 17
            return ((arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply))
        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
            revert with 0, 17
        if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
            revert with 0, 18
        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != stor13 / totalSupply:
            revert with 0, 'SafeMath: multiplication overflow'
        if arg1 * _reflectFee / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 * stor13 / totalSupply < arg1 * _reflectFee / stor32 * stor13 / totalSupply:
            revert with 0, 17
        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply > (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply) < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply:
            revert with 0, 17
        return ((arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply) - ((_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply))
    if not arg1:
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if not stor32:
            revert with 0, 'SafeMath: division by zero', 0
        if _liquidityFee > !_buyBackFee:
            revert with 0, 17
        if _liquidityFee + _buyBackFee < _liquidityFee:
            revert with 0, 'SafeMath: addition overflow'
        if _liquidityFee + _buyBackFee > !_marketingFee:
            revert with 0, 17
        if _marketingFee < 0:
            revert with 0, 'SafeMath: addition overflow'
        if _liquidityFee + _buyBackFee + _marketingFee > !_devFee:
            revert with 0, 17
        if _devFee < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not arg1:
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            if not stor32:
                revert with 0, 'SafeMath: division by zero', 0
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if 0 / stor32 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < 0 / stor32:
                revert with 0, 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if 0 / stor32 > arg1 - (0 / stor32):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (0 / stor32) < 0 / stor32:
                revert with 0, 17
            idx = 0
            s = totalSupply
            t = stor13
            while idx < stor6.length:
                mem[0] = stor6[idx]
                mem[32] = 1
                if stor1[stor6[idx]] > t:
                    _4090 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4090] = 26
                    mem[_4090 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _4136 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _4136 + 68] = mem[idx + _4090 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4136 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _4136 + -mem[64] + 100
                    if not arg1:
                        if not 0 / stor32:
                            return 0
                        if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                            revert with 0, 17
                        if not 0 / stor32:
                            revert with 0, 18
                        if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 0 / stor32:
                            _4618 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4618] = 30
                            mem[_4618 + 32] = 'SafeMath: subtraction overflow'
                            if 0 / stor32 * stor13 / totalSupply > 0:
                                _4698 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4698 + 68] = mem[idx + _4618 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4698 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _4698 + -mem[64] + 100
                            if 0 < 0 / stor32 * stor13 / totalSupply:
                                revert with 0, 17
                            _5119 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5119] = 30
                            mem[_5119 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * 0 / stor32 * stor13 / totalSupply:
                                if -1 * 0 / stor32 * stor13 / totalSupply < 0:
                                    revert with 0, 17
                                else:
                                    return 0
                            _5304 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5304 + 68] = mem[idx + _5119 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5304 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5304 + -mem[64] + 100
                        if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                            revert with 0, 17
                        if not 0 / stor32:
                            revert with 0, 18
                        if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _4929 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4929] = 30
                        mem[_4929 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor32 * stor13 / totalSupply > 0:
                            _5118 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5118 + 68] = mem[idx + _4929 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5118 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5118 + -mem[64] + 100
                        if 0 < 0 / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        _5847 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5847] = 30
                        mem[_5847 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor32 * stor13 / totalSupply <= -1 * 0 / stor32 * stor13 / totalSupply:
                            if -1 * 0 / stor32 * stor13 / totalSupply < 0 / stor32 * stor13 / totalSupply:
                                revert with 0, 17
                            else:
                                return 0
                        _6133 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6133 + 68] = mem[idx + _5847 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6133 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6133 + -mem[64] + 100
                    if arg1 and stor13 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor32:
                        _4617 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4617] = 30
                        mem[_4617 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor13 / totalSupply:
                            _4697 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4697 + 68] = mem[idx + _4617 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4697 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4697 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        _5116 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5116] = 30
                        mem[_5116 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor13 / totalSupply:
                            if arg1 * stor13 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor13 / totalSupply)
                        _5303 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5303 + 68] = mem[idx + _5116 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5303 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5303 + -mem[64] + 100
                    if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                        revert with 0, 17
                    if not 0 / stor32:
                        revert with 0, 18
                    if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor32:
                        _4928 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4928] = 30
                        mem[_4928 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                            _5115 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5115 + 68] = mem[idx + _4928 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5115 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5115 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < 0 / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        _5845 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5845] = 30
                        mem[_5845 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply):
                            if (arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply) < 0:
                                revert with 0, 17
                            return (arg1 * stor13 / totalSupply)
                        _6131 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6131 + 68] = mem[idx + _5845 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6131 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6131 + -mem[64] + 100
                    if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                        revert with 0, 17
                    if not 0 / stor32:
                        revert with 0, 18
                    if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _5523 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5523] = 30
                    mem[_5523 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        _5844 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5844 + 68] = mem[idx + _5523 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5844 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5844 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < 0 / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    _6705 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6705] = 30
                    mem[_6705 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor32 * stor13 / totalSupply <= (arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply):
                        if (arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply) < 0 / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        return (arg1 * stor13 / totalSupply)
                    _6992 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6992 + 68] = mem[idx + _6705 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6992 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6992 + -mem[64] + 100
                if idx >= stor6.length:
                    revert with 0, 50
                mem[0] = stor6[idx]
                mem[32] = 2
                if stor2[stor6[idx]] <= s:
                    if idx >= stor6.length:
                        revert with 0, 50
                    mem[0] = stor6[idx]
                    mem[32] = 1
                    _4137 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4137] = 30
                    mem[_4137 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor6[idx]] > t:
                        _4177 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4177 + 68] = mem[idx + _4137 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4177 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4177 + -mem[64] + 100
                    if t < stor1[stor6[idx]]:
                        revert with 0, 17
                    if idx >= stor6.length:
                        revert with 0, 50
                    mem[0] = stor6[idx]
                    mem[32] = 2
                    _4354 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4354] = 30
                    mem[_4354 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor6[idx]] <= s:
                        if s < stor2[stor6[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor2[stor6[idx]]
                        t = t - stor1[stor6[idx]]
                        continue 
                    _4378 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4378 + 68] = mem[idx + _4354 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4378 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4378 + -mem[64] + 100
                _4138 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4138] = 26
                mem[_4138 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _4178 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _4178 + 68] = mem[idx + _4138 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4178 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _4178 + -mem[64] + 100
                if not arg1:
                    if not 0 / stor32:
                        return 0
                    if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                        revert with 0, 17
                    if not 0 / stor32:
                        revert with 0, 18
                    if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor32:
                        _4702 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4702] = 30
                        mem[_4702 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor32 * stor13 / totalSupply > 0:
                            _4775 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4775 + 68] = mem[idx + _4702 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4775 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4775 + -mem[64] + 100
                        if 0 < 0 / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        _5309 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5309] = 30
                        mem[_5309 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * 0 / stor32 * stor13 / totalSupply:
                            if -1 * 0 / stor32 * stor13 / totalSupply < 0:
                                revert with 0, 17
                            else:
                                return 0
                        _5526 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5526 + 68] = mem[idx + _5309 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5526 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5526 + -mem[64] + 100
                    if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                        revert with 0, 17
                    if not 0 / stor32:
                        revert with 0, 18
                    if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _5122 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5122] = 30
                    mem[_5122 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor32 * stor13 / totalSupply > 0:
                        _5308 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5308 + 68] = mem[idx + _5122 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5308 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5308 + -mem[64] + 100
                    if 0 < 0 / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    _6138 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6138] = 30
                    mem[_6138 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor32 * stor13 / totalSupply <= -1 * 0 / stor32 * stor13 / totalSupply:
                        if -1 * 0 / stor32 * stor13 / totalSupply < 0 / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        else:
                            return 0
                    _6363 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6363 + 68] = mem[idx + _6138 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6363 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6363 + -mem[64] + 100
                if arg1 and stor13 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / stor32:
                    _4701 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4701] = 30
                    mem[_4701 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor13 / totalSupply:
                        _4774 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4774 + 68] = mem[idx + _4701 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4774 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4774 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                    _5306 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5306] = 30
                    mem[_5306 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor13 / totalSupply:
                        if arg1 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        return (arg1 * stor13 / totalSupply)
                    _5525 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _5525 + 68] = mem[idx + _5306 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5525 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _5525 + -mem[64] + 100
                if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                    revert with 0, 17
                if not 0 / stor32:
                    revert with 0, 18
                if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / stor32:
                    _5121 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5121] = 30
                    mem[_5121 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        _5305 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5305 + 68] = mem[idx + _5121 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5305 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5305 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < 0 / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    _6136 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6136] = 30
                    mem[_6136 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply):
                        if (arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply) < 0:
                            revert with 0, 17
                        return (arg1 * stor13 / totalSupply)
                    _6361 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6361 + 68] = mem[idx + _6136 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6361 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6361 + -mem[64] + 100
                if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                    revert with 0, 17
                if not 0 / stor32:
                    revert with 0, 18
                if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _5850 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5850] = 30
                mem[_5850 + 32] = 'SafeMath: subtraction overflow'
                if 0 / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                    _6135 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6135 + 68] = mem[idx + _5850 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6135 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6135 + -mem[64] + 100
                if arg1 * stor13 / totalSupply < 0 / stor32 * stor13 / totalSupply:
                    revert with 0, 17
                _6995 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6995] = 30
                mem[_6995 + 32] = 'SafeMath: subtraction overflow'
                if 0 / stor32 * stor13 / totalSupply <= (arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply):
                    if (arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply) < 0 / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    return (arg1 * stor13 / totalSupply)
                _7116 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _7116 + 68] = mem[idx + _6995 + 32]
                    idx = idx + 32
                    continue 
                mem[_7116 + 98] = 0
                revert with memory
                  from mem[64]
                   len _7116 + -mem[64] + 100
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor13 / totalSupply:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if 0 / stor32:
                        if 0 / stor32 and t / s > -1 / 0 / stor32:
                            revert with 0, 17
                        if not 0 / stor32:
                            revert with 0, 18
                        if 0 / stor32 * t / s / 0 / stor32 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 0 / stor32:
                            if 0 / stor32 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < 0 / stor32 * t / s:
                                revert with 0, 17
                            if 0 > -1 * 0 / stor32 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * 0 / stor32 * t / s < 0:
                                revert with 0, 17
                        else:
                            if 0 / stor32 and t / s > -1 / 0 / stor32:
                                revert with 0, 17
                            if not 0 / stor32:
                                revert with 0, 18
                            if 0 / stor32 * t / s / 0 / stor32 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 / stor32 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < 0 / stor32 * t / s:
                                revert with 0, 17
                            if 0 / stor32 * t / s > -1 * 0 / stor32 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * 0 / stor32 * t / s < 0 / stor32 * t / s:
                                revert with 0, 17
                        return 0
                    else:
                        return 0
                if arg1 and t / s > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / stor32:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                else:
                    if 0 / stor32 and t / s > -1 / 0 / stor32:
                        revert with 0, 17
                    if not 0 / stor32:
                        revert with 0, 18
                    if 0 / stor32 * t / s / 0 / stor32 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor32:
                        if 0 / stor32 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0 / stor32 * t / s:
                            revert with 0, 17
                        if 0 > (arg1 * t / s) - (0 / stor32 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * t / s) - (0 / stor32 * t / s) < 0:
                            revert with 0, 17
                    else:
                        if 0 / stor32 and t / s > -1 / 0 / stor32:
                            revert with 0, 17
                        if not 0 / stor32:
                            revert with 0, 18
                        if 0 / stor32 * t / s / 0 / stor32 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 / stor32 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0 / stor32 * t / s:
                            revert with 0, 17
                        if 0 / stor32 * t / s > (arg1 * t / s) - (0 / stor32 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * t / s) - (0 / stor32 * t / s) < 0 / stor32 * t / s:
                            revert with 0, 17
                return (arg1 * t / s)
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                if 0 / stor32:
                    if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                        revert with 0, 17
                    if not 0 / stor32:
                        revert with 0, 18
                    if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor32:
                        if 0 / stor32 * stor13 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < 0 / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        if 0 > -1 * 0 / stor32 * stor13 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * 0 / stor32 * stor13 / totalSupply < 0:
                            revert with 0, 17
                    else:
                        if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                            revert with 0, 17
                        if not 0 / stor32:
                            revert with 0, 18
                        if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 / stor32 * stor13 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < 0 / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        if 0 / stor32 * stor13 / totalSupply > -1 * 0 / stor32 * stor13 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * 0 / stor32 * stor13 / totalSupply < 0 / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                    return 0
                else:
                    return 0
            if arg1 and stor13 / totalSupply > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 0 / stor32:
                if 0 > arg1 * stor13 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor13 / totalSupply < 0:
                    revert with 0, 17
                if 0 > arg1 * stor13 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor13 / totalSupply < 0:
                    revert with 0, 17
            else:
                if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                    revert with 0, 17
                if not 0 / stor32:
                    revert with 0, 18
                if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / stor32:
                    if 0 / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor13 / totalSupply < 0 / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    if 0 > (arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply) < 0:
                        revert with 0, 17
                else:
                    if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                        revert with 0, 17
                    if not 0 / stor32:
                        revert with 0, 18
                    if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor13 / totalSupply < 0 / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    if 0 / stor32 * stor13 / totalSupply > (arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply) < 0 / stor32 * stor13 / totalSupply:
                        revert with 0, 17
        else:
            if arg1 and _liquidityFee + _buyBackFee + _marketingFee + _devFee > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / arg1 != _liquidityFee + _buyBackFee + _marketingFee + _devFee:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            if not stor32:
                revert with 0, 'SafeMath: division by zero', 0
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if 0 / stor32 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < 0 / stor32:
                revert with 0, 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 > arg1 - (0 / stor32):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (0 / stor32) < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                revert with 0, 17
            idx = 0
            s = totalSupply
            t = stor13
            while idx < stor6.length:
                mem[0] = stor6[idx]
                mem[32] = 1
                if stor1[stor6[idx]] > t:
                    _4089 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4089] = 26
                    mem[_4089 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _4133 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _4133 + 68] = mem[idx + _4089 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4133 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _4133 + -mem[64] + 100
                    if not arg1:
                        if not 0 / stor32:
                            if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                                return 0
                            if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                                revert with 0, 17
                            if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                                revert with 0, 18
                            if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != stor13 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _4610 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4610] = 30
                            mem[_4610 + 32] = 'SafeMath: subtraction overflow'
                            _5105 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5105] = 30
                            mem[_5105 + 32] = 'SafeMath: subtraction overflow'
                            if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply <= 0:
                                if 0 < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply:
                                    revert with 0, 17
                                else:
                                    return 0
                            _5291 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5291 + 68] = mem[idx + _5105 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5291 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5291 + -mem[64] + 100
                        if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                            revert with 0, 17
                        if not 0 / stor32:
                            revert with 0, 18
                        if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            _4609 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4609] = 30
                            mem[_4609 + 32] = 'SafeMath: subtraction overflow'
                            if 0 / stor32 * stor13 / totalSupply > 0:
                                _4691 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4691 + 68] = mem[idx + _4609 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4691 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _4691 + -mem[64] + 100
                            if 0 < 0 / stor32 * stor13 / totalSupply:
                                revert with 0, 17
                            _5103 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5103] = 30
                            mem[_5103 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * 0 / stor32 * stor13 / totalSupply:
                                if -1 * 0 / stor32 * stor13 / totalSupply < 0:
                                    revert with 0, 17
                                else:
                                    return 0
                            _5290 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5290 + 68] = mem[idx + _5103 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5290 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5290 + -mem[64] + 100
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            revert with 0, 17
                        if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            revert with 0, 18
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _4919 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4919] = 30
                        mem[_4919 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor32 * stor13 / totalSupply > 0:
                            _5102 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5102 + 68] = mem[idx + _4919 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5102 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5102 + -mem[64] + 100
                        if 0 < 0 / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        _5828 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5828] = 30
                        mem[_5828 + 32] = 'SafeMath: subtraction overflow'
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply <= -1 * 0 / stor32 * stor13 / totalSupply:
                            if -1 * 0 / stor32 * stor13 / totalSupply < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply:
                                revert with 0, 17
                            else:
                                return 0
                        _6114 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6114 + 68] = mem[idx + _5828 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6114 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6114 + -mem[64] + 100
                    if arg1 and stor13 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor32:
                        if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            _4608 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4608] = 30
                            mem[_4608 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor13 / totalSupply:
                                _4690 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4690 + 68] = mem[idx + _4608 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4690 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _4690 + -mem[64] + 100
                            if arg1 * stor13 / totalSupply < 0:
                                revert with 0, 17
                            _5100 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5100] = 30
                            mem[_5100 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor13 / totalSupply:
                                if arg1 * stor13 / totalSupply < 0:
                                    revert with 0, 17
                                return (arg1 * stor13 / totalSupply)
                            _5289 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5289 + 68] = mem[idx + _5100 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5289 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5289 + -mem[64] + 100
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            revert with 0, 17
                        if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            revert with 0, 18
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _4918 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4918] = 30
                        mem[_4918 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor13 / totalSupply:
                            _5099 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5099 + 68] = mem[idx + _4918 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5099 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5099 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        _5826 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5826] = 30
                        mem[_5826 + 32] = 'SafeMath: subtraction overflow'
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply <= arg1 * stor13 / totalSupply:
                            if arg1 * stor13 / totalSupply < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply:
                                revert with 0, 17
                            return (arg1 * stor13 / totalSupply)
                        _6112 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6112 + 68] = mem[idx + _5826 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6112 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6112 + -mem[64] + 100
                    if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                        revert with 0, 17
                    if not 0 / stor32:
                        revert with 0, 18
                    if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        _4917 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4917] = 30
                        mem[_4917 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                            _5098 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5098 + 68] = mem[idx + _4917 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5098 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5098 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < 0 / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        _5824 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5824] = 30
                        mem[_5824 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply):
                            if (arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply) < 0:
                                revert with 0, 17
                            return (arg1 * stor13 / totalSupply)
                        _6111 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6111 + 68] = mem[idx + _5824 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6111 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6111 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _5514 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5514] = 30
                    mem[_5514 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        _5823 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5823 + 68] = mem[idx + _5514 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5823 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5823 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < 0 / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    _6688 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6688] = 30
                    mem[_6688 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply <= (arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply):
                        if (arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply) < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        return (arg1 * stor13 / totalSupply)
                    _6975 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6975 + 68] = mem[idx + _6688 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6975 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6975 + -mem[64] + 100
                if idx >= stor6.length:
                    revert with 0, 50
                mem[0] = stor6[idx]
                mem[32] = 2
                if stor2[stor6[idx]] <= s:
                    if idx >= stor6.length:
                        revert with 0, 50
                    mem[0] = stor6[idx]
                    mem[32] = 1
                    _4134 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4134] = 30
                    mem[_4134 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor6[idx]] > t:
                        _4174 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4174 + 68] = mem[idx + _4134 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4174 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4174 + -mem[64] + 100
                    if t < stor1[stor6[idx]]:
                        revert with 0, 17
                    if idx >= stor6.length:
                        revert with 0, 50
                    mem[0] = stor6[idx]
                    mem[32] = 2
                    _4351 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4351] = 30
                    mem[_4351 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor6[idx]] <= s:
                        if s < stor2[stor6[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor2[stor6[idx]]
                        t = t - stor1[stor6[idx]]
                        continue 
                    _4375 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4375 + 68] = mem[idx + _4351 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4375 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4375 + -mem[64] + 100
                _4135 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4135] = 26
                mem[_4135 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _4175 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _4175 + 68] = mem[idx + _4135 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4175 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _4175 + -mem[64] + 100
                if not arg1:
                    if not 0 / stor32:
                        if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            return 0
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            revert with 0, 17
                        if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            revert with 0, 18
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _4696 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4696] = 30
                        mem[_4696 + 32] = 'SafeMath: subtraction overflow'
                        _5299 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5299] = 30
                        mem[_5299 + 32] = 'SafeMath: subtraction overflow'
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply <= 0:
                            if 0 < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply:
                                revert with 0, 17
                            else:
                                return 0
                        _5518 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5518 + 68] = mem[idx + _5299 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5518 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5518 + -mem[64] + 100
                    if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                        revert with 0, 17
                    if not 0 / stor32:
                        revert with 0, 18
                    if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        _4695 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4695] = 30
                        mem[_4695 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor32 * stor13 / totalSupply > 0:
                            _4771 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4771 + 68] = mem[idx + _4695 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4771 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4771 + -mem[64] + 100
                        if 0 < 0 / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        _5297 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5297] = 30
                        mem[_5297 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * 0 / stor32 * stor13 / totalSupply:
                            if -1 * 0 / stor32 * stor13 / totalSupply < 0:
                                revert with 0, 17
                            else:
                                return 0
                        _5517 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5517 + 68] = mem[idx + _5297 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5517 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5517 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _5108 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5108] = 30
                    mem[_5108 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor32 * stor13 / totalSupply > 0:
                        _5296 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5296 + 68] = mem[idx + _5108 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5296 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5296 + -mem[64] + 100
                    if 0 < 0 / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    _6122 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6122] = 30
                    mem[_6122 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply <= -1 * 0 / stor32 * stor13 / totalSupply:
                        if -1 * 0 / stor32 * stor13 / totalSupply < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        else:
                            return 0
                    _6356 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6356 + 68] = mem[idx + _6122 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6356 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6356 + -mem[64] + 100
                if arg1 and stor13 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / stor32:
                    if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        _4694 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4694] = 30
                        mem[_4694 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor13 / totalSupply:
                            _4770 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4770 + 68] = mem[idx + _4694 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4770 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4770 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        _5294 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5294] = 30
                        mem[_5294 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor13 / totalSupply:
                            if arg1 * stor13 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor13 / totalSupply)
                        _5516 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5516 + 68] = mem[idx + _5294 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5516 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5516 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _5107 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5107] = 30
                    mem[_5107 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor13 / totalSupply:
                        _5293 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5293 + 68] = mem[idx + _5107 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5293 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5293 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                    _6120 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6120] = 30
                    mem[_6120 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply <= arg1 * stor13 / totalSupply:
                        if arg1 * stor13 / totalSupply < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        return (arg1 * stor13 / totalSupply)
                    _6354 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6354 + 68] = mem[idx + _6120 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6354 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6354 + -mem[64] + 100
                if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                    revert with 0, 17
                if not 0 / stor32:
                    revert with 0, 18
                if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                    _5106 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5106] = 30
                    mem[_5106 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        _5292 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5292 + 68] = mem[idx + _5106 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5292 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5292 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < 0 / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    _6118 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6118] = 30
                    mem[_6118 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply):
                        if (arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply) < 0:
                            revert with 0, 17
                        return (arg1 * stor13 / totalSupply)
                    _6353 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6353 + 68] = mem[idx + _6118 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6353 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6353 + -mem[64] + 100
                if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                    revert with 0, 17
                if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                    revert with 0, 18
                if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _5831 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5831] = 30
                mem[_5831 + 32] = 'SafeMath: subtraction overflow'
                if 0 / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                    _6117 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6117 + 68] = mem[idx + _5831 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6117 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6117 + -mem[64] + 100
                if arg1 * stor13 / totalSupply < 0 / stor32 * stor13 / totalSupply:
                    revert with 0, 17
                _6979 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6979] = 30
                mem[_6979 + 32] = 'SafeMath: subtraction overflow'
                if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply <= (arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply):
                    if (arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply) < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    return (arg1 * stor13 / totalSupply)
                _7112 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _7112 + 68] = mem[idx + _6979 + 32]
                    idx = idx + 32
                    continue 
                mem[_7112 + 98] = 0
                revert with memory
                  from mem[64]
                   len _7112 + -mem[64] + 100
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor13 / totalSupply:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if not 0 / stor32:
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and t / s > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                                revert with 0, 17
                            if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                                revert with 0, 18
                            if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * t / s / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * t / s:
                                revert with 0, 17
                    else:
                        if 0 / stor32 and t / s > -1 / 0 / stor32:
                            revert with 0, 17
                        if not 0 / stor32:
                            revert with 0, 18
                        if 0 / stor32 * t / s / 0 / stor32 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            if 0 / stor32 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < 0 / stor32 * t / s:
                                revert with 0, 17
                            if 0 > -1 * 0 / stor32 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * 0 / stor32 * t / s < 0:
                                revert with 0, 17
                        else:
                            if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and t / s > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                                revert with 0, 17
                            if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                                revert with 0, 18
                            if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * t / s / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 / stor32 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < 0 / stor32 * t / s:
                                revert with 0, 17
                            if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * t / s > -1 * 0 / stor32 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * 0 / stor32 * t / s < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * t / s:
                                revert with 0, 17
                    return 0
                if arg1 and t / s > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / stor32:
                    if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                    else:
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and t / s > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            revert with 0, 17
                        if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            revert with 0, 18
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * t / s / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * t / s:
                            revert with 0, 17
                else:
                    if 0 / stor32 and t / s > -1 / 0 / stor32:
                        revert with 0, 17
                    if not 0 / stor32:
                        revert with 0, 18
                    if 0 / stor32 * t / s / 0 / stor32 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        if 0 / stor32 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0 / stor32 * t / s:
                            revert with 0, 17
                        if 0 > (arg1 * t / s) - (0 / stor32 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * t / s) - (0 / stor32 * t / s) < 0:
                            revert with 0, 17
                    else:
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and t / s > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            revert with 0, 17
                        if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            revert with 0, 18
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * t / s / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 / stor32 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0 / stor32 * t / s:
                            revert with 0, 17
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * t / s > (arg1 * t / s) - (0 / stor32 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * t / s) - (0 / stor32 * t / s) < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * t / s:
                            revert with 0, 17
                return (arg1 * t / s)
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                if not 0 / stor32:
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            revert with 0, 17
                        if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            revert with 0, 18
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                else:
                    if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                        revert with 0, 17
                    if not 0 / stor32:
                        revert with 0, 18
                    if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        if 0 / stor32 * stor13 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < 0 / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        if 0 > -1 * 0 / stor32 * stor13 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * 0 / stor32 * stor13 / totalSupply < 0:
                            revert with 0, 17
                    else:
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            revert with 0, 17
                        if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            revert with 0, 18
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 / stor32 * stor13 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < 0 / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply > -1 * 0 / stor32 * stor13 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * 0 / stor32 * stor13 / totalSupply < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                return 0
            if arg1 and stor13 / totalSupply > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 0 / stor32:
                if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                    if 0 > arg1 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                    if 0 > arg1 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                else:
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor13 / totalSupply < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply:
                        revert with 0, 17
            else:
                if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                    revert with 0, 17
                if not 0 / stor32:
                    revert with 0, 18
                if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                    if 0 / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor13 / totalSupply < 0 / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    if 0 > (arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply) < 0:
                        revert with 0, 17
                else:
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor13 / totalSupply < 0 / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply > (arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply) < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply:
                        revert with 0, 17
    else:
        if arg1 and _reflectFee > -1 / arg1:
            revert with 0, 17
        if not arg1:
            revert with 0, 18
        if arg1 * _reflectFee / arg1 != _reflectFee:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if not stor32:
            revert with 0, 'SafeMath: division by zero', 0
        if _liquidityFee > !_buyBackFee:
            revert with 0, 17
        if _liquidityFee + _buyBackFee < _liquidityFee:
            revert with 0, 'SafeMath: addition overflow'
        if _liquidityFee + _buyBackFee > !_marketingFee:
            revert with 0, 17
        if _marketingFee < 0:
            revert with 0, 'SafeMath: addition overflow'
        if _liquidityFee + _buyBackFee + _marketingFee > !_devFee:
            revert with 0, 17
        if _devFee < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not arg1:
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            if not stor32:
                revert with 0, 'SafeMath: division by zero', 0
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if arg1 * _reflectFee / stor32 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * _reflectFee / stor32:
                revert with 0, 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if 0 / stor32 > arg1 - (arg1 * _reflectFee / stor32):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (arg1 * _reflectFee / stor32) < 0 / stor32:
                revert with 0, 17
            idx = 0
            s = totalSupply
            t = stor13
            while idx < stor6.length:
                mem[0] = stor6[idx]
                mem[32] = 1
                if stor1[stor6[idx]] > t:
                    _4088 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4088] = 26
                    mem[_4088 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _4130 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _4130 + 68] = mem[idx + _4088 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4130 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _4130 + -mem[64] + 100
                    if not arg1:
                        if not arg1 * _reflectFee / stor32:
                            if not 0 / stor32:
                                return 0
                            if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                                revert with 0, 17
                            if not 0 / stor32:
                                revert with 0, 18
                            if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _4601 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4601] = 30
                            mem[_4601 + 32] = 'SafeMath: subtraction overflow'
                            _5088 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5088] = 30
                            mem[_5088 + 32] = 'SafeMath: subtraction overflow'
                            if 0 / stor32 * stor13 / totalSupply <= 0:
                                if 0 < 0 / stor32 * stor13 / totalSupply:
                                    revert with 0, 17
                                else:
                                    return 0
                            _5275 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5275 + 68] = mem[idx + _5088 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5275 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5275 + -mem[64] + 100
                        if arg1 * _reflectFee / stor32 and stor13 / totalSupply > -1 / arg1 * _reflectFee / stor32:
                            revert with 0, 17
                        if not arg1 * _reflectFee / stor32:
                            revert with 0, 18
                        if arg1 * _reflectFee / stor32 * stor13 / totalSupply / arg1 * _reflectFee / stor32 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 0 / stor32:
                            _4600 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4600] = 30
                            mem[_4600 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _reflectFee / stor32 * stor13 / totalSupply > 0:
                                _4684 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4684 + 68] = mem[idx + _4600 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4684 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _4684 + -mem[64] + 100
                            if 0 < arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                                revert with 0, 17
                            _5086 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5086] = 30
                            mem[_5086 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                                if -1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply < 0:
                                    revert with 0, 17
                                else:
                                    return 0
                            _5274 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5274 + 68] = mem[idx + _5086 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5274 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5274 + -mem[64] + 100
                        if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                            revert with 0, 17
                        if not 0 / stor32:
                            revert with 0, 18
                        if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _4906 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4906] = 30
                        mem[_4906 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _reflectFee / stor32 * stor13 / totalSupply > 0:
                            _5085 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5085 + 68] = mem[idx + _4906 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5085 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5085 + -mem[64] + 100
                        if 0 < arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        _5803 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5803] = 30
                        mem[_5803 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor32 * stor13 / totalSupply <= -1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                            if -1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply < 0 / stor32 * stor13 / totalSupply:
                                revert with 0, 17
                            else:
                                return 0
                        _6092 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6092 + 68] = mem[idx + _5803 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6092 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6092 + -mem[64] + 100
                    if arg1 and stor13 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _reflectFee / stor32:
                        if not 0 / stor32:
                            _4599 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4599] = 30
                            mem[_4599 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor13 / totalSupply:
                                _4683 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4683 + 68] = mem[idx + _4599 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4683 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _4683 + -mem[64] + 100
                            if arg1 * stor13 / totalSupply < 0:
                                revert with 0, 17
                            _5083 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5083] = 30
                            mem[_5083 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor13 / totalSupply:
                                if arg1 * stor13 / totalSupply < 0:
                                    revert with 0, 17
                                return (arg1 * stor13 / totalSupply)
                            _5273 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5273 + 68] = mem[idx + _5083 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5273 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5273 + -mem[64] + 100
                        if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                            revert with 0, 17
                        if not 0 / stor32:
                            revert with 0, 18
                        if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _4905 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4905] = 30
                        mem[_4905 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor13 / totalSupply:
                            _5082 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5082 + 68] = mem[idx + _4905 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5082 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5082 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        _5801 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5801] = 30
                        mem[_5801 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor32 * stor13 / totalSupply <= arg1 * stor13 / totalSupply:
                            if arg1 * stor13 / totalSupply < 0 / stor32 * stor13 / totalSupply:
                                revert with 0, 17
                            return (arg1 * stor13 / totalSupply)
                        _6090 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6090 + 68] = mem[idx + _5801 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6090 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6090 + -mem[64] + 100
                    if arg1 * _reflectFee / stor32 and stor13 / totalSupply > -1 / arg1 * _reflectFee / stor32:
                        revert with 0, 17
                    if not arg1 * _reflectFee / stor32:
                        revert with 0, 18
                    if arg1 * _reflectFee / stor32 * stor13 / totalSupply / arg1 * _reflectFee / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor32:
                        _4904 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4904] = 30
                        mem[_4904 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _reflectFee / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                            _5081 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5081 + 68] = mem[idx + _4904 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5081 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5081 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        _5799 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5799] = 30
                        mem[_5799 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply):
                            if (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply) < 0:
                                revert with 0, 17
                            return (arg1 * stor13 / totalSupply)
                        _6089 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6089 + 68] = mem[idx + _5799 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6089 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6089 + -mem[64] + 100
                    if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                        revert with 0, 17
                    if not 0 / stor32:
                        revert with 0, 18
                    if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _5503 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5503] = 30
                    mem[_5503 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _reflectFee / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        _5798 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5798 + 68] = mem[idx + _5503 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5798 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5798 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    _6667 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6667] = 30
                    mem[_6667 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor32 * stor13 / totalSupply <= (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply):
                        if (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply) < 0 / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        return (arg1 * stor13 / totalSupply)
                    _6954 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6954 + 68] = mem[idx + _6667 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6954 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6954 + -mem[64] + 100
                if idx >= stor6.length:
                    revert with 0, 50
                mem[0] = stor6[idx]
                mem[32] = 2
                if stor2[stor6[idx]] <= s:
                    if idx >= stor6.length:
                        revert with 0, 50
                    mem[0] = stor6[idx]
                    mem[32] = 1
                    _4131 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4131] = 30
                    mem[_4131 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor6[idx]] > t:
                        _4171 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4171 + 68] = mem[idx + _4131 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4171 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4171 + -mem[64] + 100
                    if t < stor1[stor6[idx]]:
                        revert with 0, 17
                    if idx >= stor6.length:
                        revert with 0, 50
                    mem[0] = stor6[idx]
                    mem[32] = 2
                    _4348 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4348] = 30
                    mem[_4348 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor6[idx]] <= s:
                        if s < stor2[stor6[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor2[stor6[idx]]
                        t = t - stor1[stor6[idx]]
                        continue 
                    _4372 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4372 + 68] = mem[idx + _4348 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4372 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4372 + -mem[64] + 100
                _4132 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4132] = 26
                mem[_4132 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _4172 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _4172 + 68] = mem[idx + _4132 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4172 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _4172 + -mem[64] + 100
                if not arg1:
                    if not arg1 * _reflectFee / stor32:
                        if not 0 / stor32:
                            return 0
                        if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                            revert with 0, 17
                        if not 0 / stor32:
                            revert with 0, 18
                        if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _4689 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4689] = 30
                        mem[_4689 + 32] = 'SafeMath: subtraction overflow'
                        _5283 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5283] = 30
                        mem[_5283 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor32 * stor13 / totalSupply <= 0:
                            if 0 < 0 / stor32 * stor13 / totalSupply:
                                revert with 0, 17
                            else:
                                return 0
                        _5507 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5507 + 68] = mem[idx + _5283 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5507 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5507 + -mem[64] + 100
                    if arg1 * _reflectFee / stor32 and stor13 / totalSupply > -1 / arg1 * _reflectFee / stor32:
                        revert with 0, 17
                    if not arg1 * _reflectFee / stor32:
                        revert with 0, 18
                    if arg1 * _reflectFee / stor32 * stor13 / totalSupply / arg1 * _reflectFee / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor32:
                        _4688 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4688] = 30
                        mem[_4688 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _reflectFee / stor32 * stor13 / totalSupply > 0:
                            _4764 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4764 + 68] = mem[idx + _4688 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4764 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4764 + -mem[64] + 100
                        if 0 < arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        _5281 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5281] = 30
                        mem[_5281 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                            if -1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply < 0:
                                revert with 0, 17
                            else:
                                return 0
                        _5506 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5506 + 68] = mem[idx + _5281 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5506 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5506 + -mem[64] + 100
                    if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                        revert with 0, 17
                    if not 0 / stor32:
                        revert with 0, 18
                    if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _5091 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5091] = 30
                    mem[_5091 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _reflectFee / stor32 * stor13 / totalSupply > 0:
                        _5280 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5280 + 68] = mem[idx + _5091 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5280 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5280 + -mem[64] + 100
                    if 0 < arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    _6100 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6100] = 30
                    mem[_6100 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor32 * stor13 / totalSupply <= -1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                        if -1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply < 0 / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        else:
                            return 0
                    _6348 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6348 + 68] = mem[idx + _6100 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6348 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6348 + -mem[64] + 100
                if arg1 and stor13 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _reflectFee / stor32:
                    if not 0 / stor32:
                        _4687 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4687] = 30
                        mem[_4687 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor13 / totalSupply:
                            _4763 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4763 + 68] = mem[idx + _4687 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4763 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4763 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        _5278 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5278] = 30
                        mem[_5278 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor13 / totalSupply:
                            if arg1 * stor13 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor13 / totalSupply)
                        _5505 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5505 + 68] = mem[idx + _5278 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5505 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5505 + -mem[64] + 100
                    if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                        revert with 0, 17
                    if not 0 / stor32:
                        revert with 0, 18
                    if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _5090 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5090] = 30
                    mem[_5090 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor13 / totalSupply:
                        _5277 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5277 + 68] = mem[idx + _5090 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5277 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5277 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                    _6098 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6098] = 30
                    mem[_6098 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor32 * stor13 / totalSupply <= arg1 * stor13 / totalSupply:
                        if arg1 * stor13 / totalSupply < 0 / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        return (arg1 * stor13 / totalSupply)
                    _6346 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6346 + 68] = mem[idx + _6098 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6346 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6346 + -mem[64] + 100
                if arg1 * _reflectFee / stor32 and stor13 / totalSupply > -1 / arg1 * _reflectFee / stor32:
                    revert with 0, 17
                if not arg1 * _reflectFee / stor32:
                    revert with 0, 18
                if arg1 * _reflectFee / stor32 * stor13 / totalSupply / arg1 * _reflectFee / stor32 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / stor32:
                    _5089 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5089] = 30
                    mem[_5089 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _reflectFee / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        _5276 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5276 + 68] = mem[idx + _5089 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5276 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5276 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    _6096 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6096] = 30
                    mem[_6096 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply):
                        if (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply) < 0:
                            revert with 0, 17
                        return (arg1 * stor13 / totalSupply)
                    _6345 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6345 + 68] = mem[idx + _6096 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6345 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6345 + -mem[64] + 100
                if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                    revert with 0, 17
                if not 0 / stor32:
                    revert with 0, 18
                if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _5806 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5806] = 30
                mem[_5806 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _reflectFee / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                    _6095 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6095 + 68] = mem[idx + _5806 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6095 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6095 + -mem[64] + 100
                if arg1 * stor13 / totalSupply < arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                    revert with 0, 17
                _6958 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6958] = 30
                mem[_6958 + 32] = 'SafeMath: subtraction overflow'
                if 0 / stor32 * stor13 / totalSupply <= (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply):
                    if (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply) < 0 / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    return (arg1 * stor13 / totalSupply)
                _7108 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _7108 + 68] = mem[idx + _6958 + 32]
                    idx = idx + 32
                    continue 
                mem[_7108 + 98] = 0
                revert with memory
                  from mem[64]
                   len _7108 + -mem[64] + 100
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor13 / totalSupply:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if not arg1 * _reflectFee / stor32:
                        if 0 / stor32:
                            if 0 / stor32 and t / s > -1 / 0 / stor32:
                                revert with 0, 17
                            if not 0 / stor32:
                                revert with 0, 18
                            if 0 / stor32 * t / s / 0 / stor32 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 / stor32 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < 0 / stor32 * t / s:
                                revert with 0, 17
                    else:
                        if arg1 * _reflectFee / stor32 and t / s > -1 / arg1 * _reflectFee / stor32:
                            revert with 0, 17
                        if not arg1 * _reflectFee / stor32:
                            revert with 0, 18
                        if arg1 * _reflectFee / stor32 * t / s / arg1 * _reflectFee / stor32 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 0 / stor32:
                            if arg1 * _reflectFee / stor32 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _reflectFee / stor32 * t / s:
                                revert with 0, 17
                            if 0 > -1 * arg1 * _reflectFee / stor32 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _reflectFee / stor32 * t / s < 0:
                                revert with 0, 17
                        else:
                            if 0 / stor32 and t / s > -1 / 0 / stor32:
                                revert with 0, 17
                            if not 0 / stor32:
                                revert with 0, 18
                            if 0 / stor32 * t / s / 0 / stor32 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * _reflectFee / stor32 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _reflectFee / stor32 * t / s:
                                revert with 0, 17
                            if 0 / stor32 * t / s > -1 * arg1 * _reflectFee / stor32 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _reflectFee / stor32 * t / s < 0 / stor32 * t / s:
                                revert with 0, 17
                    return 0
                if arg1 and t / s > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _reflectFee / stor32:
                    if not 0 / stor32:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                    else:
                        if 0 / stor32 and t / s > -1 / 0 / stor32:
                            revert with 0, 17
                        if not 0 / stor32:
                            revert with 0, 18
                        if 0 / stor32 * t / s / 0 / stor32 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if 0 / stor32 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0 / stor32 * t / s:
                            revert with 0, 17
                else:
                    if arg1 * _reflectFee / stor32 and t / s > -1 / arg1 * _reflectFee / stor32:
                        revert with 0, 17
                    if not arg1 * _reflectFee / stor32:
                        revert with 0, 18
                    if arg1 * _reflectFee / stor32 * t / s / arg1 * _reflectFee / stor32 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor32:
                        if arg1 * _reflectFee / stor32 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < arg1 * _reflectFee / stor32 * t / s:
                            revert with 0, 17
                        if 0 > (arg1 * t / s) - (arg1 * _reflectFee / stor32 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * t / s) - (arg1 * _reflectFee / stor32 * t / s) < 0:
                            revert with 0, 17
                    else:
                        if 0 / stor32 and t / s > -1 / 0 / stor32:
                            revert with 0, 17
                        if not 0 / stor32:
                            revert with 0, 18
                        if 0 / stor32 * t / s / 0 / stor32 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _reflectFee / stor32 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < arg1 * _reflectFee / stor32 * t / s:
                            revert with 0, 17
                        if 0 / stor32 * t / s > (arg1 * t / s) - (arg1 * _reflectFee / stor32 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * t / s) - (arg1 * _reflectFee / stor32 * t / s) < 0 / stor32 * t / s:
                            revert with 0, 17
                return (arg1 * t / s)
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                if not arg1 * _reflectFee / stor32:
                    if 0 / stor32:
                        if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                            revert with 0, 17
                        if not 0 / stor32:
                            revert with 0, 18
                        if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 / stor32 * stor13 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < 0 / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                else:
                    if arg1 * _reflectFee / stor32 and stor13 / totalSupply > -1 / arg1 * _reflectFee / stor32:
                        revert with 0, 17
                    if not arg1 * _reflectFee / stor32:
                        revert with 0, 18
                    if arg1 * _reflectFee / stor32 * stor13 / totalSupply / arg1 * _reflectFee / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor32:
                        if arg1 * _reflectFee / stor32 * stor13 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        if 0 > -1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply < 0:
                            revert with 0, 17
                    else:
                        if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                            revert with 0, 17
                        if not 0 / stor32:
                            revert with 0, 18
                        if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _reflectFee / stor32 * stor13 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        if 0 / stor32 * stor13 / totalSupply > -1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply < 0 / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                return 0
            if arg1 and stor13 / totalSupply > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _reflectFee / stor32:
                if not 0 / stor32:
                    if 0 > arg1 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                    if 0 > arg1 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                else:
                    if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                        revert with 0, 17
                    if not 0 / stor32:
                        revert with 0, 18
                    if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                    if 0 / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor13 / totalSupply < 0 / stor32 * stor13 / totalSupply:
                        revert with 0, 17
            else:
                if arg1 * _reflectFee / stor32 and stor13 / totalSupply > -1 / arg1 * _reflectFee / stor32:
                    revert with 0, 17
                if not arg1 * _reflectFee / stor32:
                    revert with 0, 18
                if arg1 * _reflectFee / stor32 * stor13 / totalSupply / arg1 * _reflectFee / stor32 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / stor32:
                    if arg1 * _reflectFee / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor13 / totalSupply < arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    if 0 > (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply) < 0:
                        revert with 0, 17
                else:
                    if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                        revert with 0, 17
                    if not 0 / stor32:
                        revert with 0, 18
                    if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _reflectFee / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor13 / totalSupply < arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    if 0 / stor32 * stor13 / totalSupply > (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply) < 0 / stor32 * stor13 / totalSupply:
                        revert with 0, 17
        else:
            if arg1 and _liquidityFee + _buyBackFee + _marketingFee + _devFee > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / arg1 != _liquidityFee + _buyBackFee + _marketingFee + _devFee:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            if not stor32:
                revert with 0, 'SafeMath: division by zero', 0
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if arg1 * _reflectFee / stor32 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * _reflectFee / stor32:
                revert with 0, 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 > arg1 - (arg1 * _reflectFee / stor32):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (arg1 * _reflectFee / stor32) < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                revert with 0, 17
            idx = 0
            s = totalSupply
            t = stor13
            while idx < stor6.length:
                mem[0] = stor6[idx]
                mem[32] = 1
                if stor1[stor6[idx]] > t:
                    _4087 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4087] = 26
                    mem[_4087 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _4127 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _4127 + 68] = mem[idx + _4087 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4127 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _4127 + -mem[64] + 100
                    if not arg1:
                        if not arg1 * _reflectFee / stor32:
                            if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                                return 0
                            if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                                revert with 0, 17
                            if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                                revert with 0, 18
                            if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != stor13 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _4592 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4592] = 30
                            mem[_4592 + 32] = 'SafeMath: subtraction overflow'
                            _5071 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5071] = 30
                            mem[_5071 + 32] = 'SafeMath: subtraction overflow'
                            if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply <= 0:
                                if 0 < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply:
                                    revert with 0, 17
                                else:
                                    return 0
                            _5259 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5259 + 68] = mem[idx + _5071 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5259 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5259 + -mem[64] + 100
                        if arg1 * _reflectFee / stor32 and stor13 / totalSupply > -1 / arg1 * _reflectFee / stor32:
                            revert with 0, 17
                        if not arg1 * _reflectFee / stor32:
                            revert with 0, 18
                        if arg1 * _reflectFee / stor32 * stor13 / totalSupply / arg1 * _reflectFee / stor32 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            _4591 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4591] = 30
                            mem[_4591 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _reflectFee / stor32 * stor13 / totalSupply > 0:
                                _4677 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4677 + 68] = mem[idx + _4591 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4677 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _4677 + -mem[64] + 100
                            if 0 < arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                                revert with 0, 17
                            _5069 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5069] = 30
                            mem[_5069 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                                if -1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply < 0:
                                    revert with 0, 17
                                else:
                                    return 0
                            _5258 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5258 + 68] = mem[idx + _5069 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5258 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5258 + -mem[64] + 100
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            revert with 0, 17
                        if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            revert with 0, 18
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _4893 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4893] = 30
                        mem[_4893 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _reflectFee / stor32 * stor13 / totalSupply > 0:
                            _5068 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5068 + 68] = mem[idx + _4893 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5068 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5068 + -mem[64] + 100
                        if 0 < arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        _5778 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5778] = 30
                        mem[_5778 + 32] = 'SafeMath: subtraction overflow'
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply <= -1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                            if -1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply:
                                revert with 0, 17
                            else:
                                return 0
                        _6070 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6070 + 68] = mem[idx + _5778 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6070 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6070 + -mem[64] + 100
                    if arg1 and stor13 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _reflectFee / stor32:
                        if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            _4590 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4590] = 30
                            mem[_4590 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor13 / totalSupply:
                                _4676 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4676 + 68] = mem[idx + _4590 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4676 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _4676 + -mem[64] + 100
                            if arg1 * stor13 / totalSupply < 0:
                                revert with 0, 17
                            _5066 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5066] = 30
                            mem[_5066 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor13 / totalSupply:
                                if arg1 * stor13 / totalSupply < 0:
                                    revert with 0, 17
                                return (arg1 * stor13 / totalSupply)
                            _5257 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5257 + 68] = mem[idx + _5066 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5257 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5257 + -mem[64] + 100
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            revert with 0, 17
                        if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            revert with 0, 18
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _4892 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4892] = 30
                        mem[_4892 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor13 / totalSupply:
                            _5065 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5065 + 68] = mem[idx + _4892 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5065 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5065 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        _5776 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5776] = 30
                        mem[_5776 + 32] = 'SafeMath: subtraction overflow'
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply <= arg1 * stor13 / totalSupply:
                            if arg1 * stor13 / totalSupply < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply:
                                revert with 0, 17
                            return (arg1 * stor13 / totalSupply)
                        _6068 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6068 + 68] = mem[idx + _5776 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6068 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6068 + -mem[64] + 100
                    if arg1 * _reflectFee / stor32 and stor13 / totalSupply > -1 / arg1 * _reflectFee / stor32:
                        revert with 0, 17
                    if not arg1 * _reflectFee / stor32:
                        revert with 0, 18
                    if arg1 * _reflectFee / stor32 * stor13 / totalSupply / arg1 * _reflectFee / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        _4891 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4891] = 30
                        mem[_4891 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _reflectFee / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                            _5064 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5064 + 68] = mem[idx + _4891 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5064 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5064 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        _5774 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5774] = 30
                        mem[_5774 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply):
                            if (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply) < 0:
                                revert with 0, 17
                            return (arg1 * stor13 / totalSupply)
                        _6067 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6067 + 68] = mem[idx + _5774 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6067 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6067 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _5492 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5492] = 30
                    mem[_5492 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _reflectFee / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        _5773 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5773 + 68] = mem[idx + _5492 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5773 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5773 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    _6646 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6646] = 30
                    mem[_6646 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply <= (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply):
                        if (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply) < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        return (arg1 * stor13 / totalSupply)
                    _6933 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6933 + 68] = mem[idx + _6646 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6933 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6933 + -mem[64] + 100
                if idx >= stor6.length:
                    revert with 0, 50
                mem[0] = stor6[idx]
                mem[32] = 2
                if stor2[stor6[idx]] <= s:
                    if idx >= stor6.length:
                        revert with 0, 50
                    mem[0] = stor6[idx]
                    mem[32] = 1
                    _4128 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4128] = 30
                    mem[_4128 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor6[idx]] > t:
                        _4168 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4168 + 68] = mem[idx + _4128 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4168 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4168 + -mem[64] + 100
                    if t < stor1[stor6[idx]]:
                        revert with 0, 17
                    if idx >= stor6.length:
                        revert with 0, 50
                    mem[0] = stor6[idx]
                    mem[32] = 2
                    _4345 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4345] = 30
                    mem[_4345 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor6[idx]] <= s:
                        if s < stor2[stor6[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor2[stor6[idx]]
                        t = t - stor1[stor6[idx]]
                        continue 
                    _4369 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4369 + 68] = mem[idx + _4345 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4369 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4369 + -mem[64] + 100
                _4129 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4129] = 26
                mem[_4129 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _4169 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _4169 + 68] = mem[idx + _4129 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4169 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _4169 + -mem[64] + 100
                if not arg1:
                    if not arg1 * _reflectFee / stor32:
                        if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            return 0
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            revert with 0, 17
                        if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            revert with 0, 18
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _4682 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4682] = 30
                        mem[_4682 + 32] = 'SafeMath: subtraction overflow'
                        _5267 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5267] = 30
                        mem[_5267 + 32] = 'SafeMath: subtraction overflow'
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply <= 0:
                            if 0 < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply:
                                revert with 0, 17
                            else:
                                return 0
                        _5496 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5496 + 68] = mem[idx + _5267 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5496 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5496 + -mem[64] + 100
                    if arg1 * _reflectFee / stor32 and stor13 / totalSupply > -1 / arg1 * _reflectFee / stor32:
                        revert with 0, 17
                    if not arg1 * _reflectFee / stor32:
                        revert with 0, 18
                    if arg1 * _reflectFee / stor32 * stor13 / totalSupply / arg1 * _reflectFee / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        _4681 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4681] = 30
                        mem[_4681 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _reflectFee / stor32 * stor13 / totalSupply > 0:
                            _4757 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4757 + 68] = mem[idx + _4681 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4757 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4757 + -mem[64] + 100
                        if 0 < arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        _5265 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5265] = 30
                        mem[_5265 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                            if -1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply < 0:
                                revert with 0, 17
                            else:
                                return 0
                        _5495 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5495 + 68] = mem[idx + _5265 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5495 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5495 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _5074 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5074] = 30
                    mem[_5074 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _reflectFee / stor32 * stor13 / totalSupply > 0:
                        _5264 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5264 + 68] = mem[idx + _5074 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5264 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5264 + -mem[64] + 100
                    if 0 < arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    _6078 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6078] = 30
                    mem[_6078 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply <= -1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                        if -1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        else:
                            return 0
                    _6340 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6340 + 68] = mem[idx + _6078 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6340 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6340 + -mem[64] + 100
                if arg1 and stor13 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _reflectFee / stor32:
                    if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        _4680 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4680] = 30
                        mem[_4680 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor13 / totalSupply:
                            _4756 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4756 + 68] = mem[idx + _4680 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4756 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4756 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        _5262 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5262] = 30
                        mem[_5262 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor13 / totalSupply:
                            if arg1 * stor13 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor13 / totalSupply)
                        _5494 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5494 + 68] = mem[idx + _5262 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5494 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5494 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _5073 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5073] = 30
                    mem[_5073 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor13 / totalSupply:
                        _5261 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5261 + 68] = mem[idx + _5073 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5261 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5261 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                    _6076 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6076] = 30
                    mem[_6076 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply <= arg1 * stor13 / totalSupply:
                        if arg1 * stor13 / totalSupply < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        return (arg1 * stor13 / totalSupply)
                    _6338 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6338 + 68] = mem[idx + _6076 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6338 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6338 + -mem[64] + 100
                if arg1 * _reflectFee / stor32 and stor13 / totalSupply > -1 / arg1 * _reflectFee / stor32:
                    revert with 0, 17
                if not arg1 * _reflectFee / stor32:
                    revert with 0, 18
                if arg1 * _reflectFee / stor32 * stor13 / totalSupply / arg1 * _reflectFee / stor32 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                    _5072 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5072] = 30
                    mem[_5072 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _reflectFee / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        _5260 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5260 + 68] = mem[idx + _5072 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5260 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5260 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    _6074 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6074] = 30
                    mem[_6074 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply):
                        if (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply) < 0:
                            revert with 0, 17
                        return (arg1 * stor13 / totalSupply)
                    _6337 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6337 + 68] = mem[idx + _6074 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6337 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6337 + -mem[64] + 100
                if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                    revert with 0, 17
                if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                    revert with 0, 18
                if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _5781 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5781] = 30
                mem[_5781 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _reflectFee / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                    _6073 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6073 + 68] = mem[idx + _5781 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6073 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6073 + -mem[64] + 100
                if arg1 * stor13 / totalSupply < arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                    revert with 0, 17
                _6937 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6937] = 30
                mem[_6937 + 32] = 'SafeMath: subtraction overflow'
                if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply <= (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply):
                    if (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply) < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    return (arg1 * stor13 / totalSupply)
                _7104 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _7104 + 68] = mem[idx + _6937 + 32]
                    idx = idx + 32
                    continue 
                mem[_7104 + 98] = 0
                revert with memory
                  from mem[64]
                   len _7104 + -mem[64] + 100
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor13 / totalSupply:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if not arg1 * _reflectFee / stor32:
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and t / s > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                                revert with 0, 17
                            if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                                revert with 0, 18
                            if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * t / s / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * t / s:
                                revert with 0, 17
                    else:
                        if arg1 * _reflectFee / stor32 and t / s > -1 / arg1 * _reflectFee / stor32:
                            revert with 0, 17
                        if not arg1 * _reflectFee / stor32:
                            revert with 0, 18
                        if arg1 * _reflectFee / stor32 * t / s / arg1 * _reflectFee / stor32 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            if arg1 * _reflectFee / stor32 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _reflectFee / stor32 * t / s:
                                revert with 0, 17
                            if 0 > -1 * arg1 * _reflectFee / stor32 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _reflectFee / stor32 * t / s < 0:
                                revert with 0, 17
                        else:
                            if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and t / s > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                                revert with 0, 17
                            if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                                revert with 0, 18
                            if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * t / s / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * _reflectFee / stor32 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _reflectFee / stor32 * t / s:
                                revert with 0, 17
                            if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * t / s > -1 * arg1 * _reflectFee / stor32 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _reflectFee / stor32 * t / s < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * t / s:
                                revert with 0, 17
                    return 0
                if arg1 and t / s > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _reflectFee / stor32:
                    if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                    else:
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and t / s > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            revert with 0, 17
                        if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            revert with 0, 18
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * t / s / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * t / s:
                            revert with 0, 17
                else:
                    if arg1 * _reflectFee / stor32 and t / s > -1 / arg1 * _reflectFee / stor32:
                        revert with 0, 17
                    if not arg1 * _reflectFee / stor32:
                        revert with 0, 18
                    if arg1 * _reflectFee / stor32 * t / s / arg1 * _reflectFee / stor32 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        if arg1 * _reflectFee / stor32 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < arg1 * _reflectFee / stor32 * t / s:
                            revert with 0, 17
                        if 0 > (arg1 * t / s) - (arg1 * _reflectFee / stor32 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * t / s) - (arg1 * _reflectFee / stor32 * t / s) < 0:
                            revert with 0, 17
                    else:
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and t / s > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            revert with 0, 17
                        if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            revert with 0, 18
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * t / s / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _reflectFee / stor32 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < arg1 * _reflectFee / stor32 * t / s:
                            revert with 0, 17
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * t / s > (arg1 * t / s) - (arg1 * _reflectFee / stor32 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * t / s) - (arg1 * _reflectFee / stor32 * t / s) < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * t / s:
                            revert with 0, 17
                return (arg1 * t / s)
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                if not arg1 * _reflectFee / stor32:
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            revert with 0, 17
                        if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            revert with 0, 18
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                else:
                    if arg1 * _reflectFee / stor32 and stor13 / totalSupply > -1 / arg1 * _reflectFee / stor32:
                        revert with 0, 17
                    if not arg1 * _reflectFee / stor32:
                        revert with 0, 18
                    if arg1 * _reflectFee / stor32 * stor13 / totalSupply / arg1 * _reflectFee / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        if arg1 * _reflectFee / stor32 * stor13 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        if 0 > -1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply < 0:
                            revert with 0, 17
                    else:
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            revert with 0, 17
                        if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            revert with 0, 18
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _reflectFee / stor32 * stor13 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply > -1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                return 0
            if arg1 and stor13 / totalSupply > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _reflectFee / stor32:
                if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                    if 0 > arg1 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                    if 0 > arg1 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                else:
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor13 / totalSupply < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply:
                        revert with 0, 17
            else:
                if arg1 * _reflectFee / stor32 and stor13 / totalSupply > -1 / arg1 * _reflectFee / stor32:
                    revert with 0, 17
                if not arg1 * _reflectFee / stor32:
                    revert with 0, 18
                if arg1 * _reflectFee / stor32 * stor13 / totalSupply / arg1 * _reflectFee / stor32 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                    if arg1 * _reflectFee / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor13 / totalSupply < arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    if 0 > (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply) < 0:
                        revert with 0, 17
                else:
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _reflectFee / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor13 / totalSupply < arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply > (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply) < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply:
                        revert with 0, 17
    return (arg1 * stor13 / totalSupply)
}



}
