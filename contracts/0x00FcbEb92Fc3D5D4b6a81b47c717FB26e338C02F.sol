contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - deliver(uint256 arg1)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
address owner;
address stor1;
uint256 geUnlockTime;
uint8 maxLiqFee; offset 160
uint8 maxTaxFee; offset 168
uint8 maxBurnFee; offset 176
uint8 sub_51330a19; offset 184
uint8 sub_15fa749a; offset 192
uint8 minMxTxPercentage; offset 200
uint8 sub_70690b11; offset 208
mapping of uint256 stor4;
mapping of uint256 stor5;
mapping of uint256 allowance;
mapping of uint8 stor7;
mapping of uint8 stor8;
array of address stor9;
address routerAddress;
uint256 _tTotal;
uint256 stor12;
uint256 totalFees;
uint8 sub_cbfddf74;
array of struct stor15;
array of struct stor16;
uint8 decimals;
uint8 _taxFee; offset 8
uint8 _liquidityFee; offset 24
uint8 _burnFee; offset 40
uint8 stor17; offset 48
uint8 _walletFee; offset 56
uint8 _buybackFee; offset 72
uint64 stor17;
address feeWalletAddress; offset 88
uint256 stor17; offset 80
uint256 stor17; offset 64
uint256 stor17;
uint256 _maxTxAmount;
uint256 _maxWalletAmount;
uint256 numTokensSellToAddToLiquidity;
uint256 buyBackUpperLimitAmount;

function totalFees() {
    return totalFees
}

function sub_15fa749a(?) {
    return sub_15fa749a
}

function totalSupply() {
    return _tTotal
}

function _buybackFee() {
    return _buybackFee
}

function decimals() {
    return decimals
}

function minMxTxPercentage() {
    return minMxTxPercentage
}

function _taxFee() {
    return _taxFee
}

function maxBurnFee() {
    return maxBurnFee
}

function maxLiqFee() {
    return maxLiqFee
}

function sub_51330a19(?) {
    return sub_51330a19
}

function isExcludedFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor7[address(arg1)])
}

function _walletFee() {
    return _walletFee
}

function _liquidityFee() {
    return _liquidityFee
}

function _maxWalletAmount() {
    return _maxWalletAmount
}

function sub_70690b11(?) {
    return sub_70690b11
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

function _tTotal() {
    return _tTotal
}

function geUnlockTime() {
    return geUnlockTime
}

function buyBackUpperLimitAmount() {
    return buyBackUpperLimitAmount
}

function _burnFee() {
    return _burnFee
}

function maxTaxFee() {
    return maxTaxFee
}

function sub_cbfddf74(?) {
    return bool(sub_cbfddf74)
}

function numTokensSellToAddToLiquidity() {
    return numTokensSellToAddToLiquidity
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function feeWallet() {
    return feeWalletAddress
}

function router() {
    return routerAddress
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit 0x658be007: owner, 0
    owner = 0
}

function includeInFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor7[address(arg1)] = 0
}

function excludeFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor7[address(arg1)] = 1
}

function setFeeWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'ZERO ADDRESS'
    feeWalletAddress = arg1
}

function setBuybackUpperLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    buyBackUpperLimitAmount = 10^18 * arg1
}

function lock(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = owner
    owner = 0
    if block.timestamp > !arg1:
        revert with 0, 17
    geUnlockTime = block.timestamp + arg1
    emit 0x658be007: owner, 0
}

