contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - reflectionFromToken(uint256 arg1, bool arg2)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const _getETHBalance = eth.balance(this.address)


address ownerX;
mapping of uint8 stor1;
mapping of uint256 stor2;
mapping of uint256 stor3;
mapping of uint256 allowance;
mapping of uint8 stor5;
mapping of uint8 stor6;
mapping of uint8 stor7;
mapping of uint8 stor10;
mapping of uint8 stor11;
uint256 totalSupply;
uint256 stor14;
uint256 totalFees;
uint256 _taxFee;
uint256 _teamFee;
uint256 sub_36619c91;
uint256 _maxWalletAmount;
uint256 _maxTxAmount;
array of address stor26;
address _teamWalletAddress;
address _marketingWalletAddress;
address uniswapV2PairAddress;
array of struct stor30;
array of struct stor31;
uint8 cooldownTimerInterval;
uint8 decimals; offset 8
uint256 sub_55b5f10f;
uint8 buyCooldownEnabled;
uint8 sub_0445b6f3; offset 8
uint256 stor34; offset 8
uint256 deadBlocks;
uint8 swapEnabled; offset 8
address stor36;
address uniswapV2RouterAddress; offset 16
uint256 stor36; offset 8
array of address stor2481041784956016742021570618494952475758789857281704946240779902470294861374;

function sub_0445b6f3(?) {
    return bool(sub_0445b6f3)
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

function decimals() {
    return decimals
}

function sub_36619c91(?) {
    return sub_36619c91
}

function _taxFee() {
    return _taxFee
}

function _marketingWalletAddress() {
    return _marketingWalletAddress
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function isExcludedFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor5[address(arg1)])
}

function sub_55b5f10f(?) {
    return sub_55b5f10f
}

function buyCooldownEnabled() {
    return bool(buyCooldownEnabled)
}

function _maxWalletAmount() {
    return _maxWalletAmount
}

function swapEnabled() {
    return bool(swapEnabled)
}

function cooldownTimerInterval() {
    return cooldownTimerInterval
}

function _maxTxAmount() {
    return _maxTxAmount
}

function _teamFee() {
    return _teamFee
}

function isExcluded(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor6[address(arg1)])
}

function ownerX() {
    return ownerX
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function deadBlocks() {
    return deadBlocks
}

function _teamWalletAddress() {
    return _teamWalletAddress
}

function isAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (ownerX == arg1)
}

function sellCoolDown(uint256 arg1) {
    require calldata.size - 4 >= 32
    if ownerX != msg.sender:
        revert with 0, '!Owner'
    sub_55b5f10f = arg1
}

function _setMaxTxAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if ownerX != msg.sender:
        revert with 0, '!Owner'
    _maxTxAmount = arg1
}

function allowedSellAmount() {
    if totalSupply > 0x3333333333333333333333333333333333333333333333333333333333333333:
        revert with 0, 17
    return (5 * totalSupply / 1000)
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ownerX != msg.sender:
        revert with 0, '!Owner'
    stor1[address(arg1)] = 1
}

function unauthorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ownerX != msg.sender:
        revert with 0, '!Owner'
    stor1[address(arg1)] = 0
}

function _setTeamWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ownerX != msg.sender:
        revert with 0, '!Owner'
    _teamWalletAddress = arg1
}

function setSwapEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ownerX != msg.sender:
        revert with 0, '!Owner'
    Mask(248, 0, stor36.field_8) = Mask(248, 0, arg1)
}

function tradingStatus(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if ownerX != msg.sender:
        revert with 0, '!Owner'
    stor34 = Mask(248, 0, arg1)
    deadBlocks = arg2
}

function setExcludeFromFee(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if ownerX != msg.sender:
        revert with 0, '!Owner'
    stor5[address(arg1)] = uint8(arg2)
}

function setIsTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if ownerX != msg.sender:
        revert with 0, '!Owner'
    stor11[address(arg1)] = uint8(arg2)
}

function setIsMaxWalletExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if ownerX != msg.sender:
        revert with 0, '!Owner'
    stor10[address(arg1)] = uint8(arg2)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ownerX != msg.sender:
        revert with 0, '!Owner'
    ownerX = arg1
    stor1[address(arg1)] = 1
    emit OwnershipTransferred(arg1);
}

function setWalletAmountLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if ownerX != msg.sender:
        revert with 0, '!Owner'
    if arg1 < totalSupply / 100:
        revert with 0, 'Check minimum Wallet amount'
    _maxWalletAmount = arg1
}

function cooldownEnabled(bool arg1, uint8 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if ownerX != msg.sender:
        revert with 0, '!Owner'
    buyCooldownEnabled = uint8(arg1)
    cooldownTimerInterval = arg2
}

function _setTaxFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if ownerX != msg.sender:
        revert with 0, '!Owner'
    if arg1 < 1:
        revert with 0, 'taxFee should be in 1 - 25'
    if arg1 > 25:
        revert with 0, 'taxFee should be in 1 - 25'
    _taxFee = arg1
}

function _setTeamFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if ownerX != msg.sender:
        revert with 0, '!Owner'
    if arg1 < 1:
        revert with 0, 'teamFee should be in 1 - 25'
    if arg1 > 25:
        revert with 0, 'teamFee should be in 1 - 25'
    _teamFee = arg1
}

function _setLiquidFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if ownerX != msg.sender:
        revert with 0, '!Owner'
    if arg1 < 1:
        revert with 0, 'liquidFee should be in 1 - 25'
    if arg1 > 25:
        revert with 0, 'liquidFee should be in 1 - 25'
    sub_36619c91 = arg1
}

function withdrawStuckBNB(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ownerX != msg.sender:
        revert with 0, '!Owner'
    call arg1 with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to withdraw BNB !'
}

