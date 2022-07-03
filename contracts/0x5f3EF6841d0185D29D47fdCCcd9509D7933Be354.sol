contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
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

function deliver(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[0] = msg.sender
    mem[32] = 5
    if stor5[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Excluded addresses cannot call this function'
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
                    _3727 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3727] = 26
                    mem[_3727 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _3749 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _3749 + 68] = mem[idx + _3727 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3749 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _3749 + -mem[64] + 100
                    if not arg1:
                        if not 0 / stor32:
                            _3919 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3919] = 30
                            mem[_3919 + 32] = 'SafeMath: subtraction overflow'
                            _4030 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4030] = 30
                            mem[_4030 + 32] = 'SafeMath: subtraction overflow'
                            mem[0] = msg.sender
                            mem[32] = 1
                            _4450 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4450] = 30
                            mem[_4450 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor1[address(msg.sender)]:
                                _4617 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4617 + 68] = mem[idx + _4450 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4617 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _4617 + -mem[64] + 100
                            if stor1[address(msg.sender)] < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            _5114 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5114] = 30
                            mem[_5114 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor13:
                                if stor13 < 0:
                                    revert with 0, 17
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _5284 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5284 + 68] = mem[idx + _5114 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5284 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5284 + -mem[64] + 100
                        if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                            revert with 0, 17
                        if not 0 / stor32:
                            revert with 0, 18
                        if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 0 / stor32:
                            _3991 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3991] = 30
                            mem[_3991 + 32] = 'SafeMath: subtraction overflow'
                            if 0 / stor32 * stor13 / totalSupply > 0:
                                _4029 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4029 + 68] = mem[idx + _3991 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4029 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _4029 + -mem[64] + 100
                            if 0 < 0 / stor32 * stor13 / totalSupply:
                                revert with 0, 17
                            _4240 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4240] = 30
                            mem[_4240 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > -1 * 0 / stor32 * stor13 / totalSupply:
                                _4331 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4331 + 68] = mem[idx + _4240 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4331 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _4331 + -mem[64] + 100
                            if -1 * 0 / stor32 * stor13 / totalSupply < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            _4918 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4918] = 30
                            mem[_4918 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor1[address(msg.sender)]:
                                _5113 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _5113 + 68] = mem[idx + _4918 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5113 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _5113 + -mem[64] + 100
                            if stor1[address(msg.sender)] < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            _5655 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5655] = 30
                            mem[_5655 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor13:
                                if stor13 < 0:
                                    revert with 0, 17
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _5834 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5834 + 68] = mem[idx + _5655 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5834 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5834 + -mem[64] + 100
                        if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                            revert with 0, 17
                        if not 0 / stor32:
                            revert with 0, 18
                        if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _4146 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4146] = 30
                        mem[_4146 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor32 * stor13 / totalSupply > 0:
                            _4239 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4239 + 68] = mem[idx + _4146 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4239 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4239 + -mem[64] + 100
                        if 0 < 0 / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        _4615 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4615] = 30
                        mem[_4615 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor32 * stor13 / totalSupply > -1 * 0 / stor32 * stor13 / totalSupply:
                            _4757 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4757 + 68] = mem[idx + _4615 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4757 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4757 + -mem[64] + 100
                        if -1 * 0 / stor32 * stor13 / totalSupply < 0 / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _5450 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5450] = 30
                        mem[_5450 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor1[address(msg.sender)]:
                            _5654 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5654 + 68] = mem[idx + _5450 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5654 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5654 + -mem[64] + 100
                        if stor1[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _6207 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6207] = 30
                        mem[_6207 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor13:
                            if stor13 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _6383 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6383 + 68] = mem[idx + _6207 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6383 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6383 + -mem[64] + 100
                    if arg1 and stor13 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor32:
                        _3990 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3990] = 30
                        mem[_3990 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor13 / totalSupply:
                            _4028 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4028 + 68] = mem[idx + _3990 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4028 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4028 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        _4237 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4237] = 30
                        mem[_4237 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor13 / totalSupply:
                            _4330 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4330 + 68] = mem[idx + _4237 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4330 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4330 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _4917 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4917] = 30
                        mem[_4917 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor13 / totalSupply > stor1[address(msg.sender)]:
                            _5112 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5112 + 68] = mem[idx + _4917 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5112 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5112 + -mem[64] + 100
                        if stor1[address(msg.sender)] < arg1 * stor13 / totalSupply:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        stor1[address(msg.sender)] += -1 * arg1 * stor13 / totalSupply
                        _5652 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5652] = 30
                        mem[_5652 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor13 / totalSupply <= stor13:
                            if stor13 < arg1 * stor13 / totalSupply:
                                revert with 0, 17
                            stor13 += -1 * arg1 * stor13 / totalSupply
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _5833 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5833 + 68] = mem[idx + _5652 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5833 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5833 + -mem[64] + 100
                    if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                        revert with 0, 17
                    if not 0 / stor32:
                        revert with 0, 18
                    if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor32:
                        _4145 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4145] = 30
                        mem[_4145 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                            _4236 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4236 + 68] = mem[idx + _4145 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4236 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4236 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < 0 / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        _4613 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4613] = 30
                        mem[_4613 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > (arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply):
                            _4755 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4755 + 68] = mem[idx + _4613 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4755 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4755 + -mem[64] + 100
                        if (arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply) < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _5449 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5449] = 30
                        mem[_5449 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor13 / totalSupply > stor1[address(msg.sender)]:
                            _5651 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5651 + 68] = mem[idx + _5449 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5651 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5651 + -mem[64] + 100
                        if stor1[address(msg.sender)] < arg1 * stor13 / totalSupply:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        stor1[address(msg.sender)] += -1 * arg1 * stor13 / totalSupply
                        _6205 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6205] = 30
                        mem[_6205 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor13 / totalSupply <= stor13:
                            if stor13 < arg1 * stor13 / totalSupply:
                                revert with 0, 17
                            stor13 += -1 * arg1 * stor13 / totalSupply
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _6381 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6381 + 68] = mem[idx + _6205 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6381 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6381 + -mem[64] + 100
                    if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                        revert with 0, 17
                    if not 0 / stor32:
                        revert with 0, 18
                    if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _4449 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4449] = 30
                    mem[_4449 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        _4612 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4612 + 68] = mem[idx + _4449 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4612 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4612 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < 0 / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    _5110 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5110] = 30
                    mem[_5110 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor32 * stor13 / totalSupply > (arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply):
                        _5281 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5281 + 68] = mem[idx + _5110 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5281 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5281 + -mem[64] + 100
                    if (arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply) < 0 / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    _5987 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5987] = 30
                    mem[_5987 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor13 / totalSupply > stor1[address(msg.sender)]:
                        _6204 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6204 + 68] = mem[idx + _5987 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6204 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6204 + -mem[64] + 100
                    if stor1[address(msg.sender)] < arg1 * stor13 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    stor1[address(msg.sender)] += -1 * arg1 * stor13 / totalSupply
                    _6682 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6682] = 30
                    mem[_6682 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor13 / totalSupply <= stor13:
                        if stor13 < arg1 * stor13 / totalSupply:
                            revert with 0, 17
                        stor13 += -1 * arg1 * stor13 / totalSupply
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _6836 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6836 + 68] = mem[idx + _6682 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6836 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6836 + -mem[64] + 100
                if idx >= stor6.length:
                    revert with 0, 50
                mem[0] = stor6[idx]
                mem[32] = 2
                if stor2[stor6[idx]] <= s:
                    if idx >= stor6.length:
                        revert with 0, 50
                    mem[0] = stor6[idx]
                    mem[32] = 1
                    _3750 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3750] = 30
                    mem[_3750 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor6[idx]] > t:
                        _3770 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3770 + 68] = mem[idx + _3750 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3770 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3770 + -mem[64] + 100
                    if t < stor1[stor6[idx]]:
                        revert with 0, 17
                    if idx >= stor6.length:
                        revert with 0, 50
                    mem[0] = stor6[idx]
                    mem[32] = 2
                    _3859 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3859] = 30
                    mem[_3859 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor6[idx]] <= s:
                        if s < stor2[stor6[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor2[stor6[idx]]
                        t = t - stor1[stor6[idx]]
                        continue 
                    _3871 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3871 + 68] = mem[idx + _3859 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3871 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3871 + -mem[64] + 100
                _3751 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3751] = 26
                mem[_3751 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _3771 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _3771 + 68] = mem[idx + _3751 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3771 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _3771 + -mem[64] + 100
                if not arg1:
                    if not 0 / stor32:
                        _3939 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3939] = 30
                        mem[_3939 + 32] = 'SafeMath: subtraction overflow'
                        _4070 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4070] = 30
                        mem[_4070 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 1
                        _4619 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4619] = 30
                        mem[_4619 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor1[address(msg.sender)]:
                            _4764 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4764 + 68] = mem[idx + _4619 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4764 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4764 + -mem[64] + 100
                        if stor1[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _5289 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5289] = 30
                        mem[_5289 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor13:
                            if stor13 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _5454 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5454 + 68] = mem[idx + _5289 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5454 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5454 + -mem[64] + 100
                    if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                        revert with 0, 17
                    if not 0 / stor32:
                        revert with 0, 18
                    if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor32:
                        _4033 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4033] = 30
                        mem[_4033 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor32 * stor13 / totalSupply > 0:
                            _4069 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4069 + 68] = mem[idx + _4033 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4069 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4069 + -mem[64] + 100
                        if 0 < 0 / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        _4336 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4336] = 30
                        mem[_4336 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > -1 * 0 / stor32 * stor13 / totalSupply:
                            _4453 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4453 + 68] = mem[idx + _4336 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4453 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4453 + -mem[64] + 100
                        if -1 * 0 / stor32 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _5117 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5117] = 30
                        mem[_5117 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor1[address(msg.sender)]:
                            _5288 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5288 + 68] = mem[idx + _5117 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5288 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5288 + -mem[64] + 100
                        if stor1[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _5840 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5840] = 30
                        mem[_5840 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor13:
                            if stor13 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _5990 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5990 + 68] = mem[idx + _5840 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5990 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5990 + -mem[64] + 100
                    if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                        revert with 0, 17
                    if not 0 / stor32:
                        revert with 0, 18
                    if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _4243 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4243] = 30
                    mem[_4243 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor32 * stor13 / totalSupply > 0:
                        _4335 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4335 + 68] = mem[idx + _4243 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4335 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4335 + -mem[64] + 100
                    if 0 < 0 / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    _4762 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4762] = 30
                    mem[_4762 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor32 * stor13 / totalSupply > -1 * 0 / stor32 * stor13 / totalSupply:
                        _4921 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4921 + 68] = mem[idx + _4762 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4921 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4921 + -mem[64] + 100
                    if -1 * 0 / stor32 * stor13 / totalSupply < 0 / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    _5658 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5658] = 30
                    mem[_5658 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor1[address(msg.sender)]:
                        _5839 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5839 + 68] = mem[idx + _5658 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5839 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5839 + -mem[64] + 100
                    if stor1[address(msg.sender)] < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    _6388 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6388] = 30
                    mem[_6388 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor13:
                        if stor13 < 0:
                            revert with 0, 17
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _6505 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6505 + 68] = mem[idx + _6388 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6505 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6505 + -mem[64] + 100
                if arg1 and stor13 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / stor32:
                    _4032 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4032] = 30
                    mem[_4032 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor13 / totalSupply:
                        _4068 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4068 + 68] = mem[idx + _4032 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4068 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4068 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                    _4333 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4333] = 30
                    mem[_4333 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor13 / totalSupply:
                        _4452 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4452 + 68] = mem[idx + _4333 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4452 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4452 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    _5116 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5116] = 30
                    mem[_5116 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor13 / totalSupply > stor1[address(msg.sender)]:
                        _5287 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5287 + 68] = mem[idx + _5116 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5287 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5287 + -mem[64] + 100
                    if stor1[address(msg.sender)] < arg1 * stor13 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    stor1[address(msg.sender)] += -1 * arg1 * stor13 / totalSupply
                    _5837 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5837] = 30
                    mem[_5837 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor13 / totalSupply <= stor13:
                        if stor13 < arg1 * stor13 / totalSupply:
                            revert with 0, 17
                        stor13 += -1 * arg1 * stor13 / totalSupply
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _5989 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _5989 + 68] = mem[idx + _5837 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5989 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _5989 + -mem[64] + 100
                if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                    revert with 0, 17
                if not 0 / stor32:
                    revert with 0, 18
                if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / stor32:
                    _4242 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4242] = 30
                    mem[_4242 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        _4332 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4332 + 68] = mem[idx + _4242 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4332 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4332 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < 0 / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    _4760 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4760] = 30
                    mem[_4760 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply):
                        _4919 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4919 + 68] = mem[idx + _4760 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4919 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4919 + -mem[64] + 100
                    if (arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply) < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    _5657 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5657] = 30
                    mem[_5657 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor13 / totalSupply > stor1[address(msg.sender)]:
                        _5836 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5836 + 68] = mem[idx + _5657 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5836 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5836 + -mem[64] + 100
                    if stor1[address(msg.sender)] < arg1 * stor13 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    stor1[address(msg.sender)] += -1 * arg1 * stor13 / totalSupply
                    _6386 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6386] = 30
                    mem[_6386 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor13 / totalSupply <= stor13:
                        if stor13 < arg1 * stor13 / totalSupply:
                            revert with 0, 17
                        stor13 += -1 * arg1 * stor13 / totalSupply
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _6503 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6503 + 68] = mem[idx + _6386 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6503 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6503 + -mem[64] + 100
                if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                    revert with 0, 17
                if not 0 / stor32:
                    revert with 0, 18
                if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _4618 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4618] = 30
                mem[_4618 + 32] = 'SafeMath: subtraction overflow'
                if 0 / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                    _4759 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4759 + 68] = mem[idx + _4618 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4759 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4759 + -mem[64] + 100
                if arg1 * stor13 / totalSupply < 0 / stor32 * stor13 / totalSupply:
                    revert with 0, 17
                _5285 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5285] = 30
                mem[_5285 + 32] = 'SafeMath: subtraction overflow'
                if 0 / stor32 * stor13 / totalSupply > (arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply):
                    _5451 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _5451 + 68] = mem[idx + _5285 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5451 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _5451 + -mem[64] + 100
                if (arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply) < 0 / stor32 * stor13 / totalSupply:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 1
                _6210 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6210] = 30
                mem[_6210 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor13 / totalSupply > stor1[address(msg.sender)]:
                    _6385 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6385 + 68] = mem[idx + _6210 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6385 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6385 + -mem[64] + 100
                if stor1[address(msg.sender)] < arg1 * stor13 / totalSupply:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 1
                stor1[address(msg.sender)] += -1 * arg1 * stor13 / totalSupply
                _6839 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6839] = 30
                mem[_6839 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor13 / totalSupply <= stor13:
                    if stor13 < arg1 * stor13 / totalSupply:
                        revert with 0, 17
                    stor13 += -1 * arg1 * stor13 / totalSupply
                    if totalFees > !arg1:
                        revert with 0, 17
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _6911 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _6911 + 68] = mem[idx + _6839 + 32]
                    idx = idx + 32
                    continue 
                mem[_6911 + 98] = 0
                revert with memory
                  from mem[64]
                   len _6911 + -mem[64] + 100
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
                    if 0 > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor1[address(msg.sender)] < 0:
                        revert with 0, 17
                    if 0 > stor13:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor13 < 0:
                        revert with 0, 17
                else:
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
                    if arg1 * t / s > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor1[address(msg.sender)] < arg1 * t / s:
                        revert with 0, 17
                    stor1[address(msg.sender)] += -1 * arg1 * t / s
                    if arg1 * t / s > stor13:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor13 < arg1 * t / s:
                        revert with 0, 17
                    stor13 += -1 * arg1 * t / s
            else:
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
                    if 0 > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor1[address(msg.sender)] < 0:
                        revert with 0, 17
                    if 0 > stor13:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor13 < 0:
                        revert with 0, 17
                else:
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
                    if arg1 * stor13 / totalSupply > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor1[address(msg.sender)] < arg1 * stor13 / totalSupply:
                        revert with 0, 17
                    stor1[address(msg.sender)] += -1 * arg1 * stor13 / totalSupply
                    if arg1 * stor13 / totalSupply > stor13:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor13 < arg1 * stor13 / totalSupply:
                        revert with 0, 17
                    stor13 += -1 * arg1 * stor13 / totalSupply
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
                    _3726 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3726] = 26
                    mem[_3726 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _3746 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _3746 + 68] = mem[idx + _3726 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3746 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _3746 + -mem[64] + 100
                    if not arg1:
                        if not 0 / stor32:
                            if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                                _3917 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3917] = 30
                                mem[_3917 + 32] = 'SafeMath: subtraction overflow'
                                _4023 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4023] = 30
                                mem[_4023 + 32] = 'SafeMath: subtraction overflow'
                                mem[0] = msg.sender
                                mem[32] = 1
                                _4440 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4440] = 30
                                mem[_4440 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > stor1[address(msg.sender)]:
                                    _4597 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _4597 + 68] = mem[idx + _4440 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4597 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4597 + -mem[64] + 100
                                if stor1[address(msg.sender)] < 0:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 1
                                _5093 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5093] = 30
                                mem[_5093 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor13:
                                    if stor13 < 0:
                                        revert with 0, 17
                                    if totalFees > !arg1:
                                        revert with 0, 17
                                    if totalFees + arg1 < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees += arg1
                                _5265 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _5265 + 68] = mem[idx + _5093 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5265 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _5265 + -mem[64] + 100
                            if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                                revert with 0, 17
                            if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                                revert with 0, 18
                            if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != stor13 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _3983 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3983] = 30
                            mem[_3983 + 32] = 'SafeMath: subtraction overflow'
                            _4226 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4226] = 30
                            mem[_4226 + 32] = 'SafeMath: subtraction overflow'
                            if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply > 0:
                                _4318 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4318 + 68] = mem[idx + _4226 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4318 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _4318 + -mem[64] + 100
                            if 0 < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            _4906 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4906] = 30
                            mem[_4906 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor1[address(msg.sender)]:
                                _5092 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _5092 + 68] = mem[idx + _4906 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5092 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _5092 + -mem[64] + 100
                            if stor1[address(msg.sender)] < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            _5634 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5634] = 30
                            mem[_5634 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor13:
                                if stor13 < 0:
                                    revert with 0, 17
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _5813 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5813 + 68] = mem[idx + _5634 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5813 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5813 + -mem[64] + 100
                        if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                            revert with 0, 17
                        if not 0 / stor32:
                            revert with 0, 18
                        if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            _3982 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3982] = 30
                            mem[_3982 + 32] = 'SafeMath: subtraction overflow'
                            if 0 / stor32 * stor13 / totalSupply > 0:
                                _4022 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4022 + 68] = mem[idx + _3982 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4022 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _4022 + -mem[64] + 100
                            if 0 < 0 / stor32 * stor13 / totalSupply:
                                revert with 0, 17
                            _4224 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4224] = 30
                            mem[_4224 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > -1 * 0 / stor32 * stor13 / totalSupply:
                                _4317 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4317 + 68] = mem[idx + _4224 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4317 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _4317 + -mem[64] + 100
                            if -1 * 0 / stor32 * stor13 / totalSupply < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            _4905 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4905] = 30
                            mem[_4905 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor1[address(msg.sender)]:
                                _5091 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _5091 + 68] = mem[idx + _4905 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5091 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _5091 + -mem[64] + 100
                            if stor1[address(msg.sender)] < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            _5632 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5632] = 30
                            mem[_5632 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor13:
                                if stor13 < 0:
                                    revert with 0, 17
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _5812 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5812 + 68] = mem[idx + _5632 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5812 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5812 + -mem[64] + 100
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            revert with 0, 17
                        if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            revert with 0, 18
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _4136 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4136] = 30
                        mem[_4136 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor32 * stor13 / totalSupply > 0:
                            _4223 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4223 + 68] = mem[idx + _4136 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4223 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4223 + -mem[64] + 100
                        if 0 < 0 / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        _4595 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4595] = 30
                        mem[_4595 + 32] = 'SafeMath: subtraction overflow'
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply > -1 * 0 / stor32 * stor13 / totalSupply:
                            _4738 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4738 + 68] = mem[idx + _4595 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4738 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4738 + -mem[64] + 100
                        if -1 * 0 / stor32 * stor13 / totalSupply < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _5439 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5439] = 30
                        mem[_5439 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor1[address(msg.sender)]:
                            _5631 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5631 + 68] = mem[idx + _5439 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5631 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5631 + -mem[64] + 100
                        if stor1[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _6188 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6188] = 30
                        mem[_6188 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor13:
                            if stor13 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _6362 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6362 + 68] = mem[idx + _6188 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6362 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6362 + -mem[64] + 100
                    if arg1 and stor13 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor32:
                        if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            _3981 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3981] = 30
                            mem[_3981 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor13 / totalSupply:
                                _4021 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4021 + 68] = mem[idx + _3981 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4021 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _4021 + -mem[64] + 100
                            if arg1 * stor13 / totalSupply < 0:
                                revert with 0, 17
                            _4221 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4221] = 30
                            mem[_4221 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor13 / totalSupply:
                                _4316 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4316 + 68] = mem[idx + _4221 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4316 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _4316 + -mem[64] + 100
                            if arg1 * stor13 / totalSupply < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            _4904 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4904] = 30
                            mem[_4904 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor13 / totalSupply > stor1[address(msg.sender)]:
                                _5090 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _5090 + 68] = mem[idx + _4904 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5090 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _5090 + -mem[64] + 100
                            if stor1[address(msg.sender)] < arg1 * stor13 / totalSupply:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            stor1[address(msg.sender)] += -1 * arg1 * stor13 / totalSupply
                            _5629 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5629] = 30
                            mem[_5629 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor13 / totalSupply <= stor13:
                                if stor13 < arg1 * stor13 / totalSupply:
                                    revert with 0, 17
                                stor13 += -1 * arg1 * stor13 / totalSupply
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _5811 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5811 + 68] = mem[idx + _5629 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5811 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5811 + -mem[64] + 100
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            revert with 0, 17
                        if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            revert with 0, 18
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _4135 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4135] = 30
                        mem[_4135 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor13 / totalSupply:
                            _4220 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4220 + 68] = mem[idx + _4135 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4220 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4220 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        _4593 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4593] = 30
                        mem[_4593 + 32] = 'SafeMath: subtraction overflow'
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                            _4736 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4736 + 68] = mem[idx + _4593 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4736 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4736 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _5438 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5438] = 30
                        mem[_5438 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor13 / totalSupply > stor1[address(msg.sender)]:
                            _5628 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5628 + 68] = mem[idx + _5438 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5628 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5628 + -mem[64] + 100
                        if stor1[address(msg.sender)] < arg1 * stor13 / totalSupply:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        stor1[address(msg.sender)] += -1 * arg1 * stor13 / totalSupply
                        _6186 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6186] = 30
                        mem[_6186 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor13 / totalSupply <= stor13:
                            if stor13 < arg1 * stor13 / totalSupply:
                                revert with 0, 17
                            stor13 += -1 * arg1 * stor13 / totalSupply
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _6360 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6360 + 68] = mem[idx + _6186 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6360 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6360 + -mem[64] + 100
                    if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                        revert with 0, 17
                    if not 0 / stor32:
                        revert with 0, 18
                    if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        _4134 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4134] = 30
                        mem[_4134 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                            _4219 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4219 + 68] = mem[idx + _4134 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4219 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4219 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < 0 / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        _4591 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4591] = 30
                        mem[_4591 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > (arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply):
                            _4735 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4735 + 68] = mem[idx + _4591 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4735 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4735 + -mem[64] + 100
                        if (arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply) < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _5437 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5437] = 30
                        mem[_5437 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor13 / totalSupply > stor1[address(msg.sender)]:
                            _5627 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5627 + 68] = mem[idx + _5437 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5627 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5627 + -mem[64] + 100
                        if stor1[address(msg.sender)] < arg1 * stor13 / totalSupply:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        stor1[address(msg.sender)] += -1 * arg1 * stor13 / totalSupply
                        _6184 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6184] = 30
                        mem[_6184 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor13 / totalSupply <= stor13:
                            if stor13 < arg1 * stor13 / totalSupply:
                                revert with 0, 17
                            stor13 += -1 * arg1 * stor13 / totalSupply
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _6359 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6359 + 68] = mem[idx + _6184 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6359 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6359 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _4439 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4439] = 30
                    mem[_4439 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        _4590 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4590 + 68] = mem[idx + _4439 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4590 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4590 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < 0 / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    _5088 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5088] = 30
                    mem[_5088 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply > (arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply):
                        _5261 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5261 + 68] = mem[idx + _5088 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5261 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5261 + -mem[64] + 100
                    if (arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply) < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    _5977 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5977] = 30
                    mem[_5977 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor13 / totalSupply > stor1[address(msg.sender)]:
                        _6183 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6183 + 68] = mem[idx + _5977 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6183 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6183 + -mem[64] + 100
                    if stor1[address(msg.sender)] < arg1 * stor13 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    stor1[address(msg.sender)] += -1 * arg1 * stor13 / totalSupply
                    _6665 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6665] = 30
                    mem[_6665 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor13 / totalSupply <= stor13:
                        if stor13 < arg1 * stor13 / totalSupply:
                            revert with 0, 17
                        stor13 += -1 * arg1 * stor13 / totalSupply
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _6819 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6819 + 68] = mem[idx + _6665 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6819 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6819 + -mem[64] + 100
                if idx >= stor6.length:
                    revert with 0, 50
                mem[0] = stor6[idx]
                mem[32] = 2
                if stor2[stor6[idx]] <= s:
                    if idx >= stor6.length:
                        revert with 0, 50
                    mem[0] = stor6[idx]
                    mem[32] = 1
                    _3747 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3747] = 30
                    mem[_3747 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor6[idx]] > t:
                        _3767 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3767 + 68] = mem[idx + _3747 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3767 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3767 + -mem[64] + 100
                    if t < stor1[stor6[idx]]:
                        revert with 0, 17
                    if idx >= stor6.length:
                        revert with 0, 50
                    mem[0] = stor6[idx]
                    mem[32] = 2
                    _3856 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3856] = 30
                    mem[_3856 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor6[idx]] <= s:
                        if s < stor2[stor6[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor2[stor6[idx]]
                        t = t - stor1[stor6[idx]]
                        continue 
                    _3868 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3868 + 68] = mem[idx + _3856 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3868 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3868 + -mem[64] + 100
                _3748 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3748] = 26
                mem[_3748 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _3768 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _3768 + 68] = mem[idx + _3748 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3768 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _3768 + -mem[64] + 100
                if not arg1:
                    if not 0 / stor32:
                        if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            _3935 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3935] = 30
                            mem[_3935 + 32] = 'SafeMath: subtraction overflow'
                            _4066 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4066] = 30
                            mem[_4066 + 32] = 'SafeMath: subtraction overflow'
                            mem[0] = msg.sender
                            mem[32] = 1
                            _4599 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4599] = 30
                            mem[_4599 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor1[address(msg.sender)]:
                                _4748 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4748 + 68] = mem[idx + _4599 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4748 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _4748 + -mem[64] + 100
                            if stor1[address(msg.sender)] < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            _5271 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5271] = 30
                            mem[_5271 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor13:
                                if stor13 < 0:
                                    revert with 0, 17
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _5444 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5444 + 68] = mem[idx + _5271 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5444 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5444 + -mem[64] + 100
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            revert with 0, 17
                        if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            revert with 0, 18
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _4027 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4027] = 30
                        mem[_4027 + 32] = 'SafeMath: subtraction overflow'
                        _4326 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4326] = 30
                        mem[_4326 + 32] = 'SafeMath: subtraction overflow'
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply > 0:
                            _4444 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4444 + 68] = mem[idx + _4326 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4444 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4444 + -mem[64] + 100
                        if 0 < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _5097 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5097] = 30
                        mem[_5097 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor1[address(msg.sender)]:
                            _5270 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5270 + 68] = mem[idx + _5097 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5270 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5270 + -mem[64] + 100
                        if stor1[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _5822 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5822] = 30
                        mem[_5822 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor13:
                            if stor13 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _5981 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5981 + 68] = mem[idx + _5822 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5981 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5981 + -mem[64] + 100
                    if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                        revert with 0, 17
                    if not 0 / stor32:
                        revert with 0, 18
                    if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        _4026 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4026] = 30
                        mem[_4026 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor32 * stor13 / totalSupply > 0:
                            _4065 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4065 + 68] = mem[idx + _4026 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4065 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4065 + -mem[64] + 100
                        if 0 < 0 / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        _4324 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4324] = 30
                        mem[_4324 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > -1 * 0 / stor32 * stor13 / totalSupply:
                            _4443 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4443 + 68] = mem[idx + _4324 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4443 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4443 + -mem[64] + 100
                        if -1 * 0 / stor32 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _5096 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5096] = 30
                        mem[_5096 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor1[address(msg.sender)]:
                            _5269 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5269 + 68] = mem[idx + _5096 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5269 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5269 + -mem[64] + 100
                        if stor1[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _5820 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5820] = 30
                        mem[_5820 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor13:
                            if stor13 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _5980 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5980 + 68] = mem[idx + _5820 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5980 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5980 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _4229 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4229] = 30
                    mem[_4229 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor32 * stor13 / totalSupply > 0:
                        _4323 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4323 + 68] = mem[idx + _4229 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4323 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4323 + -mem[64] + 100
                    if 0 < 0 / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    _4746 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4746] = 30
                    mem[_4746 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply > -1 * 0 / stor32 * stor13 / totalSupply:
                        _4910 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4910 + 68] = mem[idx + _4746 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4910 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4910 + -mem[64] + 100
                    if -1 * 0 / stor32 * stor13 / totalSupply < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    _5638 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5638] = 30
                    mem[_5638 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor1[address(msg.sender)]:
                        _5819 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5819 + 68] = mem[idx + _5638 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5819 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5819 + -mem[64] + 100
                    if stor1[address(msg.sender)] < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    _6370 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6370] = 30
                    mem[_6370 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor13:
                        if stor13 < 0:
                            revert with 0, 17
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _6498 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6498 + 68] = mem[idx + _6370 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6498 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6498 + -mem[64] + 100
                if arg1 and stor13 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / stor32:
                    if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        _4025 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4025] = 30
                        mem[_4025 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor13 / totalSupply:
                            _4064 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4064 + 68] = mem[idx + _4025 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4064 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4064 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        _4321 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4321] = 30
                        mem[_4321 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor13 / totalSupply:
                            _4442 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4442 + 68] = mem[idx + _4321 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4442 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4442 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _5095 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5095] = 30
                        mem[_5095 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor13 / totalSupply > stor1[address(msg.sender)]:
                            _5268 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5268 + 68] = mem[idx + _5095 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5268 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5268 + -mem[64] + 100
                        if stor1[address(msg.sender)] < arg1 * stor13 / totalSupply:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        stor1[address(msg.sender)] += -1 * arg1 * stor13 / totalSupply
                        _5817 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5817] = 30
                        mem[_5817 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor13 / totalSupply <= stor13:
                            if stor13 < arg1 * stor13 / totalSupply:
                                revert with 0, 17
                            stor13 += -1 * arg1 * stor13 / totalSupply
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _5979 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5979 + 68] = mem[idx + _5817 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5979 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5979 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _4228 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4228] = 30
                    mem[_4228 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor13 / totalSupply:
                        _4320 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4320 + 68] = mem[idx + _4228 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4320 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4320 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                    _4744 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4744] = 30
                    mem[_4744 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        _4908 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4908 + 68] = mem[idx + _4744 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4908 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4908 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    _5637 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5637] = 30
                    mem[_5637 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor13 / totalSupply > stor1[address(msg.sender)]:
                        _5816 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5816 + 68] = mem[idx + _5637 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5816 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5816 + -mem[64] + 100
                    if stor1[address(msg.sender)] < arg1 * stor13 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    stor1[address(msg.sender)] += -1 * arg1 * stor13 / totalSupply
                    _6368 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6368] = 30
                    mem[_6368 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor13 / totalSupply <= stor13:
                        if stor13 < arg1 * stor13 / totalSupply:
                            revert with 0, 17
                        stor13 += -1 * arg1 * stor13 / totalSupply
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _6496 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6496 + 68] = mem[idx + _6368 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6496 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6496 + -mem[64] + 100
                if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                    revert with 0, 17
                if not 0 / stor32:
                    revert with 0, 18
                if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                    _4227 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4227] = 30
                    mem[_4227 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        _4319 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4319 + 68] = mem[idx + _4227 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4319 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4319 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < 0 / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    _4742 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4742] = 30
                    mem[_4742 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply):
                        _4907 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4907 + 68] = mem[idx + _4742 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4907 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4907 + -mem[64] + 100
                    if (arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply) < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    _5636 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5636] = 30
                    mem[_5636 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor13 / totalSupply > stor1[address(msg.sender)]:
                        _5815 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5815 + 68] = mem[idx + _5636 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5815 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5815 + -mem[64] + 100
                    if stor1[address(msg.sender)] < arg1 * stor13 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    stor1[address(msg.sender)] += -1 * arg1 * stor13 / totalSupply
                    _6366 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6366] = 30
                    mem[_6366 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor13 / totalSupply <= stor13:
                        if stor13 < arg1 * stor13 / totalSupply:
                            revert with 0, 17
                        stor13 += -1 * arg1 * stor13 / totalSupply
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _6495 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6495 + 68] = mem[idx + _6366 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6495 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6495 + -mem[64] + 100
                if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                    revert with 0, 17
                if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                    revert with 0, 18
                if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _4598 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4598] = 30
                mem[_4598 + 32] = 'SafeMath: subtraction overflow'
                if 0 / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                    _4741 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4741 + 68] = mem[idx + _4598 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4741 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4741 + -mem[64] + 100
                if arg1 * stor13 / totalSupply < 0 / stor32 * stor13 / totalSupply:
                    revert with 0, 17
                _5266 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5266] = 30
                mem[_5266 + 32] = 'SafeMath: subtraction overflow'
                if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply > (arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply):
                    _5440 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _5440 + 68] = mem[idx + _5266 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5440 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _5440 + -mem[64] + 100
                if (arg1 * stor13 / totalSupply) - (0 / stor32 * stor13 / totalSupply) < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 1
                _6191 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6191] = 30
                mem[_6191 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor13 / totalSupply > stor1[address(msg.sender)]:
                    _6365 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6365 + 68] = mem[idx + _6191 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6365 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6365 + -mem[64] + 100
                if stor1[address(msg.sender)] < arg1 * stor13 / totalSupply:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 1
                stor1[address(msg.sender)] += -1 * arg1 * stor13 / totalSupply
                _6823 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6823] = 30
                mem[_6823 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor13 / totalSupply <= stor13:
                    if stor13 < arg1 * stor13 / totalSupply:
                        revert with 0, 17
                    stor13 += -1 * arg1 * stor13 / totalSupply
                    if totalFees > !arg1:
                        revert with 0, 17
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _6907 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _6907 + 68] = mem[idx + _6823 + 32]
                    idx = idx + 32
                    continue 
                mem[_6907 + 98] = 0
                revert with memory
                  from mem[64]
                   len _6907 + -mem[64] + 100
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
                    if 0 > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor1[address(msg.sender)] < 0:
                        revert with 0, 17
                    if 0 > stor13:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor13 < 0:
                        revert with 0, 17
                else:
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
                    if arg1 * t / s > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor1[address(msg.sender)] < arg1 * t / s:
                        revert with 0, 17
                    stor1[address(msg.sender)] += -1 * arg1 * t / s
                    if arg1 * t / s > stor13:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor13 < arg1 * t / s:
                        revert with 0, 17
                    stor13 += -1 * arg1 * t / s
            else:
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
                    if 0 > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor1[address(msg.sender)] < 0:
                        revert with 0, 17
                    if 0 > stor13:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor13 < 0:
                        revert with 0, 17
                else:
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
                    if arg1 * stor13 / totalSupply > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor1[address(msg.sender)] < arg1 * stor13 / totalSupply:
                        revert with 0, 17
                    stor1[address(msg.sender)] += -1 * arg1 * stor13 / totalSupply
                    if arg1 * stor13 / totalSupply > stor13:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor13 < arg1 * stor13 / totalSupply:
                        revert with 0, 17
                    stor13 += -1 * arg1 * stor13 / totalSupply
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
                    _3725 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3725] = 26
                    mem[_3725 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _3743 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _3743 + 68] = mem[idx + _3725 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3743 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _3743 + -mem[64] + 100
                    if not arg1:
                        if not arg1 * _reflectFee / stor32:
                            if not 0 / stor32:
                                _3915 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3915] = 30
                                mem[_3915 + 32] = 'SafeMath: subtraction overflow'
                                _4016 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4016] = 30
                                mem[_4016 + 32] = 'SafeMath: subtraction overflow'
                                mem[0] = msg.sender
                                mem[32] = 1
                                _4428 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4428] = 30
                                mem[_4428 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > stor1[address(msg.sender)]:
                                    _4571 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _4571 + 68] = mem[idx + _4428 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4571 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4571 + -mem[64] + 100
                                if stor1[address(msg.sender)] < 0:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 1
                                _5067 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5067] = 30
                                mem[_5067 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor13:
                                    if stor13 < 0:
                                        revert with 0, 17
                                    if totalFees > !arg1:
                                        revert with 0, 17
                                    if totalFees + arg1 < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees += arg1
                                _5241 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _5241 + 68] = mem[idx + _5067 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5241 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _5241 + -mem[64] + 100
                            if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                                revert with 0, 17
                            if not 0 / stor32:
                                revert with 0, 18
                            if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _3974 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3974] = 30
                            mem[_3974 + 32] = 'SafeMath: subtraction overflow'
                            _4209 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4209] = 30
                            mem[_4209 + 32] = 'SafeMath: subtraction overflow'
                            if 0 / stor32 * stor13 / totalSupply > 0:
                                _4302 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4302 + 68] = mem[idx + _4209 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4302 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _4302 + -mem[64] + 100
                            if 0 < 0 / stor32 * stor13 / totalSupply:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            _4893 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4893] = 30
                            mem[_4893 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor1[address(msg.sender)]:
                                _5066 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _5066 + 68] = mem[idx + _4893 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5066 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _5066 + -mem[64] + 100
                            if stor1[address(msg.sender)] < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            _5608 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5608] = 30
                            mem[_5608 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor13:
                                if stor13 < 0:
                                    revert with 0, 17
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _5789 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5789 + 68] = mem[idx + _5608 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5789 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5789 + -mem[64] + 100
                        if arg1 * _reflectFee / stor32 and stor13 / totalSupply > -1 / arg1 * _reflectFee / stor32:
                            revert with 0, 17
                        if not arg1 * _reflectFee / stor32:
                            revert with 0, 18
                        if arg1 * _reflectFee / stor32 * stor13 / totalSupply / arg1 * _reflectFee / stor32 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 0 / stor32:
                            _3973 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3973] = 30
                            mem[_3973 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _reflectFee / stor32 * stor13 / totalSupply > 0:
                                _4015 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4015 + 68] = mem[idx + _3973 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4015 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _4015 + -mem[64] + 100
                            if 0 < arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                                revert with 0, 17
                            _4207 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4207] = 30
                            mem[_4207 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > -1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                                _4301 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4301 + 68] = mem[idx + _4207 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4301 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _4301 + -mem[64] + 100
                            if -1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            _4892 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4892] = 30
                            mem[_4892 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor1[address(msg.sender)]:
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
                            if stor1[address(msg.sender)] < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            _5606 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5606] = 30
                            mem[_5606 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor13:
                                if stor13 < 0:
                                    revert with 0, 17
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _5788 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5788 + 68] = mem[idx + _5606 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5788 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5788 + -mem[64] + 100
                        if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                            revert with 0, 17
                        if not 0 / stor32:
                            revert with 0, 18
                        if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _4123 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4123] = 30
                        mem[_4123 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _reflectFee / stor32 * stor13 / totalSupply > 0:
                            _4206 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4206 + 68] = mem[idx + _4123 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4206 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4206 + -mem[64] + 100
                        if 0 < arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        _4569 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4569] = 30
                        mem[_4569 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor32 * stor13 / totalSupply > -1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                            _4716 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4716 + 68] = mem[idx + _4569 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4716 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4716 + -mem[64] + 100
                        if -1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply < 0 / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _5425 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5425] = 30
                        mem[_5425 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor1[address(msg.sender)]:
                            _5605 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5605 + 68] = mem[idx + _5425 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5605 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5605 + -mem[64] + 100
                        if stor1[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _6161 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6161] = 30
                        mem[_6161 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor13:
                            if stor13 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _6338 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6338 + 68] = mem[idx + _6161 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6338 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6338 + -mem[64] + 100
                    if arg1 and stor13 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _reflectFee / stor32:
                        if not 0 / stor32:
                            _3972 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3972] = 30
                            mem[_3972 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor13 / totalSupply:
                                _4014 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4014 + 68] = mem[idx + _3972 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4014 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _4014 + -mem[64] + 100
                            if arg1 * stor13 / totalSupply < 0:
                                revert with 0, 17
                            _4204 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4204] = 30
                            mem[_4204 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor13 / totalSupply:
                                _4300 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4300 + 68] = mem[idx + _4204 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4300 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _4300 + -mem[64] + 100
                            if arg1 * stor13 / totalSupply < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            _4891 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4891] = 30
                            mem[_4891 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor13 / totalSupply > stor1[address(msg.sender)]:
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
                            if stor1[address(msg.sender)] < arg1 * stor13 / totalSupply:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            stor1[address(msg.sender)] += -1 * arg1 * stor13 / totalSupply
                            _5603 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5603] = 30
                            mem[_5603 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor13 / totalSupply <= stor13:
                                if stor13 < arg1 * stor13 / totalSupply:
                                    revert with 0, 17
                                stor13 += -1 * arg1 * stor13 / totalSupply
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _5787 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5787 + 68] = mem[idx + _5603 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5787 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5787 + -mem[64] + 100
                        if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                            revert with 0, 17
                        if not 0 / stor32:
                            revert with 0, 18
                        if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _4122 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4122] = 30
                        mem[_4122 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor13 / totalSupply:
                            _4203 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4203 + 68] = mem[idx + _4122 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4203 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4203 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        _4567 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4567] = 30
                        mem[_4567 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                            _4714 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4714 + 68] = mem[idx + _4567 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4714 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4714 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < 0 / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _5424 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5424] = 30
                        mem[_5424 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor13 / totalSupply > stor1[address(msg.sender)]:
                            _5602 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5602 + 68] = mem[idx + _5424 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5602 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5602 + -mem[64] + 100
                        if stor1[address(msg.sender)] < arg1 * stor13 / totalSupply:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        stor1[address(msg.sender)] += -1 * arg1 * stor13 / totalSupply
                        _6159 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6159] = 30
                        mem[_6159 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor13 / totalSupply <= stor13:
                            if stor13 < arg1 * stor13 / totalSupply:
                                revert with 0, 17
                            stor13 += -1 * arg1 * stor13 / totalSupply
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _6336 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6336 + 68] = mem[idx + _6159 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6336 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6336 + -mem[64] + 100
                    if arg1 * _reflectFee / stor32 and stor13 / totalSupply > -1 / arg1 * _reflectFee / stor32:
                        revert with 0, 17
                    if not arg1 * _reflectFee / stor32:
                        revert with 0, 18
                    if arg1 * _reflectFee / stor32 * stor13 / totalSupply / arg1 * _reflectFee / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor32:
                        _4121 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4121] = 30
                        mem[_4121 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _reflectFee / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                            _4202 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4202 + 68] = mem[idx + _4121 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4202 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4202 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        _4565 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4565] = 30
                        mem[_4565 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply):
                            _4713 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4713 + 68] = mem[idx + _4565 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4713 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4713 + -mem[64] + 100
                        if (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply) < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _5423 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5423] = 30
                        mem[_5423 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor13 / totalSupply > stor1[address(msg.sender)]:
                            _5601 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5601 + 68] = mem[idx + _5423 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5601 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5601 + -mem[64] + 100
                        if stor1[address(msg.sender)] < arg1 * stor13 / totalSupply:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        stor1[address(msg.sender)] += -1 * arg1 * stor13 / totalSupply
                        _6157 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6157] = 30
                        mem[_6157 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor13 / totalSupply <= stor13:
                            if stor13 < arg1 * stor13 / totalSupply:
                                revert with 0, 17
                            stor13 += -1 * arg1 * stor13 / totalSupply
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _6335 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6335 + 68] = mem[idx + _6157 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6335 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6335 + -mem[64] + 100
                    if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                        revert with 0, 17
                    if not 0 / stor32:
                        revert with 0, 18
                    if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _4427 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4427] = 30
                    mem[_4427 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _reflectFee / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        _4564 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4564 + 68] = mem[idx + _4427 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4564 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4564 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    _5062 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5062] = 30
                    mem[_5062 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor32 * stor13 / totalSupply > (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply):
                        _5237 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5237 + 68] = mem[idx + _5062 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5237 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5237 + -mem[64] + 100
                    if (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply) < 0 / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    _5965 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5965] = 30
                    mem[_5965 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor13 / totalSupply > stor1[address(msg.sender)]:
                        _6156 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6156 + 68] = mem[idx + _5965 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6156 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6156 + -mem[64] + 100
                    if stor1[address(msg.sender)] < arg1 * stor13 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    stor1[address(msg.sender)] += -1 * arg1 * stor13 / totalSupply
                    _6644 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6644] = 30
                    mem[_6644 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor13 / totalSupply <= stor13:
                        if stor13 < arg1 * stor13 / totalSupply:
                            revert with 0, 17
                        stor13 += -1 * arg1 * stor13 / totalSupply
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _6798 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6798 + 68] = mem[idx + _6644 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6798 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6798 + -mem[64] + 100
                if idx >= stor6.length:
                    revert with 0, 50
                mem[0] = stor6[idx]
                mem[32] = 2
                if stor2[stor6[idx]] <= s:
                    if idx >= stor6.length:
                        revert with 0, 50
                    mem[0] = stor6[idx]
                    mem[32] = 1
                    _3744 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3744] = 30
                    mem[_3744 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor6[idx]] > t:
                        _3764 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3764 + 68] = mem[idx + _3744 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3764 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3764 + -mem[64] + 100
                    if t < stor1[stor6[idx]]:
                        revert with 0, 17
                    if idx >= stor6.length:
                        revert with 0, 50
                    mem[0] = stor6[idx]
                    mem[32] = 2
                    _3853 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3853] = 30
                    mem[_3853 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor6[idx]] <= s:
                        if s < stor2[stor6[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor2[stor6[idx]]
                        t = t - stor1[stor6[idx]]
                        continue 
                    _3865 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3865 + 68] = mem[idx + _3853 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3865 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3865 + -mem[64] + 100
                _3745 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3745] = 26
                mem[_3745 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _3765 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _3765 + 68] = mem[idx + _3745 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3765 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _3765 + -mem[64] + 100
                if not arg1:
                    if not arg1 * _reflectFee / stor32:
                        if not 0 / stor32:
                            _3931 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3931] = 30
                            mem[_3931 + 32] = 'SafeMath: subtraction overflow'
                            _4059 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4059] = 30
                            mem[_4059 + 32] = 'SafeMath: subtraction overflow'
                            mem[0] = msg.sender
                            mem[32] = 1
                            _4573 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4573] = 30
                            mem[_4573 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor1[address(msg.sender)]:
                                _4726 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4726 + 68] = mem[idx + _4573 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4726 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _4726 + -mem[64] + 100
                            if stor1[address(msg.sender)] < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            _5247 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5247] = 30
                            mem[_5247 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor13:
                                if stor13 < 0:
                                    revert with 0, 17
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _5430 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5430 + 68] = mem[idx + _5247 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5430 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5430 + -mem[64] + 100
                        if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                            revert with 0, 17
                        if not 0 / stor32:
                            revert with 0, 18
                        if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _4020 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4020] = 30
                        mem[_4020 + 32] = 'SafeMath: subtraction overflow'
                        _4310 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4310] = 30
                        mem[_4310 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / stor32 * stor13 / totalSupply > 0:
                            _4432 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4432 + 68] = mem[idx + _4310 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4432 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4432 + -mem[64] + 100
                        if 0 < 0 / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _5071 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5071] = 30
                        mem[_5071 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor1[address(msg.sender)]:
                            _5246 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5246 + 68] = mem[idx + _5071 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5246 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5246 + -mem[64] + 100
                        if stor1[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _5798 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5798] = 30
                        mem[_5798 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor13:
                            if stor13 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _5969 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5969 + 68] = mem[idx + _5798 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5969 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5969 + -mem[64] + 100
                    if arg1 * _reflectFee / stor32 and stor13 / totalSupply > -1 / arg1 * _reflectFee / stor32:
                        revert with 0, 17
                    if not arg1 * _reflectFee / stor32:
                        revert with 0, 18
                    if arg1 * _reflectFee / stor32 * stor13 / totalSupply / arg1 * _reflectFee / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / stor32:
                        _4019 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4019] = 30
                        mem[_4019 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _reflectFee / stor32 * stor13 / totalSupply > 0:
                            _4058 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4058 + 68] = mem[idx + _4019 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4058 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4058 + -mem[64] + 100
                        if 0 < arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        _4308 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4308] = 30
                        mem[_4308 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                            _4431 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4431 + 68] = mem[idx + _4308 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4431 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4431 + -mem[64] + 100
                        if -1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _5070 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5070] = 30
                        mem[_5070 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor1[address(msg.sender)]:
                            _5245 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5245 + 68] = mem[idx + _5070 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5245 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5245 + -mem[64] + 100
                        if stor1[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _5796 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5796] = 30
                        mem[_5796 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor13:
                            if stor13 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _5968 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5968 + 68] = mem[idx + _5796 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5968 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5968 + -mem[64] + 100
                    if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                        revert with 0, 17
                    if not 0 / stor32:
                        revert with 0, 18
                    if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _4212 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4212] = 30
                    mem[_4212 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _reflectFee / stor32 * stor13 / totalSupply > 0:
                        _4307 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4307 + 68] = mem[idx + _4212 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4307 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4307 + -mem[64] + 100
                    if 0 < arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    _4724 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4724] = 30
                    mem[_4724 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor32 * stor13 / totalSupply > -1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                        _4897 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4897 + 68] = mem[idx + _4724 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4897 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4897 + -mem[64] + 100
                    if -1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply < 0 / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    _5612 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5612] = 30
                    mem[_5612 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor1[address(msg.sender)]:
                        _5795 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5795 + 68] = mem[idx + _5612 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5795 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5795 + -mem[64] + 100
                    if stor1[address(msg.sender)] < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    _6346 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6346] = 30
                    mem[_6346 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor13:
                        if stor13 < 0:
                            revert with 0, 17
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _6490 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6490 + 68] = mem[idx + _6346 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6490 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6490 + -mem[64] + 100
                if arg1 and stor13 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _reflectFee / stor32:
                    if not 0 / stor32:
                        _4018 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4018] = 30
                        mem[_4018 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor13 / totalSupply:
                            _4057 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4057 + 68] = mem[idx + _4018 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4057 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4057 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        _4305 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4305] = 30
                        mem[_4305 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor13 / totalSupply:
                            _4430 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4430 + 68] = mem[idx + _4305 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4430 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4430 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _5069 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5069] = 30
                        mem[_5069 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor13 / totalSupply > stor1[address(msg.sender)]:
                            _5244 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5244 + 68] = mem[idx + _5069 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5244 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5244 + -mem[64] + 100
                        if stor1[address(msg.sender)] < arg1 * stor13 / totalSupply:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        stor1[address(msg.sender)] += -1 * arg1 * stor13 / totalSupply
                        _5793 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5793] = 30
                        mem[_5793 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor13 / totalSupply <= stor13:
                            if stor13 < arg1 * stor13 / totalSupply:
                                revert with 0, 17
                            stor13 += -1 * arg1 * stor13 / totalSupply
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _5967 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5967 + 68] = mem[idx + _5793 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5967 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5967 + -mem[64] + 100
                    if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                        revert with 0, 17
                    if not 0 / stor32:
                        revert with 0, 18
                    if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _4211 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4211] = 30
                    mem[_4211 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor13 / totalSupply:
                        _4304 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4304 + 68] = mem[idx + _4211 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4304 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4304 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                    _4722 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4722] = 30
                    mem[_4722 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        _4895 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4895 + 68] = mem[idx + _4722 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4895 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4895 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < 0 / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    _5611 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5611] = 30
                    mem[_5611 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor13 / totalSupply > stor1[address(msg.sender)]:
                        _5792 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5792 + 68] = mem[idx + _5611 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5792 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5792 + -mem[64] + 100
                    if stor1[address(msg.sender)] < arg1 * stor13 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    stor1[address(msg.sender)] += -1 * arg1 * stor13 / totalSupply
                    _6344 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6344] = 30
                    mem[_6344 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor13 / totalSupply <= stor13:
                        if stor13 < arg1 * stor13 / totalSupply:
                            revert with 0, 17
                        stor13 += -1 * arg1 * stor13 / totalSupply
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _6488 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6488 + 68] = mem[idx + _6344 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6488 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6488 + -mem[64] + 100
                if arg1 * _reflectFee / stor32 and stor13 / totalSupply > -1 / arg1 * _reflectFee / stor32:
                    revert with 0, 17
                if not arg1 * _reflectFee / stor32:
                    revert with 0, 18
                if arg1 * _reflectFee / stor32 * stor13 / totalSupply / arg1 * _reflectFee / stor32 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 0 / stor32:
                    _4210 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4210] = 30
                    mem[_4210 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _reflectFee / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        _4303 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4303 + 68] = mem[idx + _4210 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4303 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4303 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    _4720 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4720] = 30
                    mem[_4720 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply):
                        _4894 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4894 + 68] = mem[idx + _4720 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4894 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4894 + -mem[64] + 100
                    if (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply) < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    _5610 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5610] = 30
                    mem[_5610 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor13 / totalSupply > stor1[address(msg.sender)]:
                        _5791 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5791 + 68] = mem[idx + _5610 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5791 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5791 + -mem[64] + 100
                    if stor1[address(msg.sender)] < arg1 * stor13 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    stor1[address(msg.sender)] += -1 * arg1 * stor13 / totalSupply
                    _6342 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6342] = 30
                    mem[_6342 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor13 / totalSupply <= stor13:
                        if stor13 < arg1 * stor13 / totalSupply:
                            revert with 0, 17
                        stor13 += -1 * arg1 * stor13 / totalSupply
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _6487 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6487 + 68] = mem[idx + _6342 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6487 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6487 + -mem[64] + 100
                if 0 / stor32 and stor13 / totalSupply > -1 / 0 / stor32:
                    revert with 0, 17
                if not 0 / stor32:
                    revert with 0, 18
                if 0 / stor32 * stor13 / totalSupply / 0 / stor32 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _4572 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4572] = 30
                mem[_4572 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _reflectFee / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                    _4719 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4719 + 68] = mem[idx + _4572 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4719 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4719 + -mem[64] + 100
                if arg1 * stor13 / totalSupply < arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                    revert with 0, 17
                _5242 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5242] = 30
                mem[_5242 + 32] = 'SafeMath: subtraction overflow'
                if 0 / stor32 * stor13 / totalSupply > (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply):
                    _5426 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _5426 + 68] = mem[idx + _5242 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5426 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _5426 + -mem[64] + 100
                if (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply) < 0 / stor32 * stor13 / totalSupply:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 1
                _6164 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6164] = 30
                mem[_6164 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor13 / totalSupply > stor1[address(msg.sender)]:
                    _6341 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6341 + 68] = mem[idx + _6164 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6341 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6341 + -mem[64] + 100
                if stor1[address(msg.sender)] < arg1 * stor13 / totalSupply:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 1
                stor1[address(msg.sender)] += -1 * arg1 * stor13 / totalSupply
                _6802 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6802] = 30
                mem[_6802 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor13 / totalSupply <= stor13:
                    if stor13 < arg1 * stor13 / totalSupply:
                        revert with 0, 17
                    stor13 += -1 * arg1 * stor13 / totalSupply
                    if totalFees > !arg1:
                        revert with 0, 17
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _6903 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _6903 + 68] = mem[idx + _6802 + 32]
                    idx = idx + 32
                    continue 
                mem[_6903 + 98] = 0
                revert with memory
                  from mem[64]
                   len _6903 + -mem[64] + 100
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
                    if 0 > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor1[address(msg.sender)] < 0:
                        revert with 0, 17
                    if 0 > stor13:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor13 < 0:
                        revert with 0, 17
                else:
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
                    if arg1 * t / s > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor1[address(msg.sender)] < arg1 * t / s:
                        revert with 0, 17
                    stor1[address(msg.sender)] += -1 * arg1 * t / s
                    if arg1 * t / s > stor13:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor13 < arg1 * t / s:
                        revert with 0, 17
                    stor13 += -1 * arg1 * t / s
            else:
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
                    if 0 > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor1[address(msg.sender)] < 0:
                        revert with 0, 17
                    if 0 > stor13:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor13 < 0:
                        revert with 0, 17
                else:
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
                    if arg1 * stor13 / totalSupply > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor1[address(msg.sender)] < arg1 * stor13 / totalSupply:
                        revert with 0, 17
                    stor1[address(msg.sender)] += -1 * arg1 * stor13 / totalSupply
                    if arg1 * stor13 / totalSupply > stor13:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor13 < arg1 * stor13 / totalSupply:
                        revert with 0, 17
                    stor13 += -1 * arg1 * stor13 / totalSupply
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
                    _3724 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3724] = 26
                    mem[_3724 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _3740 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _3740 + 68] = mem[idx + _3724 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3740 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _3740 + -mem[64] + 100
                    if not arg1:
                        if not arg1 * _reflectFee / stor32:
                            if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                                _3913 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3913] = 30
                                mem[_3913 + 32] = 'SafeMath: subtraction overflow'
                                _4009 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4009] = 30
                                mem[_4009 + 32] = 'SafeMath: subtraction overflow'
                                mem[0] = msg.sender
                                mem[32] = 1
                                _4416 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4416] = 30
                                mem[_4416 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > stor1[address(msg.sender)]:
                                    _4545 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _4545 + 68] = mem[idx + _4416 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_4545 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _4545 + -mem[64] + 100
                                if stor1[address(msg.sender)] < 0:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 1
                                _5041 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5041] = 30
                                mem[_5041 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor13:
                                    if stor13 < 0:
                                        revert with 0, 17
                                    if totalFees > !arg1:
                                        revert with 0, 17
                                    if totalFees + arg1 < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees += arg1
                                _5217 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _5217 + 68] = mem[idx + _5041 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5217 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _5217 + -mem[64] + 100
                            if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                                revert with 0, 17
                            if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                                revert with 0, 18
                            if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != stor13 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _3965 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3965] = 30
                            mem[_3965 + 32] = 'SafeMath: subtraction overflow'
                            _4192 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4192] = 30
                            mem[_4192 + 32] = 'SafeMath: subtraction overflow'
                            if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply > 0:
                                _4286 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4286 + 68] = mem[idx + _4192 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4286 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _4286 + -mem[64] + 100
                            if 0 < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            _4880 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4880] = 30
                            mem[_4880 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor1[address(msg.sender)]:
                                _5040 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _5040 + 68] = mem[idx + _4880 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5040 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _5040 + -mem[64] + 100
                            if stor1[address(msg.sender)] < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            _5582 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5582] = 30
                            mem[_5582 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor13:
                                if stor13 < 0:
                                    revert with 0, 17
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _5765 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5765 + 68] = mem[idx + _5582 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5765 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5765 + -mem[64] + 100
                        if arg1 * _reflectFee / stor32 and stor13 / totalSupply > -1 / arg1 * _reflectFee / stor32:
                            revert with 0, 17
                        if not arg1 * _reflectFee / stor32:
                            revert with 0, 18
                        if arg1 * _reflectFee / stor32 * stor13 / totalSupply / arg1 * _reflectFee / stor32 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            _3964 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3964] = 30
                            mem[_3964 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _reflectFee / stor32 * stor13 / totalSupply > 0:
                                _4008 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4008 + 68] = mem[idx + _3964 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4008 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _4008 + -mem[64] + 100
                            if 0 < arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                                revert with 0, 17
                            _4190 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4190] = 30
                            mem[_4190 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > -1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                                _4285 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4285 + 68] = mem[idx + _4190 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4285 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _4285 + -mem[64] + 100
                            if -1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            _4879 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4879] = 30
                            mem[_4879 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor1[address(msg.sender)]:
                                _5039 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _5039 + 68] = mem[idx + _4879 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5039 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _5039 + -mem[64] + 100
                            if stor1[address(msg.sender)] < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            _5580 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5580] = 30
                            mem[_5580 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor13:
                                if stor13 < 0:
                                    revert with 0, 17
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _5764 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5764 + 68] = mem[idx + _5580 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5764 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5764 + -mem[64] + 100
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            revert with 0, 17
                        if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            revert with 0, 18
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _4110 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4110] = 30
                        mem[_4110 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _reflectFee / stor32 * stor13 / totalSupply > 0:
                            _4189 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4189 + 68] = mem[idx + _4110 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4189 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4189 + -mem[64] + 100
                        if 0 < arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        _4543 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4543] = 30
                        mem[_4543 + 32] = 'SafeMath: subtraction overflow'
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply > -1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                            _4694 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4694 + 68] = mem[idx + _4543 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4694 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4694 + -mem[64] + 100
                        if -1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _5411 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5411] = 30
                        mem[_5411 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor1[address(msg.sender)]:
                            _5579 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5579 + 68] = mem[idx + _5411 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5579 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5579 + -mem[64] + 100
                        if stor1[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _6134 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6134] = 30
                        mem[_6134 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor13:
                            if stor13 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _6314 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6314 + 68] = mem[idx + _6134 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6314 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6314 + -mem[64] + 100
                    if arg1 and stor13 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _reflectFee / stor32:
                        if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            _3963 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3963] = 30
                            mem[_3963 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor13 / totalSupply:
                                _4007 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4007 + 68] = mem[idx + _3963 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4007 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _4007 + -mem[64] + 100
                            if arg1 * stor13 / totalSupply < 0:
                                revert with 0, 17
                            _4187 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4187] = 30
                            mem[_4187 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor13 / totalSupply:
                                _4284 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4284 + 68] = mem[idx + _4187 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4284 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _4284 + -mem[64] + 100
                            if arg1 * stor13 / totalSupply < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            _4878 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4878] = 30
                            mem[_4878 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor13 / totalSupply > stor1[address(msg.sender)]:
                                _5038 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _5038 + 68] = mem[idx + _4878 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5038 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _5038 + -mem[64] + 100
                            if stor1[address(msg.sender)] < arg1 * stor13 / totalSupply:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            stor1[address(msg.sender)] += -1 * arg1 * stor13 / totalSupply
                            _5577 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5577] = 30
                            mem[_5577 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor13 / totalSupply <= stor13:
                                if stor13 < arg1 * stor13 / totalSupply:
                                    revert with 0, 17
                                stor13 += -1 * arg1 * stor13 / totalSupply
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _5763 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5763 + 68] = mem[idx + _5577 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5763 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5763 + -mem[64] + 100
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            revert with 0, 17
                        if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            revert with 0, 18
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _4109 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4109] = 30
                        mem[_4109 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor13 / totalSupply:
                            _4186 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4186 + 68] = mem[idx + _4109 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4186 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4186 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        _4541 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4541] = 30
                        mem[_4541 + 32] = 'SafeMath: subtraction overflow'
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                            _4692 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4692 + 68] = mem[idx + _4541 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4692 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4692 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _5410 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5410] = 30
                        mem[_5410 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor13 / totalSupply > stor1[address(msg.sender)]:
                            _5576 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5576 + 68] = mem[idx + _5410 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5576 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5576 + -mem[64] + 100
                        if stor1[address(msg.sender)] < arg1 * stor13 / totalSupply:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        stor1[address(msg.sender)] += -1 * arg1 * stor13 / totalSupply
                        _6132 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6132] = 30
                        mem[_6132 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor13 / totalSupply <= stor13:
                            if stor13 < arg1 * stor13 / totalSupply:
                                revert with 0, 17
                            stor13 += -1 * arg1 * stor13 / totalSupply
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _6312 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6312 + 68] = mem[idx + _6132 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6312 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6312 + -mem[64] + 100
                    if arg1 * _reflectFee / stor32 and stor13 / totalSupply > -1 / arg1 * _reflectFee / stor32:
                        revert with 0, 17
                    if not arg1 * _reflectFee / stor32:
                        revert with 0, 18
                    if arg1 * _reflectFee / stor32 * stor13 / totalSupply / arg1 * _reflectFee / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        _4108 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4108] = 30
                        mem[_4108 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _reflectFee / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                            _4185 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4185 + 68] = mem[idx + _4108 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4185 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4185 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        _4539 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4539] = 30
                        mem[_4539 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply):
                            _4691 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4691 + 68] = mem[idx + _4539 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4691 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4691 + -mem[64] + 100
                        if (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply) < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _5409 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5409] = 30
                        mem[_5409 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor13 / totalSupply > stor1[address(msg.sender)]:
                            _5575 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5575 + 68] = mem[idx + _5409 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5575 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5575 + -mem[64] + 100
                        if stor1[address(msg.sender)] < arg1 * stor13 / totalSupply:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        stor1[address(msg.sender)] += -1 * arg1 * stor13 / totalSupply
                        _6130 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6130] = 30
                        mem[_6130 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor13 / totalSupply <= stor13:
                            if stor13 < arg1 * stor13 / totalSupply:
                                revert with 0, 17
                            stor13 += -1 * arg1 * stor13 / totalSupply
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _6311 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6311 + 68] = mem[idx + _6130 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6311 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6311 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _4415 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4415] = 30
                    mem[_4415 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _reflectFee / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        _4538 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4538 + 68] = mem[idx + _4415 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4538 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4538 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    _5036 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5036] = 30
                    mem[_5036 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply > (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply):
                        _5213 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5213 + 68] = mem[idx + _5036 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5213 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5213 + -mem[64] + 100
                    if (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply) < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    _5953 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5953] = 30
                    mem[_5953 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor13 / totalSupply > stor1[address(msg.sender)]:
                        _6129 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6129 + 68] = mem[idx + _5953 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6129 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6129 + -mem[64] + 100
                    if stor1[address(msg.sender)] < arg1 * stor13 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    stor1[address(msg.sender)] += -1 * arg1 * stor13 / totalSupply
                    _6623 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6623] = 30
                    mem[_6623 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor13 / totalSupply <= stor13:
                        if stor13 < arg1 * stor13 / totalSupply:
                            revert with 0, 17
                        stor13 += -1 * arg1 * stor13 / totalSupply
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _6777 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6777 + 68] = mem[idx + _6623 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6777 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6777 + -mem[64] + 100
                if idx >= stor6.length:
                    revert with 0, 50
                mem[0] = stor6[idx]
                mem[32] = 2
                if stor2[stor6[idx]] <= s:
                    if idx >= stor6.length:
                        revert with 0, 50
                    mem[0] = stor6[idx]
                    mem[32] = 1
                    _3741 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3741] = 30
                    mem[_3741 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor6[idx]] > t:
                        _3761 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3761 + 68] = mem[idx + _3741 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3761 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3761 + -mem[64] + 100
                    if t < stor1[stor6[idx]]:
                        revert with 0, 17
                    if idx >= stor6.length:
                        revert with 0, 50
                    mem[0] = stor6[idx]
                    mem[32] = 2
                    _3850 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3850] = 30
                    mem[_3850 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor6[idx]] <= s:
                        if s < stor2[stor6[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor2[stor6[idx]]
                        t = t - stor1[stor6[idx]]
                        continue 
                    _3862 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3862 + 68] = mem[idx + _3850 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3862 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3862 + -mem[64] + 100
                _3742 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3742] = 26
                mem[_3742 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _3762 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _3762 + 68] = mem[idx + _3742 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3762 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _3762 + -mem[64] + 100
                if not arg1:
                    if not arg1 * _reflectFee / stor32:
                        if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            _3927 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3927] = 30
                            mem[_3927 + 32] = 'SafeMath: subtraction overflow'
                            _4052 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4052] = 30
                            mem[_4052 + 32] = 'SafeMath: subtraction overflow'
                            mem[0] = msg.sender
                            mem[32] = 1
                            _4547 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4547] = 30
                            mem[_4547 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor1[address(msg.sender)]:
                                _4704 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4704 + 68] = mem[idx + _4547 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4704 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _4704 + -mem[64] + 100
                            if stor1[address(msg.sender)] < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            _5223 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5223] = 30
                            mem[_5223 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor13:
                                if stor13 < 0:
                                    revert with 0, 17
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _5416 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5416 + 68] = mem[idx + _5223 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5416 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5416 + -mem[64] + 100
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            revert with 0, 17
                        if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                            revert with 0, 18
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _4013 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4013] = 30
                        mem[_4013 + 32] = 'SafeMath: subtraction overflow'
                        _4294 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4294] = 30
                        mem[_4294 + 32] = 'SafeMath: subtraction overflow'
                        if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply > 0:
                            _4420 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4420 + 68] = mem[idx + _4294 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4420 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4420 + -mem[64] + 100
                        if 0 < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _5045 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5045] = 30
                        mem[_5045 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor1[address(msg.sender)]:
                            _5222 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5222 + 68] = mem[idx + _5045 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5222 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5222 + -mem[64] + 100
                        if stor1[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _5774 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5774] = 30
                        mem[_5774 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor13:
                            if stor13 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _5957 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5957 + 68] = mem[idx + _5774 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5957 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5957 + -mem[64] + 100
                    if arg1 * _reflectFee / stor32 and stor13 / totalSupply > -1 / arg1 * _reflectFee / stor32:
                        revert with 0, 17
                    if not arg1 * _reflectFee / stor32:
                        revert with 0, 18
                    if arg1 * _reflectFee / stor32 * stor13 / totalSupply / arg1 * _reflectFee / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        _4012 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4012] = 30
                        mem[_4012 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _reflectFee / stor32 * stor13 / totalSupply > 0:
                            _4051 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4051 + 68] = mem[idx + _4012 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4051 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4051 + -mem[64] + 100
                        if 0 < arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                            revert with 0, 17
                        _4292 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4292] = 30
                        mem[_4292 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                            _4419 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4419 + 68] = mem[idx + _4292 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4419 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4419 + -mem[64] + 100
                        if -1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _5044 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5044] = 30
                        mem[_5044 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor1[address(msg.sender)]:
                            _5221 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5221 + 68] = mem[idx + _5044 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5221 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5221 + -mem[64] + 100
                        if stor1[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _5772 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5772] = 30
                        mem[_5772 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor13:
                            if stor13 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _5956 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5956 + 68] = mem[idx + _5772 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5956 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5956 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _4195 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4195] = 30
                    mem[_4195 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _reflectFee / stor32 * stor13 / totalSupply > 0:
                        _4291 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4291 + 68] = mem[idx + _4195 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4291 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4291 + -mem[64] + 100
                    if 0 < arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    _4702 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4702] = 30
                    mem[_4702 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply > -1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                        _4884 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4884 + 68] = mem[idx + _4702 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4884 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4884 + -mem[64] + 100
                    if -1 * arg1 * _reflectFee / stor32 * stor13 / totalSupply < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    _5586 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5586] = 30
                    mem[_5586 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor1[address(msg.sender)]:
                        _5771 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5771 + 68] = mem[idx + _5586 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5771 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5771 + -mem[64] + 100
                    if stor1[address(msg.sender)] < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    _6322 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6322] = 30
                    mem[_6322 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor13:
                        if stor13 < 0:
                            revert with 0, 17
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _6482 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6482 + 68] = mem[idx + _6322 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6482 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6482 + -mem[64] + 100
                if arg1 and stor13 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _reflectFee / stor32:
                    if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        _4011 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4011] = 30
                        mem[_4011 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor13 / totalSupply:
                            _4050 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4050 + 68] = mem[idx + _4011 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4050 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4050 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        _4289 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4289] = 30
                        mem[_4289 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor13 / totalSupply:
                            _4418 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4418 + 68] = mem[idx + _4289 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4418 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4418 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        _5043 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5043] = 30
                        mem[_5043 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor13 / totalSupply > stor1[address(msg.sender)]:
                            _5220 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5220 + 68] = mem[idx + _5043 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5220 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5220 + -mem[64] + 100
                        if stor1[address(msg.sender)] < arg1 * stor13 / totalSupply:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        stor1[address(msg.sender)] += -1 * arg1 * stor13 / totalSupply
                        _5769 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5769] = 30
                        mem[_5769 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor13 / totalSupply <= stor13:
                            if stor13 < arg1 * stor13 / totalSupply:
                                revert with 0, 17
                            stor13 += -1 * arg1 * stor13 / totalSupply
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _5955 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5955 + 68] = mem[idx + _5769 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5955 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5955 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        revert with 0, 17
                    if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                        revert with 0, 18
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _4194 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4194] = 30
                    mem[_4194 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor13 / totalSupply:
                        _4288 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4288 + 68] = mem[idx + _4194 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4288 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4288 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                    _4700 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4700] = 30
                    mem[_4700 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        _4882 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4882 + 68] = mem[idx + _4700 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4882 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4882 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    _5585 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5585] = 30
                    mem[_5585 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor13 / totalSupply > stor1[address(msg.sender)]:
                        _5768 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5768 + 68] = mem[idx + _5585 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5768 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5768 + -mem[64] + 100
                    if stor1[address(msg.sender)] < arg1 * stor13 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    stor1[address(msg.sender)] += -1 * arg1 * stor13 / totalSupply
                    _6320 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6320] = 30
                    mem[_6320 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor13 / totalSupply <= stor13:
                        if stor13 < arg1 * stor13 / totalSupply:
                            revert with 0, 17
                        stor13 += -1 * arg1 * stor13 / totalSupply
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _6480 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6480 + 68] = mem[idx + _6320 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6480 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6480 + -mem[64] + 100
                if arg1 * _reflectFee / stor32 and stor13 / totalSupply > -1 / arg1 * _reflectFee / stor32:
                    revert with 0, 17
                if not arg1 * _reflectFee / stor32:
                    revert with 0, 18
                if arg1 * _reflectFee / stor32 * stor13 / totalSupply / arg1 * _reflectFee / stor32 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                    _4193 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4193] = 30
                    mem[_4193 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _reflectFee / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        _4287 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4287 + 68] = mem[idx + _4193 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4287 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4287 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                        revert with 0, 17
                    _4698 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4698] = 30
                    mem[_4698 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply):
                        _4881 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4881 + 68] = mem[idx + _4698 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4881 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4881 + -mem[64] + 100
                    if (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply) < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    _5584 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5584] = 30
                    mem[_5584 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor13 / totalSupply > stor1[address(msg.sender)]:
                        _5767 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5767 + 68] = mem[idx + _5584 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5767 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5767 + -mem[64] + 100
                    if stor1[address(msg.sender)] < arg1 * stor13 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    stor1[address(msg.sender)] += -1 * arg1 * stor13 / totalSupply
                    _6318 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6318] = 30
                    mem[_6318 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor13 / totalSupply <= stor13:
                        if stor13 < arg1 * stor13 / totalSupply:
                            revert with 0, 17
                        stor13 += -1 * arg1 * stor13 / totalSupply
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _6479 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6479 + 68] = mem[idx + _6318 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6479 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6479 + -mem[64] + 100
                if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 and stor13 / totalSupply > -1 / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                    revert with 0, 17
                if not (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32:
                    revert with 0, 18
                if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply / (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _4546 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4546] = 30
                mem[_4546 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _reflectFee / stor32 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                    _4697 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4697 + 68] = mem[idx + _4546 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4697 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4697 + -mem[64] + 100
                if arg1 * stor13 / totalSupply < arg1 * _reflectFee / stor32 * stor13 / totalSupply:
                    revert with 0, 17
                _5218 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5218] = 30
                mem[_5218 + 32] = 'SafeMath: subtraction overflow'
                if (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply > (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply):
                    _5412 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _5412 + 68] = mem[idx + _5218 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5412 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _5412 + -mem[64] + 100
                if (arg1 * stor13 / totalSupply) - (arg1 * _reflectFee / stor32 * stor13 / totalSupply) < (_liquidityFee * arg1) + (_buyBackFee * arg1) + (_marketingFee * arg1) + (_devFee * arg1) / stor32 * stor13 / totalSupply:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 1
                _6137 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6137] = 30
                mem[_6137 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor13 / totalSupply > stor1[address(msg.sender)]:
                    _6317 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6317 + 68] = mem[idx + _6137 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6317 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6317 + -mem[64] + 100
                if stor1[address(msg.sender)] < arg1 * stor13 / totalSupply:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 1
                stor1[address(msg.sender)] += -1 * arg1 * stor13 / totalSupply
                _6781 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6781] = 30
                mem[_6781 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor13 / totalSupply <= stor13:
                    if stor13 < arg1 * stor13 / totalSupply:
                        revert with 0, 17
                    stor13 += -1 * arg1 * stor13 / totalSupply
                    if totalFees > !arg1:
                        revert with 0, 17
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _6899 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _6899 + 68] = mem[idx + _6781 + 32]
                    idx = idx + 32
                    continue 
                mem[_6899 + 98] = 0
                revert with memory
                  from mem[64]
                   len _6899 + -mem[64] + 100
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
                    if 0 > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor1[address(msg.sender)] < 0:
                        revert with 0, 17
                    if 0 > stor13:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor13 < 0:
                        revert with 0, 17
                else:
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
                    if arg1 * t / s > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor1[address(msg.sender)] < arg1 * t / s:
                        revert with 0, 17
                    stor1[address(msg.sender)] += -1 * arg1 * t / s
                    if arg1 * t / s > stor13:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor13 < arg1 * t / s:
                        revert with 0, 17
                    stor13 += -1 * arg1 * t / s
            else:
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
                    if 0 > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor1[address(msg.sender)] < 0:
                        revert with 0, 17
                    if 0 > stor13:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor13 < 0:
                        revert with 0, 17
                else:
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
                    if arg1 * stor13 / totalSupply > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor1[address(msg.sender)] < arg1 * stor13 / totalSupply:
                        revert with 0, 17
                    stor1[address(msg.sender)] += -1 * arg1 * stor13 / totalSupply
                    if arg1 * stor13 / totalSupply > stor13:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor13 < arg1 * stor13 / totalSupply:
                        revert with 0, 17
                    stor13 += -1 * arg1 * stor13 / totalSupply
    if totalFees > !arg1:
        revert with 0, 17
    if totalFees + arg1 < totalFees:
        revert with 0, 'SafeMath: addition overflow'
    totalFees += arg1
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
