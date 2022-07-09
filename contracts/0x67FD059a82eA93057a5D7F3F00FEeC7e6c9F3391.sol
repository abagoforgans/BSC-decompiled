contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - reflectionFromToken(uint256 arg1, bool arg2)
#  - transfer(address arg1, uint256 arg2)
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
address sub_19eff2b9Address;
address uniswapV2PairAddress;
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

function sub_19eff2b9(?) {
    return sub_19eff2b9Address
}

function decimals() {
    return decimals
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
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

function DevAdd() {
    return devAddAddress
}

function _fallback() payable {
    revert
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
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 32, 37, 0x6542455032303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if allowance[address(msg.sender)][address(arg1)] < arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0, 'BEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function setAutomatedMarketMakerPair(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uniswapV2PairAddress == arg1:
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
    if allowance[address(msg.sender)][address(arg1)] > !arg2:
        revert with 0, 17
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
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
    uniswapV2PairAddress = ext_call.return_data[12 len 20]
    sub_19eff2b9Address = arg1
}

function name() {
    if bool(stor13.length):
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 0, 34
        if bool(stor13.length):
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
                    return Array(len=2 * Mask(256, -1, stor13.length.field_1), data=mem[128 len ceil32(stor13.length.field_1)])
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
                    return Array(len=2 * Mask(256, -1, stor13.length.field_1), data=mem[128 len ceil32(stor13.length.field_1)])
                mem[128] = 256 * stor13.length.field_8
        mem[ceil32(stor13.length.field_1) + 192 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
        if ceil32(stor13.length.field_1) > stor13.length.field_1:
            mem[ceil32(stor13.length.field_1) + stor13.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor13.length.field_1), data=mem[128 len ceil32(stor13.length.field_1)], mem[(2 * ceil32(stor13.length.field_1)) + 192 len 2 * ceil32(stor13.length.field_1)]), 
    if bool(stor13.length) == stor13.length.field_1 < 32:
        revert with 0, 34
    if bool(stor13.length):
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
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 0, 34
        if bool(stor14.length):
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
                    return Array(len=2 * Mask(256, -1, stor14.length.field_1), data=mem[128 len ceil32(stor14.length.field_1)])
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
                    return Array(len=2 * Mask(256, -1, stor14.length.field_1), data=mem[128 len ceil32(stor14.length.field_1)])
                mem[128] = 256 * stor14.length.field_8
        mem[ceil32(stor14.length.field_1) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
        if ceil32(stor14.length.field_1) > stor14.length.field_1:
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor14.length.field_1), data=mem[128 len ceil32(stor14.length.field_1)], mem[(2 * ceil32(stor14.length.field_1)) + 192 len 2 * ceil32(stor14.length.field_1)]), 
    if bool(stor14.length) == stor14.length.field_1 < 32:
        revert with 0, 34
    if bool(stor14.length):
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
            _93 = mem[64]
            mem[64] = mem[64] + 64
            mem[_93] = 26
            mem[_93 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                _98 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _98 + 68] = mem[idx + _93 + 32]
                    idx = idx + 32
                    continue 
                mem[_98 + 94] = 0
                revert with memory
                  from mem[64]
                   len _98 + -mem[64] + 100
            _118 = mem[64]
            mem[64] = mem[64] + 64
            mem[_118] = 26
            mem[_118 + 32] = 'SafeMath: division by zero'
            if stor11 / totalSupply:
                return (arg1 / stor11 / totalSupply)
            _127 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _127 + 68] = mem[idx + _118 + 32]
                idx = idx + 32
                continue 
            mem[_127 + 94] = 0
            revert with memory
              from mem[64]
               len _127 + -mem[64] + 100
        if idx >= stor9.length:
            revert with 0, 50
        mem[0] = stor9[idx]
        mem[32] = 2
        if stor2[stor9[idx]] > s:
            _99 = mem[64]
            mem[64] = mem[64] + 64
            mem[_99] = 26
            mem[_99 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                _104 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _104 + 68] = mem[idx + _99 + 32]
                    idx = idx + 32
                    continue 
                mem[_104 + 94] = 0
                revert with memory
                  from mem[64]
                   len _104 + -mem[64] + 100
            _128 = mem[64]
            mem[64] = mem[64] + 64
            mem[_128] = 26
            mem[_128 + 32] = 'SafeMath: division by zero'
            if stor11 / totalSupply:
                return (arg1 / stor11 / totalSupply)
            _134 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _134 + 68] = mem[idx + _128 + 32]
                idx = idx + 32
                continue 
            mem[_134 + 94] = 0
            revert with memory
              from mem[64]
               len _134 + -mem[64] + 100
        if idx >= stor9.length:
            revert with 0, 50
        mem[0] = stor9[idx]
        mem[32] = 1
        _96 = mem[64]
        mem[64] = mem[64] + 64
        mem[_96] = 30
        mem[_96 + 32] = 'SafeMath: subtraction overflow'
        if stor1[stor9[idx]] > t:
            _102 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _102 + 68] = mem[idx + _96 + 32]
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
        _123 = mem[64]
        mem[64] = mem[64] + 64
        mem[_123] = 30
        mem[_123 + 32] = 'SafeMath: subtraction overflow'
        if stor2[stor9[idx]] <= s:
            if s < stor2[stor9[idx]]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s - stor2[stor9[idx]]
            t = t - stor1[stor9[idx]]
            continue 
        _130 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _130 + 68] = mem[idx + _123 + 32]
            idx = idx + 32
            continue 
        mem[_130 + 98] = 0
        revert with memory
          from mem[64]
           len _130 + -mem[64] + 100
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
            _123 = mem[64]
            mem[64] = mem[64] + 64
            mem[_123] = 26
            mem[_123 + 32] = 'SafeMath: division by zero'
            if stor11 / totalSupply:
                return (stor1[address(arg1)] / stor11 / totalSupply)
            _132 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _132 + 68] = mem[idx + _123 + 32]
                idx = idx + 32
                continue 
            mem[_132 + 94] = 0
            revert with memory
              from mem[64]
               len _132 + -mem[64] + 100
        if idx >= stor9.length:
            revert with 0, 50
        mem[0] = stor9[idx]
        mem[32] = 2
        if stor2[stor9[idx]] > s:
            _104 = mem[64]
            mem[64] = mem[64] + 64
            mem[_104] = 26
            mem[_104 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                _109 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _109 + 68] = mem[idx + _104 + 32]
                    idx = idx + 32
                    continue 
                mem[_109 + 94] = 0
                revert with memory
                  from mem[64]
                   len _109 + -mem[64] + 100
            _133 = mem[64]
            mem[64] = mem[64] + 64
            mem[_133] = 26
            mem[_133 + 32] = 'SafeMath: division by zero'
            if stor11 / totalSupply:
                return (stor1[address(arg1)] / stor11 / totalSupply)
            _139 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _139 + 68] = mem[idx + _133 + 32]
                idx = idx + 32
                continue 
            mem[_139 + 94] = 0
            revert with memory
              from mem[64]
               len _139 + -mem[64] + 100
        if idx >= stor9.length:
            revert with 0, 50
        mem[0] = stor9[idx]
        mem[32] = 1
        _101 = mem[64]
        mem[64] = mem[64] + 64
        mem[_101] = 30
        mem[_101 + 32] = 'SafeMath: subtraction overflow'
        if stor1[stor9[idx]] > t:
            _107 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _107 + 68] = mem[idx + _101 + 32]
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
        _128 = mem[64]
        mem[64] = mem[64] + 64
        mem[_128] = 30
        mem[_128 + 32] = 'SafeMath: subtraction overflow'
        if stor2[stor9[idx]] <= s:
            if s < stor2[stor9[idx]]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s - stor2[stor9[idx]]
            t = t - stor1[stor9[idx]]
            continue 
        _135 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _135 + 68] = mem[idx + _128 + 32]
            idx = idx + 32
            continue 
        mem[_135 + 98] = 0
        revert with memory
          from mem[64]
           len _135 + -mem[64] + 100
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
                _101 = mem[64]
                mem[64] = mem[64] + 64
                mem[_101] = 26
                mem[_101 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _106 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _106 + 68] = mem[idx + _101 + 32]
                        idx = idx + 32
                        continue 
                    mem[_106 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _106 + -mem[64] + 100
                _126 = mem[64]
                mem[64] = mem[64] + 64
                mem[_126] = 26
                mem[_126 + 32] = 'SafeMath: division by zero'
                if stor11 / totalSupply:
                    stor2[address(arg1)] = stor1[address(arg1)] / stor11 / totalSupply
                    stor8[address(arg1)] = 1
                    stor9.length++
                    stor9[stor9.length] = arg1
                _135 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _135 + 68] = mem[idx + _126 + 32]
                    idx = idx + 32
                    continue 
                mem[_135 + 94] = 0
                revert with memory
                  from mem[64]
                   len _135 + -mem[64] + 100
            if idx >= stor9.length:
                revert with 0, 50
            mem[0] = stor9[idx]
            mem[32] = 2
            if stor2[stor9[idx]] > s:
                _107 = mem[64]
                mem[64] = mem[64] + 64
                mem[_107] = 26
                mem[_107 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _112 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _112 + 68] = mem[idx + _107 + 32]
                        idx = idx + 32
                        continue 
                    mem[_112 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _112 + -mem[64] + 100
                _136 = mem[64]
                mem[64] = mem[64] + 64
                mem[_136] = 26
                mem[_136 + 32] = 'SafeMath: division by zero'
                if stor11 / totalSupply:
                    stor2[address(arg1)] = stor1[address(arg1)] / stor11 / totalSupply
                    stor8[address(arg1)] = 1
                    stor9.length++
                    stor9[stor9.length] = arg1
                _142 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _142 + 68] = mem[idx + _136 + 32]
                    idx = idx + 32
                    continue 
                mem[_142 + 94] = 0
                revert with memory
                  from mem[64]
                   len _142 + -mem[64] + 100
            if idx >= stor9.length:
                revert with 0, 50
            mem[0] = stor9[idx]
            mem[32] = 1
            _104 = mem[64]
            mem[64] = mem[64] + 64
            mem[_104] = 30
            mem[_104 + 32] = 'SafeMath: subtraction overflow'
            if stor1[stor9[idx]] > t:
                _110 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _110 + 68] = mem[idx + _104 + 32]
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
            _131 = mem[64]
            mem[64] = mem[64] + 64
            mem[_131] = 30
            mem[_131 + 32] = 'SafeMath: subtraction overflow'
            if stor2[stor9[idx]] <= s:
                if s < stor2[stor9[idx]]:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - stor2[stor9[idx]]
                t = t - stor1[stor9[idx]]
                continue 
            _138 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _138 + 68] = mem[idx + _131 + 32]
                idx = idx + 32
                continue 
            mem[_138 + 98] = 0
            revert with memory
              from mem[64]
               len _138 + -mem[64] + 100
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
                _101 = mem[64]
                mem[64] = mem[64] + 64
                mem[_101] = 26
                mem[_101 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _106 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _106 + 68] = mem[idx + _101 + 32]
                        idx = idx + 32
                        continue 
                    mem[_106 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _106 + -mem[64] + 100
                _126 = mem[64]
                mem[64] = mem[64] + 64
                mem[_126] = 26
                mem[_126 + 32] = 'SafeMath: division by zero'
                if stor11 / totalSupply:
                    stor2[address(arg1)] = stor1[address(arg1)] / stor11 / totalSupply
                    stor8[address(arg1)] = 1
                    stor9.length++
                    stor9[stor9.length] = arg1
                _135 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _135 + 68] = mem[idx + _126 + 32]
                    idx = idx + 32
                    continue 
                mem[_135 + 94] = 0
                revert with memory
                  from mem[64]
                   len _135 + -mem[64] + 100
            if idx >= stor9.length:
                revert with 0, 50
            mem[0] = stor9[idx]
            mem[32] = 2
            if stor2[stor9[idx]] > s:
                _107 = mem[64]
                mem[64] = mem[64] + 64
                mem[_107] = 26
                mem[_107 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _112 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _112 + 68] = mem[idx + _107 + 32]
                        idx = idx + 32
                        continue 
                    mem[_112 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _112 + -mem[64] + 100
                _136 = mem[64]
                mem[64] = mem[64] + 64
                mem[_136] = 26
                mem[_136 + 32] = 'SafeMath: division by zero'
                if stor11 / totalSupply:
                    stor2[address(arg1)] = stor1[address(arg1)] / stor11 / totalSupply
                    stor8[address(arg1)] = 1
                    stor9.length++
                    stor9[stor9.length] = arg1
                _142 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _142 + 68] = mem[idx + _136 + 32]
                    idx = idx + 32
                    continue 
                mem[_142 + 94] = 0
                revert with memory
                  from mem[64]
                   len _142 + -mem[64] + 100
            if idx >= stor9.length:
                revert with 0, 50
            mem[0] = stor9[idx]
            mem[32] = 1
            _104 = mem[64]
            mem[64] = mem[64] + 64
            mem[_104] = 30
            mem[_104 + 32] = 'SafeMath: subtraction overflow'
            if stor1[stor9[idx]] > t:
                _110 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _110 + 68] = mem[idx + _104 + 32]
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
            _131 = mem[64]
            mem[64] = mem[64] + 64
            mem[_131] = 30
            mem[_131 + 32] = 'SafeMath: subtraction overflow'
            if stor2[stor9[idx]] <= s:
                if s < stor2[stor9[idx]]:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - stor2[stor9[idx]]
                t = t - stor1[stor9[idx]]
                continue 
            _138 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _138 + 68] = mem[idx + _131 + 32]
                idx = idx + 32
                continue 
            mem[_138 + 98] = 0
            revert with memory
              from mem[64]
               len _138 + -mem[64] + 100
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