function botDisabler(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if ownerX != msg.sender:
        revert with 0, '!Owner'
    if sub_0445b6f3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You can't kill someone after trade status is LIVE'
    stor7[address(arg1)] = uint8(arg2)
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

function manualSend() {
    if ownerX != msg.sender:
        revert with 0, '!Owner'
    call _teamWalletAddress with:
       value eth.balance(this.address) / 2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call _marketingWalletAddress with:
       value eth.balance(this.address) / 2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function includeAccount(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ownerX != msg.sender:
        revert with 0, '!Owner'
    if not stor6[address(arg1)]:
        revert with 0, 'Account is already excluded'
    idx = 0
    while idx < stor26.length:
        mem[0] = 26
        if stor26[idx] != arg1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if stor26.length < 1:
            revert with 0, 17
        if stor26.length - 1 >= stor26.length:
            revert with 0, 50
        if idx >= stor26.length:
            revert with 0, 50
        stor26[idx] = stor26[stor26.length]
        stor3[address(arg1)] = 0
        stor6[address(arg1)] = 0
        if not stor26.length:
            revert with 0, 49
        stor26[stor26.length] = 0
        stor26.length--
}

function sub_e367e860(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == bool(cd[36])
    if ownerX != msg.sender:
        revert with 0, '!Owner'
    if sub_0445b6f3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You can't kill someone after trade status is LIVE'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 7
        stor7[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(bool(cd[36]))
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function name() {
    if bool(stor30.length):
        if bool(stor30.length) == uint255(stor30.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor30.length):
            if bool(stor30.length) == uint255(stor30.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor30.length):
                if 31 < uint255(stor30.length) * 0.5:
                    mem[128] = uint256(stor30.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor30.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor30[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor30.length), data=mem[128 len ceil32(uint255(stor30.length) * 0.5)])
                mem[128] = 256 * stor30.length.field_8
        else:
            if bool(stor30.length) == stor30.length.field_1 < 32:
                revert with 0, 34
            if stor30.length.field_1:
                if 31 < stor30.length.field_1:
                    mem[128] = uint256(stor30.field_0)
                    idx = 128
                    s = 0
                    while stor30.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor30[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor30.length), data=mem[128 len ceil32(uint255(stor30.length) * 0.5)])
                mem[128] = 256 * stor30.length.field_8
        mem[ceil32(uint255(stor30.length) * 0.5) + 192 len ceil32(uint255(stor30.length) * 0.5)] = mem[128 len ceil32(uint255(stor30.length) * 0.5)]
        if ceil32(uint255(stor30.length) * 0.5) > uint255(stor30.length) * 0.5:
            mem[ceil32(uint255(stor30.length) * 0.5) + (uint255(stor30.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor30.length), data=mem[128 len ceil32(uint255(stor30.length) * 0.5)], mem[(2 * ceil32(uint255(stor30.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor30.length) * 0.5)]), 
    if bool(stor30.length) == stor30.length.field_1 < 32:
        revert with 0, 34
    if bool(stor30.length):
        if bool(stor30.length) == uint255(stor30.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor30.length):
            if 31 < uint255(stor30.length) * 0.5:
                mem[128] = uint256(stor30.field_0)
                idx = 128
                s = 0
                while (uint255(stor30.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor30[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor30.length % 128, data=mem[128 len ceil32(stor30.length.field_1)])
            mem[128] = 256 * stor30.length.field_8
    else:
        if bool(stor30.length) == stor30.length.field_1 < 32:
            revert with 0, 34
        if stor30.length.field_1:
            if 31 < stor30.length.field_1:
                mem[128] = uint256(stor30.field_0)
                idx = 128
                s = 0
                while stor30.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor30[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor30.length % 128, data=mem[128 len ceil32(stor30.length.field_1)])
            mem[128] = 256 * stor30.length.field_8
    mem[ceil32(stor30.length.field_1) + 192 len ceil32(stor30.length.field_1)] = mem[128 len ceil32(stor30.length.field_1)]
    if ceil32(stor30.length.field_1) > stor30.length.field_1:
        mem[ceil32(stor30.length.field_1) + stor30.length.field_1 + 192] = 0
    return Array(len=stor30.length % 128, data=mem[128 len ceil32(stor30.length.field_1)], mem[(2 * ceil32(stor30.length.field_1)) + 192 len 2 * ceil32(stor30.length.field_1)]), 
}

function symbol() {
    if bool(stor31.length):
        if bool(stor31.length) == uint255(stor31.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor31.length):
            if bool(stor31.length) == uint255(stor31.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor31.length):
                if 31 < uint255(stor31.length) * 0.5:
                    mem[128] = uint256(stor31.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor31.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor31[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor31.length), data=mem[128 len ceil32(uint255(stor31.length) * 0.5)])
                mem[128] = 256 * stor31.length.field_8
        else:
            if bool(stor31.length) == stor31.length.field_1 < 32:
                revert with 0, 34
            if stor31.length.field_1:
                if 31 < stor31.length.field_1:
                    mem[128] = uint256(stor31.field_0)
                    idx = 128
                    s = 0
                    while stor31.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor31[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor31.length), data=mem[128 len ceil32(uint255(stor31.length) * 0.5)])
                mem[128] = 256 * stor31.length.field_8
        mem[ceil32(uint255(stor31.length) * 0.5) + 192 len ceil32(uint255(stor31.length) * 0.5)] = mem[128 len ceil32(uint255(stor31.length) * 0.5)]
        if ceil32(uint255(stor31.length) * 0.5) > uint255(stor31.length) * 0.5:
            mem[ceil32(uint255(stor31.length) * 0.5) + (uint255(stor31.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor31.length), data=mem[128 len ceil32(uint255(stor31.length) * 0.5)], mem[(2 * ceil32(uint255(stor31.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor31.length) * 0.5)]), 
    if bool(stor31.length) == stor31.length.field_1 < 32:
        revert with 0, 34
    if bool(stor31.length):
        if bool(stor31.length) == uint255(stor31.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor31.length):
            if 31 < uint255(stor31.length) * 0.5:
                mem[128] = uint256(stor31.field_0)
                idx = 128
                s = 0
                while (uint255(stor31.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor31[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor31.length % 128, data=mem[128 len ceil32(stor31.length.field_1)])
            mem[128] = 256 * stor31.length.field_8
    else:
        if bool(stor31.length) == stor31.length.field_1 < 32:
            revert with 0, 34
        if stor31.length.field_1:
            if 31 < stor31.length.field_1:
                mem[128] = uint256(stor31.field_0)
                idx = 128
                s = 0
                while stor31.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor31[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor31.length % 128, data=mem[128 len ceil32(stor31.length.field_1)])
            mem[128] = 256 * stor31.length.field_8
    mem[ceil32(stor31.length.field_1) + 192 len ceil32(stor31.length.field_1)] = mem[128 len ceil32(stor31.length.field_1)]
    if ceil32(stor31.length.field_1) > stor31.length.field_1:
        mem[ceil32(stor31.length.field_1) + stor31.length.field_1 + 192] = 0
    return Array(len=stor31.length % 128, data=mem[128 len ceil32(stor31.length.field_1)], mem[(2 * ceil32(stor31.length.field_1)) + 192 len 2 * ceil32(stor31.length.field_1)]), 
}

function tokenFromReflection(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if arg1 > stor14:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    idx = 0
    s = totalSupply
    t = stor14
    while idx < stor26.length:
        mem[0] = stor26[idx]
        mem[32] = 2
        if stor2[stor26[idx]] > t:
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
            if stor14 / totalSupply:
                return (arg1 / stor14 / totalSupply)
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
        if idx >= stor26.length:
            revert with 0, 50
        mem[0] = stor26[idx]
        mem[32] = 3
        if stor3[stor26[idx]] > s:
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
            if stor14 / totalSupply:
                return (arg1 / stor14 / totalSupply)
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
        if idx >= stor26.length:
            revert with 0, 50
        mem[0] = stor26[idx]
        mem[32] = 2
        _97 = mem[64]
        mem[64] = mem[64] + 64
        mem[_97] = 30
        mem[_97 + 32] = 'SafeMath: subtraction overflow'
        if stor2[stor26[idx]] > t:
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
        if t < stor2[stor26[idx]]:
            revert with 0, 17
        if idx >= stor26.length:
            revert with 0, 50
        mem[0] = stor26[idx]
        mem[32] = 3
        _127 = mem[64]
        mem[64] = mem[64] + 64
        mem[_127] = 30
        mem[_127 + 32] = 'SafeMath: subtraction overflow'
        if stor3[stor26[idx]] <= s:
            if s < stor3[stor26[idx]]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s - stor3[stor26[idx]]
            t = t - stor2[stor26[idx]]
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
    if t >= stor14 / totalSupply:
        if not s:
            revert with 0, 'SafeMath: division by zero', 0
        if not t / s:
            revert with 0, 'SafeMath: division by zero', 0
        return (arg1 / t / s)
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor14 / totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    return (arg1 / stor14 / totalSupply)
}

function balanceOf(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor6[address(arg1)]:
        return stor3[address(arg1)]
    mem[0] = arg1
    mem[32] = 2
    if stor2[address(arg1)] > stor14:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    idx = 0
    s = totalSupply
    t = stor14
    while idx < stor26.length:
        mem[0] = stor26[idx]
        mem[32] = 2
        if stor2[stor26[idx]] > t:
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
            if stor14 / totalSupply:
                return (stor2[address(arg1)] / stor14 / totalSupply)
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
        if idx >= stor26.length:
            revert with 0, 50
        mem[0] = stor26[idx]
        mem[32] = 3
        if stor3[stor26[idx]] > s:
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
            if stor14 / totalSupply:
                return (stor2[address(arg1)] / stor14 / totalSupply)
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
        if idx >= stor26.length:
            revert with 0, 50
        mem[0] = stor26[idx]
        mem[32] = 2
        _102 = mem[64]
        mem[64] = mem[64] + 64
        mem[_102] = 30
        mem[_102 + 32] = 'SafeMath: subtraction overflow'
        if stor2[stor26[idx]] > t:
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
        if t < stor2[stor26[idx]]:
            revert with 0, 17
        if idx >= stor26.length:
            revert with 0, 50
        mem[0] = stor26[idx]
        mem[32] = 3
        _132 = mem[64]
        mem[64] = mem[64] + 64
        mem[_132] = 30
        mem[_132 + 32] = 'SafeMath: subtraction overflow'
        if stor3[stor26[idx]] <= s:
            if s < stor3[stor26[idx]]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s - stor3[stor26[idx]]
            t = t - stor2[stor26[idx]]
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
    if t >= stor14 / totalSupply:
        if not s:
            revert with 0, 'SafeMath: division by zero', 0
        if not t / s:
            revert with 0, 'SafeMath: division by zero', 0
        return (stor2[address(arg1)] / t / s)
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor14 / totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    return (stor2[address(arg1)] / stor14 / totalSupply)
}

function excludeAccount(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ownerX != msg.sender:
        revert with 0, '!Owner'
    if arg1 == 0x10ed43c718714eb63d5aa57b78b54704e256024e:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'We can not exclude Uniswap router.'
    if stor6[address(arg1)]:
        revert with 0, 'Account is already excluded'
    if stor2[address(arg1)]:
        mem[0] = arg1
        mem[32] = 2
        if stor2[address(arg1)] > stor14:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
        idx = 0
        s = totalSupply
        t = stor14
        while idx < stor26.length:
            mem[0] = stor26[idx]
            mem[32] = 2
            if stor2[stor26[idx]] > t:
                _102 = mem[64]
                mem[64] = mem[64] + 64
                mem[_102] = 26
                mem[_102 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _106 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _106 + 68] = mem[idx + _102 + 32]
                        idx = idx + 32
                        continue 
                    mem[_106 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _106 + -mem[64] + 100
                _127 = mem[64]
                mem[64] = mem[64] + 64
                mem[_127] = 26
                mem[_127 + 32] = 'SafeMath: division by zero'
                if stor14 / totalSupply:
                    stor3[address(arg1)] = stor2[address(arg1)] / stor14 / totalSupply
                    stor6[address(arg1)] = 1
                    stor26.length++
                    stor57C3[stor26.length] = arg1
                _136 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _136 + 68] = mem[idx + _127 + 32]
                    idx = idx + 32
                    continue 
                mem[_136 + 94] = 0
                revert with memory
                  from mem[64]
                   len _136 + -mem[64] + 100
            if idx >= stor26.length:
                revert with 0, 50
            mem[0] = stor26[idx]
            mem[32] = 3
            if stor3[stor26[idx]] > s:
                _108 = mem[64]
                mem[64] = mem[64] + 64
                mem[_108] = 26
                mem[_108 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _113 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _113 + 68] = mem[idx + _108 + 32]
                        idx = idx + 32
                        continue 
                    mem[_113 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _113 + -mem[64] + 100
                _138 = mem[64]
                mem[64] = mem[64] + 64
                mem[_138] = 26
                mem[_138 + 32] = 'SafeMath: division by zero'
                if stor14 / totalSupply:
                    stor3[address(arg1)] = stor2[address(arg1)] / stor14 / totalSupply
                    stor6[address(arg1)] = 1
                    stor26.length++
                    stor57C3[stor26.length] = arg1
                _143 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _143 + 68] = mem[idx + _138 + 32]
                    idx = idx + 32
                    continue 
                mem[_143 + 94] = 0
                revert with memory
                  from mem[64]
                   len _143 + -mem[64] + 100
            if idx >= stor26.length:
                revert with 0, 50
            mem[0] = stor26[idx]
            mem[32] = 2
            _107 = mem[64]
            mem[64] = mem[64] + 64
            mem[_107] = 30
            mem[_107 + 32] = 'SafeMath: subtraction overflow'
            if stor2[stor26[idx]] > t:
                _112 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _112 + 68] = mem[idx + _107 + 32]
                    idx = idx + 32
                    continue 
                mem[_112 + 98] = 0
                revert with memory
                  from mem[64]
                   len _112 + -mem[64] + 100
            if t < stor2[stor26[idx]]:
                revert with 0, 17
            if idx >= stor26.length:
                revert with 0, 50
            mem[0] = stor26[idx]
            mem[32] = 3
            _137 = mem[64]
            mem[64] = mem[64] + 64
            mem[_137] = 30
            mem[_137 + 32] = 'SafeMath: subtraction overflow'
            if stor3[stor26[idx]] <= s:
                if s < stor3[stor26[idx]]:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - stor3[stor26[idx]]
                t = t - stor2[stor26[idx]]
                continue 
            _142 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _142 + 68] = mem[idx + _137 + 32]
                idx = idx + 32
                continue 
            mem[_142 + 98] = 0
            revert with memory
              from mem[64]
               len _142 + -mem[64] + 100
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if t >= stor14 / totalSupply:
            if not s:
                revert with 0, 'SafeMath: division by zero', 0
            if not t / s:
                revert with 0, 'SafeMath: division by zero', 0
            stor3[address(arg1)] = stor2[address(arg1)] / t / s
        else:
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not stor14 / totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            stor3[address(arg1)] = stor2[address(arg1)] / stor14 / totalSupply
    stor6[address(arg1)] = 1
    stor26.length++
    stor57C3[stor26.length] = arg1
}

function manualSwap() payable {
    mem[64] = 96
    require not msg.value
    if ownerX != msg.sender:
        revert with 0, '!Owner'
    if stor6[address(this.address)]:
        mem[128] = this.address
        staticcall uniswapV2RouterAddress.WETH() with:
                gas gas_remaining wei
        mem[192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[160] = ext_call.return_data[12 len 20]
        if not this.address:
            revert with 0, 'ERC20: approve from the zero address'
        if not uniswapV2RouterAddress:
            revert with 0, 'ERC20: approve to the zero address'
        allowance[address(this.address)][address(stor36.field_0)] = stor3[address(this.address)]
        emit Approval(stor3[address(this.address)], this.address, uniswapV2RouterAddress);
        mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = stor3[address(this.address)]
        idx = 0
        s = ceil32(return_data.size) + 388
        t = 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(uniswapV2RouterAddress)
        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args stor3[address(this.address)], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
    else:
        mem[0] = this.address
        mem[32] = 2
        if stor2[address(this.address)] > stor14:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
        idx = 0
        s = totalSupply
        t = stor14
        while idx < stor26.length:
            mem[0] = stor26[idx]
            mem[32] = 2
            if stor2[stor26[idx]] > t:
                _186 = mem[64]
                mem[64] = mem[64] + 64
                mem[_186] = 26
                mem[_186 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _190 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _190 + 68] = mem[idx + _186 + 32]
                        idx = idx + 32
                        continue 
                    mem[_190 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _190 + -mem[64] + 100
                _211 = mem[64]
                mem[64] = mem[64] + 64
                mem[_211] = 26
                mem[_211 + 32] = 'SafeMath: division by zero'
                if not stor14 / totalSupply:
                    _220 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _220 + 68] = mem[idx + _211 + 32]
                        idx = idx + 32
                        continue 
                    mem[_220 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _220 + -mem[64] + 100
                _245 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_245 + 32 len 64] = call.data[calldata.size len 64]
                if 0 >= mem[_245]:
                    revert with 0, 50
                mem[_245 + 32] = this.address
                staticcall uniswapV2RouterAddress.WETH() with:
                        gas gas_remaining wei
                mem[_245 + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _245 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if 1 >= mem[_245]:
                    revert with 0, 50
                mem[_245 + 64] = ext_call.return_data[12 len 20]
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not uniswapV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                mem[0] = uniswapV2RouterAddress
                mem[32] = sha3(address(this.address), 4)
                allowance[address(this.address)][address(stor36.field_0)] = stor2[address(this.address)] / stor14 / totalSupply
                emit Approval((stor2[address(this.address)] / stor14 / totalSupply), this.address, uniswapV2RouterAddress);
                mem[_245 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[_245 + ceil32(return_data.size) + 100] = stor2[address(this.address)] / stor14 / totalSupply
                mem[_245 + ceil32(return_data.size) + 132] = 0
                mem[_245 + ceil32(return_data.size) + 164] = 160
                mem[_245 + ceil32(return_data.size) + 260] = mem[_245]
                idx = 0
                s = _245 + ceil32(return_data.size) + 292
                t = _245 + 32
                while idx < mem[_245]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_245 + ceil32(return_data.size) + 196] = this.address
                mem[_245 + ceil32(return_data.size) + 228] = block.timestamp
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _245 + ceil32(return_data.size) + (32 * mem[_245]) + -mem[64] + 288]
            else:
                if idx >= stor26.length:
                    revert with 0, 50
                mem[0] = stor26[idx]
                mem[32] = 3
                if stor3[stor26[idx]] <= s:
                    if idx >= stor26.length:
                        revert with 0, 50
                    mem[0] = stor26[idx]
                    mem[32] = 2
                    _191 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_191] = 30
                    mem[_191 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor26[idx]] > t:
                        _196 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _196 + 68] = mem[idx + _191 + 32]
                            idx = idx + 32
                            continue 
                        mem[_196 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _196 + -mem[64] + 100
                    if t < stor2[stor26[idx]]:
                        revert with 0, 17
                    if idx >= stor26.length:
                        revert with 0, 50
                    mem[0] = stor26[idx]
                    mem[32] = 3
                    _221 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_221] = 30
                    mem[_221 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor26[idx]] <= s:
                        if s < stor3[stor26[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor3[stor26[idx]]
                        t = t - stor2[stor26[idx]]
                        continue 
                    _226 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _226 + 68] = mem[idx + _221 + 32]
                        idx = idx + 32
                        continue 
                    mem[_226 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _226 + -mem[64] + 100
                _192 = mem[64]
                mem[64] = mem[64] + 64
                mem[_192] = 26
                mem[_192 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _197 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _197 + 68] = mem[idx + _192 + 32]
                        idx = idx + 32
                        continue 
                    mem[_197 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _197 + -mem[64] + 100
                _222 = mem[64]
                mem[64] = mem[64] + 64
                mem[_222] = 26
                mem[_222 + 32] = 'SafeMath: division by zero'
                if not stor14 / totalSupply:
                    _227 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _227 + 68] = mem[idx + _222 + 32]
                        idx = idx + 32
                        continue 
                    mem[_227 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _227 + -mem[64] + 100
                _254 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_254 + 32 len 64] = call.data[calldata.size len 64]
                if 0 >= mem[_254]:
                    revert with 0, 50
                mem[_254 + 32] = this.address
                staticcall uniswapV2RouterAddress.WETH() with:
                        gas gas_remaining wei
                mem[_254 + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _254 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if 1 >= mem[_254]:
                    revert with 0, 50
                mem[_254 + 64] = ext_call.return_data[12 len 20]
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not uniswapV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                mem[0] = uniswapV2RouterAddress
                mem[32] = sha3(address(this.address), 4)
                allowance[address(this.address)][address(stor36.field_0)] = stor2[address(this.address)] / stor14 / totalSupply
                emit Approval((stor2[address(this.address)] / stor14 / totalSupply), this.address, uniswapV2RouterAddress);
                mem[_254 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[_254 + ceil32(return_data.size) + 100] = stor2[address(this.address)] / stor14 / totalSupply
                mem[_254 + ceil32(return_data.size) + 132] = 0
                mem[_254 + ceil32(return_data.size) + 164] = 160
                mem[_254 + ceil32(return_data.size) + 260] = mem[_254]
                idx = 0
                s = _254 + ceil32(return_data.size) + 292
                t = _254 + 32
                while idx < mem[_254]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_254 + ceil32(return_data.size) + 196] = this.address
                mem[_254 + ceil32(return_data.size) + 228] = block.timestamp
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _254 + ceil32(return_data.size) + (32 * mem[_254]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        _178 = mem[64]
        mem[64] = mem[64] + 64
        mem[_178] = 26
        mem[_178 + 32] = 'SafeMath: division by zero'
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if t < stor14 / totalSupply:
            _202 = mem[64]
            mem[64] = mem[64] + 64
            mem[_202] = 26
            mem[_202 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            _234 = mem[64]
            mem[64] = mem[64] + 64
            mem[_234] = 26
            mem[_234 + 32] = 'SafeMath: division by zero'
            if not stor14 / totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            _266 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_266 + 32 len 64] = call.data[calldata.size len 64]
            if 0 >= mem[_266]:
                revert with 0, 50
            mem[_266 + 32] = this.address
            staticcall uniswapV2RouterAddress.WETH() with:
                    gas gas_remaining wei
            mem[_266 + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _266 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if 1 >= mem[_266]:
                revert with 0, 50
            mem[_266 + 64] = ext_call.return_data[12 len 20]
            if not this.address:
                revert with 0, 'ERC20: approve from the zero address'
            if not uniswapV2RouterAddress:
                revert with 0, 'ERC20: approve to the zero address'
            mem[0] = uniswapV2RouterAddress
            mem[32] = sha3(address(this.address), 4)
            allowance[address(this.address)][address(stor36.field_0)] = stor2[address(this.address)] / stor14 / totalSupply
            emit Approval((stor2[address(this.address)] / stor14 / totalSupply), this.address, uniswapV2RouterAddress);
            mem[_266 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
            mem[_266 + ceil32(return_data.size) + 100] = stor2[address(this.address)] / stor14 / totalSupply
            mem[_266 + ceil32(return_data.size) + 132] = 0
            mem[_266 + ceil32(return_data.size) + 164] = 160
            mem[_266 + ceil32(return_data.size) + 260] = mem[_266]
            idx = 0
            s = _266 + ceil32(return_data.size) + 292
            t = _266 + 32
            while idx < mem[_266]:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(uniswapV2RouterAddress)
            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args stor2[address(this.address)] / stor14 / totalSupply, 0, 160, address(this.address), block.timestamp, mem[_266 + ceil32(return_data.size) + 260 len (32 * mem[_266]) + 32]
        else:
            _201 = mem[64]
            mem[64] = mem[64] + 64
            mem[_201] = 26
            mem[_201 + 32] = 'SafeMath: division by zero'
            if not s:
                revert with 0, 'SafeMath: division by zero', 0
            _233 = mem[64]
            mem[64] = mem[64] + 64
            mem[_233] = 26
            mem[_233 + 32] = 'SafeMath: division by zero'
            if not t / s:
                revert with 0, 'SafeMath: division by zero', 0
            _264 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_264 + 32 len 64] = call.data[calldata.size len 64]
            if 0 >= mem[_264]:
                revert with 0, 50
            mem[_264 + 32] = this.address
            staticcall uniswapV2RouterAddress.WETH() with:
                    gas gas_remaining wei
            mem[_264 + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _264 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if 1 >= mem[_264]:
                revert with 0, 50
            mem[_264 + 64] = ext_call.return_data[12 len 20]
            if not this.address:
                revert with 0, 'ERC20: approve from the zero address'
            if not uniswapV2RouterAddress:
                revert with 0, 'ERC20: approve to the zero address'
            mem[0] = uniswapV2RouterAddress
            mem[32] = sha3(address(this.address), 4)
            allowance[address(this.address)][address(stor36.field_0)] = stor2[address(this.address)] / t / s
            emit Approval((stor2[address(this.address)] / t / s), this.address, uniswapV2RouterAddress);
            mem[_264 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
            mem[_264 + ceil32(return_data.size) + 100] = stor2[address(this.address)] / t / s
            mem[_264 + ceil32(return_data.size) + 132] = 0
            mem[_264 + ceil32(return_data.size) + 164] = 160
            mem[_264 + ceil32(return_data.size) + 260] = mem[_264]
            idx = 0
            s = _264 + ceil32(return_data.size) + 292
            t = _264 + 32
            while idx < mem[_264]:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_264 + ceil32(return_data.size) + 196] = this.address
            mem[_264 + ceil32(return_data.size) + 228] = block.timestamp
            require ext_code.size(uniswapV2RouterAddress)
            call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _264 + ceil32(return_data.size) + (32 * mem[_264]) + -mem[64] + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function deliver(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[0] = msg.sender
    mem[32] = 6
    if stor6[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Excluded addresses cannot call this function'
    if _teamFee > !sub_36619c91:
        revert with 0, 17
    if _teamFee + sub_36619c91 < _teamFee:
        revert with 0, 'SafeMath: addition overflow'
    if not arg1:
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
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
            t = stor14
            while idx < stor26.length:
                mem[0] = stor26[idx]
                mem[32] = 2
                if stor2[stor26[idx]] > t:
                    _1361 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1361] = 26
                    mem[_1361 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _1383 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1383 + 68] = mem[idx + _1361 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1383 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _1383 + -mem[64] + 100
                    if not arg1:
                        _1532 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1532] = 30
                        mem[_1532 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 2
                        _1628 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1628] = 30
                        mem[_1628 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor2[address(msg.sender)]:
                            _1674 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1674 + 68] = mem[idx + _1628 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1674 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1674 + -mem[64] + 100
                        if stor2[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 2
                        _1855 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1855] = 30
                        mem[_1855 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor14:
                            if stor14 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _1928 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1928 + 68] = mem[idx + _1855 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1928 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1928 + -mem[64] + 100
                    if arg1 and stor14 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor14 / totalSupply / arg1 != stor14 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _1581 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1581] = 30
                    mem[_1581 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor14 / totalSupply:
                        _1602 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1602 + 68] = mem[idx + _1581 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1602 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1602 + -mem[64] + 100
                    if arg1 * stor14 / totalSupply < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 2
                    _1786 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1786] = 30
                    mem[_1786 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor14 / totalSupply > stor2[address(msg.sender)]:
                        _1854 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1854 + 68] = mem[idx + _1786 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1854 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1854 + -mem[64] + 100
                    if stor2[address(msg.sender)] < arg1 * stor14 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 2
                    stor2[address(msg.sender)] += -1 * arg1 * stor14 / totalSupply
                    _2086 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2086] = 30
                    mem[_2086 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor14 / totalSupply <= stor14:
                        if stor14 < arg1 * stor14 / totalSupply:
                            revert with 0, 17
                        stor14 += -1 * arg1 * stor14 / totalSupply
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _2158 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2158 + 68] = mem[idx + _2086 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2158 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2158 + -mem[64] + 100
                if idx >= stor26.length:
                    revert with 0, 50
                mem[0] = stor26[idx]
                mem[32] = 3
                if stor3[stor26[idx]] <= s:
                    if idx >= stor26.length:
                        revert with 0, 50
                    mem[0] = stor26[idx]
                    mem[32] = 2
                    _1384 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1384] = 30
                    mem[_1384 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor26[idx]] > t:
                        _1404 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1404 + 68] = mem[idx + _1384 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1404 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1404 + -mem[64] + 100
                    if t < stor2[stor26[idx]]:
                        revert with 0, 17
                    if idx >= stor26.length:
                        revert with 0, 50
                    mem[0] = stor26[idx]
                    mem[32] = 3
                    _1493 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1493] = 30
                    mem[_1493 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor26[idx]] <= s:
                        if s < stor3[stor26[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor3[stor26[idx]]
                        t = t - stor2[stor26[idx]]
                        continue 
                    _1505 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1505 + 68] = mem[idx + _1493 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1505 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1505 + -mem[64] + 100
                _1385 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1385] = 26
                mem[_1385 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _1405 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1405 + 68] = mem[idx + _1385 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1405 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1405 + -mem[64] + 100
                if not arg1:
                    _1549 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1549] = 30
                    mem[_1549 + 32] = 'SafeMath: subtraction overflow'
                    mem[0] = msg.sender
                    mem[32] = 2
                    _1675 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1675] = 30
                    mem[_1675 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor2[address(msg.sender)]:
                        _1719 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1719 + 68] = mem[idx + _1675 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1719 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1719 + -mem[64] + 100
                    if stor2[address(msg.sender)] < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 2
                    _1930 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1930] = 30
                    mem[_1930 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor14:
                        if stor14 < 0:
                            revert with 0, 17
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _1995 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1995 + 68] = mem[idx + _1930 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1995 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1995 + -mem[64] + 100
                if arg1 and stor14 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor14 / totalSupply / arg1 != stor14 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _1603 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1603] = 30
                mem[_1603 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor14 / totalSupply:
                    _1629 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1629 + 68] = mem[idx + _1603 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1629 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1629 + -mem[64] + 100
                if arg1 * stor14 / totalSupply < 0:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 2
                _1857 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1857] = 30
                mem[_1857 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor14 / totalSupply > stor2[address(msg.sender)]:
                    _1929 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1929 + 68] = mem[idx + _1857 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1929 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1929 + -mem[64] + 100
                if stor2[address(msg.sender)] < arg1 * stor14 / totalSupply:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 2
                stor2[address(msg.sender)] += -1 * arg1 * stor14 / totalSupply
                _2160 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2160] = 30
                mem[_2160 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor14 / totalSupply <= stor14:
                    if stor14 < arg1 * stor14 / totalSupply:
                        revert with 0, 17
                    stor14 += -1 * arg1 * stor14 / totalSupply
                    if totalFees > !arg1:
                        revert with 0, 17
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _2212 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _2212 + 68] = mem[idx + _2160 + 32]
                    idx = idx + 32
                    continue 
                mem[_2212 + 98] = 0
                revert with memory
                  from mem[64]
                   len _2212 + -mem[64] + 100
        else:
            if arg1 and _teamFee + sub_36619c91 > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if (_teamFee * arg1) + (sub_36619c91 * arg1) / arg1 != _teamFee + sub_36619c91:
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
            if (_teamFee * arg1) + (sub_36619c91 * arg1) / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < (_teamFee * arg1) + (sub_36619c91 * arg1) / 100:
                revert with 0, 17
            idx = 0
            s = totalSupply
            t = stor14
            while idx < stor26.length:
                mem[0] = stor26[idx]
                mem[32] = 2
                if stor2[stor26[idx]] > t:
                    _1360 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1360] = 26
                    mem[_1360 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _1380 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1380 + 68] = mem[idx + _1360 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1380 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _1380 + -mem[64] + 100
                    if not arg1:
                        _1529 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1529] = 30
                        mem[_1529 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 2
                        _1626 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1626] = 30
                        mem[_1626 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor2[address(msg.sender)]:
                            _1670 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1670 + 68] = mem[idx + _1626 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1670 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1670 + -mem[64] + 100
                        if stor2[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 2
                        _1849 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1849] = 30
                        mem[_1849 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor14:
                            if stor14 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _1922 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1922 + 68] = mem[idx + _1849 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1922 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1922 + -mem[64] + 100
                    if arg1 and stor14 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor14 / totalSupply / arg1 != stor14 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _1576 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1576] = 30
                    mem[_1576 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor14 / totalSupply:
                        _1600 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1600 + 68] = mem[idx + _1576 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1600 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1600 + -mem[64] + 100
                    if arg1 * stor14 / totalSupply < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 2
                    _1782 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1782] = 30
                    mem[_1782 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor14 / totalSupply > stor2[address(msg.sender)]:
                        _1848 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1848 + 68] = mem[idx + _1782 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1848 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1848 + -mem[64] + 100
                    if stor2[address(msg.sender)] < arg1 * stor14 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 2
                    stor2[address(msg.sender)] += -1 * arg1 * stor14 / totalSupply
                    _2078 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2078] = 30
                    mem[_2078 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor14 / totalSupply <= stor14:
                        if stor14 < arg1 * stor14 / totalSupply:
                            revert with 0, 17
                        stor14 += -1 * arg1 * stor14 / totalSupply
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _2152 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2152 + 68] = mem[idx + _2078 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2152 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2152 + -mem[64] + 100
                if idx >= stor26.length:
                    revert with 0, 50
                mem[0] = stor26[idx]
                mem[32] = 3
                if stor3[stor26[idx]] <= s:
                    if idx >= stor26.length:
                        revert with 0, 50
                    mem[0] = stor26[idx]
                    mem[32] = 2
                    _1381 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1381] = 30
                    mem[_1381 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor26[idx]] > t:
                        _1401 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1401 + 68] = mem[idx + _1381 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1401 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1401 + -mem[64] + 100
                    if t < stor2[stor26[idx]]:
                        revert with 0, 17
                    if idx >= stor26.length:
                        revert with 0, 50
                    mem[0] = stor26[idx]
                    mem[32] = 3
                    _1490 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1490] = 30
                    mem[_1490 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor26[idx]] <= s:
                        if s < stor3[stor26[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor3[stor26[idx]]
                        t = t - stor2[stor26[idx]]
                        continue 
                    _1502 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1502 + 68] = mem[idx + _1490 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1502 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1502 + -mem[64] + 100
                _1382 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1382] = 26
                mem[_1382 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _1402 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1402 + 68] = mem[idx + _1382 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1402 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1402 + -mem[64] + 100
                if not arg1:
                    _1547 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1547] = 30
                    mem[_1547 + 32] = 'SafeMath: subtraction overflow'
                    mem[0] = msg.sender
                    mem[32] = 2
                    _1671 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1671] = 30
                    mem[_1671 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor2[address(msg.sender)]:
                        _1715 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1715 + 68] = mem[idx + _1671 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1715 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1715 + -mem[64] + 100
                    if stor2[address(msg.sender)] < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 2
                    _1924 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1924] = 30
                    mem[_1924 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor14:
                        if stor14 < 0:
                            revert with 0, 17
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _1992 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1992 + 68] = mem[idx + _1924 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1992 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1992 + -mem[64] + 100
                if arg1 and stor14 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor14 / totalSupply / arg1 != stor14 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _1601 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1601] = 30
                mem[_1601 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor14 / totalSupply:
                    _1627 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1627 + 68] = mem[idx + _1601 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1627 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1627 + -mem[64] + 100
                if arg1 * stor14 / totalSupply < 0:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 2
                _1851 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1851] = 30
                mem[_1851 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor14 / totalSupply > stor2[address(msg.sender)]:
                    _1923 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1923 + 68] = mem[idx + _1851 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1923 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1923 + -mem[64] + 100
                if stor2[address(msg.sender)] < arg1 * stor14 / totalSupply:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 2
                stor2[address(msg.sender)] += -1 * arg1 * stor14 / totalSupply
                _2154 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2154] = 30
                mem[_2154 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor14 / totalSupply <= stor14:
                    if stor14 < arg1 * stor14 / totalSupply:
                        revert with 0, 17
                    stor14 += -1 * arg1 * stor14 / totalSupply
                    if totalFees > !arg1:
                        revert with 0, 17
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _2210 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _2210 + 68] = mem[idx + _2154 + 32]
                    idx = idx + 32
                    continue 
                mem[_2210 + 98] = 0
                revert with memory
                  from mem[64]
                   len _2210 + -mem[64] + 100
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if t >= stor14 / totalSupply:
            if not s:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                if 0 > stor2[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor2[address(msg.sender)] < 0:
                    revert with 0, 17
                if 0 > stor14:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor14 < 0:
                    revert with 0, 17
            else:
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
                if arg1 * t / s > stor2[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor2[address(msg.sender)] < arg1 * t / s:
                    revert with 0, 17
                stor2[address(msg.sender)] += -1 * arg1 * t / s
                if arg1 * t / s > stor14:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor14 < arg1 * t / s:
                    revert with 0, 17
                stor14 += -1 * arg1 * t / s
        else:
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                if 0 > stor2[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor2[address(msg.sender)] < 0:
                    revert with 0, 17
                if 0 > stor14:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor14 < 0:
                    revert with 0, 17
            else:
                if arg1 and stor14 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor14 / totalSupply / arg1 != stor14 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * stor14 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor14 / totalSupply < 0:
                    revert with 0, 17
                if arg1 * stor14 / totalSupply > stor2[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor2[address(msg.sender)] < arg1 * stor14 / totalSupply:
                    revert with 0, 17
                stor2[address(msg.sender)] += -1 * arg1 * stor14 / totalSupply
                if arg1 * stor14 / totalSupply > stor14:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor14 < arg1 * stor14 / totalSupply:
                    revert with 0, 17
                stor14 += -1 * arg1 * stor14 / totalSupply
    else:
        if arg1 and _taxFee > -1 / arg1:
            revert with 0, 17
        if not arg1:
            revert with 0, 18
        if arg1 * _taxFee / arg1 != _taxFee:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
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
            t = stor14
            while idx < stor26.length:
                mem[0] = stor26[idx]
                mem[32] = 2
                if stor2[stor26[idx]] > t:
                    _1359 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1359] = 26
                    mem[_1359 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _1377 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1377 + 68] = mem[idx + _1359 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1377 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _1377 + -mem[64] + 100
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            _1526 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1526] = 30
                            mem[_1526 + 32] = 'SafeMath: subtraction overflow'
                            mem[0] = msg.sender
                            mem[32] = 2
                            _1623 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1623] = 30
                            mem[_1623 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor2[address(msg.sender)]:
                                _1665 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1665 + 68] = mem[idx + _1623 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1665 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1665 + -mem[64] + 100
                            if stor2[address(msg.sender)] < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 2
                            _1842 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1842] = 30
                            mem[_1842 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor14:
                                if stor14 < 0:
                                    revert with 0, 17
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _1915 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1915 + 68] = mem[idx + _1842 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1915 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1915 + -mem[64] + 100
                        if arg1 * _taxFee / 100 and stor14 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * stor14 / totalSupply / arg1 * _taxFee / 100 != stor14 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _1570 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1570] = 30
                        mem[_1570 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor14 / totalSupply > 0:
                            _1597 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1597 + 68] = mem[idx + _1570 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1597 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1597 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 100 * stor14 / totalSupply:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 2
                        _1776 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1776] = 30
                        mem[_1776 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor2[address(msg.sender)]:
                            _1841 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1841 + 68] = mem[idx + _1776 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1841 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1841 + -mem[64] + 100
                        if stor2[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 2
                        _2069 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2069] = 30
                        mem[_2069 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor14:
                            if stor14 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _2143 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2143 + 68] = mem[idx + _2069 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2143 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2143 + -mem[64] + 100
                    if arg1 and stor14 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor14 / totalSupply / arg1 != stor14 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        _1569 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1569] = 30
                        mem[_1569 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor14 / totalSupply:
                            _1596 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1596 + 68] = mem[idx + _1569 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1596 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1596 + -mem[64] + 100
                        if arg1 * stor14 / totalSupply < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 2
                        _1775 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1775] = 30
                        mem[_1775 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor14 / totalSupply > stor2[address(msg.sender)]:
                            _1840 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1840 + 68] = mem[idx + _1775 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1840 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1840 + -mem[64] + 100
                        if stor2[address(msg.sender)] < arg1 * stor14 / totalSupply:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 2
                        stor2[address(msg.sender)] += -1 * arg1 * stor14 / totalSupply
                        _2067 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2067] = 30
                        mem[_2067 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor14 / totalSupply <= stor14:
                            if stor14 < arg1 * stor14 / totalSupply:
                                revert with 0, 17
                            stor14 += -1 * arg1 * stor14 / totalSupply
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _2142 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2142 + 68] = mem[idx + _2067 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2142 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2142 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor14 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor14 / totalSupply / arg1 * _taxFee / 100 != stor14 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _1664 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1664] = 30
                    mem[_1664 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor14 / totalSupply > arg1 * stor14 / totalSupply:
                        _1707 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1707 + 68] = mem[idx + _1664 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1707 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1707 + -mem[64] + 100
                    if arg1 * stor14 / totalSupply < arg1 * _taxFee / 100 * stor14 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 2
                    _1987 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1987] = 30
                    mem[_1987 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor14 / totalSupply > stor2[address(msg.sender)]:
                        _2066 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2066 + 68] = mem[idx + _1987 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2066 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2066 + -mem[64] + 100
                    if stor2[address(msg.sender)] < arg1 * stor14 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 2
                    stor2[address(msg.sender)] += -1 * arg1 * stor14 / totalSupply
                    _2287 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2287] = 30
                    mem[_2287 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor14 / totalSupply <= stor14:
                        if stor14 < arg1 * stor14 / totalSupply:
                            revert with 0, 17
                        stor14 += -1 * arg1 * stor14 / totalSupply
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _2350 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2350 + 68] = mem[idx + _2287 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2350 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2350 + -mem[64] + 100
                if idx >= stor26.length:
                    revert with 0, 50
                mem[0] = stor26[idx]
                mem[32] = 3
                if stor3[stor26[idx]] <= s:
                    if idx >= stor26.length:
                        revert with 0, 50
                    mem[0] = stor26[idx]
                    mem[32] = 2
                    _1378 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1378] = 30
                    mem[_1378 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor26[idx]] > t:
                        _1398 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1398 + 68] = mem[idx + _1378 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1398 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1398 + -mem[64] + 100
                    if t < stor2[stor26[idx]]:
                        revert with 0, 17
                    if idx >= stor26.length:
                        revert with 0, 50
                    mem[0] = stor26[idx]
                    mem[32] = 3
                    _1487 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1487] = 30
                    mem[_1487 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor26[idx]] <= s:
                        if s < stor3[stor26[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor3[stor26[idx]]
                        t = t - stor2[stor26[idx]]
                        continue 
                    _1499 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1499 + 68] = mem[idx + _1487 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1499 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1499 + -mem[64] + 100
                _1379 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1379] = 26
                mem[_1379 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _1399 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1399 + 68] = mem[idx + _1379 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1399 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1399 + -mem[64] + 100
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        _1545 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1545] = 30
                        mem[_1545 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 2
                        _1667 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1667] = 30
                        mem[_1667 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor2[address(msg.sender)]:
                            _1711 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1711 + 68] = mem[idx + _1667 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1711 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1711 + -mem[64] + 100
                        if stor2[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 2
                        _1918 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1918] = 30
                        mem[_1918 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor14:
                            if stor14 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _1989 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1989 + 68] = mem[idx + _1918 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1989 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1989 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor14 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor14 / totalSupply / arg1 * _taxFee / 100 != stor14 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _1599 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1599] = 30
                    mem[_1599 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor14 / totalSupply > 0:
                        _1625 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1625 + 68] = mem[idx + _1599 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1625 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1625 + -mem[64] + 100
                    if 0 < arg1 * _taxFee / 100 * stor14 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 2
                    _1845 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1845] = 30
                    mem[_1845 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor2[address(msg.sender)]:
                        _1917 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1917 + 68] = mem[idx + _1845 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1917 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1917 + -mem[64] + 100
                    if stor2[address(msg.sender)] < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 2
                    _2148 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2148] = 30
                    mem[_2148 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor14:
                        if stor14 < 0:
                            revert with 0, 17
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _2208 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2208 + 68] = mem[idx + _2148 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2208 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2208 + -mem[64] + 100
                if arg1 and stor14 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor14 / totalSupply / arg1 != stor14 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    _1598 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1598] = 30
                    mem[_1598 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor14 / totalSupply:
                        _1624 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1624 + 68] = mem[idx + _1598 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1624 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1624 + -mem[64] + 100
                    if arg1 * stor14 / totalSupply < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 2
                    _1844 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1844] = 30
                    mem[_1844 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor14 / totalSupply > stor2[address(msg.sender)]:
                        _1916 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1916 + 68] = mem[idx + _1844 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1916 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1916 + -mem[64] + 100
                    if stor2[address(msg.sender)] < arg1 * stor14 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 2
                    stor2[address(msg.sender)] += -1 * arg1 * stor14 / totalSupply
                    _2146 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2146] = 30
                    mem[_2146 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor14 / totalSupply <= stor14:
                        if stor14 < arg1 * stor14 / totalSupply:
                            revert with 0, 17
                        stor14 += -1 * arg1 * stor14 / totalSupply
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _2207 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2207 + 68] = mem[idx + _2146 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2207 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2207 + -mem[64] + 100
                if arg1 * _taxFee / 100 and stor14 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * stor14 / totalSupply / arg1 * _taxFee / 100 != stor14 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _1710 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1710] = 30
                mem[_1710 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor14 / totalSupply > arg1 * stor14 / totalSupply:
                    _1777 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1777 + 68] = mem[idx + _1710 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1777 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1777 + -mem[64] + 100
                if arg1 * stor14 / totalSupply < arg1 * _taxFee / 100 * stor14 / totalSupply:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 2
                _2071 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2071] = 30
                mem[_2071 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor14 / totalSupply > stor2[address(msg.sender)]:
                    _2145 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2145 + 68] = mem[idx + _2071 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2145 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2145 + -mem[64] + 100
                if stor2[address(msg.sender)] < arg1 * stor14 / totalSupply:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 2
                stor2[address(msg.sender)] += -1 * arg1 * stor14 / totalSupply
                _2353 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2353] = 30
                mem[_2353 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor14 / totalSupply <= stor14:
                    if stor14 < arg1 * stor14 / totalSupply:
                        revert with 0, 17
                    stor14 += -1 * arg1 * stor14 / totalSupply
                    if totalFees > !arg1:
                        revert with 0, 17
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _2399 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _2399 + 68] = mem[idx + _2353 + 32]
                    idx = idx + 32
                    continue 
                mem[_2399 + 98] = 0
                revert with memory
                  from mem[64]
                   len _2399 + -mem[64] + 100
        else:
            if arg1 and _teamFee + sub_36619c91 > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if (_teamFee * arg1) + (sub_36619c91 * arg1) / arg1 != _teamFee + sub_36619c91:
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
            if (_teamFee * arg1) + (sub_36619c91 * arg1) / 100 > arg1 - (arg1 * _taxFee / 100):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (arg1 * _taxFee / 100) < (_teamFee * arg1) + (sub_36619c91 * arg1) / 100:
                revert with 0, 17
            idx = 0
            s = totalSupply
            t = stor14
            while idx < stor26.length:
                mem[0] = stor26[idx]
                mem[32] = 2
                if stor2[stor26[idx]] > t:
                    _1358 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1358] = 26
                    mem[_1358 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _1374 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1374 + 68] = mem[idx + _1358 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1374 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _1374 + -mem[64] + 100
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            _1523 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1523] = 30
                            mem[_1523 + 32] = 'SafeMath: subtraction overflow'
                            mem[0] = msg.sender
                            mem[32] = 2
                            _1617 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1617] = 30
                            mem[_1617 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor2[address(msg.sender)]:
                                _1657 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1657 + 68] = mem[idx + _1617 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1657 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1657 + -mem[64] + 100
                            if stor2[address(msg.sender)] < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 2
                            _1832 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1832] = 30
                            mem[_1832 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor14:
                                if stor14 < 0:
                                    revert with 0, 17
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _1903 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1903 + 68] = mem[idx + _1832 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1903 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1903 + -mem[64] + 100
                        if arg1 * _taxFee / 100 and stor14 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * stor14 / totalSupply / arg1 * _taxFee / 100 != stor14 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _1563 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1563] = 30
                        mem[_1563 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor14 / totalSupply > 0:
                            _1593 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1593 + 68] = mem[idx + _1563 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1593 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1593 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 100 * stor14 / totalSupply:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 2
                        _1767 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1767] = 30
                        mem[_1767 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor2[address(msg.sender)]:
                            _1831 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1831 + 68] = mem[idx + _1767 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1831 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1831 + -mem[64] + 100
                        if stor2[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 2
                        _2055 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2055] = 30
                        mem[_2055 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor14:
                            if stor14 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _2131 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2131 + 68] = mem[idx + _2055 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2131 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2131 + -mem[64] + 100
                    if arg1 and stor14 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor14 / totalSupply / arg1 != stor14 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        _1562 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1562] = 30
                        mem[_1562 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor14 / totalSupply:
                            _1592 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1592 + 68] = mem[idx + _1562 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1592 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1592 + -mem[64] + 100
                        if arg1 * stor14 / totalSupply < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 2
                        _1766 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1766] = 30
                        mem[_1766 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor14 / totalSupply > stor2[address(msg.sender)]:
                            _1830 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1830 + 68] = mem[idx + _1766 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1830 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1830 + -mem[64] + 100
                        if stor2[address(msg.sender)] < arg1 * stor14 / totalSupply:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 2
                        stor2[address(msg.sender)] += -1 * arg1 * stor14 / totalSupply
                        _2053 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2053] = 30
                        mem[_2053 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor14 / totalSupply <= stor14:
                            if stor14 < arg1 * stor14 / totalSupply:
                                revert with 0, 17
                            stor14 += -1 * arg1 * stor14 / totalSupply
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _2130 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2130 + 68] = mem[idx + _2053 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2130 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2130 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor14 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor14 / totalSupply / arg1 * _taxFee / 100 != stor14 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _1656 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1656] = 30
                    mem[_1656 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor14 / totalSupply > arg1 * stor14 / totalSupply:
                        _1698 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1698 + 68] = mem[idx + _1656 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1698 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1698 + -mem[64] + 100
                    if arg1 * stor14 / totalSupply < arg1 * _taxFee / 100 * stor14 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 2
                    _1980 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1980] = 30
                    mem[_1980 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor14 / totalSupply > stor2[address(msg.sender)]:
                        _2052 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2052 + 68] = mem[idx + _1980 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2052 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2052 + -mem[64] + 100
                    if stor2[address(msg.sender)] < arg1 * stor14 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 2
                    stor2[address(msg.sender)] += -1 * arg1 * stor14 / totalSupply
                    _2274 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2274] = 30
                    mem[_2274 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor14 / totalSupply <= stor14:
                        if stor14 < arg1 * stor14 / totalSupply:
                            revert with 0, 17
                        stor14 += -1 * arg1 * stor14 / totalSupply
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _2338 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2338 + 68] = mem[idx + _2274 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2338 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2338 + -mem[64] + 100
                if idx >= stor26.length:
                    revert with 0, 50
                mem[0] = stor26[idx]
                mem[32] = 3
                if stor3[stor26[idx]] <= s:
                    if idx >= stor26.length:
                        revert with 0, 50
                    mem[0] = stor26[idx]
                    mem[32] = 2
                    _1375 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1375] = 30
                    mem[_1375 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor26[idx]] > t:
                        _1395 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1395 + 68] = mem[idx + _1375 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1395 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1395 + -mem[64] + 100
                    if t < stor2[stor26[idx]]:
                        revert with 0, 17
                    if idx >= stor26.length:
                        revert with 0, 50
                    mem[0] = stor26[idx]
                    mem[32] = 3
                    _1484 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1484] = 30
                    mem[_1484 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor26[idx]] <= s:
                        if s < stor3[stor26[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor3[stor26[idx]]
                        t = t - stor2[stor26[idx]]
                        continue 
                    _1496 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1496 + 68] = mem[idx + _1484 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1496 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1496 + -mem[64] + 100
                _1376 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1376] = 26
                mem[_1376 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _1396 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1396 + 68] = mem[idx + _1376 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1396 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1396 + -mem[64] + 100
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        _1543 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1543] = 30
                        mem[_1543 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 2
                        _1659 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1659] = 30
                        mem[_1659 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor2[address(msg.sender)]:
                            _1702 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1702 + 68] = mem[idx + _1659 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1702 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1702 + -mem[64] + 100
                        if stor2[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 2
                        _1906 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1906] = 30
                        mem[_1906 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor14:
                            if stor14 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _1982 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1982 + 68] = mem[idx + _1906 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1982 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1982 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor14 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor14 / totalSupply / arg1 * _taxFee / 100 != stor14 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _1595 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1595] = 30
                    mem[_1595 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor14 / totalSupply > 0:
                        _1619 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1619 + 68] = mem[idx + _1595 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1619 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1619 + -mem[64] + 100
                    if 0 < arg1 * _taxFee / 100 * stor14 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 2
                    _1835 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1835] = 30
                    mem[_1835 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor2[address(msg.sender)]:
                        _1905 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1905 + 68] = mem[idx + _1835 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1905 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1905 + -mem[64] + 100
                    if stor2[address(msg.sender)] < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 2
                    _2136 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2136] = 30
                    mem[_2136 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor14:
                        if stor14 < 0:
                            revert with 0, 17
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _2203 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2203 + 68] = mem[idx + _2136 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2203 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2203 + -mem[64] + 100
                if arg1 and stor14 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor14 / totalSupply / arg1 != stor14 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    _1594 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1594] = 30
                    mem[_1594 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor14 / totalSupply:
                        _1618 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1618 + 68] = mem[idx + _1594 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1618 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1618 + -mem[64] + 100
                    if arg1 * stor14 / totalSupply < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 2
                    _1834 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1834] = 30
                    mem[_1834 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor14 / totalSupply > stor2[address(msg.sender)]:
                        _1904 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1904 + 68] = mem[idx + _1834 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1904 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1904 + -mem[64] + 100
                    if stor2[address(msg.sender)] < arg1 * stor14 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 2
                    stor2[address(msg.sender)] += -1 * arg1 * stor14 / totalSupply
                    _2134 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2134] = 30
                    mem[_2134 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor14 / totalSupply <= stor14:
                        if stor14 < arg1 * stor14 / totalSupply:
                            revert with 0, 17
                        stor14 += -1 * arg1 * stor14 / totalSupply
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _2202 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2202 + 68] = mem[idx + _2134 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2202 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2202 + -mem[64] + 100
                if arg1 * _taxFee / 100 and stor14 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * stor14 / totalSupply / arg1 * _taxFee / 100 != stor14 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _1701 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1701] = 30
                mem[_1701 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor14 / totalSupply > arg1 * stor14 / totalSupply:
                    _1768 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1768 + 68] = mem[idx + _1701 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1768 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1768 + -mem[64] + 100
                if arg1 * stor14 / totalSupply < arg1 * _taxFee / 100 * stor14 / totalSupply:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 2
                _2057 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2057] = 30
                mem[_2057 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor14 / totalSupply > stor2[address(msg.sender)]:
                    _2133 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2133 + 68] = mem[idx + _2057 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2133 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2133 + -mem[64] + 100
                if stor2[address(msg.sender)] < arg1 * stor14 / totalSupply:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 2
                stor2[address(msg.sender)] += -1 * arg1 * stor14 / totalSupply
                _2341 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2341] = 30
                mem[_2341 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor14 / totalSupply <= stor14:
                    if stor14 < arg1 * stor14 / totalSupply:
                        revert with 0, 17
                    stor14 += -1 * arg1 * stor14 / totalSupply
                    if totalFees > !arg1:
                        revert with 0, 17
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _2396 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _2396 + 68] = mem[idx + _2341 + 32]
                    idx = idx + 32
                    continue 
                mem[_2396 + 98] = 0
                revert with memory
                  from mem[64]
                   len _2396 + -mem[64] + 100
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if t >= stor14 / totalSupply:
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
                if 0 > stor2[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor2[address(msg.sender)] < 0:
                    revert with 0, 17
                if 0 > stor14:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor14 < 0:
                    revert with 0, 17
            else:
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
                if arg1 * t / s > stor2[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor2[address(msg.sender)] < arg1 * t / s:
                    revert with 0, 17
                stor2[address(msg.sender)] += -1 * arg1 * t / s
                if arg1 * t / s > stor14:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor14 < arg1 * t / s:
                    revert with 0, 17
                stor14 += -1 * arg1 * t / s
        else:
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                if arg1 * _taxFee / 100:
                    if arg1 * _taxFee / 100 and stor14 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor14 / totalSupply / arg1 * _taxFee / 100 != stor14 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _taxFee / 100 * stor14 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * _taxFee / 100 * stor14 / totalSupply:
                        revert with 0, 17
                if 0 > stor2[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor2[address(msg.sender)] < 0:
                    revert with 0, 17
                if 0 > stor14:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor14 < 0:
                    revert with 0, 17
            else:
                if arg1 and stor14 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor14 / totalSupply / arg1 != stor14 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    if 0 > arg1 * stor14 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor14 / totalSupply < 0:
                        revert with 0, 17
                else:
                    if arg1 * _taxFee / 100 and stor14 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor14 / totalSupply / arg1 * _taxFee / 100 != stor14 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _taxFee / 100 * stor14 / totalSupply > arg1 * stor14 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor14 / totalSupply < arg1 * _taxFee / 100 * stor14 / totalSupply:
                        revert with 0, 17
                if arg1 * stor14 / totalSupply > stor2[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor2[address(msg.sender)] < arg1 * stor14 / totalSupply:
                    revert with 0, 17
                stor2[address(msg.sender)] += -1 * arg1 * stor14 / totalSupply
                if arg1 * stor14 / totalSupply > stor14:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor14 < arg1 * stor14 / totalSupply:
                    revert with 0, 17
                stor14 += -1 * arg1 * stor14 / totalSupply
    if totalFees > !arg1:
        revert with 0, 17
    if totalFees + arg1 < totalFees:
        revert with 0, 'SafeMath: addition overflow'
    totalFees += arg1
}



}
