contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - reflectionFromToken(uint256 arg1, bool arg2)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
address owner;
mapping of uint256 stor1;
mapping of uint256 stor2;
mapping of uint256 allowance;
mapping of uint8 stor4;
mapping of uint8 stor5;
mapping of uint8 stor6;
mapping of uint8 stor7;
mapping of uint8 stor8;
array of address stor9;
uint256 totalSupply;
uint256 stor11;
uint256 totalFees;
array of struct stor13;
array of struct stor14;
uint8 decimals;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor22;
uint256 stor23;
uint256 stor24;
uint256 stor27;
uint256 stor28;
uint256 stor29;
uint256 stor32;
uint256 stor33;
uint256 stor34;
address sub_c66b7968Address;
address devAddAddress;
address uniRouterAddress;
address v2pairAddress;
uint256 _maxTxAmount;
uint256 stor43;
uint256 stor44;
uint256 stor45;
uint8 buyBackEnabled;
uint8 swapAndLiquifyEnabled;

function totalFees() {
    return totalFees
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function swapAndLiquifyEnabled() {
    return bool(swapAndLiquifyEnabled)
}

function isExcludedFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor6[address(arg1)])
}

function buyBackEnabled() {
    return bool(buyBackEnabled)
}

function _maxTxAmount() {
    return _maxTxAmount
}

function isExcludedFromReward(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor8[address(arg1)])
}

function owner() {
    return owner
}

function uniRouter() {
    return uniRouterAddress
}

function sub_a8417ff6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor5[arg1])
}

function automatedMarketMakerPairs(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor4[arg1])
}

function sub_c66b7968(?) {
    return sub_c66b7968Address
}

function isExcludedFromLimit(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor7[address(arg1)])
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function v2pair() {
    return v2pairAddress
}

function DevAdd() {
    return devAddAddress
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, owner);
}

function sub_0a7f25d2(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor28 = arg1
}

function sub_16168ada(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor27 = arg1
}

function sub_2564c2b9(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor32 = arg1
}

function sub_5e98b801(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor29 = arg1
}

function sub_788c05e0(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor18 = arg1
}

function sub_83f68e34(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor34 = arg1
}

function sub_9be98fc3(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor16 = arg1
}

function sub_a0cc3d9a(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor23 = arg1
}

function sub_b1a5d081(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor33 = arg1
}

function sub_b633fabd(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor17 = arg1
}

function sub_c289c4e2(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor22 = arg1
}

function sub_d62e9728(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor43 = arg1
}

function sub_d7f75d39(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor24 = arg1
}

function setBuyBack(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor45 = arg1
}

function setMaxTx(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _maxTxAmount = arg1
}

function setWalletLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor44 = arg1
}

function sub_2e10d8c7(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor7[address(arg1)] = 1
}

function sub_96e42f4c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5[address(arg1)] = 0
}

function sub_9b81411f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5[address(arg1)] = 1
}

function includeInFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6[address(arg1)] = 0
}

function excludeFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6[address(arg1)] = 1
}

function includeInLimit(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor7[address(arg1)] = 0
}

function setMarketingAdd(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_c66b7968Address = arg1
}

function setBuyBackEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    buyBackEnabled = uint8(arg1)
}

function setSwapAndLiquifyEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    swapAndLiquifyEnabled = uint8(arg1)
    emit SwapAndLiquifyEnabledUpdated(arg1);
}