function unlock() {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You don't have permission to unlock the token contract'
    if block.timestamp <= geUnlockTime:
        revert with 0, 'Contract is locked until 7 days'
    emit 0x658be007: owner, stor1
    owner = stor1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0, 'ERC20: approve from zero address'
    if not arg1:
        revert with 0, 'ERC20: approve to zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
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

function recoverBEP20(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if this.address == arg1:
        revert with 0, 'Self withdraw'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function setMaxTxPercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < minMxTxPercentage:
        revert with 0, 'err'
    if arg1 > 100:
        revert with 0, 'err'
    if not _tTotal:
        _maxTxAmount = 0
    else:
        if _tTotal and arg1 > -1 / _tTotal:
            revert with 0, 17
        if not _tTotal:
            revert with 0, 18
        if _tTotal * arg1 / _tTotal != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        _maxTxAmount = _tTotal * arg1 / 100
}

function setMaxWalletPercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < sub_70690b11:
        revert with 0, 'err'
    if arg1 > 100:
        revert with 0, 'err'
    if not _tTotal:
        _maxWalletAmount = 0
    else:
        if _tTotal and arg1 > -1 / _tTotal:
            revert with 0, 17
        if not _tTotal:
            revert with 0, 18
        if _tTotal * arg1 / _tTotal != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        _maxWalletAmount = _tTotal * arg1 / 100
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if allowance[msg.sender][address(arg1)] + arg2 < allowance[msg.sender][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0, 'ERC20: approve from zero address'
    if not arg1:
        revert with 0, 'ERC20: approve to zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > allowance[msg.sender][address(arg1)]:
        revert with 0, 32, 37, 0xe045524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0, 'ERC20: approve from zero address'
    if not arg1:
        revert with 0, 'ERC20: approve to zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function includeInReward(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor8[address(arg1)]:
        revert with 0, 'Already excluded'
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
        stor5[address(arg1)] = 0
        stor8[address(arg1)] = 0
        if not stor9.length:
            revert with 0, 49
        stor9[stor9.length] = 0
        stor9.length--
}

function setAllFeePercent(uint8 arg1, uint8 arg2, uint8 arg3, uint8 arg4, uint8 arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > maxTaxFee:
        revert with 0, 'TF err'
    if arg2 > maxLiqFee:
        revert with 0, 'LF err'
    if arg3 > maxBurnFee:
        revert with 0, 'BF err'
    if arg4 > sub_51330a19:
        revert with 0, 'WF err'
    if arg5 > sub_15fa749a:
        revert with 0, 'BBF err'
    stor17.field_0 % 72057594037927936 = 0xffffffffffffffffffffffffffffffffffffffffffff00ffffff00ffffffffff and uint8(arg2) << 24 or uint8(arg1) << 8 or -4278255361 and uint256(stor17.field_0) % 72057594037927936
    _burnFee = arg3
    uint8(stor17.field_48) = 0
    _walletFee = arg4
    Mask(192, 0, stor17.field_64) = Mask(192, 64, 0xffffffffffffffffffffffffffffffffffffffffffff00ffffff00ffffffffff and uint8(arg2) << 24 or uint8(arg1) << 8 or -4278255361 and uint256(stor17.field_0)) >> 64
    _buybackFee = arg5
    Mask(176, 0, stor17.field_80) = 0
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

function _name() {
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

function _symbol() {
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
    if arg1 > stor12:
        revert with 0, 'Amt must be less than tot refl'
    idx = 0
    s = _tTotal
    t = stor12
    while idx < stor9.length:
        mem[0] = stor9[idx]
        mem[32] = 4
        if stor4[stor9[idx]] > t:
            _92 = mem[64]
            mem[64] = mem[64] + 64
            mem[_92] = 26
            mem[_92 + 32] = 'SafeMath: division by zero'
            if not _tTotal:
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
            if stor12 / _tTotal:
                return (arg1 / stor12 / _tTotal)
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
        mem[32] = 5
        if stor5[stor9[idx]] > s:
            _98 = mem[64]
            mem[64] = mem[64] + 64
            mem[_98] = 26
            mem[_98 + 32] = 'SafeMath: division by zero'
            if not _tTotal:
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
            if stor12 / _tTotal:
                return (arg1 / stor12 / _tTotal)
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
        mem[32] = 4
        _97 = mem[64]
        mem[64] = mem[64] + 64
        mem[_97] = 30
        mem[_97 + 32] = 'SafeMath: subtraction overflow'
        if stor4[stor9[idx]] > t:
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
        if t < stor4[stor9[idx]]:
            revert with 0, 17
        if idx >= stor9.length:
            revert with 0, 50
        mem[0] = stor9[idx]
        mem[32] = 5
        _127 = mem[64]
        mem[64] = mem[64] + 64
        mem[_127] = 30
        mem[_127 + 32] = 'SafeMath: subtraction overflow'
        if stor5[stor9[idx]] <= s:
            if s < stor5[stor9[idx]]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s - stor5[stor9[idx]]
            t = t - stor4[stor9[idx]]
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
    if not _tTotal:
        revert with 0, 'SafeMath: division by zero', 0
    if t >= stor12 / _tTotal:
        if not s:
            revert with 0, 'SafeMath: division by zero', 0
        if not t / s:
            revert with 0, 'SafeMath: division by zero', 0
        return (arg1 / t / s)
    if not _tTotal:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor12 / _tTotal:
        revert with 0, 'SafeMath: division by zero', 0
    return (arg1 / stor12 / _tTotal)
}

function balanceOf(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor8[address(arg1)]:
        return stor5[address(arg1)]
    mem[0] = arg1
    mem[32] = 4
    if stor4[address(arg1)] > stor12:
        revert with 0, 'Amt must be less than tot refl'
    idx = 0
    s = _tTotal
    t = stor12
    while idx < stor9.length:
        mem[0] = stor9[idx]
        mem[32] = 4
        if stor4[stor9[idx]] > t:
            _97 = mem[64]
            mem[64] = mem[64] + 64
            mem[_97] = 26
            mem[_97 + 32] = 'SafeMath: division by zero'
            if not _tTotal:
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
            if stor12 / _tTotal:
                return (stor4[address(arg1)] / stor12 / _tTotal)
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
        mem[32] = 5
        if stor5[stor9[idx]] > s:
            _103 = mem[64]
            mem[64] = mem[64] + 64
            mem[_103] = 26
            mem[_103 + 32] = 'SafeMath: division by zero'
            if not _tTotal:
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
            if stor12 / _tTotal:
                return (stor4[address(arg1)] / stor12 / _tTotal)
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
        mem[32] = 4
        _102 = mem[64]
        mem[64] = mem[64] + 64
        mem[_102] = 30
        mem[_102 + 32] = 'SafeMath: subtraction overflow'
        if stor4[stor9[idx]] > t:
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
        if t < stor4[stor9[idx]]:
            revert with 0, 17
        if idx >= stor9.length:
            revert with 0, 50
        mem[0] = stor9[idx]
        mem[32] = 5
        _132 = mem[64]
        mem[64] = mem[64] + 64
        mem[_132] = 30
        mem[_132 + 32] = 'SafeMath: subtraction overflow'
        if stor5[stor9[idx]] <= s:
            if s < stor5[stor9[idx]]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s - stor5[stor9[idx]]
            t = t - stor4[stor9[idx]]
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
    if not _tTotal:
        revert with 0, 'SafeMath: division by zero', 0
    if t >= stor12 / _tTotal:
        if not s:
            revert with 0, 'SafeMath: division by zero', 0
        if not t / s:
            revert with 0, 'SafeMath: division by zero', 0
        return (stor4[address(arg1)] / t / s)
    if not _tTotal:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor12 / _tTotal:
        revert with 0, 'SafeMath: division by zero', 0
    return (stor4[address(arg1)] / stor12 / _tTotal)
}

function excludeFromReward(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor8[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Account is already excluded from reward'
    if stor4[address(arg1)]:
        mem[0] = arg1
        mem[32] = 4
        if stor4[address(arg1)] > stor12:
            revert with 0, 'Amt must be less than tot refl'
        idx = 0
        s = _tTotal
        t = stor12
        while idx < stor9.length:
            mem[0] = stor9[idx]
            mem[32] = 4
            if stor4[stor9[idx]] > t:
                _100 = mem[64]
                mem[64] = mem[64] + 64
                mem[_100] = 26
                mem[_100 + 32] = 'SafeMath: division by zero'
                if not _tTotal:
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
                if stor12 / _tTotal:
                    stor5[address(arg1)] = stor4[address(arg1)] / stor12 / _tTotal
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
            mem[32] = 5
            if stor5[stor9[idx]] > s:
                _106 = mem[64]
                mem[64] = mem[64] + 64
                mem[_106] = 26
                mem[_106 + 32] = 'SafeMath: division by zero'
                if not _tTotal:
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
                if stor12 / _tTotal:
                    stor5[address(arg1)] = stor4[address(arg1)] / stor12 / _tTotal
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
            mem[32] = 4
            _105 = mem[64]
            mem[64] = mem[64] + 64
            mem[_105] = 30
            mem[_105 + 32] = 'SafeMath: subtraction overflow'
            if stor4[stor9[idx]] > t:
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
            if t < stor4[stor9[idx]]:
                revert with 0, 17
            if idx >= stor9.length:
                revert with 0, 50
            mem[0] = stor9[idx]
            mem[32] = 5
            _135 = mem[64]
            mem[64] = mem[64] + 64
            mem[_135] = 30
            mem[_135 + 32] = 'SafeMath: subtraction overflow'
            if stor5[stor9[idx]] <= s:
                if s < stor5[stor9[idx]]:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - stor5[stor9[idx]]
                t = t - stor4[stor9[idx]]
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
        if not _tTotal:
            revert with 0, 'SafeMath: division by zero', 0
        if t >= stor12 / _tTotal:
            if not s:
                revert with 0, 'SafeMath: division by zero', 0
            if not t / s:
                revert with 0, 'SafeMath: division by zero', 0
            stor5[address(arg1)] = stor4[address(arg1)] / t / s
        else:
            if not _tTotal:
                revert with 0, 'SafeMath: division by zero', 0
            if not stor12 / _tTotal:
                revert with 0, 'SafeMath: division by zero', 0
            stor5[address(arg1)] = stor4[address(arg1)] / stor12 / _tTotal
    stor8[address(arg1)] = 1
    stor9.length++
    stor9[stor9.length] = arg1
}

function reflectionFromToken(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg1 > _tTotal:
        revert with 0, 'Amt must be less than supply'
    if arg2:
        if not arg1:
            mem[96] = 26
            mem[128] = 'SafeMath: division by zero'
            if _liquidityFee > -_burnFee + 255:
                revert with 0, 17
            if uint8(_burnFee + _liquidityFee) > -_walletFee + 255:
                revert with 0, 17
            if uint8(_walletFee + uint8(_burnFee + _liquidityFee)) > -_buybackFee + 255:
                revert with 0, 17
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
                s = _tTotal
                t = stor12
                while idx < stor9.length:
                    mem[0] = stor9[idx]
                    mem[32] = 4
                    if stor4[stor9[idx]] > t:
                        _2470 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2470] = 26
                        mem[_2470 + 32] = 'SafeMath: division by zero'
                        if not _tTotal:
                            _2508 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _2508 + 68] = mem[idx + _2470 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2508 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _2508 + -mem[64] + 100
                        if not arg1:
                            return 0
                        if arg1 and stor12 / _tTotal > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 * stor12 / _tTotal / arg1 != stor12 / _tTotal:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2938 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2938] = 30
                        mem[_2938 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / _tTotal:
                            _2996 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2996 + 68] = mem[idx + _2938 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2996 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2996 + -mem[64] + 100
                        if arg1 * stor12 / _tTotal < 0:
                            revert with 0, 17
                        _3243 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3243] = 30
                        mem[_3243 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor12 / _tTotal:
                            if arg1 * stor12 / _tTotal < 0:
                                revert with 0, 17
                            return (arg1 * stor12 / _tTotal)
                        _3366 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3366 + 68] = mem[idx + _3243 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3366 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3366 + -mem[64] + 100
                    if idx >= stor9.length:
                        revert with 0, 50
                    mem[0] = stor9[idx]
                    mem[32] = 5
                    if stor5[stor9[idx]] <= s:
                        if idx >= stor9.length:
                            revert with 0, 50
                        mem[0] = stor9[idx]
                        mem[32] = 4
                        _2509 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2509] = 30
                        mem[_2509 + 32] = 'SafeMath: subtraction overflow'
                        if stor4[stor9[idx]] > t:
                            _2549 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2549 + 68] = mem[idx + _2509 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2549 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2549 + -mem[64] + 100
                        if t < stor4[stor9[idx]]:
                            revert with 0, 17
                        if idx >= stor9.length:
                            revert with 0, 50
                        mem[0] = stor9[idx]
                        mem[32] = 5
                        _2726 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2726] = 30
                        mem[_2726 + 32] = 'SafeMath: subtraction overflow'
                        if stor5[stor9[idx]] <= s:
                            if s < stor5[stor9[idx]]:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s - stor5[stor9[idx]]
                            t = t - stor4[stor9[idx]]
                            continue 
                        _2750 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2750 + 68] = mem[idx + _2726 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2750 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2750 + -mem[64] + 100
                    _2510 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2510] = 26
                    mem[_2510 + 32] = 'SafeMath: division by zero'
                    if not _tTotal:
                        _2550 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2550 + 68] = mem[idx + _2510 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2550 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2550 + -mem[64] + 100
                    if not arg1:
                        return 0
                    if arg1 and stor12 / _tTotal > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor12 / _tTotal / arg1 != stor12 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2998 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2998] = 30
                    mem[_2998 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / _tTotal:
                        _3050 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3050 + 68] = mem[idx + _2998 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3050 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3050 + -mem[64] + 100
                    if arg1 * stor12 / _tTotal < 0:
                        revert with 0, 17
                    _3367 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3367] = 30
                    mem[_3367 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor12 / _tTotal:
                        if arg1 * stor12 / _tTotal < 0:
                            revert with 0, 17
                        return (arg1 * stor12 / _tTotal)
                    _3496 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3496 + 68] = mem[idx + _3367 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3496 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3496 + -mem[64] + 100
                if not _tTotal:
                    revert with 0, 'SafeMath: division by zero', 0
                if t >= stor12 / _tTotal:
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
                if not _tTotal:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    return 0
                if arg1 and stor12 / _tTotal > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor12 / _tTotal / arg1 != stor12 / _tTotal:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * stor12 / _tTotal:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / _tTotal < 0:
                    revert with 0, 17
                if 0 > arg1 * stor12 / _tTotal:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / _tTotal < 0:
                    revert with 0, 17
                return (arg1 * stor12 / _tTotal)
            if arg1 and uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / arg1 != uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))):
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
            if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                revert with 0, 17
            idx = 0
            s = _tTotal
            t = stor12
            while idx < stor9.length:
                mem[0] = stor9[idx]
                mem[32] = 4
                if stor4[stor9[idx]] > t:
                    _2469 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2469] = 26
                    mem[_2469 + 32] = 'SafeMath: division by zero'
                    if not _tTotal:
                        _2505 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2505 + 68] = mem[idx + _2469 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2505 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2505 + -mem[64] + 100
                    if not arg1:
                        if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                            return 0
                        if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 and stor12 / _tTotal > -1 / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                            revert with 0, 17
                        if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                            revert with 0, 18
                        if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 != stor12 / _tTotal:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2934 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2934] = 30
                        mem[_2934 + 32] = 'SafeMath: subtraction overflow'
                        _3237 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3237] = 30
                        mem[_3237 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal <= 0:
                            if 0 < arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal:
                                revert with 0, 17
                            return (-1 * arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal)
                        _3361 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3361 + 68] = mem[idx + _3237 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3361 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3361 + -mem[64] + 100
                    if arg1 and stor12 / _tTotal > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor12 / _tTotal / arg1 != stor12 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                        _2933 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2933] = 30
                        mem[_2933 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / _tTotal:
                            _2992 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2992 + 68] = mem[idx + _2933 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2992 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2992 + -mem[64] + 100
                        if arg1 * stor12 / _tTotal < 0:
                            revert with 0, 17
                        _3235 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3235] = 30
                        mem[_3235 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor12 / _tTotal:
                            if arg1 * stor12 / _tTotal < 0:
                                revert with 0, 17
                            return (arg1 * stor12 / _tTotal)
                        _3360 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3360 + 68] = mem[idx + _3235 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3360 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3360 + -mem[64] + 100
                    if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 and stor12 / _tTotal > -1 / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                        revert with 0, 17
                    if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                        revert with 0, 18
                    if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 != stor12 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3131 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3131] = 30
                    mem[_3131 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / _tTotal:
                        _3234 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3234 + 68] = mem[idx + _3131 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3234 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3234 + -mem[64] + 100
                    if arg1 * stor12 / _tTotal < 0:
                        revert with 0, 17
                    _3649 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3649] = 30
                    mem[_3649 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal <= arg1 * stor12 / _tTotal:
                        if arg1 * stor12 / _tTotal < arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal:
                            revert with 0, 17
                        return ((arg1 * stor12 / _tTotal) - (arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal))
                    _3819 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3819 + 68] = mem[idx + _3649 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3819 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3819 + -mem[64] + 100
                if idx >= stor9.length:
                    revert with 0, 50
                mem[0] = stor9[idx]
                mem[32] = 5
                if stor5[stor9[idx]] <= s:
                    if idx >= stor9.length:
                        revert with 0, 50
                    mem[0] = stor9[idx]
                    mem[32] = 4
                    _2506 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2506] = 30
                    mem[_2506 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor9[idx]] > t:
                        _2546 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2546 + 68] = mem[idx + _2506 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2546 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2546 + -mem[64] + 100
                    if t < stor4[stor9[idx]]:
                        revert with 0, 17
                    if idx >= stor9.length:
                        revert with 0, 50
                    mem[0] = stor9[idx]
                    mem[32] = 5
                    _2723 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2723] = 30
                    mem[_2723 + 32] = 'SafeMath: subtraction overflow'
                    if stor5[stor9[idx]] <= s:
                        if s < stor5[stor9[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor5[stor9[idx]]
                        t = t - stor4[stor9[idx]]
                        continue 
                    _2747 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2747 + 68] = mem[idx + _2723 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2747 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2747 + -mem[64] + 100
                _2507 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2507] = 26
                mem[_2507 + 32] = 'SafeMath: division by zero'
                if not _tTotal:
                    _2547 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2547 + 68] = mem[idx + _2507 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2547 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2547 + -mem[64] + 100
                if not arg1:
                    if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                        return 0
                    if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 and stor12 / _tTotal > -1 / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                        revert with 0, 17
                    if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                        revert with 0, 18
                    if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 != stor12 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2995 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2995] = 30
                    mem[_2995 + 32] = 'SafeMath: subtraction overflow'
                    _3365 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3365] = 30
                    mem[_3365 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal <= 0:
                        if 0 < arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal:
                            revert with 0, 17
                        return (-1 * arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal)
                    _3495 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3495 + 68] = mem[idx + _3365 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3495 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3495 + -mem[64] + 100
                if arg1 and stor12 / _tTotal > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor12 / _tTotal / arg1 != stor12 / _tTotal:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                    _2994 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2994] = 30
                    mem[_2994 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / _tTotal:
                        _3048 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3048 + 68] = mem[idx + _2994 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3048 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3048 + -mem[64] + 100
                    if arg1 * stor12 / _tTotal < 0:
                        revert with 0, 17
                    _3363 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3363] = 30
                    mem[_3363 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor12 / _tTotal:
                        if arg1 * stor12 / _tTotal < 0:
                            revert with 0, 17
                        return (arg1 * stor12 / _tTotal)
                    _3494 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3494 + 68] = mem[idx + _3363 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3494 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3494 + -mem[64] + 100
                if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 and stor12 / _tTotal > -1 / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                    revert with 0, 17
                if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                    revert with 0, 18
                if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 != stor12 / _tTotal:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3238 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3238] = 30
                mem[_3238 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor12 / _tTotal:
                    _3362 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3362 + 68] = mem[idx + _3238 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3362 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3362 + -mem[64] + 100
                if arg1 * stor12 / _tTotal < 0:
                    revert with 0, 17
                _3822 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3822] = 30
                mem[_3822 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal <= arg1 * stor12 / _tTotal:
                    if arg1 * stor12 / _tTotal < arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal:
                        revert with 0, 17
                    return ((arg1 * stor12 / _tTotal) - (arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal))
                _3972 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3972 + 68] = mem[idx + _3822 + 32]
                    idx = idx + 32
                    continue 
                mem[_3972 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3972 + -mem[64] + 100
            if not _tTotal:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor12 / _tTotal:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                        return 0
                    if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 and t / s > -1 / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                        revert with 0, 17
                    if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                        revert with 0, 18
                    if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * t / s / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * t / s:
                        revert with 0, 17
                    return (-1 * arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * t / s)
                if arg1 and t / s > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    return (arg1 * t / s)
                if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 and t / s > -1 / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                    revert with 0, 17
                if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                    revert with 0, 18
                if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * t / s / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < 0:
                    revert with 0, 17
                if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * t / s:
                    revert with 0, 17
                return ((arg1 * t / s) - (arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * t / s))
            if not _tTotal:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                    return 0
                if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 and stor12 / _tTotal > -1 / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                    revert with 0, 17
                if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                    revert with 0, 18
                if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 != stor12 / _tTotal:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal:
                    revert with 0, 17
                return (-1 * arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal)
            if arg1 and stor12 / _tTotal > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor12 / _tTotal / arg1 != stor12 / _tTotal:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                if 0 > arg1 * stor12 / _tTotal:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / _tTotal < 0:
                    revert with 0, 17
                if 0 > arg1 * stor12 / _tTotal:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / _tTotal < 0:
                    revert with 0, 17
                return (arg1 * stor12 / _tTotal)
            if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 and stor12 / _tTotal > -1 / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                revert with 0, 17
            if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                revert with 0, 18
            if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 != stor12 / _tTotal:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 > arg1 * stor12 / _tTotal:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor12 / _tTotal < 0:
                revert with 0, 17
            if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal > arg1 * stor12 / _tTotal:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor12 / _tTotal < arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal:
                revert with 0, 17
            return ((arg1 * stor12 / _tTotal) - (arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal))
        if arg1 and _taxFee > -1 / arg1:
            revert with 0, 17
        if not arg1:
            revert with 0, 18
        if arg1 * _taxFee / arg1 != _taxFee:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if _liquidityFee > -_burnFee + 255:
            revert with 0, 17
        if uint8(_burnFee + _liquidityFee) > -_walletFee + 255:
            revert with 0, 17
        if uint8(_walletFee + uint8(_burnFee + _liquidityFee)) > -_buybackFee + 255:
            revert with 0, 17
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
            s = _tTotal
            t = stor12
            while idx < stor9.length:
                mem[0] = stor9[idx]
                mem[32] = 4
                if stor4[stor9[idx]] > t:
                    _2468 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2468] = 26
                    mem[_2468 + 32] = 'SafeMath: division by zero'
                    if not _tTotal:
                        _2502 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2502 + 68] = mem[idx + _2468 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2502 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2502 + -mem[64] + 100
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            return 0
                        if arg1 * _taxFee / 100 and stor12 / _tTotal > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * stor12 / _tTotal / arg1 * _taxFee / 100 != stor12 / _tTotal:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2930 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2930] = 30
                        mem[_2930 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor12 / _tTotal > 0:
                            _2987 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2987 + 68] = mem[idx + _2930 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2987 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2987 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 100 * stor12 / _tTotal:
                            revert with 0, 17
                        _3227 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3227] = 30
                        mem[_3227 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _taxFee / 100 * stor12 / _tTotal:
                            if -1 * arg1 * _taxFee / 100 * stor12 / _tTotal < 0:
                                revert with 0, 17
                            return (-1 * arg1 * _taxFee / 100 * stor12 / _tTotal)
                        _3352 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3352 + 68] = mem[idx + _3227 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3352 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3352 + -mem[64] + 100
                    if arg1 and stor12 / _tTotal > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor12 / _tTotal / arg1 != stor12 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        _2929 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2929] = 30
                        mem[_2929 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / _tTotal:
                            _2986 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2986 + 68] = mem[idx + _2929 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2986 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2986 + -mem[64] + 100
                        if arg1 * stor12 / _tTotal < 0:
                            revert with 0, 17
                        _3225 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3225] = 30
                        mem[_3225 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor12 / _tTotal:
                            if arg1 * stor12 / _tTotal < 0:
                                revert with 0, 17
                            return (arg1 * stor12 / _tTotal)
                        _3351 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3351 + 68] = mem[idx + _3225 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3351 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3351 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor12 / _tTotal > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor12 / _tTotal / arg1 * _taxFee / 100 != stor12 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3126 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3126] = 30
                    mem[_3126 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor12 / _tTotal > arg1 * stor12 / _tTotal:
                        _3224 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3224 + 68] = mem[idx + _3126 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3224 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3224 + -mem[64] + 100
                    if arg1 * stor12 / _tTotal < arg1 * _taxFee / 100 * stor12 / _tTotal:
                        revert with 0, 17
                    _3638 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3638] = 30
                    mem[_3638 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor12 / _tTotal) - (arg1 * _taxFee / 100 * stor12 / _tTotal):
                        if (arg1 * stor12 / _tTotal) - (arg1 * _taxFee / 100 * stor12 / _tTotal) < 0:
                            revert with 0, 17
                        return ((arg1 * stor12 / _tTotal) - (arg1 * _taxFee / 100 * stor12 / _tTotal))
                    _3809 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3809 + 68] = mem[idx + _3638 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3809 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3809 + -mem[64] + 100
                if idx >= stor9.length:
                    revert with 0, 50
                mem[0] = stor9[idx]
                mem[32] = 5
                if stor5[stor9[idx]] <= s:
                    if idx >= stor9.length:
                        revert with 0, 50
                    mem[0] = stor9[idx]
                    mem[32] = 4
                    _2503 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2503] = 30
                    mem[_2503 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor9[idx]] > t:
                        _2543 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2543 + 68] = mem[idx + _2503 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2543 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2543 + -mem[64] + 100
                    if t < stor4[stor9[idx]]:
                        revert with 0, 17
                    if idx >= stor9.length:
                        revert with 0, 50
                    mem[0] = stor9[idx]
                    mem[32] = 5
                    _2720 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2720] = 30
                    mem[_2720 + 32] = 'SafeMath: subtraction overflow'
                    if stor5[stor9[idx]] <= s:
                        if s < stor5[stor9[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor5[stor9[idx]]
                        t = t - stor4[stor9[idx]]
                        continue 
                    _2744 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2744 + 68] = mem[idx + _2720 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2744 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2744 + -mem[64] + 100
                _2504 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2504] = 26
                mem[_2504 + 32] = 'SafeMath: division by zero'
                if not _tTotal:
                    _2544 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2544 + 68] = mem[idx + _2504 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2544 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2544 + -mem[64] + 100
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        return 0
                    if arg1 * _taxFee / 100 and stor12 / _tTotal > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor12 / _tTotal / arg1 * _taxFee / 100 != stor12 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2991 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2991] = 30
                    mem[_2991 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor12 / _tTotal > 0:
                        _3043 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3043 + 68] = mem[idx + _2991 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3043 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3043 + -mem[64] + 100
                    if 0 < arg1 * _taxFee / 100 * stor12 / _tTotal:
                        revert with 0, 17
                    _3356 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3356] = 30
                    mem[_3356 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * arg1 * _taxFee / 100 * stor12 / _tTotal:
                        if -1 * arg1 * _taxFee / 100 * stor12 / _tTotal < 0:
                            revert with 0, 17
                        return (-1 * arg1 * _taxFee / 100 * stor12 / _tTotal)
                    _3491 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3491 + 68] = mem[idx + _3356 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3491 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3491 + -mem[64] + 100
                if arg1 and stor12 / _tTotal > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor12 / _tTotal / arg1 != stor12 / _tTotal:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    _2990 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2990] = 30
                    mem[_2990 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / _tTotal:
                        _3042 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3042 + 68] = mem[idx + _2990 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3042 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3042 + -mem[64] + 100
                    if arg1 * stor12 / _tTotal < 0:
                        revert with 0, 17
                    _3354 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3354] = 30
                    mem[_3354 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor12 / _tTotal:
                        if arg1 * stor12 / _tTotal < 0:
                            revert with 0, 17
                        return (arg1 * stor12 / _tTotal)
                    _3490 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3490 + 68] = mem[idx + _3354 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3490 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3490 + -mem[64] + 100
                if arg1 * _taxFee / 100 and stor12 / _tTotal > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * stor12 / _tTotal / arg1 * _taxFee / 100 != stor12 / _tTotal:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3229 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3229] = 30
                mem[_3229 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor12 / _tTotal > arg1 * stor12 / _tTotal:
                    _3353 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3353 + 68] = mem[idx + _3229 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3353 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3353 + -mem[64] + 100
                if arg1 * stor12 / _tTotal < arg1 * _taxFee / 100 * stor12 / _tTotal:
                    revert with 0, 17
                _3812 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3812] = 30
                mem[_3812 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (arg1 * stor12 / _tTotal) - (arg1 * _taxFee / 100 * stor12 / _tTotal):
                    if (arg1 * stor12 / _tTotal) - (arg1 * _taxFee / 100 * stor12 / _tTotal) < 0:
                        revert with 0, 17
                    return ((arg1 * stor12 / _tTotal) - (arg1 * _taxFee / 100 * stor12 / _tTotal))
                _3969 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3969 + 68] = mem[idx + _3812 + 32]
                    idx = idx + 32
                    continue 
                mem[_3969 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3969 + -mem[64] + 100
            if not _tTotal:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor12 / _tTotal:
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
            if not _tTotal:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                if not arg1 * _taxFee / 100:
                    return 0
                if arg1 * _taxFee / 100 and stor12 / _tTotal > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * stor12 / _tTotal / arg1 * _taxFee / 100 != stor12 / _tTotal:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * _taxFee / 100 * stor12 / _tTotal > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * _taxFee / 100 * stor12 / _tTotal:
                    revert with 0, 17
                if 0 > -1 * arg1 * _taxFee / 100 * stor12 / _tTotal:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * _taxFee / 100 * stor12 / _tTotal < 0:
                    revert with 0, 17
                return (-1 * arg1 * _taxFee / 100 * stor12 / _tTotal)
            if arg1 and stor12 / _tTotal > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor12 / _tTotal / arg1 != stor12 / _tTotal:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _taxFee / 100:
                if 0 > arg1 * stor12 / _tTotal:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / _tTotal < 0:
                    revert with 0, 17
                if 0 > arg1 * stor12 / _tTotal:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / _tTotal < 0:
                    revert with 0, 17
                return (arg1 * stor12 / _tTotal)
            if arg1 * _taxFee / 100 and stor12 / _tTotal > -1 / arg1 * _taxFee / 100:
                revert with 0, 17
            if not arg1 * _taxFee / 100:
                revert with 0, 18
            if arg1 * _taxFee / 100 * stor12 / _tTotal / arg1 * _taxFee / 100 != stor12 / _tTotal:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 * _taxFee / 100 * stor12 / _tTotal > arg1 * stor12 / _tTotal:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor12 / _tTotal < arg1 * _taxFee / 100 * stor12 / _tTotal:
                revert with 0, 17
            if 0 > (arg1 * stor12 / _tTotal) - (arg1 * _taxFee / 100 * stor12 / _tTotal):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * stor12 / _tTotal) - (arg1 * _taxFee / 100 * stor12 / _tTotal) < 0:
                revert with 0, 17
            return ((arg1 * stor12 / _tTotal) - (arg1 * _taxFee / 100 * stor12 / _tTotal))
        if arg1 and uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) > -1 / arg1:
            revert with 0, 17
        if not arg1:
            revert with 0, 18
        if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / arg1 != uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))):
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
        if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 > arg1 - (arg1 * _taxFee / 100):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 - (arg1 * _taxFee / 100) < arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
            revert with 0, 17
        idx = 0
        s = _tTotal
        t = stor12
        while idx < stor9.length:
            mem[0] = stor9[idx]
            mem[32] = 4
            if stor4[stor9[idx]] > t:
                _2467 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2467] = 26
                mem[_2467 + 32] = 'SafeMath: division by zero'
                if not _tTotal:
                    _2499 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2499 + 68] = mem[idx + _2467 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2499 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2499 + -mem[64] + 100
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                            return 0
                        if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 and stor12 / _tTotal > -1 / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                            revert with 0, 17
                        if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                            revert with 0, 18
                        if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 != stor12 / _tTotal:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2922 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2922] = 30
                        mem[_2922 + 32] = 'SafeMath: subtraction overflow'
                        _3214 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3214] = 30
                        mem[_3214 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal <= 0:
                            if 0 < arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal:
                                revert with 0, 17
                            return (-1 * arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal)
                        _3342 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3342 + 68] = mem[idx + _3214 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3342 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3342 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor12 / _tTotal > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor12 / _tTotal / arg1 * _taxFee / 100 != stor12 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                        _2921 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2921] = 30
                        mem[_2921 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor12 / _tTotal > 0:
                            _2980 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2980 + 68] = mem[idx + _2921 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2980 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2980 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 100 * stor12 / _tTotal:
                            revert with 0, 17
                        _3212 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3212] = 30
                        mem[_3212 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _taxFee / 100 * stor12 / _tTotal:
                            if -1 * arg1 * _taxFee / 100 * stor12 / _tTotal < 0:
                                revert with 0, 17
                            return (-1 * arg1 * _taxFee / 100 * stor12 / _tTotal)
                        _3341 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3341 + 68] = mem[idx + _3212 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3341 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3341 + -mem[64] + 100
                    if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 and stor12 / _tTotal > -1 / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                        revert with 0, 17
                    if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                        revert with 0, 18
                    if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 != stor12 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3117 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3117] = 30
                    mem[_3117 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor12 / _tTotal > 0:
                        _3211 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3211 + 68] = mem[idx + _3117 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3211 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3211 + -mem[64] + 100
                    if 0 < arg1 * _taxFee / 100 * stor12 / _tTotal:
                        revert with 0, 17
                    _3624 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3624] = 30
                    mem[_3624 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal <= -1 * arg1 * _taxFee / 100 * stor12 / _tTotal:
                        if -1 * arg1 * _taxFee / 100 * stor12 / _tTotal < arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal:
                            revert with 0, 17
                        return ((-1 * arg1 * _taxFee / 100 * stor12 / _tTotal) - (arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal))
                    _3794 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3794 + 68] = mem[idx + _3624 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3794 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3794 + -mem[64] + 100
                if arg1 and stor12 / _tTotal > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor12 / _tTotal / arg1 != stor12 / _tTotal:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                        _2920 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2920] = 30
                        mem[_2920 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / _tTotal:
                            _2979 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2979 + 68] = mem[idx + _2920 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2979 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2979 + -mem[64] + 100
                        if arg1 * stor12 / _tTotal < 0:
                            revert with 0, 17
                        _3209 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3209] = 30
                        mem[_3209 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor12 / _tTotal:
                            if arg1 * stor12 / _tTotal < 0:
                                revert with 0, 17
                            return (arg1 * stor12 / _tTotal)
                        _3340 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3340 + 68] = mem[idx + _3209 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3340 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3340 + -mem[64] + 100
                    if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 and stor12 / _tTotal > -1 / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                        revert with 0, 17
                    if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                        revert with 0, 18
                    if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 != stor12 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3116 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3116] = 30
                    mem[_3116 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / _tTotal:
                        _3208 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3208 + 68] = mem[idx + _3116 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3208 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3208 + -mem[64] + 100
                    if arg1 * stor12 / _tTotal < 0:
                        revert with 0, 17
                    _3622 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3622] = 30
                    mem[_3622 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal <= arg1 * stor12 / _tTotal:
                        if arg1 * stor12 / _tTotal < arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal:
                            revert with 0, 17
                        return ((arg1 * stor12 / _tTotal) - (arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal))
                    _3792 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3792 + 68] = mem[idx + _3622 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3792 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3792 + -mem[64] + 100
                if arg1 * _taxFee / 100 and stor12 / _tTotal > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * stor12 / _tTotal / arg1 * _taxFee / 100 != stor12 / _tTotal:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                    _3115 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3115] = 30
                    mem[_3115 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor12 / _tTotal > arg1 * stor12 / _tTotal:
                        _3207 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3207 + 68] = mem[idx + _3115 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3207 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3207 + -mem[64] + 100
                    if arg1 * stor12 / _tTotal < arg1 * _taxFee / 100 * stor12 / _tTotal:
                        revert with 0, 17
                    _3620 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3620] = 30
                    mem[_3620 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor12 / _tTotal) - (arg1 * _taxFee / 100 * stor12 / _tTotal):
                        if (arg1 * stor12 / _tTotal) - (arg1 * _taxFee / 100 * stor12 / _tTotal) < 0:
                            revert with 0, 17
                        return ((arg1 * stor12 / _tTotal) - (arg1 * _taxFee / 100 * stor12 / _tTotal))
                    _3791 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3791 + 68] = mem[idx + _3620 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3791 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3791 + -mem[64] + 100
                if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 and stor12 / _tTotal > -1 / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                    revert with 0, 17
                if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                    revert with 0, 18
                if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 != stor12 / _tTotal:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3483 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3483] = 30
                mem[_3483 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor12 / _tTotal > arg1 * stor12 / _tTotal:
                    _3619 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3619 + 68] = mem[idx + _3483 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3619 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3619 + -mem[64] + 100
                if arg1 * stor12 / _tTotal < arg1 * _taxFee / 100 * stor12 / _tTotal:
                    revert with 0, 17
                _4115 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4115] = 30
                mem[_4115 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal <= (arg1 * stor12 / _tTotal) - (arg1 * _taxFee / 100 * stor12 / _tTotal):
                    if (arg1 * stor12 / _tTotal) - (arg1 * _taxFee / 100 * stor12 / _tTotal) < arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal:
                        revert with 0, 17
                    return ((arg1 * stor12 / _tTotal) - (arg1 * _taxFee / 100 * stor12 / _tTotal) - (arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal))
                _4265 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4265 + 68] = mem[idx + _4115 + 32]
                    idx = idx + 32
                    continue 
                mem[_4265 + 98] = 0
                revert with memory
                  from mem[64]
                   len _4265 + -mem[64] + 100
            if idx >= stor9.length:
                revert with 0, 50
            mem[0] = stor9[idx]
            mem[32] = 5
            if stor5[stor9[idx]] <= s:
                if idx >= stor9.length:
                    revert with 0, 50
                mem[0] = stor9[idx]
                mem[32] = 4
                _2500 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2500] = 30
                mem[_2500 + 32] = 'SafeMath: subtraction overflow'
                if stor4[stor9[idx]] > t:
                    _2540 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2540 + 68] = mem[idx + _2500 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2540 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2540 + -mem[64] + 100
                if t < stor4[stor9[idx]]:
                    revert with 0, 17
                if idx >= stor9.length:
                    revert with 0, 50
                mem[0] = stor9[idx]
                mem[32] = 5
                _2717 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2717] = 30
                mem[_2717 + 32] = 'SafeMath: subtraction overflow'
                if stor5[stor9[idx]] <= s:
                    if s < stor5[stor9[idx]]:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s - stor5[stor9[idx]]
                    t = t - stor4[stor9[idx]]
                    continue 
                _2741 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _2741 + 68] = mem[idx + _2717 + 32]
                    idx = idx + 32
                    continue 
                mem[_2741 + 98] = 0
                revert with memory
                  from mem[64]
                   len _2741 + -mem[64] + 100
            _2501 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2501] = 26
            mem[_2501 + 32] = 'SafeMath: division by zero'
            if not _tTotal:
                _2541 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2541 + 68] = mem[idx + _2501 + 32]
                    idx = idx + 32
                    continue 
                mem[_2541 + 94] = 0
                revert with memory
                  from mem[64]
                   len _2541 + -mem[64] + 100
            if not arg1:
                if not arg1 * _taxFee / 100:
                    if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                        return 0
                    if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 and stor12 / _tTotal > -1 / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                        revert with 0, 17
                    if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                        revert with 0, 18
                    if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 != stor12 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2985 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2985] = 30
                    mem[_2985 + 32] = 'SafeMath: subtraction overflow'
                    _3350 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3350] = 30
                    mem[_3350 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal <= 0:
                        if 0 < arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal:
                            revert with 0, 17
                        return (-1 * arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal)
                    _3487 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3487 + 68] = mem[idx + _3350 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3487 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3487 + -mem[64] + 100
                if arg1 * _taxFee / 100 and stor12 / _tTotal > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * stor12 / _tTotal / arg1 * _taxFee / 100 != stor12 / _tTotal:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                    _2984 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2984] = 30
                    mem[_2984 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor12 / _tTotal > 0:
                        _3040 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3040 + 68] = mem[idx + _2984 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3040 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3040 + -mem[64] + 100
                    if 0 < arg1 * _taxFee / 100 * stor12 / _tTotal:
                        revert with 0, 17
                    _3348 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3348] = 30
                    mem[_3348 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * arg1 * _taxFee / 100 * stor12 / _tTotal:
                        if -1 * arg1 * _taxFee / 100 * stor12 / _tTotal < 0:
                            revert with 0, 17
                        return (-1 * arg1 * _taxFee / 100 * stor12 / _tTotal)
                    _3486 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3486 + 68] = mem[idx + _3348 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3486 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3486 + -mem[64] + 100
                if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 and stor12 / _tTotal > -1 / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                    revert with 0, 17
                if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                    revert with 0, 18
                if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 != stor12 / _tTotal:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3217 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3217] = 30
                mem[_3217 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor12 / _tTotal > 0:
                    _3347 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3347 + 68] = mem[idx + _3217 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3347 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3347 + -mem[64] + 100
                if 0 < arg1 * _taxFee / 100 * stor12 / _tTotal:
                    revert with 0, 17
                _3802 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3802] = 30
                mem[_3802 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal <= -1 * arg1 * _taxFee / 100 * stor12 / _tTotal:
                    if -1 * arg1 * _taxFee / 100 * stor12 / _tTotal < arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal:
                        revert with 0, 17
                    return ((-1 * arg1 * _taxFee / 100 * stor12 / _tTotal) - (arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal))
                _3966 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3966 + 68] = mem[idx + _3802 + 32]
                    idx = idx + 32
                    continue 
                mem[_3966 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3966 + -mem[64] + 100
            if arg1 and stor12 / _tTotal > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor12 / _tTotal / arg1 != stor12 / _tTotal:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _taxFee / 100:
                if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                    _2983 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2983] = 30
                    mem[_2983 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / _tTotal:
                        _3039 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3039 + 68] = mem[idx + _2983 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3039 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3039 + -mem[64] + 100
                    if arg1 * stor12 / _tTotal < 0:
                        revert with 0, 17
                    _3345 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3345] = 30
                    mem[_3345 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor12 / _tTotal:
                        if arg1 * stor12 / _tTotal < 0:
                            revert with 0, 17
                        return (arg1 * stor12 / _tTotal)
                    _3485 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3485 + 68] = mem[idx + _3345 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3485 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3485 + -mem[64] + 100
                if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 and stor12 / _tTotal > -1 / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                    revert with 0, 17
                if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                    revert with 0, 18
                if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 != stor12 / _tTotal:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3216 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3216] = 30
                mem[_3216 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor12 / _tTotal:
                    _3344 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3344 + 68] = mem[idx + _3216 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3344 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3344 + -mem[64] + 100
                if arg1 * stor12 / _tTotal < 0:
                    revert with 0, 17
                _3800 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3800] = 30
                mem[_3800 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal <= arg1 * stor12 / _tTotal:
                    if arg1 * stor12 / _tTotal < arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal:
                        revert with 0, 17
                    return ((arg1 * stor12 / _tTotal) - (arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal))
                _3964 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3964 + 68] = mem[idx + _3800 + 32]
                    idx = idx + 32
                    continue 
                mem[_3964 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3964 + -mem[64] + 100
            if arg1 * _taxFee / 100 and stor12 / _tTotal > -1 / arg1 * _taxFee / 100:
                revert with 0, 17
            if not arg1 * _taxFee / 100:
                revert with 0, 18
            if arg1 * _taxFee / 100 * stor12 / _tTotal / arg1 * _taxFee / 100 != stor12 / _tTotal:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                _3215 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3215] = 30
                mem[_3215 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor12 / _tTotal > arg1 * stor12 / _tTotal:
                    _3343 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3343 + 68] = mem[idx + _3215 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3343 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3343 + -mem[64] + 100
                if arg1 * stor12 / _tTotal < arg1 * _taxFee / 100 * stor12 / _tTotal:
                    revert with 0, 17
                _3798 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3798] = 30
                mem[_3798 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (arg1 * stor12 / _tTotal) - (arg1 * _taxFee / 100 * stor12 / _tTotal):
                    if (arg1 * stor12 / _tTotal) - (arg1 * _taxFee / 100 * stor12 / _tTotal) < 0:
                        revert with 0, 17
                    return ((arg1 * stor12 / _tTotal) - (arg1 * _taxFee / 100 * stor12 / _tTotal))
                _3963 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3963 + 68] = mem[idx + _3798 + 32]
                    idx = idx + 32
                    continue 
                mem[_3963 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3963 + -mem[64] + 100
            if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 and stor12 / _tTotal > -1 / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                revert with 0, 17
            if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                revert with 0, 18
            if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 != stor12 / _tTotal:
                revert with 0, 'SafeMath: multiplication overflow'
            _3627 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3627] = 30
            mem[_3627 + 32] = 'SafeMath: subtraction overflow'
            if arg1 * _taxFee / 100 * stor12 / _tTotal > arg1 * stor12 / _tTotal:
                _3797 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3797 + 68] = mem[idx + _3627 + 32]
                    idx = idx + 32
                    continue 
                mem[_3797 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3797 + -mem[64] + 100
            if arg1 * stor12 / _tTotal < arg1 * _taxFee / 100 * stor12 / _tTotal:
                revert with 0, 17
            _4269 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4269] = 30
            mem[_4269 + 32] = 'SafeMath: subtraction overflow'
            if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal <= (arg1 * stor12 / _tTotal) - (arg1 * _taxFee / 100 * stor12 / _tTotal):
                if (arg1 * stor12 / _tTotal) - (arg1 * _taxFee / 100 * stor12 / _tTotal) < arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal:
                    revert with 0, 17
                return ((arg1 * stor12 / _tTotal) - (arg1 * _taxFee / 100 * stor12 / _tTotal) - (arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal))
            _4373 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _4373 + 68] = mem[idx + _4269 + 32]
                idx = idx + 32
                continue 
            mem[_4373 + 98] = 0
            revert with memory
              from mem[64]
               len _4373 + -mem[64] + 100
        if not _tTotal:
            revert with 0, 'SafeMath: division by zero', 0
        if t >= stor12 / _tTotal:
            if not s:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                if not arg1 * _taxFee / 100:
                    if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                        return 0
                    if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 and t / s > -1 / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                        revert with 0, 17
                    if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                        revert with 0, 18
                    if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * t / s / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * t / s:
                        revert with 0, 17
                    return (-1 * arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * t / s)
                if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                    if arg1 * _taxFee / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * _taxFee / 100 * t / s:
                        revert with 0, 17
                    if 0 > -1 * arg1 * _taxFee / 100 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * _taxFee / 100 * t / s < 0:
                        revert with 0, 17
                    return (-1 * arg1 * _taxFee / 100 * t / s)
                if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 and t / s > -1 / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                    revert with 0, 17
                if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                    revert with 0, 18
                if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * t / s / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * _taxFee / 100 * t / s > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * _taxFee / 100 * t / s:
                    revert with 0, 17
                if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * t / s > -1 * arg1 * _taxFee / 100 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * _taxFee / 100 * t / s < arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * t / s:
                    revert with 0, 17
                return ((-1 * arg1 * _taxFee / 100 * t / s) - (arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * t / s))
            if arg1 and t / s > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * t / s / arg1 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _taxFee / 100:
                if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    return (arg1 * t / s)
                if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 and t / s > -1 / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                    revert with 0, 17
                if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                    revert with 0, 18
                if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * t / s / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < 0:
                    revert with 0, 17
                if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * t / s:
                    revert with 0, 17
                return ((arg1 * t / s) - (arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * t / s))
            if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                revert with 0, 17
            if not arg1 * _taxFee / 100:
                revert with 0, 18
            if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < arg1 * _taxFee / 100 * t / s:
                    revert with 0, 17
                if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) < 0:
                    revert with 0, 17
                return ((arg1 * t / s) - (arg1 * _taxFee / 100 * t / s))
            if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 and t / s > -1 / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                revert with 0, 17
            if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                revert with 0, 18
            if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * t / s / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * t / s < arg1 * _taxFee / 100 * t / s:
                revert with 0, 17
            if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * t / s > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) < arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * t / s:
                revert with 0, 17
            return ((arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) - (arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * t / s))
        if not _tTotal:
            revert with 0, 'SafeMath: division by zero', 0
        if not arg1:
            if not arg1 * _taxFee / 100:
                if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                    return 0
                if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 and stor12 / _tTotal > -1 / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                    revert with 0, 17
                if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                    revert with 0, 18
                if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 != stor12 / _tTotal:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal:
                    revert with 0, 17
                return (-1 * arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal)
            if arg1 * _taxFee / 100 and stor12 / _tTotal > -1 / arg1 * _taxFee / 100:
                revert with 0, 17
            if not arg1 * _taxFee / 100:
                revert with 0, 18
            if arg1 * _taxFee / 100 * stor12 / _tTotal / arg1 * _taxFee / 100 != stor12 / _tTotal:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                if arg1 * _taxFee / 100 * stor12 / _tTotal > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * _taxFee / 100 * stor12 / _tTotal:
                    revert with 0, 17
                if 0 > -1 * arg1 * _taxFee / 100 * stor12 / _tTotal:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * _taxFee / 100 * stor12 / _tTotal < 0:
                    revert with 0, 17
                return (-1 * arg1 * _taxFee / 100 * stor12 / _tTotal)
            if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 and stor12 / _tTotal > -1 / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                revert with 0, 17
            if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                revert with 0, 18
            if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 != stor12 / _tTotal:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 * _taxFee / 100 * stor12 / _tTotal > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < arg1 * _taxFee / 100 * stor12 / _tTotal:
                revert with 0, 17
            if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal > -1 * arg1 * _taxFee / 100 * stor12 / _tTotal:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if -1 * arg1 * _taxFee / 100 * stor12 / _tTotal < arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal:
                revert with 0, 17
            return ((-1 * arg1 * _taxFee / 100 * stor12 / _tTotal) - (arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal))
        if arg1 and stor12 / _tTotal > -1 / arg1:
            revert with 0, 17
        if not arg1:
            revert with 0, 18
        if arg1 * stor12 / _tTotal / arg1 != stor12 / _tTotal:
            revert with 0, 'SafeMath: multiplication overflow'
        if not arg1 * _taxFee / 100:
            if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                if 0 > arg1 * stor12 / _tTotal:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / _tTotal < 0:
                    revert with 0, 17
                if 0 > arg1 * stor12 / _tTotal:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / _tTotal < 0:
                    revert with 0, 17
                return (arg1 * stor12 / _tTotal)
            if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 and stor12 / _tTotal > -1 / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                revert with 0, 17
            if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                revert with 0, 18
            if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 != stor12 / _tTotal:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 > arg1 * stor12 / _tTotal:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor12 / _tTotal < 0:
                revert with 0, 17
            if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal > arg1 * stor12 / _tTotal:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor12 / _tTotal < arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal:
                revert with 0, 17
            return ((arg1 * stor12 / _tTotal) - (arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal))
        if arg1 * _taxFee / 100 and stor12 / _tTotal > -1 / arg1 * _taxFee / 100:
            revert with 0, 17
        if not arg1 * _taxFee / 100:
            revert with 0, 18
        if arg1 * _taxFee / 100 * stor12 / _tTotal / arg1 * _taxFee / 100 != stor12 / _tTotal:
            revert with 0, 'SafeMath: multiplication overflow'
        if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
            if arg1 * _taxFee / 100 * stor12 / _tTotal > arg1 * stor12 / _tTotal:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor12 / _tTotal < arg1 * _taxFee / 100 * stor12 / _tTotal:
                revert with 0, 17
            if 0 > (arg1 * stor12 / _tTotal) - (arg1 * _taxFee / 100 * stor12 / _tTotal):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * stor12 / _tTotal) - (arg1 * _taxFee / 100 * stor12 / _tTotal) < 0:
                revert with 0, 17
            return ((arg1 * stor12 / _tTotal) - (arg1 * _taxFee / 100 * stor12 / _tTotal))
        if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 and stor12 / _tTotal > -1 / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
            revert with 0, 17
        if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
            revert with 0, 18
        if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 != stor12 / _tTotal:
            revert with 0, 'SafeMath: multiplication overflow'
        if arg1 * _taxFee / 100 * stor12 / _tTotal > arg1 * stor12 / _tTotal:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 * stor12 / _tTotal < arg1 * _taxFee / 100 * stor12 / _tTotal:
            revert with 0, 17
        if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal > (arg1 * stor12 / _tTotal) - (arg1 * _taxFee / 100 * stor12 / _tTotal):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (arg1 * stor12 / _tTotal) - (arg1 * _taxFee / 100 * stor12 / _tTotal) < arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal:
            revert with 0, 17
        return ((arg1 * stor12 / _tTotal) - (arg1 * _taxFee / 100 * stor12 / _tTotal) - (arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal))
    if not arg1:
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if _liquidityFee > -_burnFee + 255:
            revert with 0, 17
        if uint8(_burnFee + _liquidityFee) > -_walletFee + 255:
            revert with 0, 17
        if uint8(_walletFee + uint8(_burnFee + _liquidityFee)) > -_buybackFee + 255:
            revert with 0, 17
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
            s = _tTotal
            t = stor12
            while idx < stor9.length:
                mem[0] = stor9[idx]
                mem[32] = 4
                if stor4[stor9[idx]] > t:
                    _2474 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2474] = 26
                    mem[_2474 + 32] = 'SafeMath: division by zero'
                    if not _tTotal:
                        _2520 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2520 + 68] = mem[idx + _2474 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2520 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2520 + -mem[64] + 100
                    if not arg1:
                        return 0
                    if arg1 and stor12 / _tTotal > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor12 / _tTotal / arg1 != stor12 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2962 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2962] = 30
                    mem[_2962 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / _tTotal:
                        _3016 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3016 + 68] = mem[idx + _2962 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3016 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3016 + -mem[64] + 100
                    if arg1 * stor12 / _tTotal < 0:
                        revert with 0, 17
                    _3287 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3287] = 30
                    mem[_3287 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor12 / _tTotal:
                        if arg1 * stor12 / _tTotal < 0:
                            revert with 0, 17
                        return (arg1 * stor12 / _tTotal)
                    _3400 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3400 + 68] = mem[idx + _3287 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3400 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3400 + -mem[64] + 100
                if idx >= stor9.length:
                    revert with 0, 50
                mem[0] = stor9[idx]
                mem[32] = 5
                if stor5[stor9[idx]] <= s:
                    if idx >= stor9.length:
                        revert with 0, 50
                    mem[0] = stor9[idx]
                    mem[32] = 4
                    _2521 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2521] = 30
                    mem[_2521 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor9[idx]] > t:
                        _2561 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2561 + 68] = mem[idx + _2521 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2561 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2561 + -mem[64] + 100
                    if t < stor4[stor9[idx]]:
                        revert with 0, 17
                    if idx >= stor9.length:
                        revert with 0, 50
                    mem[0] = stor9[idx]
                    mem[32] = 5
                    _2738 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2738] = 30
                    mem[_2738 + 32] = 'SafeMath: subtraction overflow'
                    if stor5[stor9[idx]] <= s:
                        if s < stor5[stor9[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor5[stor9[idx]]
                        t = t - stor4[stor9[idx]]
                        continue 
                    _2762 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2762 + 68] = mem[idx + _2738 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2762 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2762 + -mem[64] + 100
                _2522 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2522] = 26
                mem[_2522 + 32] = 'SafeMath: division by zero'
                if not _tTotal:
                    _2562 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2562 + 68] = mem[idx + _2522 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2562 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2562 + -mem[64] + 100
                if not arg1:
                    return 0
                if arg1 and stor12 / _tTotal > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor12 / _tTotal / arg1 != stor12 / _tTotal:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3018 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3018] = 30
                mem[_3018 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor12 / _tTotal:
                    _3067 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3067 + 68] = mem[idx + _3018 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3067 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3067 + -mem[64] + 100
                if arg1 * stor12 / _tTotal < 0:
                    revert with 0, 17
                _3401 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3401] = 30
                mem[_3401 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= arg1 * stor12 / _tTotal:
                    if arg1 * stor12 / _tTotal < 0:
                        revert with 0, 17
                    return (arg1 * stor12 / _tTotal)
                _3516 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3516 + 68] = mem[idx + _3401 + 32]
                    idx = idx + 32
                    continue 
                mem[_3516 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3516 + -mem[64] + 100
            if not _tTotal:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor12 / _tTotal:
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
            if not _tTotal:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                return 0
            if arg1 and stor12 / _tTotal > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor12 / _tTotal / arg1 != stor12 / _tTotal:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 > arg1 * stor12 / _tTotal:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor12 / _tTotal < 0:
                revert with 0, 17
            if 0 > arg1 * stor12 / _tTotal:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor12 / _tTotal < 0:
                revert with 0, 17
        else:
            if arg1 and uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / arg1 != uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))):
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
            if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                revert with 0, 17
            idx = 0
            s = _tTotal
            t = stor12
            while idx < stor9.length:
                mem[0] = stor9[idx]
                mem[32] = 4
                if stor4[stor9[idx]] > t:
                    _2473 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2473] = 26
                    mem[_2473 + 32] = 'SafeMath: division by zero'
                    if not _tTotal:
                        _2517 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2517 + 68] = mem[idx + _2473 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2517 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2517 + -mem[64] + 100
                    if not arg1:
                        if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                            return 0
                        if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 and stor12 / _tTotal > -1 / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                            revert with 0, 17
                        if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                            revert with 0, 18
                        if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 != stor12 / _tTotal:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2958 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2958] = 30
                        mem[_2958 + 32] = 'SafeMath: subtraction overflow'
                        _3281 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3281] = 30
                        mem[_3281 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal <= 0:
                            if 0 < arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal:
                                revert with 0, 17
                            else:
                                return 0
                        _3395 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3395 + 68] = mem[idx + _3281 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3395 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3395 + -mem[64] + 100
                    if arg1 and stor12 / _tTotal > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor12 / _tTotal / arg1 != stor12 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                        _2957 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2957] = 30
                        mem[_2957 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / _tTotal:
                            _3012 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3012 + 68] = mem[idx + _2957 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3012 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3012 + -mem[64] + 100
                        if arg1 * stor12 / _tTotal < 0:
                            revert with 0, 17
                        _3279 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3279] = 30
                        mem[_3279 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor12 / _tTotal:
                            if arg1 * stor12 / _tTotal < 0:
                                revert with 0, 17
                            return (arg1 * stor12 / _tTotal)
                        _3394 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3394 + 68] = mem[idx + _3279 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3394 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3394 + -mem[64] + 100
                    if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 and stor12 / _tTotal > -1 / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                        revert with 0, 17
                    if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                        revert with 0, 18
                    if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 != stor12 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3159 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3159] = 30
                    mem[_3159 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / _tTotal:
                        _3278 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3278 + 68] = mem[idx + _3159 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3278 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3278 + -mem[64] + 100
                    if arg1 * stor12 / _tTotal < 0:
                        revert with 0, 17
                    _3703 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3703] = 30
                    mem[_3703 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal <= arg1 * stor12 / _tTotal:
                        if arg1 * stor12 / _tTotal < arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal:
                            revert with 0, 17
                        return (arg1 * stor12 / _tTotal)
                    _3865 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3865 + 68] = mem[idx + _3703 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3865 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3865 + -mem[64] + 100
                if idx >= stor9.length:
                    revert with 0, 50
                mem[0] = stor9[idx]
                mem[32] = 5
                if stor5[stor9[idx]] <= s:
                    if idx >= stor9.length:
                        revert with 0, 50
                    mem[0] = stor9[idx]
                    mem[32] = 4
                    _2518 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2518] = 30
                    mem[_2518 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor9[idx]] > t:
                        _2558 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2558 + 68] = mem[idx + _2518 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2558 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2558 + -mem[64] + 100
                    if t < stor4[stor9[idx]]:
                        revert with 0, 17
                    if idx >= stor9.length:
                        revert with 0, 50
                    mem[0] = stor9[idx]
                    mem[32] = 5
                    _2735 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2735] = 30
                    mem[_2735 + 32] = 'SafeMath: subtraction overflow'
                    if stor5[stor9[idx]] <= s:
                        if s < stor5[stor9[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor5[stor9[idx]]
                        t = t - stor4[stor9[idx]]
                        continue 
                    _2759 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2759 + 68] = mem[idx + _2735 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2759 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2759 + -mem[64] + 100
                _2519 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2519] = 26
                mem[_2519 + 32] = 'SafeMath: division by zero'
                if not _tTotal:
                    _2559 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2559 + 68] = mem[idx + _2519 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2559 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2559 + -mem[64] + 100
                if not arg1:
                    if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                        return 0
                    if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 and stor12 / _tTotal > -1 / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                        revert with 0, 17
                    if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                        revert with 0, 18
                    if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 != stor12 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3015 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3015] = 30
                    mem[_3015 + 32] = 'SafeMath: subtraction overflow'
                    _3399 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3399] = 30
                    mem[_3399 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal <= 0:
                        if 0 < arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal:
                            revert with 0, 17
                        else:
                            return 0
                    _3515 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3515 + 68] = mem[idx + _3399 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3515 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3515 + -mem[64] + 100
                if arg1 and stor12 / _tTotal > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor12 / _tTotal / arg1 != stor12 / _tTotal:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                    _3014 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3014] = 30
                    mem[_3014 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / _tTotal:
                        _3065 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3065 + 68] = mem[idx + _3014 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3065 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3065 + -mem[64] + 100
                    if arg1 * stor12 / _tTotal < 0:
                        revert with 0, 17
                    _3397 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3397] = 30
                    mem[_3397 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor12 / _tTotal:
                        if arg1 * stor12 / _tTotal < 0:
                            revert with 0, 17
                        return (arg1 * stor12 / _tTotal)
                    _3514 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3514 + 68] = mem[idx + _3397 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3514 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3514 + -mem[64] + 100
                if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 and stor12 / _tTotal > -1 / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                    revert with 0, 17
                if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                    revert with 0, 18
                if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 != stor12 / _tTotal:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3282 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3282] = 30
                mem[_3282 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor12 / _tTotal:
                    _3396 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3396 + 68] = mem[idx + _3282 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3396 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3396 + -mem[64] + 100
                if arg1 * stor12 / _tTotal < 0:
                    revert with 0, 17
                _3868 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3868] = 30
                mem[_3868 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal <= arg1 * stor12 / _tTotal:
                    if arg1 * stor12 / _tTotal < arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal:
                        revert with 0, 17
                    return (arg1 * stor12 / _tTotal)
                _3987 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3987 + 68] = mem[idx + _3868 + 32]
                    idx = idx + 32
                    continue 
                mem[_3987 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3987 + -mem[64] + 100
            if not _tTotal:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor12 / _tTotal:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                        if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 and t / s > -1 / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                            revert with 0, 17
                        if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                            revert with 0, 18
                        if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * t / s / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * t / s:
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
                if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                else:
                    if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 and t / s > -1 / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                        revert with 0, 17
                    if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                        revert with 0, 18
                    if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * t / s / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * t / s:
                        revert with 0, 17
                return (arg1 * t / s)
            if not _tTotal:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                    if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 and stor12 / _tTotal > -1 / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                        revert with 0, 17
                    if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                        revert with 0, 18
                    if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 != stor12 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal:
                        revert with 0, 17
                    else:
                        return 0
                else:
                    return 0
            if arg1 and stor12 / _tTotal > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor12 / _tTotal / arg1 != stor12 / _tTotal:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                if 0 > arg1 * stor12 / _tTotal:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / _tTotal < 0:
                    revert with 0, 17
                if 0 > arg1 * stor12 / _tTotal:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / _tTotal < 0:
                    revert with 0, 17
            else:
                if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 and stor12 / _tTotal > -1 / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                    revert with 0, 17
                if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                    revert with 0, 18
                if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 != stor12 / _tTotal:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * stor12 / _tTotal:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / _tTotal < 0:
                    revert with 0, 17
                if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal > arg1 * stor12 / _tTotal:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / _tTotal < arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal:
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
        if _liquidityFee > -_burnFee + 255:
            revert with 0, 17
        if uint8(_burnFee + _liquidityFee) > -_walletFee + 255:
            revert with 0, 17
        if uint8(_walletFee + uint8(_burnFee + _liquidityFee)) > -_buybackFee + 255:
            revert with 0, 17
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
            s = _tTotal
            t = stor12
            while idx < stor9.length:
                mem[0] = stor9[idx]
                mem[32] = 4
                if stor4[stor9[idx]] > t:
                    _2472 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2472] = 26
                    mem[_2472 + 32] = 'SafeMath: division by zero'
                    if not _tTotal:
                        _2514 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2514 + 68] = mem[idx + _2472 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2514 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2514 + -mem[64] + 100
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            return 0
                        if arg1 * _taxFee / 100 and stor12 / _tTotal > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * stor12 / _tTotal / arg1 * _taxFee / 100 != stor12 / _tTotal:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2954 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2954] = 30
                        mem[_2954 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor12 / _tTotal > 0:
                            _3007 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3007 + 68] = mem[idx + _2954 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3007 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3007 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 100 * stor12 / _tTotal:
                            revert with 0, 17
                        _3271 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3271] = 30
                        mem[_3271 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _taxFee / 100 * stor12 / _tTotal:
                            if -1 * arg1 * _taxFee / 100 * stor12 / _tTotal < 0:
                                revert with 0, 17
                            else:
                                return 0
                        _3386 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3386 + 68] = mem[idx + _3271 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3386 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3386 + -mem[64] + 100
                    if arg1 and stor12 / _tTotal > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor12 / _tTotal / arg1 != stor12 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        _2953 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2953] = 30
                        mem[_2953 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / _tTotal:
                            _3006 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3006 + 68] = mem[idx + _2953 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3006 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3006 + -mem[64] + 100
                        if arg1 * stor12 / _tTotal < 0:
                            revert with 0, 17
                        _3269 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3269] = 30
                        mem[_3269 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor12 / _tTotal:
                            if arg1 * stor12 / _tTotal < 0:
                                revert with 0, 17
                            return (arg1 * stor12 / _tTotal)
                        _3385 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3385 + 68] = mem[idx + _3269 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3385 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3385 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor12 / _tTotal > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor12 / _tTotal / arg1 * _taxFee / 100 != stor12 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3154 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3154] = 30
                    mem[_3154 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor12 / _tTotal > arg1 * stor12 / _tTotal:
                        _3268 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3268 + 68] = mem[idx + _3154 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3268 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3268 + -mem[64] + 100
                    if arg1 * stor12 / _tTotal < arg1 * _taxFee / 100 * stor12 / _tTotal:
                        revert with 0, 17
                    _3692 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3692] = 30
                    mem[_3692 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor12 / _tTotal) - (arg1 * _taxFee / 100 * stor12 / _tTotal):
                        if (arg1 * stor12 / _tTotal) - (arg1 * _taxFee / 100 * stor12 / _tTotal) < 0:
                            revert with 0, 17
                        return (arg1 * stor12 / _tTotal)
                    _3855 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3855 + 68] = mem[idx + _3692 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3855 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3855 + -mem[64] + 100
                if idx >= stor9.length:
                    revert with 0, 50
                mem[0] = stor9[idx]
                mem[32] = 5
                if stor5[stor9[idx]] <= s:
                    if idx >= stor9.length:
                        revert with 0, 50
                    mem[0] = stor9[idx]
                    mem[32] = 4
                    _2515 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2515] = 30
                    mem[_2515 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor9[idx]] > t:
                        _2555 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2555 + 68] = mem[idx + _2515 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2555 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2555 + -mem[64] + 100
                    if t < stor4[stor9[idx]]:
                        revert with 0, 17
                    if idx >= stor9.length:
                        revert with 0, 50
                    mem[0] = stor9[idx]
                    mem[32] = 5
                    _2732 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2732] = 30
                    mem[_2732 + 32] = 'SafeMath: subtraction overflow'
                    if stor5[stor9[idx]] <= s:
                        if s < stor5[stor9[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor5[stor9[idx]]
                        t = t - stor4[stor9[idx]]
                        continue 
                    _2756 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2756 + 68] = mem[idx + _2732 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2756 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2756 + -mem[64] + 100
                _2516 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2516] = 26
                mem[_2516 + 32] = 'SafeMath: division by zero'
                if not _tTotal:
                    _2556 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2556 + 68] = mem[idx + _2516 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2556 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2556 + -mem[64] + 100
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        return 0
                    if arg1 * _taxFee / 100 and stor12 / _tTotal > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor12 / _tTotal / arg1 * _taxFee / 100 != stor12 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3011 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3011] = 30
                    mem[_3011 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor12 / _tTotal > 0:
                        _3060 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3060 + 68] = mem[idx + _3011 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3060 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3060 + -mem[64] + 100
                    if 0 < arg1 * _taxFee / 100 * stor12 / _tTotal:
                        revert with 0, 17
                    _3390 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3390] = 30
                    mem[_3390 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * arg1 * _taxFee / 100 * stor12 / _tTotal:
                        if -1 * arg1 * _taxFee / 100 * stor12 / _tTotal < 0:
                            revert with 0, 17
                        else:
                            return 0
                    _3511 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3511 + 68] = mem[idx + _3390 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3511 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3511 + -mem[64] + 100
                if arg1 and stor12 / _tTotal > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor12 / _tTotal / arg1 != stor12 / _tTotal:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    _3010 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3010] = 30
                    mem[_3010 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / _tTotal:
                        _3059 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3059 + 68] = mem[idx + _3010 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3059 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3059 + -mem[64] + 100
                    if arg1 * stor12 / _tTotal < 0:
                        revert with 0, 17
                    _3388 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3388] = 30
                    mem[_3388 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor12 / _tTotal:
                        if arg1 * stor12 / _tTotal < 0:
                            revert with 0, 17
                        return (arg1 * stor12 / _tTotal)
                    _3510 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3510 + 68] = mem[idx + _3388 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3510 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3510 + -mem[64] + 100
                if arg1 * _taxFee / 100 and stor12 / _tTotal > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * stor12 / _tTotal / arg1 * _taxFee / 100 != stor12 / _tTotal:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3273 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3273] = 30
                mem[_3273 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor12 / _tTotal > arg1 * stor12 / _tTotal:
                    _3387 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3387 + 68] = mem[idx + _3273 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3387 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3387 + -mem[64] + 100
                if arg1 * stor12 / _tTotal < arg1 * _taxFee / 100 * stor12 / _tTotal:
                    revert with 0, 17
                _3858 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3858] = 30
                mem[_3858 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (arg1 * stor12 / _tTotal) - (arg1 * _taxFee / 100 * stor12 / _tTotal):
                    if (arg1 * stor12 / _tTotal) - (arg1 * _taxFee / 100 * stor12 / _tTotal) < 0:
                        revert with 0, 17
                    return (arg1 * stor12 / _tTotal)
                _3984 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3984 + 68] = mem[idx + _3858 + 32]
                    idx = idx + 32
                    continue 
                mem[_3984 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3984 + -mem[64] + 100
            if not _tTotal:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor12 / _tTotal:
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
            if not _tTotal:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                if arg1 * _taxFee / 100:
                    if arg1 * _taxFee / 100 and stor12 / _tTotal > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor12 / _tTotal / arg1 * _taxFee / 100 != stor12 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _taxFee / 100 * stor12 / _tTotal > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * _taxFee / 100 * stor12 / _tTotal:
                        revert with 0, 17
                    if 0 > -1 * arg1 * _taxFee / 100 * stor12 / _tTotal:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * _taxFee / 100 * stor12 / _tTotal < 0:
                        revert with 0, 17
                    else:
                        return 0
                else:
                    return 0
            if arg1 and stor12 / _tTotal > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor12 / _tTotal / arg1 != stor12 / _tTotal:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _taxFee / 100:
                if 0 > arg1 * stor12 / _tTotal:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / _tTotal < 0:
                    revert with 0, 17
                if 0 > arg1 * stor12 / _tTotal:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / _tTotal < 0:
                    revert with 0, 17
            else:
                if arg1 * _taxFee / 100 and stor12 / _tTotal > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * stor12 / _tTotal / arg1 * _taxFee / 100 != stor12 / _tTotal:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * _taxFee / 100 * stor12 / _tTotal > arg1 * stor12 / _tTotal:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / _tTotal < arg1 * _taxFee / 100 * stor12 / _tTotal:
                    revert with 0, 17
                if 0 > (arg1 * stor12 / _tTotal) - (arg1 * _taxFee / 100 * stor12 / _tTotal):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * stor12 / _tTotal) - (arg1 * _taxFee / 100 * stor12 / _tTotal) < 0:
                    revert with 0, 17
        else:
            if arg1 and uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / arg1 != uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))):
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
            if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 > arg1 - (arg1 * _taxFee / 100):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (arg1 * _taxFee / 100) < arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                revert with 0, 17
            idx = 0
            s = _tTotal
            t = stor12
            while idx < stor9.length:
                mem[0] = stor9[idx]
                mem[32] = 4
                if stor4[stor9[idx]] > t:
                    _2471 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2471] = 26
                    mem[_2471 + 32] = 'SafeMath: division by zero'
                    if not _tTotal:
                        _2511 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2511 + 68] = mem[idx + _2471 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2511 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2511 + -mem[64] + 100
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                                return 0
                            if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 and stor12 / _tTotal > -1 / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                                revert with 0, 17
                            if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                                revert with 0, 18
                            if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 != stor12 / _tTotal:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _2946 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2946] = 30
                            mem[_2946 + 32] = 'SafeMath: subtraction overflow'
                            _3258 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3258] = 30
                            mem[_3258 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal <= 0:
                                if 0 < arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal:
                                    revert with 0, 17
                                else:
                                    return 0
                            _3376 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3376 + 68] = mem[idx + _3258 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3376 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3376 + -mem[64] + 100
                        if arg1 * _taxFee / 100 and stor12 / _tTotal > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * stor12 / _tTotal / arg1 * _taxFee / 100 != stor12 / _tTotal:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                            _2945 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2945] = 30
                            mem[_2945 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _taxFee / 100 * stor12 / _tTotal > 0:
                                _3000 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _3000 + 68] = mem[idx + _2945 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3000 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _3000 + -mem[64] + 100
                            if 0 < arg1 * _taxFee / 100 * stor12 / _tTotal:
                                revert with 0, 17
                            _3256 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3256] = 30
                            mem[_3256 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * arg1 * _taxFee / 100 * stor12 / _tTotal:
                                if -1 * arg1 * _taxFee / 100 * stor12 / _tTotal < 0:
                                    revert with 0, 17
                                else:
                                    return 0
                            _3375 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3375 + 68] = mem[idx + _3256 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3375 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3375 + -mem[64] + 100
                        if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 and stor12 / _tTotal > -1 / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                            revert with 0, 17
                        if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                            revert with 0, 18
                        if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 != stor12 / _tTotal:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _3145 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3145] = 30
                        mem[_3145 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor12 / _tTotal > 0:
                            _3255 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3255 + 68] = mem[idx + _3145 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3255 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3255 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 100 * stor12 / _tTotal:
                            revert with 0, 17
                        _3678 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3678] = 30
                        mem[_3678 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal <= -1 * arg1 * _taxFee / 100 * stor12 / _tTotal:
                            if -1 * arg1 * _taxFee / 100 * stor12 / _tTotal < arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal:
                                revert with 0, 17
                            else:
                                return 0
                        _3840 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3840 + 68] = mem[idx + _3678 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3840 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3840 + -mem[64] + 100
                    if arg1 and stor12 / _tTotal > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor12 / _tTotal / arg1 != stor12 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                            _2944 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2944] = 30
                            mem[_2944 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor12 / _tTotal:
                                _2999 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2999 + 68] = mem[idx + _2944 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2999 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2999 + -mem[64] + 100
                            if arg1 * stor12 / _tTotal < 0:
                                revert with 0, 17
                            _3253 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3253] = 30
                            mem[_3253 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor12 / _tTotal:
                                if arg1 * stor12 / _tTotal < 0:
                                    revert with 0, 17
                                return (arg1 * stor12 / _tTotal)
                            _3374 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3374 + 68] = mem[idx + _3253 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3374 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3374 + -mem[64] + 100
                        if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 and stor12 / _tTotal > -1 / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                            revert with 0, 17
                        if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                            revert with 0, 18
                        if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 != stor12 / _tTotal:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _3144 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3144] = 30
                        mem[_3144 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / _tTotal:
                            _3252 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3252 + 68] = mem[idx + _3144 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3252 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3252 + -mem[64] + 100
                        if arg1 * stor12 / _tTotal < 0:
                            revert with 0, 17
                        _3676 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3676] = 30
                        mem[_3676 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal <= arg1 * stor12 / _tTotal:
                            if arg1 * stor12 / _tTotal < arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal:
                                revert with 0, 17
                            return (arg1 * stor12 / _tTotal)
                        _3838 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3838 + 68] = mem[idx + _3676 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3838 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3838 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor12 / _tTotal > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor12 / _tTotal / arg1 * _taxFee / 100 != stor12 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                        _3143 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3143] = 30
                        mem[_3143 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor12 / _tTotal > arg1 * stor12 / _tTotal:
                            _3251 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3251 + 68] = mem[idx + _3143 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3251 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3251 + -mem[64] + 100
                        if arg1 * stor12 / _tTotal < arg1 * _taxFee / 100 * stor12 / _tTotal:
                            revert with 0, 17
                        _3674 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3674] = 30
                        mem[_3674 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor12 / _tTotal) - (arg1 * _taxFee / 100 * stor12 / _tTotal):
                            if (arg1 * stor12 / _tTotal) - (arg1 * _taxFee / 100 * stor12 / _tTotal) < 0:
                                revert with 0, 17
                            return (arg1 * stor12 / _tTotal)
                        _3837 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3837 + 68] = mem[idx + _3674 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3837 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3837 + -mem[64] + 100
                    if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 and stor12 / _tTotal > -1 / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                        revert with 0, 17
                    if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                        revert with 0, 18
                    if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 != stor12 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3503 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3503] = 30
                    mem[_3503 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor12 / _tTotal > arg1 * stor12 / _tTotal:
                        _3673 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3673 + 68] = mem[idx + _3503 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3673 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3673 + -mem[64] + 100
                    if arg1 * stor12 / _tTotal < arg1 * _taxFee / 100 * stor12 / _tTotal:
                        revert with 0, 17
                    _4155 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4155] = 30
                    mem[_4155 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal <= (arg1 * stor12 / _tTotal) - (arg1 * _taxFee / 100 * stor12 / _tTotal):
                        if (arg1 * stor12 / _tTotal) - (arg1 * _taxFee / 100 * stor12 / _tTotal) < arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal:
                            revert with 0, 17
                        return (arg1 * stor12 / _tTotal)
                    _4307 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4307 + 68] = mem[idx + _4155 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4307 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4307 + -mem[64] + 100
                if idx >= stor9.length:
                    revert with 0, 50
                mem[0] = stor9[idx]
                mem[32] = 5
                if stor5[stor9[idx]] <= s:
                    if idx >= stor9.length:
                        revert with 0, 50
                    mem[0] = stor9[idx]
                    mem[32] = 4
                    _2512 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2512] = 30
                    mem[_2512 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor9[idx]] > t:
                        _2552 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2552 + 68] = mem[idx + _2512 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2552 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2552 + -mem[64] + 100
                    if t < stor4[stor9[idx]]:
                        revert with 0, 17
                    if idx >= stor9.length:
                        revert with 0, 50
                    mem[0] = stor9[idx]
                    mem[32] = 5
                    _2729 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2729] = 30
                    mem[_2729 + 32] = 'SafeMath: subtraction overflow'
                    if stor5[stor9[idx]] <= s:
                        if s < stor5[stor9[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor5[stor9[idx]]
                        t = t - stor4[stor9[idx]]
                        continue 
                    _2753 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2753 + 68] = mem[idx + _2729 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2753 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2753 + -mem[64] + 100
                _2513 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2513] = 26
                mem[_2513 + 32] = 'SafeMath: division by zero'
                if not _tTotal:
                    _2553 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2553 + 68] = mem[idx + _2513 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2553 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2553 + -mem[64] + 100
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                            return 0
                        if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 and stor12 / _tTotal > -1 / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                            revert with 0, 17
                        if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                            revert with 0, 18
                        if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 != stor12 / _tTotal:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _3005 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3005] = 30
                        mem[_3005 + 32] = 'SafeMath: subtraction overflow'
                        _3384 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3384] = 30
                        mem[_3384 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal <= 0:
                            if 0 < arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal:
                                revert with 0, 17
                            else:
                                return 0
                        _3507 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3507 + 68] = mem[idx + _3384 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3507 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3507 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor12 / _tTotal > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor12 / _tTotal / arg1 * _taxFee / 100 != stor12 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                        _3004 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3004] = 30
                        mem[_3004 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor12 / _tTotal > 0:
                            _3057 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3057 + 68] = mem[idx + _3004 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3057 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3057 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 100 * stor12 / _tTotal:
                            revert with 0, 17
                        _3382 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3382] = 30
                        mem[_3382 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _taxFee / 100 * stor12 / _tTotal:
                            if -1 * arg1 * _taxFee / 100 * stor12 / _tTotal < 0:
                                revert with 0, 17
                            else:
                                return 0
                        _3506 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3506 + 68] = mem[idx + _3382 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3506 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3506 + -mem[64] + 100
                    if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 and stor12 / _tTotal > -1 / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                        revert with 0, 17
                    if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                        revert with 0, 18
                    if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 != stor12 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3261 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3261] = 30
                    mem[_3261 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor12 / _tTotal > 0:
                        _3381 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3381 + 68] = mem[idx + _3261 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3381 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3381 + -mem[64] + 100
                    if 0 < arg1 * _taxFee / 100 * stor12 / _tTotal:
                        revert with 0, 17
                    _3848 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3848] = 30
                    mem[_3848 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal <= -1 * arg1 * _taxFee / 100 * stor12 / _tTotal:
                        if -1 * arg1 * _taxFee / 100 * stor12 / _tTotal < arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal:
                            revert with 0, 17
                        else:
                            return 0
                    _3981 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3981 + 68] = mem[idx + _3848 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3981 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3981 + -mem[64] + 100
                if arg1 and stor12 / _tTotal > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor12 / _tTotal / arg1 != stor12 / _tTotal:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                        _3003 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3003] = 30
                        mem[_3003 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / _tTotal:
                            _3056 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3056 + 68] = mem[idx + _3003 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3056 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3056 + -mem[64] + 100
                        if arg1 * stor12 / _tTotal < 0:
                            revert with 0, 17
                        _3379 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3379] = 30
                        mem[_3379 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor12 / _tTotal:
                            if arg1 * stor12 / _tTotal < 0:
                                revert with 0, 17
                            return (arg1 * stor12 / _tTotal)
                        _3505 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3505 + 68] = mem[idx + _3379 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3505 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3505 + -mem[64] + 100
                    if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 and stor12 / _tTotal > -1 / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                        revert with 0, 17
                    if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                        revert with 0, 18
                    if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 != stor12 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3260 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3260] = 30
                    mem[_3260 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / _tTotal:
                        _3378 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3378 + 68] = mem[idx + _3260 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3378 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3378 + -mem[64] + 100
                    if arg1 * stor12 / _tTotal < 0:
                        revert with 0, 17
                    _3846 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3846] = 30
                    mem[_3846 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal <= arg1 * stor12 / _tTotal:
                        if arg1 * stor12 / _tTotal < arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal:
                            revert with 0, 17
                        return (arg1 * stor12 / _tTotal)
                    _3979 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3979 + 68] = mem[idx + _3846 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3979 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3979 + -mem[64] + 100
                if arg1 * _taxFee / 100 and stor12 / _tTotal > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * stor12 / _tTotal / arg1 * _taxFee / 100 != stor12 / _tTotal:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                    _3259 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3259] = 30
                    mem[_3259 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor12 / _tTotal > arg1 * stor12 / _tTotal:
                        _3377 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3377 + 68] = mem[idx + _3259 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3377 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3377 + -mem[64] + 100
                    if arg1 * stor12 / _tTotal < arg1 * _taxFee / 100 * stor12 / _tTotal:
                        revert with 0, 17
                    _3844 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3844] = 30
                    mem[_3844 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor12 / _tTotal) - (arg1 * _taxFee / 100 * stor12 / _tTotal):
                        if (arg1 * stor12 / _tTotal) - (arg1 * _taxFee / 100 * stor12 / _tTotal) < 0:
                            revert with 0, 17
                        return (arg1 * stor12 / _tTotal)
                    _3978 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3978 + 68] = mem[idx + _3844 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3978 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3978 + -mem[64] + 100
                if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 and stor12 / _tTotal > -1 / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                    revert with 0, 17
                if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                    revert with 0, 18
                if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 != stor12 / _tTotal:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3681 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3681] = 30
                mem[_3681 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor12 / _tTotal > arg1 * stor12 / _tTotal:
                    _3843 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3843 + 68] = mem[idx + _3681 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3843 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3843 + -mem[64] + 100
                if arg1 * stor12 / _tTotal < arg1 * _taxFee / 100 * stor12 / _tTotal:
                    revert with 0, 17
                _4311 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4311] = 30
                mem[_4311 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal <= (arg1 * stor12 / _tTotal) - (arg1 * _taxFee / 100 * stor12 / _tTotal):
                    if (arg1 * stor12 / _tTotal) - (arg1 * _taxFee / 100 * stor12 / _tTotal) < arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal:
                        revert with 0, 17
                    return (arg1 * stor12 / _tTotal)
                _4379 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4379 + 68] = mem[idx + _4311 + 32]
                    idx = idx + 32
                    continue 
                mem[_4379 + 98] = 0
                revert with memory
                  from mem[64]
                   len _4379 + -mem[64] + 100
            if not _tTotal:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor12 / _tTotal:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                            if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 and t / s > -1 / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                                revert with 0, 17
                            if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                                revert with 0, 18
                            if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * t / s / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * t / s:
                                revert with 0, 17
                    else:
                        if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                            if arg1 * _taxFee / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _taxFee / 100 * t / s:
                                revert with 0, 17
                            if 0 > -1 * arg1 * _taxFee / 100 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _taxFee / 100 * t / s < 0:
                                revert with 0, 17
                        else:
                            if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 and t / s > -1 / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                                revert with 0, 17
                            if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                                revert with 0, 18
                            if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * t / s / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * _taxFee / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _taxFee / 100 * t / s:
                                revert with 0, 17
                            if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * t / s > -1 * arg1 * _taxFee / 100 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _taxFee / 100 * t / s < arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * t / s:
                                revert with 0, 17
                    return 0
                if arg1 and t / s > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                    else:
                        if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 and t / s > -1 / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                            revert with 0, 17
                        if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                            revert with 0, 18
                        if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * t / s / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * t / s:
                            revert with 0, 17
                else:
                    if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                        if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < arg1 * _taxFee / 100 * t / s:
                            revert with 0, 17
                        if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) < 0:
                            revert with 0, 17
                    else:
                        if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 and t / s > -1 / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                            revert with 0, 17
                        if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                            revert with 0, 18
                        if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * t / s / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < arg1 * _taxFee / 100 * t / s:
                            revert with 0, 17
                        if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * t / s > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) < arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * t / s:
                            revert with 0, 17
                return (arg1 * t / s)
            if not _tTotal:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                if not arg1 * _taxFee / 100:
                    if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                        if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 and stor12 / _tTotal > -1 / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                            revert with 0, 17
                        if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                            revert with 0, 18
                        if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 != stor12 / _tTotal:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal:
                            revert with 0, 17
                else:
                    if arg1 * _taxFee / 100 and stor12 / _tTotal > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor12 / _tTotal / arg1 * _taxFee / 100 != stor12 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                        if arg1 * _taxFee / 100 * stor12 / _tTotal > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _taxFee / 100 * stor12 / _tTotal:
                            revert with 0, 17
                        if 0 > -1 * arg1 * _taxFee / 100 * stor12 / _tTotal:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * _taxFee / 100 * stor12 / _tTotal < 0:
                            revert with 0, 17
                    else:
                        if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 and stor12 / _tTotal > -1 / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                            revert with 0, 17
                        if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                            revert with 0, 18
                        if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 != stor12 / _tTotal:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _taxFee / 100 * stor12 / _tTotal > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _taxFee / 100 * stor12 / _tTotal:
                            revert with 0, 17
                        if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal > -1 * arg1 * _taxFee / 100 * stor12 / _tTotal:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * _taxFee / 100 * stor12 / _tTotal < arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal:
                            revert with 0, 17
                return 0
            if arg1 and stor12 / _tTotal > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor12 / _tTotal / arg1 != stor12 / _tTotal:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _taxFee / 100:
                if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                    if 0 > arg1 * stor12 / _tTotal:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / _tTotal < 0:
                        revert with 0, 17
                    if 0 > arg1 * stor12 / _tTotal:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / _tTotal < 0:
                        revert with 0, 17
                else:
                    if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 and stor12 / _tTotal > -1 / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                        revert with 0, 17
                    if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                        revert with 0, 18
                    if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 != stor12 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * stor12 / _tTotal:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / _tTotal < 0:
                        revert with 0, 17
                    if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal > arg1 * stor12 / _tTotal:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / _tTotal < arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal:
                        revert with 0, 17
            else:
                if arg1 * _taxFee / 100 and stor12 / _tTotal > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * stor12 / _tTotal / arg1 * _taxFee / 100 != stor12 / _tTotal:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                    if arg1 * _taxFee / 100 * stor12 / _tTotal > arg1 * stor12 / _tTotal:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / _tTotal < arg1 * _taxFee / 100 * stor12 / _tTotal:
                        revert with 0, 17
                    if 0 > (arg1 * stor12 / _tTotal) - (arg1 * _taxFee / 100 * stor12 / _tTotal):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * stor12 / _tTotal) - (arg1 * _taxFee / 100 * stor12 / _tTotal) < 0:
                        revert with 0, 17
                else:
                    if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 and stor12 / _tTotal > -1 / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                        revert with 0, 17
                    if not arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100:
                        revert with 0, 18
                    if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal / arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 != stor12 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _taxFee / 100 * stor12 / _tTotal > arg1 * stor12 / _tTotal:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / _tTotal < arg1 * _taxFee / 100 * stor12 / _tTotal:
                        revert with 0, 17
                    if arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal > (arg1 * stor12 / _tTotal) - (arg1 * _taxFee / 100 * stor12 / _tTotal):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * stor12 / _tTotal) - (arg1 * _taxFee / 100 * stor12 / _tTotal) < arg1 * uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) / 100 * stor12 / _tTotal:
                        revert with 0, 17
    return (arg1 * stor12 / _tTotal)
}



}