function rescue() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > allowance[msg.sender][address(arg1)]:
        revert with 0, 32, 37, 0x6542455032303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0, 'BEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function setAutomatedMarketMakerPair(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if v2pairAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Brain: The PancakeSwap pair cannot be removed from automatedMarketMakerPairs'
    if arg2 == bool(stor4[address(arg1)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Brain: Automated market maker pair is already set to that value'
    stor4[address(arg1)] = uint8(arg2)
    emit SetAutomatedMarketMakerPair(arg1, arg2);
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if allowance[msg.sender][address(arg1)] + arg2 < allowance[msg.sender][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function includeInReward(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor8[address(arg1)]:
        revert with 0, 'Account is already excluded'
    idx = 0
    while idx < stor9.length:
        mem[0] = 9
        if stor9[idx] != arg1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if stor9.length < 1:
            revert with 0, 17
        if stor9.length - 1 >= stor9.length:
            revert with 0, 50
        if idx >= stor9.length:
            revert with 0, 50
        stor9[idx] = stor9[stor9.length]
        stor2[address(arg1)] = 0
        stor8[address(arg1)] = 0
        if not stor9.length:
            revert with 0, 49
        stor9[stor9.length] = 0
        stor9.length--
}

function setRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0xc45a0155 with:
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
    v2pairAddress = ext_call.return_data[12 len 20]
    uniRouterAddress = arg1
}

function name() {
    if bool(stor13.length):
        if bool(stor13.length) == uint255(stor13.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor13.length):
            if bool(stor13.length) == uint255(stor13.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor13.length):
                if 31 < uint255(stor13.length) * 0.5:
                    mem[128] = uint256(stor13.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor13.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor13[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor13.length), data=mem[128 len ceil32(uint255(stor13.length) * 0.5)])
                mem[128] = 256 * stor13.length.field_8
        else:
            if bool(stor13.length) == stor13.length.field_1 < 32:
                revert with 0, 34
            if stor13.length.field_1:
                if 31 < stor13.length.field_1:
                    mem[128] = uint256(stor13.field_0)
                    idx = 128
                    s = 0
                    while stor13.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor13[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor13.length), data=mem[128 len ceil32(uint255(stor13.length) * 0.5)])
                mem[128] = 256 * stor13.length.field_8
        mem[ceil32(uint255(stor13.length) * 0.5) + 192 len ceil32(uint255(stor13.length) * 0.5)] = mem[128 len ceil32(uint255(stor13.length) * 0.5)]
        if ceil32(uint255(stor13.length) * 0.5) > uint255(stor13.length) * 0.5:
            mem[ceil32(uint255(stor13.length) * 0.5) + (uint255(stor13.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor13.length), data=mem[128 len ceil32(uint255(stor13.length) * 0.5)], mem[(2 * ceil32(uint255(stor13.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor13.length) * 0.5)]), 
    if bool(stor13.length) == stor13.length.field_1 < 32:
        revert with 0, 34
    if bool(stor13.length):
        if bool(stor13.length) == uint255(stor13.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor13.length):
            if 31 < uint255(stor13.length) * 0.5:
                mem[128] = uint256(stor13.field_0)
                idx = 128
                s = 0
                while (uint255(stor13.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor13[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor13.length % 128, data=mem[128 len ceil32(stor13.length.field_1)])
            mem[128] = 256 * stor13.length.field_8
    else:
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 0, 34
        if stor13.length.field_1:
            if 31 < stor13.length.field_1:
                mem[128] = uint256(stor13.field_0)
                idx = 128
                s = 0
                while stor13.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor13[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor13.length % 128, data=mem[128 len ceil32(stor13.length.field_1)])
            mem[128] = 256 * stor13.length.field_8
    mem[ceil32(stor13.length.field_1) + 192 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
    if ceil32(stor13.length.field_1) > stor13.length.field_1:
        mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 192] = 0
    return Array(len=stor13.length % 128, data=mem[128 len ceil32(stor13.length.field_1)], mem[(2 * ceil32(stor13.length.field_1)) + 192 len 2 * ceil32(stor13.length.field_1)]), 
}

function symbol() {
    if bool(stor14.length):
        if bool(stor14.length) == uint255(stor14.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor14.length):
            if bool(stor14.length) == uint255(stor14.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor14.length):
                if 31 < uint255(stor14.length) * 0.5:
                    mem[128] = uint256(stor14.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor14.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor14[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor14.length), data=mem[128 len ceil32(uint255(stor14.length) * 0.5)])
                mem[128] = 256 * stor14.length.field_8
        else:
            if bool(stor14.length) == stor14.length.field_1 < 32:
                revert with 0, 34
            if stor14.length.field_1:
                if 31 < stor14.length.field_1:
                    mem[128] = uint256(stor14.field_0)
                    idx = 128
                    s = 0
                    while stor14.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor14[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor14.length), data=mem[128 len ceil32(uint255(stor14.length) * 0.5)])
                mem[128] = 256 * stor14.length.field_8
        mem[ceil32(uint255(stor14.length) * 0.5) + 192 len ceil32(uint255(stor14.length) * 0.5)] = mem[128 len ceil32(uint255(stor14.length) * 0.5)]
        if ceil32(uint255(stor14.length) * 0.5) > uint255(stor14.length) * 0.5:
            mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor14.length), data=mem[128 len ceil32(uint255(stor14.length) * 0.5)], mem[(2 * ceil32(uint255(stor14.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor14.length) * 0.5)]), 
    if bool(stor14.length) == stor14.length.field_1 < 32:
        revert with 0, 34
    if bool(stor14.length):
        if bool(stor14.length) == uint255(stor14.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor14.length):
            if 31 < uint255(stor14.length) * 0.5:
                mem[128] = uint256(stor14.field_0)
                idx = 128
                s = 0
                while (uint255(stor14.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor14[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor14.length % 128, data=mem[128 len ceil32(stor14.length.field_1)])
            mem[128] = 256 * stor14.length.field_8
    else:
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 0, 34
        if stor14.length.field_1:
            if 31 < stor14.length.field_1:
                mem[128] = uint256(stor14.field_0)
                idx = 128
                s = 0
                while stor14.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor14[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor14.length % 128, data=mem[128 len ceil32(stor14.length.field_1)])
            mem[128] = 256 * stor14.length.field_8
    mem[ceil32(stor14.length.field_1) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
    if ceil32(stor14.length.field_1) > stor14.length.field_1:
        mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 192] = 0
    return Array(len=stor14.length % 128, data=mem[128 len ceil32(stor14.length.field_1)], mem[(2 * ceil32(stor14.length.field_1)) + 192 len 2 * ceil32(stor14.length.field_1)]), 
}

function tokenFromReflection(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if arg1 > stor11:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    idx = 0
    s = totalSupply
    t = stor11
    while idx < stor9.length:
        mem[0] = stor9[idx]
        mem[32] = 1
        if stor1[stor9[idx]] > t:
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
            if stor11 / totalSupply:
                return (arg1 / stor11 / totalSupply)
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
        if idx >= stor9.length:
            revert with 0, 50
        mem[0] = stor9[idx]
        mem[32] = 2
        if stor2[stor9[idx]] > s:
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
            if stor11 / totalSupply:
                return (arg1 / stor11 / totalSupply)
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
        if idx >= stor9.length:
            revert with 0, 50
        mem[0] = stor9[idx]
        mem[32] = 1
        _97 = mem[64]
        mem[64] = mem[64] + 64
        mem[_97] = 30
        mem[_97 + 32] = 'SafeMath: subtraction overflow'
        if stor1[stor9[idx]] > t:
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
        if t < stor1[stor9[idx]]:
            revert with 0, 17
        if idx >= stor9.length:
            revert with 0, 50
        mem[0] = stor9[idx]
        mem[32] = 2
        _127 = mem[64]
        mem[64] = mem[64] + 64
        mem[_127] = 30
        mem[_127 + 32] = 'SafeMath: subtraction overflow'
        if stor2[stor9[idx]] <= s:
            if s < stor2[stor9[idx]]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s - stor2[stor9[idx]]
            t = t - stor1[stor9[idx]]
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
    if t >= stor11 / totalSupply:
        if not s:
            revert with 0, 'SafeMath: division by zero', 0
        if not t / s:
            revert with 0, 'SafeMath: division by zero', 0
        return (arg1 / t / s)
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor11 / totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    return (arg1 / stor11 / totalSupply)
}

function balanceOf(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor8[address(arg1)]:
        return stor2[address(arg1)]
    mem[0] = arg1
    mem[32] = 1
    if stor1[address(arg1)] > stor11:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    idx = 0
    s = totalSupply
    t = stor11
    while idx < stor9.length:
        mem[0] = stor9[idx]
        mem[32] = 1
        if stor1[stor9[idx]] > t:
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
            if stor11 / totalSupply:
                return (stor1[address(arg1)] / stor11 / totalSupply)
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
        if idx >= stor9.length:
            revert with 0, 50
        mem[0] = stor9[idx]
        mem[32] = 2
        if stor2[stor9[idx]] > s:
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
            if stor11 / totalSupply:
                return (stor1[address(arg1)] / stor11 / totalSupply)
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
        if idx >= stor9.length:
            revert with 0, 50
        mem[0] = stor9[idx]
        mem[32] = 1
        _102 = mem[64]
        mem[64] = mem[64] + 64
        mem[_102] = 30
        mem[_102 + 32] = 'SafeMath: subtraction overflow'
        if stor1[stor9[idx]] > t:
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
        if t < stor1[stor9[idx]]:
            revert with 0, 17
        if idx >= stor9.length:
            revert with 0, 50
        mem[0] = stor9[idx]
        mem[32] = 2
        _132 = mem[64]
        mem[64] = mem[64] + 64
        mem[_132] = 30
        mem[_132 + 32] = 'SafeMath: subtraction overflow'
        if stor2[stor9[idx]] <= s:
            if s < stor2[stor9[idx]]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s - stor2[stor9[idx]]
            t = t - stor1[stor9[idx]]
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
    if t >= stor11 / totalSupply:
        if not s:
            revert with 0, 'SafeMath: division by zero', 0
        if not t / s:
            revert with 0, 'SafeMath: division by zero', 0
        return (stor1[address(arg1)] / t / s)
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor11 / totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    return (stor1[address(arg1)] / stor11 / totalSupply)
}

function blacklist(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor8[address(arg1)]:
        revert with 0, 'Account is already excluded'
    if stor1[address(arg1)]:
        mem[0] = arg1
        mem[32] = 1
        if stor1[address(arg1)] > stor11:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
        idx = 0
        s = totalSupply
        t = stor11
        while idx < stor9.length:
            mem[0] = stor9[idx]
            mem[32] = 1
            if stor1[stor9[idx]] > t:
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
                if stor11 / totalSupply:
                    stor2[address(arg1)] = stor1[address(arg1)] / stor11 / totalSupply
                    stor8[address(arg1)] = 1
                    stor9.length++
                    stor9[stor9.length] = arg1
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
            if idx >= stor9.length:
                revert with 0, 50
            mem[0] = stor9[idx]
            mem[32] = 2
            if stor2[stor9[idx]] > s:
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
                if stor11 / totalSupply:
                    stor2[address(arg1)] = stor1[address(arg1)] / stor11 / totalSupply
                    stor8[address(arg1)] = 1
                    stor9.length++
                    stor9[stor9.length] = arg1
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
            if idx >= stor9.length:
                revert with 0, 50
            mem[0] = stor9[idx]
            mem[32] = 1
            _105 = mem[64]
            mem[64] = mem[64] + 64
            mem[_105] = 30
            mem[_105 + 32] = 'SafeMath: subtraction overflow'
            if stor1[stor9[idx]] > t:
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
            if t < stor1[stor9[idx]]:
                revert with 0, 17
            if idx >= stor9.length:
                revert with 0, 50
            mem[0] = stor9[idx]
            mem[32] = 2
            _135 = mem[64]
            mem[64] = mem[64] + 64
            mem[_135] = 30
            mem[_135 + 32] = 'SafeMath: subtraction overflow'
            if stor2[stor9[idx]] <= s:
                if s < stor2[stor9[idx]]:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - stor2[stor9[idx]]
                t = t - stor1[stor9[idx]]
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
        if t >= stor11 / totalSupply:
            if not s:
                revert with 0, 'SafeMath: division by zero', 0
            if not t / s:
                revert with 0, 'SafeMath: division by zero', 0
            stor2[address(arg1)] = stor1[address(arg1)] / t / s
        else:
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not stor11 / totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            stor2[address(arg1)] = stor1[address(arg1)] / stor11 / totalSupply
    stor8[address(arg1)] = 1
    stor9.length++
    stor9[stor9.length] = arg1
}

function excludeFromReward(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor8[address(arg1)]:
        revert with 0, 'Account is already excluded'
    if stor1[address(arg1)]:
        mem[0] = arg1
        mem[32] = 1
        if stor1[address(arg1)] > stor11:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
        idx = 0
        s = totalSupply
        t = stor11
        while idx < stor9.length:
            mem[0] = stor9[idx]
            mem[32] = 1
            if stor1[stor9[idx]] > t:
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
                if stor11 / totalSupply:
                    stor2[address(arg1)] = stor1[address(arg1)] / stor11 / totalSupply
                    stor8[address(arg1)] = 1
                    stor9.length++
                    stor9[stor9.length] = arg1
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
            if idx >= stor9.length:
                revert with 0, 50
            mem[0] = stor9[idx]
            mem[32] = 2
            if stor2[stor9[idx]] > s:
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
                if stor11 / totalSupply:
                    stor2[address(arg1)] = stor1[address(arg1)] / stor11 / totalSupply
                    stor8[address(arg1)] = 1
                    stor9.length++
                    stor9[stor9.length] = arg1
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
            if idx >= stor9.length:
                revert with 0, 50
            mem[0] = stor9[idx]
            mem[32] = 1
            _105 = mem[64]
            mem[64] = mem[64] + 64
            mem[_105] = 30
            mem[_105 + 32] = 'SafeMath: subtraction overflow'
            if stor1[stor9[idx]] > t:
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
            if t < stor1[stor9[idx]]:
                revert with 0, 17
            if idx >= stor9.length:
                revert with 0, 50
            mem[0] = stor9[idx]
            mem[32] = 2
            _135 = mem[64]
            mem[64] = mem[64] + 64
            mem[_135] = 30
            mem[_135 + 32] = 'SafeMath: subtraction overflow'
            if stor2[stor9[idx]] <= s:
                if s < stor2[stor9[idx]]:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - stor2[stor9[idx]]
                t = t - stor1[stor9[idx]]
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
        if t >= stor11 / totalSupply:
            if not s:
                revert with 0, 'SafeMath: division by zero', 0
            if not t / s:
                revert with 0, 'SafeMath: division by zero', 0
            stor2[address(arg1)] = stor1[address(arg1)] / t / s
        else:
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not stor11 / totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            stor2[address(arg1)] = stor1[address(arg1)] / stor11 / totalSupply
    stor8[address(arg1)] = 1
    stor9.length++
    stor9[stor9.length] = arg1
}



}
