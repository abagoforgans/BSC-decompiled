contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - includeInReward(address arg1)
#  - processDividendTracker(uint256 arg1)
#  - transfer(address arg1, uint256 arg2)
#  - getAccountDividendsInfo(address arg1)
#  - getAccountDividendsInfoAtIndex(uint256 arg1)
#  - process(uint256 arg1)
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
uint256 sub_b1c16b12;
uint256 stor8;
mapping of struct stor9;
mapping of struct withdrawnDividendOf;
uint256 totalDividendsDistributed;
array of address stor12;
mapping of uint256 stor13;
mapping of uint256 stor14;
mapping of uint8 stor15;
uint256 lastProcessedIndex;
mapping of uint8 stor17;
mapping of uint256 lastClaimTimes;
uint256 claimWait;
uint256 minimumTokenBalanceForDividends;
uint256 gasForProcessing;
mapping of uint8 stor22;
mapping of uint8 stor23;
array of address stor24;
address routerAddress;
address rewardTokenAddress;
uint256 _tTotal;
uint256 stor28;
uint256 totalFees;
uint8 stor30;
array of struct stor31;
array of struct stor32;
uint8 decimals;
uint8 _taxFee; offset 8
uint8 _rewardFee; offset 24
uint8 _liquidityFee; offset 40
uint8 _burnFee; offset 56
uint8 _walletFee; offset 72
uint8 stor33; offset 80
uint8 sub_0f94892c; offset 88
uint8 _buybackFee; offset 104
uint32 stor33;
address stor33; offset 96
uint256 stor33; offset 32
uint256 stor33;
address pcsV2RouterAddress;
address pcsV2PairAddress;
address feeWalletAddress;
uint8 swapAndLiquifyEnabled; offset 184
uint128 stor37; offset 184
uint128 stor37; offset 168
uint128 stor37; offset 160
address sub_ec9257d4Address;
uint256 _maxTxAmount;
uint256 _maxWalletAmount;
uint256 numTokensSellToAddToLiquidity;
uint256 buyBackUpperLimitAmount;
mapping of uint8 stor42;
array of address stor80167465652159884487584418398737133515478493586045375474096367959472086682926;

function sub_08bd7f09(?) {
    return bool(stor30)
}

function sub_0f94892c(?) {
    return sub_0f94892c
}

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

function _isBlacklisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor42[arg1])
}

function lastClaimTimes(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return lastClaimTimes[arg1]
}

function pcsV2Router() {
    return pcsV2RouterAddress
}

function lastProcessedIndex() {
    return lastProcessedIndex
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

function swapAndLiquifyEnabled() {
    return bool(swapAndLiquifyEnabled)
}

function excludedFromDividends(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor17[arg1])
}

function sub_51330a19(?) {
    return sub_51330a19
}

function _rewardFee() {
    return _rewardFee
}

function pcsV2Pair() {
    return pcsV2PairAddress
}

function isExcludedFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor22[address(arg1)])
}

function _walletFee() {
    return _walletFee
}

function getNumberOfDividendTokenHolders() {
    return stor12.length
}

function _liquidityFee() {
    return _liquidityFee
}

function _maxWalletAmount() {
    return _maxWalletAmount
}

function claimWait() {
    return claimWait
}

function sub_70690b11(?) {
    return sub_70690b11
}

function _maxTxAmount() {
    return _maxTxAmount
}

function totalDividendsDistributed() {
    return totalDividendsDistributed
}

function isExcludedFromReward(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor23[address(arg1)])
}

function owner() {
    return owner
}

function gasForProcessing() {
    return gasForProcessing
}

function withdrawnDividendOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return withdrawnDividendOf[address(arg1)].field_0
}

function _tTotal() {
    return _tTotal
}

function sub_b1c16b12(?) {
    return sub_b1c16b12
}

function geUnlockTime() {
    return geUnlockTime
}

function buyBackUpperLimitAmount() {
    return buyBackUpperLimitAmount
}

function minimumTokenBalanceForDividends() {
    return minimumTokenBalanceForDividends
}

function _burnFee() {
    return _burnFee
}

function maxTaxFee() {
    return maxTaxFee
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

function getLastProcessedIndex() {
    return lastProcessedIndex
}

function sub_ec9257d4(?) {
    return sub_ec9257d4Address
}

function feeWallet() {
    return feeWalletAddress
}

function rewardToken() {
    return rewardTokenAddress
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
    stor22[address(arg1)] = 0
}

function excludeFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor22[address(arg1)] = 1
}

function sub_7bd56c8c(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor37.field_160) = Mask(96, 0, bool(arg1))
}

function sub_a5f35177(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(88, 0, stor37.field_168) = Mask(88, 0, bool(arg1))
}

function blacklistAddress(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor42[address(arg1)] = uint8(arg2)
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

function sub_a79771bb(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'ZERO ADDRESS'
    sub_ec9257d4Address = address(arg1)
}

function setSwapAndLiquifyEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(72, 0, stor37.field_184) = Mask(72, 0, arg1)
    emit SwapAndLiquifyEnabledUpdated(arg1);
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

function setMinimumTokenBalanceForDividends(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 1:
        revert with 0, 'err'
    if arg1 > _tTotal / 100:
        revert with 0, 'err'
    minimumTokenBalanceForDividends = arg1
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

function updateGasForProcessing(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 200000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'gasForProcessing must be between 200,000 and 5,000,000'
    if arg1 > 5 * 10^6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'gasForProcessing must be between 200,000 and 5,000,000'
    gasForProcessing = arg1
}

function recoverBEP20(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if this.address == arg1:
        revert with 0, 'Self withdraw'
    if rewardTokenAddress == arg1:
        revert with 0, 'reward withdraw'
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
    if arg1 > 10000:
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
        _maxTxAmount = _tTotal * arg1 / 10000
}

function setMaxWalletPercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < sub_70690b11:
        revert with 0, 'err'
    if arg1 > 10000:
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
        _maxWalletAmount = _tTotal * arg1 / 10000
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

function updateClaimWait(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Dividend_Tracker: claimWait must be updated to between 1 and 24 hours'
    if arg1 > 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Dividend_Tracker: claimWait must be updated to between 1 and 24 hours'
    if arg1 == claimWait:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Dividend_Tracker: Cannot update claimWait to same value'
    emit ClaimWaitUpdated(arg1, claimWait);
    claimWait = arg1
}

function sub_caebb843(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if pcsV2RouterAddress == address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The router already has that address'
    require ext_code.size(address(arg1))
    staticcall address(arg1).factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg1))
    staticcall address(arg1).WETH() with:
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
    pcsV2PairAddress = ext_call.return_data[12 len 20]
    pcsV2RouterAddress = address(arg1)
}

function sub_d5f35408(?) {
    require calldata.size - 4 >= 224
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    require arg3 == uint8(arg3)
    require arg4 == uint8(arg4)
    require arg5 == uint8(arg5)
    require arg6 == uint8(arg6)
    require arg7 == uint8(arg7)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(arg1) > maxTaxFee:
        revert with 0, 'TF err'
    if uint8(arg2) > maxLiqFee:
        revert with 0, 'LF err'
    if uint8(arg3) > maxBurnFee:
        revert with 0, 'BF err'
    if uint8(arg4) > sub_51330a19:
        revert with 0, 'WF err'
    if uint8(arg5) > sub_15fa749a:
        revert with 0, 'BBF err'
    if uint8(arg6) > sub_51330a19:
        revert with 0, 'WFT err'
    if uint8(arg7) > maxTaxFee:
        revert with 0, 'RF err'
    if uint8(arg7):
        if uint8(arg1):
            revert with 0, 'RT fee err'
    stor33.field_0 % 16777216 = 0xffffffffffffffffffffffffffffffffffffffff00ff00ffffffffffffffffff and uint8(arg5) << 104 or uint8(arg3) << 56 or 0xffffffffffffffffffffffffffffffffffff00ffffffffff00ffffffffffffff and uint8(arg2) << 40 or uint8(arg1) << 8 or -280375465148161 and uint256(stor33.field_0) % 16777216
    _rewardFee = uint8(arg7)
    Mask(224, 0, stor33.field_32) = Mask(224, 32, 0xffffffffffffffffffffffffffffffffffffffff00ff00ffffffffffffffffff and uint8(arg5) << 104 or uint8(arg3) << 56 or 0xffffffffffffffffffffffffffffffffffff00ffffffffff00ffffffffffffff and uint8(arg2) << 40 or uint8(arg1) << 8 or -280375465148161 and uint256(stor33.field_0)) >> 32
    _walletFee = uint8(arg4)
    uint8(stor33.field_80) = 0
    sub_0f94892c = uint8(arg6)
    address(stor33.field_96) = 0
}

function name() {
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

function _name() {
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

function symbol() {
    if bool(stor32.length):
        if bool(stor32.length) == uint255(stor32.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor32.length):
            if bool(stor32.length) == uint255(stor32.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor32.length):
                if 31 < uint255(stor32.length) * 0.5:
                    mem[128] = uint256(stor32.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor32.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor32[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor32.length), data=mem[128 len ceil32(uint255(stor32.length) * 0.5)])
                mem[128] = 256 * stor32.length.field_8
        else:
            if bool(stor32.length) == stor32.length.field_1 < 32:
                revert with 0, 34
            if stor32.length.field_1:
                if 31 < stor32.length.field_1:
                    mem[128] = uint256(stor32.field_0)
                    idx = 128
                    s = 0
                    while stor32.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor32[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor32.length), data=mem[128 len ceil32(uint255(stor32.length) * 0.5)])
                mem[128] = 256 * stor32.length.field_8
        mem[ceil32(uint255(stor32.length) * 0.5) + 192 len ceil32(uint255(stor32.length) * 0.5)] = mem[128 len ceil32(uint255(stor32.length) * 0.5)]
        if ceil32(uint255(stor32.length) * 0.5) > uint255(stor32.length) * 0.5:
            mem[ceil32(uint255(stor32.length) * 0.5) + (uint255(stor32.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor32.length), data=mem[128 len ceil32(uint255(stor32.length) * 0.5)], mem[(2 * ceil32(uint255(stor32.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor32.length) * 0.5)]), 
    if bool(stor32.length) == stor32.length.field_1 < 32:
        revert with 0, 34
    if bool(stor32.length):
        if bool(stor32.length) == uint255(stor32.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor32.length):
            if 31 < uint255(stor32.length) * 0.5:
                mem[128] = uint256(stor32.field_0)
                idx = 128
                s = 0
                while (uint255(stor32.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor32[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor32.length % 128, data=mem[128 len ceil32(stor32.length.field_1)])
            mem[128] = 256 * stor32.length.field_8
    else:
        if bool(stor32.length) == stor32.length.field_1 < 32:
            revert with 0, 34
        if stor32.length.field_1:
            if 31 < stor32.length.field_1:
                mem[128] = uint256(stor32.field_0)
                idx = 128
                s = 0
                while stor32.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor32[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor32.length % 128, data=mem[128 len ceil32(stor32.length.field_1)])
            mem[128] = 256 * stor32.length.field_8
    mem[ceil32(stor32.length.field_1) + 192 len ceil32(stor32.length.field_1)] = mem[128 len ceil32(stor32.length.field_1)]
    if ceil32(stor32.length.field_1) > stor32.length.field_1:
        mem[ceil32(stor32.length.field_1) + stor32.length.field_1 + 192] = 0
    return Array(len=stor32.length % 128, data=mem[128 len ceil32(stor32.length.field_1)], mem[(2 * ceil32(stor32.length.field_1)) + 192 len 2 * ceil32(stor32.length.field_1)]), 
}

function _symbol() {
    if bool(stor32.length):
        if bool(stor32.length) == uint255(stor32.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor32.length):
            if bool(stor32.length) == uint255(stor32.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor32.length):
                if 31 < uint255(stor32.length) * 0.5:
                    mem[128] = uint256(stor32.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor32.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor32[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor32.length), data=mem[128 len ceil32(uint255(stor32.length) * 0.5)])
                mem[128] = 256 * stor32.length.field_8
        else:
            if bool(stor32.length) == stor32.length.field_1 < 32:
                revert with 0, 34
            if stor32.length.field_1:
                if 31 < stor32.length.field_1:
                    mem[128] = uint256(stor32.field_0)
                    idx = 128
                    s = 0
                    while stor32.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor32[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor32.length), data=mem[128 len ceil32(uint255(stor32.length) * 0.5)])
                mem[128] = 256 * stor32.length.field_8
        mem[ceil32(uint255(stor32.length) * 0.5) + 192 len ceil32(uint255(stor32.length) * 0.5)] = mem[128 len ceil32(uint255(stor32.length) * 0.5)]
        if ceil32(uint255(stor32.length) * 0.5) > uint255(stor32.length) * 0.5:
            mem[ceil32(uint255(stor32.length) * 0.5) + (uint255(stor32.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor32.length), data=mem[128 len ceil32(uint255(stor32.length) * 0.5)], mem[(2 * ceil32(uint255(stor32.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor32.length) * 0.5)]), 
    if bool(stor32.length) == stor32.length.field_1 < 32:
        revert with 0, 34
    if bool(stor32.length):
        if bool(stor32.length) == uint255(stor32.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor32.length):
            if 31 < uint255(stor32.length) * 0.5:
                mem[128] = uint256(stor32.field_0)
                idx = 128
                s = 0
                while (uint255(stor32.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor32[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor32.length % 128, data=mem[128 len ceil32(stor32.length.field_1)])
            mem[128] = 256 * stor32.length.field_8
    else:
        if bool(stor32.length) == stor32.length.field_1 < 32:
            revert with 0, 34
        if stor32.length.field_1:
            if 31 < stor32.length.field_1:
                mem[128] = uint256(stor32.field_0)
                idx = 128
                s = 0
                while stor32.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor32[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor32.length % 128, data=mem[128 len ceil32(stor32.length.field_1)])
            mem[128] = 256 * stor32.length.field_8
    mem[ceil32(stor32.length.field_1) + 192 len ceil32(stor32.length.field_1)] = mem[128 len ceil32(stor32.length.field_1)]
    if ceil32(stor32.length.field_1) > stor32.length.field_1:
        mem[ceil32(stor32.length.field_1) + stor32.length.field_1 + 192] = 0
    return Array(len=stor32.length % 128, data=mem[128 len ceil32(stor32.length.field_1)], mem[(2 * ceil32(stor32.length.field_1)) + 192 len 2 * ceil32(stor32.length.field_1)]), 
}

function tokenFromReflection(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if arg1 > stor28:
        revert with 0, 'Amt must be less than tot refl'
    idx = 0
    s = _tTotal
    t = stor28
    while idx < stor24.length:
        mem[0] = stor24[idx]
        mem[32] = 4
        if stor4[stor24[idx]] > t:
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
            if stor28 / _tTotal:
                return (arg1 / stor28 / _tTotal)
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
        if idx >= stor24.length:
            revert with 0, 50
        mem[0] = stor24[idx]
        mem[32] = 5
        if stor5[stor24[idx]] > s:
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
            if stor28 / _tTotal:
                return (arg1 / stor28 / _tTotal)
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
        if idx >= stor24.length:
            revert with 0, 50
        mem[0] = stor24[idx]
        mem[32] = 4
        _97 = mem[64]
        mem[64] = mem[64] + 64
        mem[_97] = 30
        mem[_97 + 32] = 'SafeMath: subtraction overflow'
        if stor4[stor24[idx]] > t:
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
        if t < stor4[stor24[idx]]:
            revert with 0, 17
        if idx >= stor24.length:
            revert with 0, 50
        mem[0] = stor24[idx]
        mem[32] = 5
        _127 = mem[64]
        mem[64] = mem[64] + 64
        mem[_127] = 30
        mem[_127 + 32] = 'SafeMath: subtraction overflow'
        if stor5[stor24[idx]] <= s:
            if s < stor5[stor24[idx]]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s - stor5[stor24[idx]]
            t = t - stor4[stor24[idx]]
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
    if t >= stor28 / _tTotal:
        if not s:
            revert with 0, 'SafeMath: division by zero', 0
        if not t / s:
            revert with 0, 'SafeMath: division by zero', 0
        return (arg1 / t / s)
    if not _tTotal:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor28 / _tTotal:
        revert with 0, 'SafeMath: division by zero', 0
    return (arg1 / stor28 / _tTotal)
}

function balanceOf(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor23[address(arg1)]:
        return stor5[address(arg1)]
    mem[0] = arg1
    mem[32] = 4
    if stor4[address(arg1)] > stor28:
        revert with 0, 'Amt must be less than tot refl'
    idx = 0
    s = _tTotal
    t = stor28
    while idx < stor24.length:
        mem[0] = stor24[idx]
        mem[32] = 4
        if stor4[stor24[idx]] > t:
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
            if stor28 / _tTotal:
                return (stor4[address(arg1)] / stor28 / _tTotal)
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
        if idx >= stor24.length:
            revert with 0, 50
        mem[0] = stor24[idx]
        mem[32] = 5
        if stor5[stor24[idx]] > s:
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
            if stor28 / _tTotal:
                return (stor4[address(arg1)] / stor28 / _tTotal)
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
        if idx >= stor24.length:
            revert with 0, 50
        mem[0] = stor24[idx]
        mem[32] = 4
        _102 = mem[64]
        mem[64] = mem[64] + 64
        mem[_102] = 30
        mem[_102 + 32] = 'SafeMath: subtraction overflow'
        if stor4[stor24[idx]] > t:
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
        if t < stor4[stor24[idx]]:
            revert with 0, 17
        if idx >= stor24.length:
            revert with 0, 50
        mem[0] = stor24[idx]
        mem[32] = 5
        _132 = mem[64]
        mem[64] = mem[64] + 64
        mem[_132] = 30
        mem[_132 + 32] = 'SafeMath: subtraction overflow'
        if stor5[stor24[idx]] <= s:
            if s < stor5[stor24[idx]]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s - stor5[stor24[idx]]
            t = t - stor4[stor24[idx]]
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
    if t >= stor28 / _tTotal:
        if not s:
            revert with 0, 'SafeMath: division by zero', 0
        if not t / s:
            revert with 0, 'SafeMath: division by zero', 0
        return (stor4[address(arg1)] / t / s)
    if not _tTotal:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor28 / _tTotal:
        revert with 0, 'SafeMath: division by zero', 0
    return (stor4[address(arg1)] / stor28 / _tTotal)
}

function excludeFromReward(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor23[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Account is already excluded from reward'
    if stor4[address(arg1)]:
        mem[0] = arg1
        mem[32] = 4
        if stor4[address(arg1)] > stor28:
            revert with 0, 'Amt must be less than tot refl'
        idx = 0
        s = _tTotal
        t = stor28
        while idx < stor24.length:
            mem[0] = stor24[idx]
            mem[32] = 4
            if stor4[stor24[idx]] > t:
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
                if stor28 / _tTotal:
                    stor5[address(arg1)] = stor4[address(arg1)] / stor28 / _tTotal
                    stor23[address(arg1)] = 1
                    stor24.length++
                    storB13D[stor24.length] = arg1
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
            if idx >= stor24.length:
                revert with 0, 50
            mem[0] = stor24[idx]
            mem[32] = 5
            if stor5[stor24[idx]] > s:
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
                if stor28 / _tTotal:
                    stor5[address(arg1)] = stor4[address(arg1)] / stor28 / _tTotal
                    stor23[address(arg1)] = 1
                    stor24.length++
                    storB13D[stor24.length] = arg1
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
            if idx >= stor24.length:
                revert with 0, 50
            mem[0] = stor24[idx]
            mem[32] = 4
            _105 = mem[64]
            mem[64] = mem[64] + 64
            mem[_105] = 30
            mem[_105 + 32] = 'SafeMath: subtraction overflow'
            if stor4[stor24[idx]] > t:
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
            if t < stor4[stor24[idx]]:
                revert with 0, 17
            if idx >= stor24.length:
                revert with 0, 50
            mem[0] = stor24[idx]
            mem[32] = 5
            _135 = mem[64]
            mem[64] = mem[64] + 64
            mem[_135] = 30
            mem[_135 + 32] = 'SafeMath: subtraction overflow'
            if stor5[stor24[idx]] <= s:
                if s < stor5[stor24[idx]]:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - stor5[stor24[idx]]
                t = t - stor4[stor24[idx]]
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
        if t >= stor28 / _tTotal:
            if not s:
                revert with 0, 'SafeMath: division by zero', 0
            if not t / s:
                revert with 0, 'SafeMath: division by zero', 0
            stor5[address(arg1)] = stor4[address(arg1)] / t / s
        else:
            if not _tTotal:
                revert with 0, 'SafeMath: division by zero', 0
            if not stor28 / _tTotal:
                revert with 0, 'SafeMath: division by zero', 0
            stor5[address(arg1)] = stor4[address(arg1)] / stor28 / _tTotal
    stor23[address(arg1)] = 1
    stor24.length++
    storB13D[stor24.length] = arg1
}

function accumulativeDividendOf(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor23[address(arg1)]:
        if not stor8:
            if stor9[address(arg1)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            require stor9[address(arg1)].field_0 >= 0
            return stor9[address(arg1)].field_128
        if stor8 and stor5[address(arg1)] > -1 / stor8:
            revert with 0, 17
        if not stor8:
            revert with 0, 18
        if stor8 * stor5[address(arg1)] / stor8 != stor5[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        require stor8 * stor5[address(arg1)] >= 0
        if stor9[address(arg1)].field_0 > (-1 * stor8 * stor5[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor8 * stor5[address(arg1)] >= 0:
            revert with 0, 17
        if stor8 * stor5[address(arg1)] < 0 and stor9[address(arg1)].field_0 < (-1 * stor8 * stor5[address(arg1)]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        if stor9[address(arg1)].field_0 < 0:
            require (stor8 * stor5[address(arg1)]) + stor9[address(arg1)].field_0 < stor8 * stor5[address(arg1)]
        else:
            if (stor8 * stor5[address(arg1)]) + stor9[address(arg1)].field_0 < stor8 * stor5[address(arg1)]:
                require stor9[address(arg1)].field_0 < 0
                require (stor8 * stor5[address(arg1)]) + stor9[address(arg1)].field_0 < stor8 * stor5[address(arg1)]
        require (stor8 * stor5[address(arg1)]) + stor9[address(arg1)].field_0 >= 0
        return (Mask(128, 128, (stor8 * stor5[address(arg1)]) + stor9[address(arg1)].field_0) >> 128)
    mem[0] = arg1
    mem[32] = 4
    if stor4[address(arg1)] > stor28:
        revert with 0, 'Amt must be less than tot refl'
    idx = 0
    s = _tTotal
    t = stor28
    while idx < stor24.length:
        mem[0] = stor24[idx]
        mem[32] = 4
        if stor4[stor24[idx]] > t:
            _138 = mem[64]
            mem[64] = mem[64] + 64
            mem[_138] = 26
            mem[_138 + 32] = 'SafeMath: division by zero'
            if not _tTotal:
                _142 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _142 + 68] = mem[idx + _138 + 32]
                    idx = idx + 32
                    continue 
                mem[_142 + 94] = 0
                revert with memory
                  from mem[64]
                   len _142 + -mem[64] + 100
            _163 = mem[64]
            mem[64] = mem[64] + 64
            mem[_163] = 26
            mem[_163 + 32] = 'SafeMath: division by zero'
            if not stor28 / _tTotal:
                _172 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _172 + 68] = mem[idx + _163 + 32]
                    idx = idx + 32
                    continue 
                mem[_172 + 94] = 0
                revert with memory
                  from mem[64]
                   len _172 + -mem[64] + 100
            if not stor8:
                if stor9[address(arg1)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                require stor9[address(arg1)].field_0 >= 0
                return stor9[address(arg1)].field_128
            if stor8 and stor4[address(arg1)] / stor28 / _tTotal > -1 / stor8:
                revert with 0, 17
            if not stor8:
                revert with 0, 18
            if stor8 * stor4[address(arg1)] / stor28 / _tTotal / stor8 != stor4[address(arg1)] / stor28 / _tTotal:
                revert with 0, 'SafeMath: multiplication overflow'
            require stor8 * stor4[address(arg1)] / stor28 / _tTotal >= 0
            if stor9[address(arg1)].field_0 > (-1 * stor8 * stor4[address(arg1)] / stor28 / _tTotal) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor8 * stor4[address(arg1)] / stor28 / _tTotal >= 0:
                revert with 0, 17
            if stor8 * stor4[address(arg1)] / stor28 / _tTotal < 0 and stor9[address(arg1)].field_0 < (-1 * stor8 * stor4[address(arg1)] / stor28 / _tTotal) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            if stor9[address(arg1)].field_0 < 0:
                require (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0 < stor8 * stor4[address(arg1)] / stor28 / _tTotal
            else:
                if (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0 < stor8 * stor4[address(arg1)] / stor28 / _tTotal:
                    require stor9[address(arg1)].field_0 < 0
                    require (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0 < stor8 * stor4[address(arg1)] / stor28 / _tTotal
            require (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0 >= 0
            return (Mask(128, 128, (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0) >> 128)
        if idx >= stor24.length:
            revert with 0, 50
        mem[0] = stor24[idx]
        mem[32] = 5
        if stor5[stor24[idx]] > s:
            _144 = mem[64]
            mem[64] = mem[64] + 64
            mem[_144] = 26
            mem[_144 + 32] = 'SafeMath: division by zero'
            if not _tTotal:
                _149 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _149 + 68] = mem[idx + _144 + 32]
                    idx = idx + 32
                    continue 
                mem[_149 + 94] = 0
                revert with memory
                  from mem[64]
                   len _149 + -mem[64] + 100
            _174 = mem[64]
            mem[64] = mem[64] + 64
            mem[_174] = 26
            mem[_174 + 32] = 'SafeMath: division by zero'
            if not stor28 / _tTotal:
                _179 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _179 + 68] = mem[idx + _174 + 32]
                    idx = idx + 32
                    continue 
                mem[_179 + 94] = 0
                revert with memory
                  from mem[64]
                   len _179 + -mem[64] + 100
            if not stor8:
                if stor9[address(arg1)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                require stor9[address(arg1)].field_0 >= 0
                return stor9[address(arg1)].field_128
            if stor8 and stor4[address(arg1)] / stor28 / _tTotal > -1 / stor8:
                revert with 0, 17
            if not stor8:
                revert with 0, 18
            if stor8 * stor4[address(arg1)] / stor28 / _tTotal / stor8 != stor4[address(arg1)] / stor28 / _tTotal:
                revert with 0, 'SafeMath: multiplication overflow'
            require stor8 * stor4[address(arg1)] / stor28 / _tTotal >= 0
            if stor9[address(arg1)].field_0 > (-1 * stor8 * stor4[address(arg1)] / stor28 / _tTotal) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor8 * stor4[address(arg1)] / stor28 / _tTotal >= 0:
                revert with 0, 17
            if stor8 * stor4[address(arg1)] / stor28 / _tTotal < 0 and stor9[address(arg1)].field_0 < (-1 * stor8 * stor4[address(arg1)] / stor28 / _tTotal) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            if stor9[address(arg1)].field_0 < 0:
                require (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0 < stor8 * stor4[address(arg1)] / stor28 / _tTotal
            else:
                if (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0 < stor8 * stor4[address(arg1)] / stor28 / _tTotal:
                    require stor9[address(arg1)].field_0 < 0
                    require (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0 < stor8 * stor4[address(arg1)] / stor28 / _tTotal
            require (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0 >= 0
            return (Mask(128, 128, (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0) >> 128)
        if idx >= stor24.length:
            revert with 0, 50
        mem[0] = stor24[idx]
        mem[32] = 4
        _143 = mem[64]
        mem[64] = mem[64] + 64
        mem[_143] = 30
        mem[_143 + 32] = 'SafeMath: subtraction overflow'
        if stor4[stor24[idx]] > t:
            _148 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _148 + 68] = mem[idx + _143 + 32]
                idx = idx + 32
                continue 
            mem[_148 + 98] = 0
            revert with memory
              from mem[64]
               len _148 + -mem[64] + 100
        if t < stor4[stor24[idx]]:
            revert with 0, 17
        if idx >= stor24.length:
            revert with 0, 50
        mem[0] = stor24[idx]
        mem[32] = 5
        _173 = mem[64]
        mem[64] = mem[64] + 64
        mem[_173] = 30
        mem[_173 + 32] = 'SafeMath: subtraction overflow'
        if stor5[stor24[idx]] <= s:
            if s < stor5[stor24[idx]]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s - stor5[stor24[idx]]
            t = t - stor4[stor24[idx]]
            continue 
        _178 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _178 + 68] = mem[idx + _173 + 32]
            idx = idx + 32
            continue 
        mem[_178 + 98] = 0
        revert with memory
          from mem[64]
           len _178 + -mem[64] + 100
    if not _tTotal:
        revert with 0, 'SafeMath: division by zero', 0
    if t >= stor28 / _tTotal:
        if not s:
            revert with 0, 'SafeMath: division by zero', 0
        if not t / s:
            revert with 0, 'SafeMath: division by zero', 0
        if not stor8:
            if stor9[address(arg1)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            require stor9[address(arg1)].field_0 >= 0
            return stor9[address(arg1)].field_128
        if stor8 and stor4[address(arg1)] / t / s > -1 / stor8:
            revert with 0, 17
        if not stor8:
            revert with 0, 18
        if stor8 * stor4[address(arg1)] / t / s / stor8 != stor4[address(arg1)] / t / s:
            revert with 0, 'SafeMath: multiplication overflow'
        require stor8 * stor4[address(arg1)] / t / s >= 0
        if stor9[address(arg1)].field_0 > (-1 * stor8 * stor4[address(arg1)] / t / s) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor8 * stor4[address(arg1)] / t / s >= 0:
            revert with 0, 17
        if stor8 * stor4[address(arg1)] / t / s < 0 and stor9[address(arg1)].field_0 < (-1 * stor8 * stor4[address(arg1)] / t / s) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        if stor9[address(arg1)].field_0 < 0:
            require (stor8 * stor4[address(arg1)] / t / s) + stor9[address(arg1)].field_0 < stor8 * stor4[address(arg1)] / t / s
        else:
            if (stor8 * stor4[address(arg1)] / t / s) + stor9[address(arg1)].field_0 < stor8 * stor4[address(arg1)] / t / s:
                require stor9[address(arg1)].field_0 < 0
                require (stor8 * stor4[address(arg1)] / t / s) + stor9[address(arg1)].field_0 < stor8 * stor4[address(arg1)] / t / s
        require (stor8 * stor4[address(arg1)] / t / s) + stor9[address(arg1)].field_0 >= 0
        return (Mask(128, 128, (stor8 * stor4[address(arg1)] / t / s) + stor9[address(arg1)].field_0) >> 128)
    if not _tTotal:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor28 / _tTotal:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor8:
        if stor9[address(arg1)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        require stor9[address(arg1)].field_0 >= 0
        return stor9[address(arg1)].field_128
    if stor8 and stor4[address(arg1)] / stor28 / _tTotal > -1 / stor8:
        revert with 0, 17
    if not stor8:
        revert with 0, 18
    if stor8 * stor4[address(arg1)] / stor28 / _tTotal / stor8 != stor4[address(arg1)] / stor28 / _tTotal:
        revert with 0, 'SafeMath: multiplication overflow'
    require stor8 * stor4[address(arg1)] / stor28 / _tTotal >= 0
    if stor9[address(arg1)].field_0 > (-1 * stor8 * stor4[address(arg1)] / stor28 / _tTotal) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor8 * stor4[address(arg1)] / stor28 / _tTotal >= 0:
        revert with 0, 17
    if stor8 * stor4[address(arg1)] / stor28 / _tTotal < 0 and stor9[address(arg1)].field_0 < (-1 * stor8 * stor4[address(arg1)] / stor28 / _tTotal) - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 17
    if stor9[address(arg1)].field_0 < 0:
        require (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0 < stor8 * stor4[address(arg1)] / stor28 / _tTotal
    else:
        if (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0 < stor8 * stor4[address(arg1)] / stor28 / _tTotal:
            require stor9[address(arg1)].field_0 < 0
            require (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0 < stor8 * stor4[address(arg1)] / stor28 / _tTotal
    require (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0 >= 0
    return (Mask(128, 128, (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0) >> 128)
}

function dividendOf(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor23[address(arg1)]:
        if not stor8:
            if stor9[address(arg1)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            require stor9[address(arg1)].field_0 >= 0
            if withdrawnDividendOf[address(arg1)].field_0 > stor9[address(arg1)].field_128:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor9[address(arg1)].field_128 < withdrawnDividendOf[address(arg1)].field_0:
                revert with 0, 17
            return (stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0)
        if stor8 and stor5[address(arg1)] > -1 / stor8:
            revert with 0, 17
        if not stor8:
            revert with 0, 18
        if stor8 * stor5[address(arg1)] / stor8 != stor5[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        require stor8 * stor5[address(arg1)] >= 0
        if stor9[address(arg1)].field_0 > (-1 * stor8 * stor5[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor8 * stor5[address(arg1)] >= 0:
            revert with 0, 17
        if stor8 * stor5[address(arg1)] < 0 and stor9[address(arg1)].field_0 < (-1 * stor8 * stor5[address(arg1)]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        if stor9[address(arg1)].field_0 < 0:
            require (stor8 * stor5[address(arg1)]) + stor9[address(arg1)].field_0 < stor8 * stor5[address(arg1)]
        else:
            if (stor8 * stor5[address(arg1)]) + stor9[address(arg1)].field_0 < stor8 * stor5[address(arg1)]:
                require stor9[address(arg1)].field_0 < 0
                require (stor8 * stor5[address(arg1)]) + stor9[address(arg1)].field_0 < stor8 * stor5[address(arg1)]
        require (stor8 * stor5[address(arg1)]) + stor9[address(arg1)].field_0 >= 0
        if withdrawnDividendOf[address(arg1)].field_0 > Mask(128, 128, (stor8 * stor5[address(arg1)]) + stor9[address(arg1)].field_0) >> 128:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if Mask(128, 128, (stor8 * stor5[address(arg1)]) + stor9[address(arg1)].field_0) >> 128 < withdrawnDividendOf[address(arg1)].field_0:
            revert with 0, 17
        return ((Mask(128, 128, (stor8 * stor5[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0)
    mem[0] = arg1
    mem[32] = 4
    if stor4[address(arg1)] > stor28:
        revert with 0, 'Amt must be less than tot refl'
    idx = 0
    s = _tTotal
    t = stor28
    while idx < stor24.length:
        mem[0] = stor24[idx]
        mem[32] = 4
        if stor4[stor24[idx]] > t:
            _271 = mem[64]
            mem[64] = mem[64] + 64
            mem[_271] = 26
            mem[_271 + 32] = 'SafeMath: division by zero'
            if not _tTotal:
                _275 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _275 + 68] = mem[idx + _271 + 32]
                    idx = idx + 32
                    continue 
                mem[_275 + 94] = 0
                revert with memory
                  from mem[64]
                   len _275 + -mem[64] + 100
            _296 = mem[64]
            mem[64] = mem[64] + 64
            mem[_296] = 26
            mem[_296 + 32] = 'SafeMath: division by zero'
            if not stor28 / _tTotal:
                _305 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _305 + 68] = mem[idx + _296 + 32]
                    idx = idx + 32
                    continue 
                mem[_305 + 94] = 0
                revert with memory
                  from mem[64]
                   len _305 + -mem[64] + 100
            if not stor8:
                if stor9[address(arg1)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                require stor9[address(arg1)].field_0 >= 0
                _346 = mem[64]
                mem[64] = mem[64] + 64
                mem[_346] = 30
                mem[_346 + 32] = 'SafeMath: subtraction overflow'
                if withdrawnDividendOf[address(arg1)].field_0 <= stor9[address(arg1)].field_128:
                    if stor9[address(arg1)].field_128 < withdrawnDividendOf[address(arg1)].field_0:
                        revert with 0, 17
                    return (stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0)
                _347 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _347 + 68] = mem[idx + _346 + 32]
                    idx = idx + 32
                    continue 
                mem[_347 + 98] = 0
                revert with memory
                  from mem[64]
                   len _347 + -mem[64] + 100
            if stor8 and stor4[address(arg1)] / stor28 / _tTotal > -1 / stor8:
                revert with 0, 17
            if not stor8:
                revert with 0, 18
            if stor8 * stor4[address(arg1)] / stor28 / _tTotal / stor8 != stor4[address(arg1)] / stor28 / _tTotal:
                revert with 0, 'SafeMath: multiplication overflow'
            require stor8 * stor4[address(arg1)] / stor28 / _tTotal >= 0
            if stor9[address(arg1)].field_0 > (-1 * stor8 * stor4[address(arg1)] / stor28 / _tTotal) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor8 * stor4[address(arg1)] / stor28 / _tTotal >= 0:
                revert with 0, 17
            if stor8 * stor4[address(arg1)] / stor28 / _tTotal < 0 and stor9[address(arg1)].field_0 < (-1 * stor8 * stor4[address(arg1)] / stor28 / _tTotal) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            if stor9[address(arg1)].field_0 < 0:
                require (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0 < stor8 * stor4[address(arg1)] / stor28 / _tTotal
                require (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0 >= 0
                _356 = mem[64]
                mem[64] = mem[64] + 64
                mem[_356] = 30
                mem[_356 + 32] = 'SafeMath: subtraction overflow'
                if withdrawnDividendOf[address(arg1)].field_0 <= Mask(128, 128, (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0) >> 128:
                    if Mask(128, 128, (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0) >> 128 < withdrawnDividendOf[address(arg1)].field_0:
                        revert with 0, 17
                    return ((Mask(128, 128, (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0)
                _367 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _367 + 68] = mem[idx + _356 + 32]
                    idx = idx + 32
                    continue 
                mem[_367 + 98] = 0
                revert with memory
                  from mem[64]
                   len _367 + -mem[64] + 100
            if (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0 >= stor8 * stor4[address(arg1)] / stor28 / _tTotal:
                require (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0 >= 0
                _355 = mem[64]
                mem[64] = mem[64] + 64
                mem[_355] = 30
                mem[_355 + 32] = 'SafeMath: subtraction overflow'
                if withdrawnDividendOf[address(arg1)].field_0 <= Mask(128, 128, (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0) >> 128:
                    if Mask(128, 128, (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0) >> 128 < withdrawnDividendOf[address(arg1)].field_0:
                        revert with 0, 17
                    return ((Mask(128, 128, (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0)
                _361 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _361 + 68] = mem[idx + _355 + 32]
                    idx = idx + 32
                    continue 
                mem[_361 + 98] = 0
                revert with memory
                  from mem[64]
                   len _361 + -mem[64] + 100
            require stor9[address(arg1)].field_0 < 0
            require (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0 < stor8 * stor4[address(arg1)] / stor28 / _tTotal
            require (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0 >= 0
            _362 = mem[64]
            mem[64] = mem[64] + 64
            mem[_362] = 30
            mem[_362 + 32] = 'SafeMath: subtraction overflow'
            if withdrawnDividendOf[address(arg1)].field_0 <= Mask(128, 128, (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0) >> 128:
                if Mask(128, 128, (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0) >> 128 < withdrawnDividendOf[address(arg1)].field_0:
                    revert with 0, 17
                return ((Mask(128, 128, (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0)
            _373 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _373 + 68] = mem[idx + _362 + 32]
                idx = idx + 32
                continue 
            mem[_373 + 98] = 0
            revert with memory
              from mem[64]
               len _373 + -mem[64] + 100
        if idx >= stor24.length:
            revert with 0, 50
        mem[0] = stor24[idx]
        mem[32] = 5
        if stor5[stor24[idx]] <= s:
            if idx >= stor24.length:
                revert with 0, 50
            mem[0] = stor24[idx]
            mem[32] = 4
            _276 = mem[64]
            mem[64] = mem[64] + 64
            mem[_276] = 30
            mem[_276 + 32] = 'SafeMath: subtraction overflow'
            if stor4[stor24[idx]] > t:
                _281 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _281 + 68] = mem[idx + _276 + 32]
                    idx = idx + 32
                    continue 
                mem[_281 + 98] = 0
                revert with memory
                  from mem[64]
                   len _281 + -mem[64] + 100
            if t < stor4[stor24[idx]]:
                revert with 0, 17
            if idx >= stor24.length:
                revert with 0, 50
            mem[0] = stor24[idx]
            mem[32] = 5
            _306 = mem[64]
            mem[64] = mem[64] + 64
            mem[_306] = 30
            mem[_306 + 32] = 'SafeMath: subtraction overflow'
            if stor5[stor24[idx]] <= s:
                if s < stor5[stor24[idx]]:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - stor5[stor24[idx]]
                t = t - stor4[stor24[idx]]
                continue 
            _311 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _311 + 68] = mem[idx + _306 + 32]
                idx = idx + 32
                continue 
            mem[_311 + 98] = 0
            revert with memory
              from mem[64]
               len _311 + -mem[64] + 100
        _277 = mem[64]
        mem[64] = mem[64] + 64
        mem[_277] = 26
        mem[_277 + 32] = 'SafeMath: division by zero'
        if not _tTotal:
            _282 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _282 + 68] = mem[idx + _277 + 32]
                idx = idx + 32
                continue 
            mem[_282 + 94] = 0
            revert with memory
              from mem[64]
               len _282 + -mem[64] + 100
        _307 = mem[64]
        mem[64] = mem[64] + 64
        mem[_307] = 26
        mem[_307 + 32] = 'SafeMath: division by zero'
        if not stor28 / _tTotal:
            _312 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _312 + 68] = mem[idx + _307 + 32]
                idx = idx + 32
                continue 
            mem[_312 + 94] = 0
            revert with memory
              from mem[64]
               len _312 + -mem[64] + 100
        if not stor8:
            if stor9[address(arg1)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            require stor9[address(arg1)].field_0 >= 0
            _348 = mem[64]
            mem[64] = mem[64] + 64
            mem[_348] = 30
            mem[_348 + 32] = 'SafeMath: subtraction overflow'
            if withdrawnDividendOf[address(arg1)].field_0 <= stor9[address(arg1)].field_128:
                if stor9[address(arg1)].field_128 < withdrawnDividendOf[address(arg1)].field_0:
                    revert with 0, 17
                return (stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0)
            _350 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _350 + 68] = mem[idx + _348 + 32]
                idx = idx + 32
                continue 
            mem[_350 + 98] = 0
            revert with memory
              from mem[64]
               len _350 + -mem[64] + 100
        if stor8 and stor4[address(arg1)] / stor28 / _tTotal > -1 / stor8:
            revert with 0, 17
        if not stor8:
            revert with 0, 18
        if stor8 * stor4[address(arg1)] / stor28 / _tTotal / stor8 != stor4[address(arg1)] / stor28 / _tTotal:
            revert with 0, 'SafeMath: multiplication overflow'
        require stor8 * stor4[address(arg1)] / stor28 / _tTotal >= 0
        if stor9[address(arg1)].field_0 > (-1 * stor8 * stor4[address(arg1)] / stor28 / _tTotal) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor8 * stor4[address(arg1)] / stor28 / _tTotal >= 0:
            revert with 0, 17
        if stor8 * stor4[address(arg1)] / stor28 / _tTotal < 0 and stor9[address(arg1)].field_0 < (-1 * stor8 * stor4[address(arg1)] / stor28 / _tTotal) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        if stor9[address(arg1)].field_0 < 0:
            require (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0 < stor8 * stor4[address(arg1)] / stor28 / _tTotal
            require (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0 >= 0
            _370 = mem[64]
            mem[64] = mem[64] + 64
            mem[_370] = 30
            mem[_370 + 32] = 'SafeMath: subtraction overflow'
            if withdrawnDividendOf[address(arg1)].field_0 <= Mask(128, 128, (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0) >> 128:
                if Mask(128, 128, (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0) >> 128 < withdrawnDividendOf[address(arg1)].field_0:
                    revert with 0, 17
                return ((Mask(128, 128, (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0)
            _382 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _382 + 68] = mem[idx + _370 + 32]
                idx = idx + 32
                continue 
            mem[_382 + 98] = 0
            revert with memory
              from mem[64]
               len _382 + -mem[64] + 100
        if (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0 >= stor8 * stor4[address(arg1)] / stor28 / _tTotal:
            require (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0 >= 0
            _364 = mem[64]
            mem[64] = mem[64] + 64
            mem[_364] = 30
            mem[_364 + 32] = 'SafeMath: subtraction overflow'
            if withdrawnDividendOf[address(arg1)].field_0 <= Mask(128, 128, (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0) >> 128:
                if Mask(128, 128, (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0) >> 128 < withdrawnDividendOf[address(arg1)].field_0:
                    revert with 0, 17
                return ((Mask(128, 128, (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0)
            _375 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _375 + 68] = mem[idx + _364 + 32]
                idx = idx + 32
                continue 
            mem[_375 + 98] = 0
            revert with memory
              from mem[64]
               len _375 + -mem[64] + 100
        require stor9[address(arg1)].field_0 < 0
        require (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0 < stor8 * stor4[address(arg1)] / stor28 / _tTotal
        require (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0 >= 0
        _376 = mem[64]
        mem[64] = mem[64] + 64
        mem[_376] = 30
        mem[_376 + 32] = 'SafeMath: subtraction overflow'
        if withdrawnDividendOf[address(arg1)].field_0 <= Mask(128, 128, (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0) >> 128:
            if Mask(128, 128, (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0) >> 128 < withdrawnDividendOf[address(arg1)].field_0:
                revert with 0, 17
            return ((Mask(128, 128, (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0)
        _389 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _389 + 68] = mem[idx + _376 + 32]
            idx = idx + 32
            continue 
        mem[_389 + 98] = 0
        revert with memory
          from mem[64]
           len _389 + -mem[64] + 100
    if not _tTotal:
        revert with 0, 'SafeMath: division by zero', 0
    if t >= stor28 / _tTotal:
        if not s:
            revert with 0, 'SafeMath: division by zero', 0
        if not t / s:
            revert with 0, 'SafeMath: division by zero', 0
        if not stor8:
            if stor9[address(arg1)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            require stor9[address(arg1)].field_0 >= 0
            if withdrawnDividendOf[address(arg1)].field_0 > stor9[address(arg1)].field_128:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor9[address(arg1)].field_128 < withdrawnDividendOf[address(arg1)].field_0:
                revert with 0, 17
            return (stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0)
        if stor8 and stor4[address(arg1)] / t / s > -1 / stor8:
            revert with 0, 17
        if not stor8:
            revert with 0, 18
        if stor8 * stor4[address(arg1)] / t / s / stor8 != stor4[address(arg1)] / t / s:
            revert with 0, 'SafeMath: multiplication overflow'
        require stor8 * stor4[address(arg1)] / t / s >= 0
        if stor9[address(arg1)].field_0 > (-1 * stor8 * stor4[address(arg1)] / t / s) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor8 * stor4[address(arg1)] / t / s >= 0:
            revert with 0, 17
        if stor8 * stor4[address(arg1)] / t / s < 0 and stor9[address(arg1)].field_0 < (-1 * stor8 * stor4[address(arg1)] / t / s) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        if stor9[address(arg1)].field_0 < 0:
            require (stor8 * stor4[address(arg1)] / t / s) + stor9[address(arg1)].field_0 < stor8 * stor4[address(arg1)] / t / s
        else:
            if (stor8 * stor4[address(arg1)] / t / s) + stor9[address(arg1)].field_0 < stor8 * stor4[address(arg1)] / t / s:
                require stor9[address(arg1)].field_0 < 0
                require (stor8 * stor4[address(arg1)] / t / s) + stor9[address(arg1)].field_0 < stor8 * stor4[address(arg1)] / t / s
        require (stor8 * stor4[address(arg1)] / t / s) + stor9[address(arg1)].field_0 >= 0
        if withdrawnDividendOf[address(arg1)].field_0 > Mask(128, 128, (stor8 * stor4[address(arg1)] / t / s) + stor9[address(arg1)].field_0) >> 128:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if Mask(128, 128, (stor8 * stor4[address(arg1)] / t / s) + stor9[address(arg1)].field_0) >> 128 < withdrawnDividendOf[address(arg1)].field_0:
            revert with 0, 17
        return ((Mask(128, 128, (stor8 * stor4[address(arg1)] / t / s) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0)
    if not _tTotal:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor28 / _tTotal:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor8:
        if stor9[address(arg1)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        require stor9[address(arg1)].field_0 >= 0
        if withdrawnDividendOf[address(arg1)].field_0 > stor9[address(arg1)].field_128:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if stor9[address(arg1)].field_128 < withdrawnDividendOf[address(arg1)].field_0:
            revert with 0, 17
        return (stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0)
    if stor8 and stor4[address(arg1)] / stor28 / _tTotal > -1 / stor8:
        revert with 0, 17
    if not stor8:
        revert with 0, 18
    if stor8 * stor4[address(arg1)] / stor28 / _tTotal / stor8 != stor4[address(arg1)] / stor28 / _tTotal:
        revert with 0, 'SafeMath: multiplication overflow'
    require stor8 * stor4[address(arg1)] / stor28 / _tTotal >= 0
    if stor9[address(arg1)].field_0 > (-1 * stor8 * stor4[address(arg1)] / stor28 / _tTotal) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor8 * stor4[address(arg1)] / stor28 / _tTotal >= 0:
        revert with 0, 17
    if stor8 * stor4[address(arg1)] / stor28 / _tTotal < 0 and stor9[address(arg1)].field_0 < (-1 * stor8 * stor4[address(arg1)] / stor28 / _tTotal) - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 17
    if stor9[address(arg1)].field_0 < 0:
        require (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0 < stor8 * stor4[address(arg1)] / stor28 / _tTotal
    else:
        if (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0 < stor8 * stor4[address(arg1)] / stor28 / _tTotal:
            require stor9[address(arg1)].field_0 < 0
            require (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0 < stor8 * stor4[address(arg1)] / stor28 / _tTotal
    require (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0 >= 0
    if withdrawnDividendOf[address(arg1)].field_0 > Mask(128, 128, (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0) >> 128:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if Mask(128, 128, (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0) >> 128 < withdrawnDividendOf[address(arg1)].field_0:
        revert with 0, 17
    return ((Mask(128, 128, (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0)
}

function withdrawableDividendOf(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor23[address(arg1)]:
        if not stor8:
            if stor9[address(arg1)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            require stor9[address(arg1)].field_0 >= 0
            if withdrawnDividendOf[address(arg1)].field_0 > stor9[address(arg1)].field_128:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor9[address(arg1)].field_128 < withdrawnDividendOf[address(arg1)].field_0:
                revert with 0, 17
            return (stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0)
        if stor8 and stor5[address(arg1)] > -1 / stor8:
            revert with 0, 17
        if not stor8:
            revert with 0, 18
        if stor8 * stor5[address(arg1)] / stor8 != stor5[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        require stor8 * stor5[address(arg1)] >= 0
        if stor9[address(arg1)].field_0 > (-1 * stor8 * stor5[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor8 * stor5[address(arg1)] >= 0:
            revert with 0, 17
        if stor8 * stor5[address(arg1)] < 0 and stor9[address(arg1)].field_0 < (-1 * stor8 * stor5[address(arg1)]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        if stor9[address(arg1)].field_0 < 0:
            require (stor8 * stor5[address(arg1)]) + stor9[address(arg1)].field_0 < stor8 * stor5[address(arg1)]
        else:
            if (stor8 * stor5[address(arg1)]) + stor9[address(arg1)].field_0 < stor8 * stor5[address(arg1)]:
                require stor9[address(arg1)].field_0 < 0
                require (stor8 * stor5[address(arg1)]) + stor9[address(arg1)].field_0 < stor8 * stor5[address(arg1)]
        require (stor8 * stor5[address(arg1)]) + stor9[address(arg1)].field_0 >= 0
        if withdrawnDividendOf[address(arg1)].field_0 > Mask(128, 128, (stor8 * stor5[address(arg1)]) + stor9[address(arg1)].field_0) >> 128:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if Mask(128, 128, (stor8 * stor5[address(arg1)]) + stor9[address(arg1)].field_0) >> 128 < withdrawnDividendOf[address(arg1)].field_0:
            revert with 0, 17
        return ((Mask(128, 128, (stor8 * stor5[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0)
    mem[0] = arg1
    mem[32] = 4
    if stor4[address(arg1)] > stor28:
        revert with 0, 'Amt must be less than tot refl'
    idx = 0
    s = _tTotal
    t = stor28
    while idx < stor24.length:
        mem[0] = stor24[idx]
        mem[32] = 4
        if stor4[stor24[idx]] > t:
            _271 = mem[64]
            mem[64] = mem[64] + 64
            mem[_271] = 26
            mem[_271 + 32] = 'SafeMath: division by zero'
            if not _tTotal:
                _275 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _275 + 68] = mem[idx + _271 + 32]
                    idx = idx + 32
                    continue 
                mem[_275 + 94] = 0
                revert with memory
                  from mem[64]
                   len _275 + -mem[64] + 100
            _296 = mem[64]
            mem[64] = mem[64] + 64
            mem[_296] = 26
            mem[_296 + 32] = 'SafeMath: division by zero'
            if not stor28 / _tTotal:
                _305 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _305 + 68] = mem[idx + _296 + 32]
                    idx = idx + 32
                    continue 
                mem[_305 + 94] = 0
                revert with memory
                  from mem[64]
                   len _305 + -mem[64] + 100
            if not stor8:
                if stor9[address(arg1)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                require stor9[address(arg1)].field_0 >= 0
                _346 = mem[64]
                mem[64] = mem[64] + 64
                mem[_346] = 30
                mem[_346 + 32] = 'SafeMath: subtraction overflow'
                if withdrawnDividendOf[address(arg1)].field_0 <= stor9[address(arg1)].field_128:
                    if stor9[address(arg1)].field_128 < withdrawnDividendOf[address(arg1)].field_0:
                        revert with 0, 17
                    return (stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0)
                _347 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _347 + 68] = mem[idx + _346 + 32]
                    idx = idx + 32
                    continue 
                mem[_347 + 98] = 0
                revert with memory
                  from mem[64]
                   len _347 + -mem[64] + 100
            if stor8 and stor4[address(arg1)] / stor28 / _tTotal > -1 / stor8:
                revert with 0, 17
            if not stor8:
                revert with 0, 18
            if stor8 * stor4[address(arg1)] / stor28 / _tTotal / stor8 != stor4[address(arg1)] / stor28 / _tTotal:
                revert with 0, 'SafeMath: multiplication overflow'
            require stor8 * stor4[address(arg1)] / stor28 / _tTotal >= 0
            if stor9[address(arg1)].field_0 > (-1 * stor8 * stor4[address(arg1)] / stor28 / _tTotal) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor8 * stor4[address(arg1)] / stor28 / _tTotal >= 0:
                revert with 0, 17
            if stor8 * stor4[address(arg1)] / stor28 / _tTotal < 0 and stor9[address(arg1)].field_0 < (-1 * stor8 * stor4[address(arg1)] / stor28 / _tTotal) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            if stor9[address(arg1)].field_0 < 0:
                require (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0 < stor8 * stor4[address(arg1)] / stor28 / _tTotal
                require (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0 >= 0
                _356 = mem[64]
                mem[64] = mem[64] + 64
                mem[_356] = 30
                mem[_356 + 32] = 'SafeMath: subtraction overflow'
                if withdrawnDividendOf[address(arg1)].field_0 <= Mask(128, 128, (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0) >> 128:
                    if Mask(128, 128, (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0) >> 128 < withdrawnDividendOf[address(arg1)].field_0:
                        revert with 0, 17
                    return ((Mask(128, 128, (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0)
                _368 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _368 + 68] = mem[idx + _356 + 32]
                    idx = idx + 32
                    continue 
                mem[_368 + 98] = 0
                revert with memory
                  from mem[64]
                   len _368 + -mem[64] + 100
            if (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0 >= stor8 * stor4[address(arg1)] / stor28 / _tTotal:
                require (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0 >= 0
                _355 = mem[64]
                mem[64] = mem[64] + 64
                mem[_355] = 30
                mem[_355 + 32] = 'SafeMath: subtraction overflow'
                if withdrawnDividendOf[address(arg1)].field_0 <= Mask(128, 128, (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0) >> 128:
                    if Mask(128, 128, (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0) >> 128 < withdrawnDividendOf[address(arg1)].field_0:
                        revert with 0, 17
                    return ((Mask(128, 128, (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0)
                _361 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _361 + 68] = mem[idx + _355 + 32]
                    idx = idx + 32
                    continue 
                mem[_361 + 98] = 0
                revert with memory
                  from mem[64]
                   len _361 + -mem[64] + 100
            require stor9[address(arg1)].field_0 < 0
            require (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0 < stor8 * stor4[address(arg1)] / stor28 / _tTotal
            require (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0 >= 0
            _362 = mem[64]
            mem[64] = mem[64] + 64
            mem[_362] = 30
            mem[_362 + 32] = 'SafeMath: subtraction overflow'
            if withdrawnDividendOf[address(arg1)].field_0 <= Mask(128, 128, (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0) >> 128:
                if Mask(128, 128, (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0) >> 128 < withdrawnDividendOf[address(arg1)].field_0:
                    revert with 0, 17
                return ((Mask(128, 128, (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0)
            _374 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _374 + 68] = mem[idx + _362 + 32]
                idx = idx + 32
                continue 
            mem[_374 + 98] = 0
            revert with memory
              from mem[64]
               len _374 + -mem[64] + 100
        if idx >= stor24.length:
            revert with 0, 50
        mem[0] = stor24[idx]
        mem[32] = 5
        if stor5[stor24[idx]] <= s:
            if idx >= stor24.length:
                revert with 0, 50
            mem[0] = stor24[idx]
            mem[32] = 4
            _276 = mem[64]
            mem[64] = mem[64] + 64
            mem[_276] = 30
            mem[_276 + 32] = 'SafeMath: subtraction overflow'
            if stor4[stor24[idx]] > t:
                _281 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _281 + 68] = mem[idx + _276 + 32]
                    idx = idx + 32
                    continue 
                mem[_281 + 98] = 0
                revert with memory
                  from mem[64]
                   len _281 + -mem[64] + 100
            if t < stor4[stor24[idx]]:
                revert with 0, 17
            if idx >= stor24.length:
                revert with 0, 50
            mem[0] = stor24[idx]
            mem[32] = 5
            _306 = mem[64]
            mem[64] = mem[64] + 64
            mem[_306] = 30
            mem[_306 + 32] = 'SafeMath: subtraction overflow'
            if stor5[stor24[idx]] <= s:
                if s < stor5[stor24[idx]]:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - stor5[stor24[idx]]
                t = t - stor4[stor24[idx]]
                continue 
            _311 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _311 + 68] = mem[idx + _306 + 32]
                idx = idx + 32
                continue 
            mem[_311 + 98] = 0
            revert with memory
              from mem[64]
               len _311 + -mem[64] + 100
        _277 = mem[64]
        mem[64] = mem[64] + 64
        mem[_277] = 26
        mem[_277 + 32] = 'SafeMath: division by zero'
        if not _tTotal:
            _282 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _282 + 68] = mem[idx + _277 + 32]
                idx = idx + 32
                continue 
            mem[_282 + 94] = 0
            revert with memory
              from mem[64]
               len _282 + -mem[64] + 100
        _307 = mem[64]
        mem[64] = mem[64] + 64
        mem[_307] = 26
        mem[_307 + 32] = 'SafeMath: division by zero'
        if not stor28 / _tTotal:
            _312 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _312 + 68] = mem[idx + _307 + 32]
                idx = idx + 32
                continue 
            mem[_312 + 94] = 0
            revert with memory
              from mem[64]
               len _312 + -mem[64] + 100
        if not stor8:
            if stor9[address(arg1)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            require stor9[address(arg1)].field_0 >= 0
            _348 = mem[64]
            mem[64] = mem[64] + 64
            mem[_348] = 30
            mem[_348 + 32] = 'SafeMath: subtraction overflow'
            if withdrawnDividendOf[address(arg1)].field_0 <= stor9[address(arg1)].field_128:
                if stor9[address(arg1)].field_128 < withdrawnDividendOf[address(arg1)].field_0:
                    revert with 0, 17
                return (stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0)
            _350 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _350 + 68] = mem[idx + _348 + 32]
                idx = idx + 32
                continue 
            mem[_350 + 98] = 0
            revert with memory
              from mem[64]
               len _350 + -mem[64] + 100
        if stor8 and stor4[address(arg1)] / stor28 / _tTotal > -1 / stor8:
            revert with 0, 17
        if not stor8:
            revert with 0, 18
        if stor8 * stor4[address(arg1)] / stor28 / _tTotal / stor8 != stor4[address(arg1)] / stor28 / _tTotal:
            revert with 0, 'SafeMath: multiplication overflow'
        require stor8 * stor4[address(arg1)] / stor28 / _tTotal >= 0
        if stor9[address(arg1)].field_0 > (-1 * stor8 * stor4[address(arg1)] / stor28 / _tTotal) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor8 * stor4[address(arg1)] / stor28 / _tTotal >= 0:
            revert with 0, 17
        if stor8 * stor4[address(arg1)] / stor28 / _tTotal < 0 and stor9[address(arg1)].field_0 < (-1 * stor8 * stor4[address(arg1)] / stor28 / _tTotal) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        if stor9[address(arg1)].field_0 < 0:
            require (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0 < stor8 * stor4[address(arg1)] / stor28 / _tTotal
            require (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0 >= 0
            _371 = mem[64]
            mem[64] = mem[64] + 64
            mem[_371] = 30
            mem[_371 + 32] = 'SafeMath: subtraction overflow'
            if withdrawnDividendOf[address(arg1)].field_0 <= Mask(128, 128, (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0) >> 128:
                if Mask(128, 128, (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0) >> 128 < withdrawnDividendOf[address(arg1)].field_0:
                    revert with 0, 17
                return ((Mask(128, 128, (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0)
            _383 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _383 + 68] = mem[idx + _371 + 32]
                idx = idx + 32
                continue 
            mem[_383 + 98] = 0
            revert with memory
              from mem[64]
               len _383 + -mem[64] + 100
        if (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0 >= stor8 * stor4[address(arg1)] / stor28 / _tTotal:
            require (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0 >= 0
            _365 = mem[64]
            mem[64] = mem[64] + 64
            mem[_365] = 30
            mem[_365 + 32] = 'SafeMath: subtraction overflow'
            if withdrawnDividendOf[address(arg1)].field_0 <= Mask(128, 128, (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0) >> 128:
                if Mask(128, 128, (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0) >> 128 < withdrawnDividendOf[address(arg1)].field_0:
                    revert with 0, 17
                return ((Mask(128, 128, (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0)
            _375 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _375 + 68] = mem[idx + _365 + 32]
                idx = idx + 32
                continue 
            mem[_375 + 98] = 0
            revert with memory
              from mem[64]
               len _375 + -mem[64] + 100
        require stor9[address(arg1)].field_0 < 0
        require (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0 < stor8 * stor4[address(arg1)] / stor28 / _tTotal
        require (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0 >= 0
        _376 = mem[64]
        mem[64] = mem[64] + 64
        mem[_376] = 30
        mem[_376 + 32] = 'SafeMath: subtraction overflow'
        if withdrawnDividendOf[address(arg1)].field_0 <= Mask(128, 128, (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0) >> 128:
            if Mask(128, 128, (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0) >> 128 < withdrawnDividendOf[address(arg1)].field_0:
                revert with 0, 17
            return ((Mask(128, 128, (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0)
        _390 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _390 + 68] = mem[idx + _376 + 32]
            idx = idx + 32
            continue 
        mem[_390 + 98] = 0
        revert with memory
          from mem[64]
           len _390 + -mem[64] + 100
    if not _tTotal:
        revert with 0, 'SafeMath: division by zero', 0
    if t >= stor28 / _tTotal:
        if not s:
            revert with 0, 'SafeMath: division by zero', 0
        if not t / s:
            revert with 0, 'SafeMath: division by zero', 0
        if not stor8:
            if stor9[address(arg1)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            require stor9[address(arg1)].field_0 >= 0
            if withdrawnDividendOf[address(arg1)].field_0 > stor9[address(arg1)].field_128:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor9[address(arg1)].field_128 < withdrawnDividendOf[address(arg1)].field_0:
                revert with 0, 17
            return (stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0)
        if stor8 and stor4[address(arg1)] / t / s > -1 / stor8:
            revert with 0, 17
        if not stor8:
            revert with 0, 18
        if stor8 * stor4[address(arg1)] / t / s / stor8 != stor4[address(arg1)] / t / s:
            revert with 0, 'SafeMath: multiplication overflow'
        require stor8 * stor4[address(arg1)] / t / s >= 0
        if stor9[address(arg1)].field_0 > (-1 * stor8 * stor4[address(arg1)] / t / s) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor8 * stor4[address(arg1)] / t / s >= 0:
            revert with 0, 17
        if stor8 * stor4[address(arg1)] / t / s < 0 and stor9[address(arg1)].field_0 < (-1 * stor8 * stor4[address(arg1)] / t / s) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        if stor9[address(arg1)].field_0 < 0:
            require (stor8 * stor4[address(arg1)] / t / s) + stor9[address(arg1)].field_0 < stor8 * stor4[address(arg1)] / t / s
        else:
            if (stor8 * stor4[address(arg1)] / t / s) + stor9[address(arg1)].field_0 < stor8 * stor4[address(arg1)] / t / s:
                require stor9[address(arg1)].field_0 < 0
                require (stor8 * stor4[address(arg1)] / t / s) + stor9[address(arg1)].field_0 < stor8 * stor4[address(arg1)] / t / s
        require (stor8 * stor4[address(arg1)] / t / s) + stor9[address(arg1)].field_0 >= 0
        if withdrawnDividendOf[address(arg1)].field_0 > Mask(128, 128, (stor8 * stor4[address(arg1)] / t / s) + stor9[address(arg1)].field_0) >> 128:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if Mask(128, 128, (stor8 * stor4[address(arg1)] / t / s) + stor9[address(arg1)].field_0) >> 128 < withdrawnDividendOf[address(arg1)].field_0:
            revert with 0, 17
        return ((Mask(128, 128, (stor8 * stor4[address(arg1)] / t / s) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0)
    if not _tTotal:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor28 / _tTotal:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor8:
        if stor9[address(arg1)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        require stor9[address(arg1)].field_0 >= 0
        if withdrawnDividendOf[address(arg1)].field_0 > stor9[address(arg1)].field_128:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if stor9[address(arg1)].field_128 < withdrawnDividendOf[address(arg1)].field_0:
            revert with 0, 17
        return (stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0)
    if stor8 and stor4[address(arg1)] / stor28 / _tTotal > -1 / stor8:
        revert with 0, 17
    if not stor8:
        revert with 0, 18
    if stor8 * stor4[address(arg1)] / stor28 / _tTotal / stor8 != stor4[address(arg1)] / stor28 / _tTotal:
        revert with 0, 'SafeMath: multiplication overflow'
    require stor8 * stor4[address(arg1)] / stor28 / _tTotal >= 0
    if stor9[address(arg1)].field_0 > (-1 * stor8 * stor4[address(arg1)] / stor28 / _tTotal) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor8 * stor4[address(arg1)] / stor28 / _tTotal >= 0:
        revert with 0, 17
    if stor8 * stor4[address(arg1)] / stor28 / _tTotal < 0 and stor9[address(arg1)].field_0 < (-1 * stor8 * stor4[address(arg1)] / stor28 / _tTotal) - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 17
    if stor9[address(arg1)].field_0 < 0:
        require (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0 < stor8 * stor4[address(arg1)] / stor28 / _tTotal
    else:
        if (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0 < stor8 * stor4[address(arg1)] / stor28 / _tTotal:
            require stor9[address(arg1)].field_0 < 0
            require (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0 < stor8 * stor4[address(arg1)] / stor28 / _tTotal
    require (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0 >= 0
    if withdrawnDividendOf[address(arg1)].field_0 > Mask(128, 128, (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0) >> 128:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if Mask(128, 128, (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0) >> 128 < withdrawnDividendOf[address(arg1)].field_0:
        revert with 0, 17
    return ((Mask(128, 128, (stor8 * stor4[address(arg1)] / stor28 / _tTotal) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0)
}

function excludeFromDividends(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require not stor17[address(arg1)]
    stor17[address(arg1)] = 1
    if stor23[address(arg1)]:
        if 0 > stor5[address(arg1)]:
            if stor5[address(arg1)] > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < stor5[address(arg1)]:
                revert with 0, 17
            if sub_b1c16b12 > !-stor5[address(arg1)]:
                revert with 0, 17
            sub_b1c16b12 -= stor5[address(arg1)]
            if not stor8:
                if stor9[address(arg1)].field_0 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                require stor9[address(arg1)].field_0 <= stor9[address(arg1)].field_0
            else:
                if stor8 and -stor5[address(arg1)] > -1 / stor8:
                    revert with 0, 17
                if not stor8:
                    revert with 0, 18
                if -1 * stor8 * stor5[address(arg1)] / stor8 != -stor5[address(arg1)]:
                    revert with 0, 'SafeMath: multiplication overflow'
                require -1 * stor8 * stor5[address(arg1)] >= 0
                if stor9[address(arg1)].field_0 < (-1 * stor8 * stor5[address(arg1)]) - 0x8000000000000000000000000000000000000000000000000000000000000000 and -1 * stor8 * stor5[address(arg1)] >= 0:
                    revert with 0, 17
                if -1 * stor8 * stor5[address(arg1)] < 0 and stor9[address(arg1)].field_0 > (-1 * stor8 * stor5[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if -1 * stor8 * stor5[address(arg1)] < 0:
                    require stor9[address(arg1)].field_0 + (stor8 * stor5[address(arg1)]) > stor9[address(arg1)].field_0
                else:
                    if stor9[address(arg1)].field_0 + (stor8 * stor5[address(arg1)]) > stor9[address(arg1)].field_0:
                        require -1 * stor8 * stor5[address(arg1)] < 0
                        require stor9[address(arg1)].field_0 + (stor8 * stor5[address(arg1)]) > stor9[address(arg1)].field_0
                stor9[address(arg1)].field_0 += stor8 * stor5[address(arg1)]
        else:
            if 0 < stor5[address(arg1)]:
                if 0 > stor5[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor5[address(arg1)] < 0:
                    revert with 0, 17
                if sub_b1c16b12 < stor5[address(arg1)]:
                    revert with 0, 17
                sub_b1c16b12 -= stor5[address(arg1)]
                if not stor8:
                    if 0 > -stor9[address(arg1)].field_0 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor9[address(arg1)].field_0 >= 0:
                        revert with 0, 17
                    if stor9[address(arg1)].field_0 < 0 and 0 < -stor9[address(arg1)].field_0 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 17
                    require stor9[address(arg1)].field_0 >= stor9[address(arg1)].field_0
                else:
                    if stor8 and stor5[address(arg1)] > -1 / stor8:
                        revert with 0, 17
                    if not stor8:
                        revert with 0, 18
                    if stor8 * stor5[address(arg1)] / stor8 != stor5[address(arg1)]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require stor8 * stor5[address(arg1)] >= 0
                    if stor8 * stor5[address(arg1)] > -stor9[address(arg1)].field_0 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor9[address(arg1)].field_0 >= 0:
                        revert with 0, 17
                    if stor9[address(arg1)].field_0 < 0 and stor8 * stor5[address(arg1)] < -stor9[address(arg1)].field_0 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 17
                    if stor8 * stor5[address(arg1)] < 0:
                        require stor9[address(arg1)].field_0 + (stor8 * stor5[address(arg1)]) < stor9[address(arg1)].field_0
                    else:
                        if stor9[address(arg1)].field_0 + (stor8 * stor5[address(arg1)]) < stor9[address(arg1)].field_0:
                            require stor8 * stor5[address(arg1)] < 0
                            require stor9[address(arg1)].field_0 + (stor8 * stor5[address(arg1)]) < stor9[address(arg1)].field_0
                    stor9[address(arg1)].field_0 += stor8 * stor5[address(arg1)]
    else:
        mem[0] = arg1
        mem[32] = 4
        if stor4[address(arg1)] > stor28:
            revert with 0, 'Amt must be less than tot refl'
        idx = 0
        s = _tTotal
        t = stor28
        while idx < stor24.length:
            mem[0] = stor24[idx]
            mem[32] = 4
            if stor4[stor24[idx]] > t:
                _732 = mem[64]
                mem[64] = mem[64] + 64
                mem[_732] = 26
                mem[_732 + 32] = 'SafeMath: division by zero'
                if not _tTotal:
                    _736 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _736 + 68] = mem[idx + _732 + 32]
                        idx = idx + 32
                        continue 
                    mem[_736 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _736 + -mem[64] + 100
                _757 = mem[64]
                mem[64] = mem[64] + 64
                mem[_757] = 26
                mem[_757 + 32] = 'SafeMath: division by zero'
                if not stor28 / _tTotal:
                    _766 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _766 + 68] = mem[idx + _757 + 32]
                        idx = idx + 32
                        continue 
                    mem[_766 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _766 + -mem[64] + 100
                if 0 > stor4[address(arg1)] / stor28 / _tTotal:
                    _795 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_795] = 30
                    mem[_795 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[address(arg1)] / stor28 / _tTotal > 0:
                        _802 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _802 + 68] = mem[idx + _795 + 32]
                            idx = idx + 32
                            continue 
                        mem[_802 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _802 + -mem[64] + 100
                    if 0 < stor4[address(arg1)] / stor28 / _tTotal:
                        revert with 0, 17
                    if sub_b1c16b12 > !-(stor4[address(arg1)] / stor28 / _tTotal):
                        revert with 0, 17
                    sub_b1c16b12 -= stor4[address(arg1)] / stor28 / _tTotal
                    if not stor8:
                        if stor9[address(arg1)].field_0 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 17
                        require stor9[address(arg1)].field_0 <= stor9[address(arg1)].field_0
                    else:
                        if stor8 and -stor4[address(arg1)] / stor28 / _tTotal > -1 / stor8:
                            revert with 0, 17
                        if not stor8:
                            revert with 0, 18
                        if -1 * stor8 * stor4[address(arg1)] / stor28 / _tTotal / stor8 != -stor4[address(arg1)] / stor28 / _tTotal:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require -1 * stor8 * stor4[address(arg1)] / stor28 / _tTotal >= 0
                        if stor9[address(arg1)].field_0 < (-1 * stor8 * stor4[address(arg1)] / stor28 / _tTotal) - 0x8000000000000000000000000000000000000000000000000000000000000000 and -1 * stor8 * stor4[address(arg1)] / stor28 / _tTotal >= 0:
                            revert with 0, 17
                        if -1 * stor8 * stor4[address(arg1)] / stor28 / _tTotal < 0 and stor9[address(arg1)].field_0 > (-1 * stor8 * stor4[address(arg1)] / stor28 / _tTotal) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if -1 * stor8 * stor4[address(arg1)] / stor28 / _tTotal < 0:
                            require stor9[address(arg1)].field_0 + (stor8 * stor4[address(arg1)] / stor28 / _tTotal) > stor9[address(arg1)].field_0
                        else:
                            if stor9[address(arg1)].field_0 + (stor8 * stor4[address(arg1)] / stor28 / _tTotal) > stor9[address(arg1)].field_0:
                                require -1 * stor8 * stor4[address(arg1)] / stor28 / _tTotal < 0
                                require stor9[address(arg1)].field_0 + (stor8 * stor4[address(arg1)] / stor28 / _tTotal) > stor9[address(arg1)].field_0
                        stor9[address(arg1)].field_0 += stor8 * stor4[address(arg1)] / stor28 / _tTotal
                else:
                    if 0 < stor4[address(arg1)] / stor28 / _tTotal:
                        _798 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_798] = 30
                        mem[_798 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor4[address(arg1)] / stor28 / _tTotal:
                            _807 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _807 + 68] = mem[idx + _798 + 32]
                                idx = idx + 32
                                continue 
                            mem[_807 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _807 + -mem[64] + 100
                        if stor4[address(arg1)] / stor28 / _tTotal < 0:
                            revert with 0, 17
                        if sub_b1c16b12 < stor4[address(arg1)] / stor28 / _tTotal:
                            revert with 0, 17
                        sub_b1c16b12 -= stor4[address(arg1)] / stor28 / _tTotal
                        if not stor8:
                            if 0 > -stor9[address(arg1)].field_0 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor9[address(arg1)].field_0 >= 0:
                                revert with 0, 17
                            if stor9[address(arg1)].field_0 < 0 and 0 < -stor9[address(arg1)].field_0 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 17
                            require stor9[address(arg1)].field_0 >= stor9[address(arg1)].field_0
                        else:
                            if stor8 and stor4[address(arg1)] / stor28 / _tTotal > -1 / stor8:
                                revert with 0, 17
                            if not stor8:
                                revert with 0, 18
                            if stor8 * stor4[address(arg1)] / stor28 / _tTotal / stor8 != stor4[address(arg1)] / stor28 / _tTotal:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require stor8 * stor4[address(arg1)] / stor28 / _tTotal >= 0
                            if stor8 * stor4[address(arg1)] / stor28 / _tTotal > -stor9[address(arg1)].field_0 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor9[address(arg1)].field_0 >= 0:
                                revert with 0, 17
                            if stor9[address(arg1)].field_0 < 0 and stor8 * stor4[address(arg1)] / stor28 / _tTotal < -stor9[address(arg1)].field_0 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 17
                            if stor8 * stor4[address(arg1)] / stor28 / _tTotal < 0:
                                require stor9[address(arg1)].field_0 + (stor8 * stor4[address(arg1)] / stor28 / _tTotal) < stor9[address(arg1)].field_0
                            else:
                                if stor9[address(arg1)].field_0 + (stor8 * stor4[address(arg1)] / stor28 / _tTotal) < stor9[address(arg1)].field_0:
                                    require stor8 * stor4[address(arg1)] / stor28 / _tTotal < 0
                                    require stor9[address(arg1)].field_0 + (stor8 * stor4[address(arg1)] / stor28 / _tTotal) < stor9[address(arg1)].field_0
                            stor9[address(arg1)].field_0 += stor8 * stor4[address(arg1)] / stor28 / _tTotal
            else:
                if idx >= stor24.length:
                    revert with 0, 50
                mem[0] = stor24[idx]
                mem[32] = 5
                if stor5[stor24[idx]] <= s:
                    if idx >= stor24.length:
                        revert with 0, 50
                    mem[0] = stor24[idx]
                    mem[32] = 4
                    _737 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_737] = 30
                    mem[_737 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor24[idx]] > t:
                        _742 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _742 + 68] = mem[idx + _737 + 32]
                            idx = idx + 32
                            continue 
                        mem[_742 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _742 + -mem[64] + 100
                    if t < stor4[stor24[idx]]:
                        revert with 0, 17
                    if idx >= stor24.length:
                        revert with 0, 50
                    mem[0] = stor24[idx]
                    mem[32] = 5
                    _767 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_767] = 30
                    mem[_767 + 32] = 'SafeMath: subtraction overflow'
                    if stor5[stor24[idx]] <= s:
                        if s < stor5[stor24[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor5[stor24[idx]]
                        t = t - stor4[stor24[idx]]
                        continue 
                    _772 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _772 + 68] = mem[idx + _767 + 32]
                        idx = idx + 32
                        continue 
                    mem[_772 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _772 + -mem[64] + 100
                _738 = mem[64]
                mem[64] = mem[64] + 64
                mem[_738] = 26
                mem[_738 + 32] = 'SafeMath: division by zero'
                if not _tTotal:
                    _743 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _743 + 68] = mem[idx + _738 + 32]
                        idx = idx + 32
                        continue 
                    mem[_743 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _743 + -mem[64] + 100
                _768 = mem[64]
                mem[64] = mem[64] + 64
                mem[_768] = 26
                mem[_768 + 32] = 'SafeMath: division by zero'
                if not stor28 / _tTotal:
                    _773 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _773 + 68] = mem[idx + _768 + 32]
                        idx = idx + 32
                        continue 
                    mem[_773 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _773 + -mem[64] + 100
                if 0 > stor4[address(arg1)] / stor28 / _tTotal:
                    _803 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_803] = 30
                    mem[_803 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[address(arg1)] / stor28 / _tTotal > 0:
                        _813 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _813 + 68] = mem[idx + _803 + 32]
                            idx = idx + 32
                            continue 
                        mem[_813 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _813 + -mem[64] + 100
                    if 0 < stor4[address(arg1)] / stor28 / _tTotal:
                        revert with 0, 17
                    if sub_b1c16b12 > !-(stor4[address(arg1)] / stor28 / _tTotal):
                        revert with 0, 17
                    sub_b1c16b12 -= stor4[address(arg1)] / stor28 / _tTotal
                    if not stor8:
                        if stor9[address(arg1)].field_0 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 17
                        require stor9[address(arg1)].field_0 <= stor9[address(arg1)].field_0
                    else:
                        if stor8 and -stor4[address(arg1)] / stor28 / _tTotal > -1 / stor8:
                            revert with 0, 17
                        if not stor8:
                            revert with 0, 18
                        if -1 * stor8 * stor4[address(arg1)] / stor28 / _tTotal / stor8 != -stor4[address(arg1)] / stor28 / _tTotal:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require -1 * stor8 * stor4[address(arg1)] / stor28 / _tTotal >= 0
                        if stor9[address(arg1)].field_0 < (-1 * stor8 * stor4[address(arg1)] / stor28 / _tTotal) - 0x8000000000000000000000000000000000000000000000000000000000000000 and -1 * stor8 * stor4[address(arg1)] / stor28 / _tTotal >= 0:
                            revert with 0, 17
                        if -1 * stor8 * stor4[address(arg1)] / stor28 / _tTotal < 0 and stor9[address(arg1)].field_0 > (-1 * stor8 * stor4[address(arg1)] / stor28 / _tTotal) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if -1 * stor8 * stor4[address(arg1)] / stor28 / _tTotal < 0:
                            require stor9[address(arg1)].field_0 + (stor8 * stor4[address(arg1)] / stor28 / _tTotal) > stor9[address(arg1)].field_0
                        else:
                            if stor9[address(arg1)].field_0 + (stor8 * stor4[address(arg1)] / stor28 / _tTotal) > stor9[address(arg1)].field_0:
                                require -1 * stor8 * stor4[address(arg1)] / stor28 / _tTotal < 0
                                require stor9[address(arg1)].field_0 + (stor8 * stor4[address(arg1)] / stor28 / _tTotal) > stor9[address(arg1)].field_0
                        stor9[address(arg1)].field_0 += stor8 * stor4[address(arg1)] / stor28 / _tTotal
                else:
                    if 0 < stor4[address(arg1)] / stor28 / _tTotal:
                        _809 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_809] = 30
                        mem[_809 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor4[address(arg1)] / stor28 / _tTotal:
                            _818 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _818 + 68] = mem[idx + _809 + 32]
                                idx = idx + 32
                                continue 
                            mem[_818 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _818 + -mem[64] + 100
                        if stor4[address(arg1)] / stor28 / _tTotal < 0:
                            revert with 0, 17
                        if sub_b1c16b12 < stor4[address(arg1)] / stor28 / _tTotal:
                            revert with 0, 17
                        sub_b1c16b12 -= stor4[address(arg1)] / stor28 / _tTotal
                        if not stor8:
                            if 0 > -stor9[address(arg1)].field_0 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor9[address(arg1)].field_0 >= 0:
                                revert with 0, 17
                            if stor9[address(arg1)].field_0 < 0 and 0 < -stor9[address(arg1)].field_0 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 17
                            require stor9[address(arg1)].field_0 >= stor9[address(arg1)].field_0
                        else:
                            if stor8 and stor4[address(arg1)] / stor28 / _tTotal > -1 / stor8:
                                revert with 0, 17
                            if not stor8:
                                revert with 0, 18
                            if stor8 * stor4[address(arg1)] / stor28 / _tTotal / stor8 != stor4[address(arg1)] / stor28 / _tTotal:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require stor8 * stor4[address(arg1)] / stor28 / _tTotal >= 0
                            if stor8 * stor4[address(arg1)] / stor28 / _tTotal > -stor9[address(arg1)].field_0 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor9[address(arg1)].field_0 >= 0:
                                revert with 0, 17
                            if stor9[address(arg1)].field_0 < 0 and stor8 * stor4[address(arg1)] / stor28 / _tTotal < -stor9[address(arg1)].field_0 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 17
                            if stor8 * stor4[address(arg1)] / stor28 / _tTotal < 0:
                                require stor9[address(arg1)].field_0 + (stor8 * stor4[address(arg1)] / stor28 / _tTotal) < stor9[address(arg1)].field_0
                            else:
                                if stor9[address(arg1)].field_0 + (stor8 * stor4[address(arg1)] / stor28 / _tTotal) < stor9[address(arg1)].field_0:
                                    require stor8 * stor4[address(arg1)] / stor28 / _tTotal < 0
                                    require stor9[address(arg1)].field_0 + (stor8 * stor4[address(arg1)] / stor28 / _tTotal) < stor9[address(arg1)].field_0
                            stor9[address(arg1)].field_0 += stor8 * stor4[address(arg1)] / stor28 / _tTotal
            if stor15[address(arg1)]:
                stor15[address(arg1)] = 0
                stor13[address(arg1)] = 0
                if stor12.length < 1:
                    revert with 0, 17
                if stor12.length - 1 >= stor12.length:
                    revert with 0, 50
                stor14[stor12[stor12.length]] = stor14[address(arg1)]
                stor14[arg1] = 0
                if stor14[address(arg1)] >= stor12.length:
                    revert with 0, 50
                stor12[stor14[address(arg1)]] = stor12[stor12.length]
                if not stor12.length:
                    revert with 0, 49
                stor12[stor12.length] = 0
                stor12.length--
            emit ExcludeFromDividends(arg1);
        if not _tTotal:
            revert with 0, 'SafeMath: division by zero', 0
        if t >= stor28 / _tTotal:
            if not s:
                revert with 0, 'SafeMath: division by zero', 0
            if not t / s:
                revert with 0, 'SafeMath: division by zero', 0
            if 0 > stor4[address(arg1)] / t / s:
                if stor4[address(arg1)] / t / s > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < stor4[address(arg1)] / t / s:
                    revert with 0, 17
                if sub_b1c16b12 > !-(stor4[address(arg1)] / t / s):
                    revert with 0, 17
                sub_b1c16b12 -= stor4[address(arg1)] / t / s
                if not stor8:
                    if stor9[address(arg1)].field_0 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 17
                    require stor9[address(arg1)].field_0 <= stor9[address(arg1)].field_0
                else:
                    if stor8 and -stor4[address(arg1)] / t / s > -1 / stor8:
                        revert with 0, 17
                    if not stor8:
                        revert with 0, 18
                    if -1 * stor8 * stor4[address(arg1)] / t / s / stor8 != -stor4[address(arg1)] / t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require -1 * stor8 * stor4[address(arg1)] / t / s >= 0
                    if stor9[address(arg1)].field_0 < (-1 * stor8 * stor4[address(arg1)] / t / s) - 0x8000000000000000000000000000000000000000000000000000000000000000 and -1 * stor8 * stor4[address(arg1)] / t / s >= 0:
                        revert with 0, 17
                    if -1 * stor8 * stor4[address(arg1)] / t / s < 0 and stor9[address(arg1)].field_0 > (-1 * stor8 * stor4[address(arg1)] / t / s) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if -1 * stor8 * stor4[address(arg1)] / t / s < 0:
                        require stor9[address(arg1)].field_0 + (stor8 * stor4[address(arg1)] / t / s) > stor9[address(arg1)].field_0
                    else:
                        if stor9[address(arg1)].field_0 + (stor8 * stor4[address(arg1)] / t / s) > stor9[address(arg1)].field_0:
                            require -1 * stor8 * stor4[address(arg1)] / t / s < 0
                            require stor9[address(arg1)].field_0 + (stor8 * stor4[address(arg1)] / t / s) > stor9[address(arg1)].field_0
                    stor9[address(arg1)].field_0 += stor8 * stor4[address(arg1)] / t / s
            else:
                if 0 < stor4[address(arg1)] / t / s:
                    if 0 > stor4[address(arg1)] / t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor4[address(arg1)] / t / s < 0:
                        revert with 0, 17
                    if sub_b1c16b12 < stor4[address(arg1)] / t / s:
                        revert with 0, 17
                    sub_b1c16b12 -= stor4[address(arg1)] / t / s
                    if not stor8:
                        if 0 > -stor9[address(arg1)].field_0 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor9[address(arg1)].field_0 >= 0:
                            revert with 0, 17
                        if stor9[address(arg1)].field_0 < 0 and 0 < -stor9[address(arg1)].field_0 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 17
                        require stor9[address(arg1)].field_0 >= stor9[address(arg1)].field_0
                    else:
                        if stor8 and stor4[address(arg1)] / t / s > -1 / stor8:
                            revert with 0, 17
                        if not stor8:
                            revert with 0, 18
                        if stor8 * stor4[address(arg1)] / t / s / stor8 != stor4[address(arg1)] / t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require stor8 * stor4[address(arg1)] / t / s >= 0
                        if stor8 * stor4[address(arg1)] / t / s > -stor9[address(arg1)].field_0 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor9[address(arg1)].field_0 >= 0:
                            revert with 0, 17
                        if stor9[address(arg1)].field_0 < 0 and stor8 * stor4[address(arg1)] / t / s < -stor9[address(arg1)].field_0 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 17
                        if stor8 * stor4[address(arg1)] / t / s < 0:
                            require stor9[address(arg1)].field_0 + (stor8 * stor4[address(arg1)] / t / s) < stor9[address(arg1)].field_0
                        else:
                            if stor9[address(arg1)].field_0 + (stor8 * stor4[address(arg1)] / t / s) < stor9[address(arg1)].field_0:
                                require stor8 * stor4[address(arg1)] / t / s < 0
                                require stor9[address(arg1)].field_0 + (stor8 * stor4[address(arg1)] / t / s) < stor9[address(arg1)].field_0
                        stor9[address(arg1)].field_0 += stor8 * stor4[address(arg1)] / t / s
        else:
            if not _tTotal:
                revert with 0, 'SafeMath: division by zero', 0
            if not stor28 / _tTotal:
                revert with 0, 'SafeMath: division by zero', 0
            if 0 > stor4[address(arg1)] / stor28 / _tTotal:
                if stor4[address(arg1)] / stor28 / _tTotal > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < stor4[address(arg1)] / stor28 / _tTotal:
                    revert with 0, 17
                if sub_b1c16b12 > !-(stor4[address(arg1)] / stor28 / _tTotal):
                    revert with 0, 17
                sub_b1c16b12 -= stor4[address(arg1)] / stor28 / _tTotal
                if not stor8:
                    if stor9[address(arg1)].field_0 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 17
                    require stor9[address(arg1)].field_0 <= stor9[address(arg1)].field_0
                else:
                    if stor8 and -stor4[address(arg1)] / stor28 / _tTotal > -1 / stor8:
                        revert with 0, 17
                    if not stor8:
                        revert with 0, 18
                    if -1 * stor8 * stor4[address(arg1)] / stor28 / _tTotal / stor8 != -stor4[address(arg1)] / stor28 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require -1 * stor8 * stor4[address(arg1)] / stor28 / _tTotal >= 0
                    if stor9[address(arg1)].field_0 < (-1 * stor8 * stor4[address(arg1)] / stor28 / _tTotal) - 0x8000000000000000000000000000000000000000000000000000000000000000 and -1 * stor8 * stor4[address(arg1)] / stor28 / _tTotal >= 0:
                        revert with 0, 17
                    if -1 * stor8 * stor4[address(arg1)] / stor28 / _tTotal < 0 and stor9[address(arg1)].field_0 > (-1 * stor8 * stor4[address(arg1)] / stor28 / _tTotal) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if -1 * stor8 * stor4[address(arg1)] / stor28 / _tTotal < 0:
                        require stor9[address(arg1)].field_0 + (stor8 * stor4[address(arg1)] / stor28 / _tTotal) > stor9[address(arg1)].field_0
                    else:
                        if stor9[address(arg1)].field_0 + (stor8 * stor4[address(arg1)] / stor28 / _tTotal) > stor9[address(arg1)].field_0:
                            require -1 * stor8 * stor4[address(arg1)] / stor28 / _tTotal < 0
                            require stor9[address(arg1)].field_0 + (stor8 * stor4[address(arg1)] / stor28 / _tTotal) > stor9[address(arg1)].field_0
                    stor9[address(arg1)].field_0 += stor8 * stor4[address(arg1)] / stor28 / _tTotal
            else:
                if 0 < stor4[address(arg1)] / stor28 / _tTotal:
                    if 0 > stor4[address(arg1)] / stor28 / _tTotal:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor4[address(arg1)] / stor28 / _tTotal < 0:
                        revert with 0, 17
                    if sub_b1c16b12 < stor4[address(arg1)] / stor28 / _tTotal:
                        revert with 0, 17
                    sub_b1c16b12 -= stor4[address(arg1)] / stor28 / _tTotal
                    if not stor8:
                        if 0 > -stor9[address(arg1)].field_0 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor9[address(arg1)].field_0 >= 0:
                            revert with 0, 17
                        if stor9[address(arg1)].field_0 < 0 and 0 < -stor9[address(arg1)].field_0 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 17
                        require stor9[address(arg1)].field_0 >= stor9[address(arg1)].field_0
                    else:
                        if stor8 and stor4[address(arg1)] / stor28 / _tTotal > -1 / stor8:
                            revert with 0, 17
                        if not stor8:
                            revert with 0, 18
                        if stor8 * stor4[address(arg1)] / stor28 / _tTotal / stor8 != stor4[address(arg1)] / stor28 / _tTotal:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require stor8 * stor4[address(arg1)] / stor28 / _tTotal >= 0
                        if stor8 * stor4[address(arg1)] / stor28 / _tTotal > -stor9[address(arg1)].field_0 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor9[address(arg1)].field_0 >= 0:
                            revert with 0, 17
                        if stor9[address(arg1)].field_0 < 0 and stor8 * stor4[address(arg1)] / stor28 / _tTotal < -stor9[address(arg1)].field_0 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 17
                        if stor8 * stor4[address(arg1)] / stor28 / _tTotal < 0:
                            require stor9[address(arg1)].field_0 + (stor8 * stor4[address(arg1)] / stor28 / _tTotal) < stor9[address(arg1)].field_0
                        else:
                            if stor9[address(arg1)].field_0 + (stor8 * stor4[address(arg1)] / stor28 / _tTotal) < stor9[address(arg1)].field_0:
                                require stor8 * stor4[address(arg1)] / stor28 / _tTotal < 0
                                require stor9[address(arg1)].field_0 + (stor8 * stor4[address(arg1)] / stor28 / _tTotal) < stor9[address(arg1)].field_0
                        stor9[address(arg1)].field_0 += stor8 * stor4[address(arg1)] / stor28 / _tTotal
    if stor15[address(arg1)]:
        stor15[address(arg1)] = 0
        stor13[address(arg1)] = 0
        if stor12.length < 1:
            revert with 0, 17
        if stor12.length - 1 >= stor12.length:
            revert with 0, 50
        stor14[stor12[stor12.length]] = stor14[address(arg1)]
        stor14[arg1] = 0
        if stor14[address(arg1)] >= stor12.length:
            revert with 0, 50
        stor12[stor14[address(arg1)]] = stor12[stor12.length]
        if not stor12.length:
            revert with 0, 49
        stor12[stor12.length] = 0
        stor12.length--
    emit ExcludeFromDividends(arg1);
}

function withdrawDividend() payable {
    mem[64] = 96
    require not msg.value
    if stor23[address(msg.sender)]:
        if not stor8:
            if stor9[address(msg.sender)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            require stor9[address(msg.sender)].field_0 >= 0
            if withdrawnDividendOf[address(msg.sender)].field_0 > stor9[address(msg.sender)].field_128:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor9[address(msg.sender)].field_128 < withdrawnDividendOf[address(msg.sender)].field_0:
                revert with 0, 17
            if stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0:
                if withdrawnDividendOf[address(msg.sender)].field_0 > !(stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0):
                    revert with 0, 17
                if stor9[address(msg.sender)].field_128 < withdrawnDividendOf[address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                withdrawnDividendOf[address(msg.sender)].field_0 = stor9[address(msg.sender)].field_128
                emit DividendWithdrawn((stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0), msg.sender);
                require ext_code.size(rewardTokenAddress)
                call rewardTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    if stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0 > withdrawnDividendOf[address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if withdrawnDividendOf[address(msg.sender)].field_0 < stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0:
                        revert with 0, 17
                    withdrawnDividendOf[address(msg.sender)].field_0 = (2 * withdrawnDividendOf[address(msg.sender)].field_0) - stor9[address(msg.sender)].field_128
        else:
            if stor8 and stor5[address(msg.sender)] > -1 / stor8:
                revert with 0, 17
            if not stor8:
                revert with 0, 18
            if stor8 * stor5[address(msg.sender)] / stor8 != stor5[address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            require stor8 * stor5[address(msg.sender)] >= 0
            if stor9[address(msg.sender)].field_0 > (-1 * stor8 * stor5[address(msg.sender)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor8 * stor5[address(msg.sender)] >= 0:
                revert with 0, 17
            if stor8 * stor5[address(msg.sender)] < 0 and stor9[address(msg.sender)].field_0 < (-1 * stor8 * stor5[address(msg.sender)]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            if stor9[address(msg.sender)].field_0 < 0:
                require (stor8 * stor5[address(msg.sender)]) + stor9[address(msg.sender)].field_0 < stor8 * stor5[address(msg.sender)]
            else:
                if (stor8 * stor5[address(msg.sender)]) + stor9[address(msg.sender)].field_0 < stor8 * stor5[address(msg.sender)]:
                    require stor9[address(msg.sender)].field_0 < 0
                    require (stor8 * stor5[address(msg.sender)]) + stor9[address(msg.sender)].field_0 < stor8 * stor5[address(msg.sender)]
            require (stor8 * stor5[address(msg.sender)]) + stor9[address(msg.sender)].field_0 >= 0
            if withdrawnDividendOf[address(msg.sender)].field_0 > Mask(128, 128, (stor8 * stor5[address(msg.sender)]) + stor9[address(msg.sender)].field_0) >> 128:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if Mask(128, 128, (stor8 * stor5[address(msg.sender)]) + stor9[address(msg.sender)].field_0) >> 128 < withdrawnDividendOf[address(msg.sender)].field_0:
                revert with 0, 17
            if (Mask(128, 128, (stor8 * stor5[address(msg.sender)]) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
                if withdrawnDividendOf[address(msg.sender)].field_0 > !((Mask(128, 128, (stor8 * stor5[address(msg.sender)]) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0):
                    revert with 0, 17
                if Mask(128, 128, (stor8 * stor5[address(msg.sender)]) + stor9[address(msg.sender)].field_0) >> 128 < withdrawnDividendOf[address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                withdrawnDividendOf[address(msg.sender)].field_0 = Mask(128, 128, (stor8 * stor5[address(msg.sender)]) + stor9[address(msg.sender)].field_0) >> 128
                withdrawnDividendOf[address(msg.sender)].field_128 = 0
                emit DividendWithdrawn(((Mask(128, 128, (stor8 * stor5[address(msg.sender)]) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0), msg.sender);
                require ext_code.size(rewardTokenAddress)
                call rewardTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (Mask(128, 128, (stor8 * stor5[address(msg.sender)]) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    if (Mask(128, 128, (stor8 * stor5[address(msg.sender)]) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0 > withdrawnDividendOf[address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if withdrawnDividendOf[address(msg.sender)].field_0 < (Mask(128, 128, (stor8 * stor5[address(msg.sender)]) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
                        revert with 0, 17
                    withdrawnDividendOf[address(msg.sender)].field_0 = (2 * withdrawnDividendOf[address(msg.sender)].field_0) - (Mask(128, 128, (stor8 * stor5[address(msg.sender)]) + stor9[address(msg.sender)].field_0) >> 128)
    else:
        mem[0] = msg.sender
        mem[32] = 4
        if stor4[address(msg.sender)] > stor28:
            revert with 0, 'Amt must be less than tot refl'
        idx = 0
        s = _tTotal
        t = stor28
        while idx < stor24.length:
            mem[0] = stor24[idx]
            mem[32] = 4
            if stor4[stor24[idx]] > t:
                _603 = mem[64]
                mem[64] = mem[64] + 64
                mem[_603] = 26
                mem[_603 + 32] = 'SafeMath: division by zero'
                if not _tTotal:
                    _607 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _607 + 68] = mem[idx + _603 + 32]
                        idx = idx + 32
                        continue 
                    mem[_607 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _607 + -mem[64] + 100
                _628 = mem[64]
                mem[64] = mem[64] + 64
                mem[_628] = 26
                mem[_628 + 32] = 'SafeMath: division by zero'
                if not stor28 / _tTotal:
                    _637 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _637 + 68] = mem[idx + _628 + 32]
                        idx = idx + 32
                        continue 
                    mem[_637 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _637 + -mem[64] + 100
                if not stor8:
                    if stor9[address(msg.sender)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    require stor9[address(msg.sender)].field_0 >= 0
                    _678 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_678] = 30
                    mem[_678 + 32] = 'SafeMath: subtraction overflow'
                    if withdrawnDividendOf[address(msg.sender)].field_0 > stor9[address(msg.sender)].field_128:
                        _679 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _679 + 68] = mem[idx + _678 + 32]
                            idx = idx + 32
                            continue 
                        mem[_679 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _679 + -mem[64] + 100
                    if stor9[address(msg.sender)].field_128 < withdrawnDividendOf[address(msg.sender)].field_0:
                        revert with 0, 17
                    if not stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0:
                    if withdrawnDividendOf[address(msg.sender)].field_0 > !(stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0):
                        revert with 0, 17
                    if stor9[address(msg.sender)].field_128 < withdrawnDividendOf[address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = msg.sender
                    mem[32] = 10
                    withdrawnDividendOf[address(msg.sender)].field_0 = stor9[address(msg.sender)].field_128
                    emit DividendWithdrawn((stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0), msg.sender);
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0
                    require ext_code.size(rewardTokenAddress)
                    call rewardTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _778 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_778] == bool(mem[_778])
                    if mem[_778]:
                    mem[0] = msg.sender
                    mem[32] = 10
                    _872 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_872] = 30
                    mem[_872 + 32] = 'SafeMath: subtraction overflow'
                    if stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0 <= withdrawnDividendOf[address(msg.sender)].field_0:
                        if withdrawnDividendOf[address(msg.sender)].field_0 < stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0:
                            revert with 0, 17
                        withdrawnDividendOf[address(msg.sender)].field_0 = (2 * withdrawnDividendOf[address(msg.sender)].field_0) - stor9[address(msg.sender)].field_128
                    _903 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _903 + 68] = mem[idx + _872 + 32]
                        idx = idx + 32
                        continue 
                    mem[_903 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _903 + -mem[64] + 100
                if stor8 and stor4[address(msg.sender)] / stor28 / _tTotal > -1 / stor8:
                    revert with 0, 17
                if not stor8:
                    revert with 0, 18
                if stor8 * stor4[address(msg.sender)] / stor28 / _tTotal / stor8 != stor4[address(msg.sender)] / stor28 / _tTotal:
                    revert with 0, 'SafeMath: multiplication overflow'
                require stor8 * stor4[address(msg.sender)] / stor28 / _tTotal >= 0
                if stor9[address(msg.sender)].field_0 > (-1 * stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor8 * stor4[address(msg.sender)] / stor28 / _tTotal >= 0:
                    revert with 0, 17
                if stor8 * stor4[address(msg.sender)] / stor28 / _tTotal < 0 and stor9[address(msg.sender)].field_0 < (-1 * stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                if stor9[address(msg.sender)].field_0 < 0:
                    require (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0 < stor8 * stor4[address(msg.sender)] / stor28 / _tTotal
                    require (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0 >= 0
                    _688 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_688] = 30
                    mem[_688 + 32] = 'SafeMath: subtraction overflow'
                    if withdrawnDividendOf[address(msg.sender)].field_0 > Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128:
                        _699 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _699 + 68] = mem[idx + _688 + 32]
                            idx = idx + 32
                            continue 
                        mem[_699 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _699 + -mem[64] + 100
                    if Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128 < withdrawnDividendOf[address(msg.sender)].field_0:
                        revert with 0, 17
                    if not (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
                    if withdrawnDividendOf[address(msg.sender)].field_0 > !((Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0):
                        revert with 0, 17
                    if Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128 < withdrawnDividendOf[address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = msg.sender
                    mem[32] = 10
                    withdrawnDividendOf[address(msg.sender)].field_0 = Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128
                    withdrawnDividendOf[address(msg.sender)].field_128 = 0
                    emit DividendWithdrawn(((Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0), msg.sender);
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0
                    require ext_code.size(rewardTokenAddress)
                    call rewardTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _858 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_858] == bool(mem[_858])
                    if mem[_858]:
                    mem[0] = msg.sender
                    mem[32] = 10
                    _948 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_948] = 30
                    mem[_948 + 32] = 'SafeMath: subtraction overflow'
                    if (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0 <= withdrawnDividendOf[address(msg.sender)].field_0:
                        if withdrawnDividendOf[address(msg.sender)].field_0 < (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
                            revert with 0, 17
                        withdrawnDividendOf[address(msg.sender)].field_0 = (2 * withdrawnDividendOf[address(msg.sender)].field_0) - (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128)
                    _965 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _965 + 68] = mem[idx + _948 + 32]
                        idx = idx + 32
                        continue 
                    mem[_965 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _965 + -mem[64] + 100
                if (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0 >= stor8 * stor4[address(msg.sender)] / stor28 / _tTotal:
                    require (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0 >= 0
                    _687 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_687] = 30
                    mem[_687 + 32] = 'SafeMath: subtraction overflow'
                    if withdrawnDividendOf[address(msg.sender)].field_0 > Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128:
                        _693 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _693 + 68] = mem[idx + _687 + 32]
                            idx = idx + 32
                            continue 
                        mem[_693 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _693 + -mem[64] + 100
                    if Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128 < withdrawnDividendOf[address(msg.sender)].field_0:
                        revert with 0, 17
                    if not (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
                    if withdrawnDividendOf[address(msg.sender)].field_0 > !((Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0):
                        revert with 0, 17
                    if Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128 < withdrawnDividendOf[address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = msg.sender
                    mem[32] = 10
                    withdrawnDividendOf[address(msg.sender)].field_0 = Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128
                    withdrawnDividendOf[address(msg.sender)].field_128 = 0
                    emit DividendWithdrawn(((Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0), msg.sender);
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0
                    require ext_code.size(rewardTokenAddress)
                    call rewardTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _847 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_847] == bool(mem[_847])
                    if mem[_847]:
                    mem[0] = msg.sender
                    mem[32] = 10
                    _945 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_945] = 30
                    mem[_945 + 32] = 'SafeMath: subtraction overflow'
                    if (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0 <= withdrawnDividendOf[address(msg.sender)].field_0:
                        if withdrawnDividendOf[address(msg.sender)].field_0 < (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
                            revert with 0, 17
                        withdrawnDividendOf[address(msg.sender)].field_0 = (2 * withdrawnDividendOf[address(msg.sender)].field_0) - (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128)
                    _958 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _958 + 68] = mem[idx + _945 + 32]
                        idx = idx + 32
                        continue 
                    mem[_958 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _958 + -mem[64] + 100
                require stor9[address(msg.sender)].field_0 < 0
                require (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0 < stor8 * stor4[address(msg.sender)] / stor28 / _tTotal
                require (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0 >= 0
                _694 = mem[64]
                mem[64] = mem[64] + 64
                mem[_694] = 30
                mem[_694 + 32] = 'SafeMath: subtraction overflow'
                if withdrawnDividendOf[address(msg.sender)].field_0 > Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128:
                    _705 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _705 + 68] = mem[idx + _694 + 32]
                        idx = idx + 32
                        continue 
                    mem[_705 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _705 + -mem[64] + 100
                if Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128 < withdrawnDividendOf[address(msg.sender)].field_0:
                    revert with 0, 17
                if not (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
                if withdrawnDividendOf[address(msg.sender)].field_0 > !((Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0):
                    revert with 0, 17
                if Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128 < withdrawnDividendOf[address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = msg.sender
                mem[32] = 10
                withdrawnDividendOf[address(msg.sender)].field_0 = Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128
                withdrawnDividendOf[address(msg.sender)].field_128 = 0
                emit DividendWithdrawn(((Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0), msg.sender);
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0
                require ext_code.size(rewardTokenAddress)
                call rewardTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _871 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_871] == bool(mem[_871])
                if mem[_871]:
                mem[0] = msg.sender
                mem[32] = 10
                _959 = mem[64]
                mem[64] = mem[64] + 64
                mem[_959] = 30
                mem[_959 + 32] = 'SafeMath: subtraction overflow'
                if (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0 <= withdrawnDividendOf[address(msg.sender)].field_0:
                    if withdrawnDividendOf[address(msg.sender)].field_0 < (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
                        revert with 0, 17
                    withdrawnDividendOf[address(msg.sender)].field_0 = (2 * withdrawnDividendOf[address(msg.sender)].field_0) - (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128)
                _972 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _972 + 68] = mem[idx + _959 + 32]
                    idx = idx + 32
                    continue 
                mem[_972 + 98] = 0
                revert with memory
                  from mem[64]
                   len _972 + -mem[64] + 100
            if idx >= stor24.length:
                revert with 0, 50
            mem[0] = stor24[idx]
            mem[32] = 5
            if stor5[stor24[idx]] <= s:
                if idx >= stor24.length:
                    revert with 0, 50
                mem[0] = stor24[idx]
                mem[32] = 4
                _608 = mem[64]
                mem[64] = mem[64] + 64
                mem[_608] = 30
                mem[_608 + 32] = 'SafeMath: subtraction overflow'
                if stor4[stor24[idx]] > t:
                    _613 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _613 + 68] = mem[idx + _608 + 32]
                        idx = idx + 32
                        continue 
                    mem[_613 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _613 + -mem[64] + 100
                if t < stor4[stor24[idx]]:
                    revert with 0, 17
                if idx >= stor24.length:
                    revert with 0, 50
                mem[0] = stor24[idx]
                mem[32] = 5
                _638 = mem[64]
                mem[64] = mem[64] + 64
                mem[_638] = 30
                mem[_638 + 32] = 'SafeMath: subtraction overflow'
                if stor5[stor24[idx]] <= s:
                    if s < stor5[stor24[idx]]:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s - stor5[stor24[idx]]
                    t = t - stor4[stor24[idx]]
                    continue 
                _643 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _643 + 68] = mem[idx + _638 + 32]
                    idx = idx + 32
                    continue 
                mem[_643 + 98] = 0
                revert with memory
                  from mem[64]
                   len _643 + -mem[64] + 100
            _609 = mem[64]
            mem[64] = mem[64] + 64
            mem[_609] = 26
            mem[_609 + 32] = 'SafeMath: division by zero'
            if not _tTotal:
                _614 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _614 + 68] = mem[idx + _609 + 32]
                    idx = idx + 32
                    continue 
                mem[_614 + 94] = 0
                revert with memory
                  from mem[64]
                   len _614 + -mem[64] + 100
            _639 = mem[64]
            mem[64] = mem[64] + 64
            mem[_639] = 26
            mem[_639 + 32] = 'SafeMath: division by zero'
            if not stor28 / _tTotal:
                _644 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _644 + 68] = mem[idx + _639 + 32]
                    idx = idx + 32
                    continue 
                mem[_644 + 94] = 0
                revert with memory
                  from mem[64]
                   len _644 + -mem[64] + 100
            if not stor8:
                if stor9[address(msg.sender)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                require stor9[address(msg.sender)].field_0 >= 0
                _680 = mem[64]
                mem[64] = mem[64] + 64
                mem[_680] = 30
                mem[_680 + 32] = 'SafeMath: subtraction overflow'
                if withdrawnDividendOf[address(msg.sender)].field_0 > stor9[address(msg.sender)].field_128:
                    _682 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _682 + 68] = mem[idx + _680 + 32]
                        idx = idx + 32
                        continue 
                    mem[_682 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _682 + -mem[64] + 100
                if stor9[address(msg.sender)].field_128 < withdrawnDividendOf[address(msg.sender)].field_0:
                    revert with 0, 17
                if not stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0:
                if withdrawnDividendOf[address(msg.sender)].field_0 > !(stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0):
                    revert with 0, 17
                if stor9[address(msg.sender)].field_128 < withdrawnDividendOf[address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = msg.sender
                mem[32] = 10
                withdrawnDividendOf[address(msg.sender)].field_0 = stor9[address(msg.sender)].field_128
                emit DividendWithdrawn((stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0), msg.sender);
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0
                require ext_code.size(rewardTokenAddress)
                call rewardTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _797 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_797] == bool(mem[_797])
                if mem[_797]:
                mem[0] = msg.sender
                mem[32] = 10
                _906 = mem[64]
                mem[64] = mem[64] + 64
                mem[_906] = 30
                mem[_906 + 32] = 'SafeMath: subtraction overflow'
                if stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0 <= withdrawnDividendOf[address(msg.sender)].field_0:
                    if withdrawnDividendOf[address(msg.sender)].field_0 < stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0:
                        revert with 0, 17
                    withdrawnDividendOf[address(msg.sender)].field_0 = (2 * withdrawnDividendOf[address(msg.sender)].field_0) - stor9[address(msg.sender)].field_128
                _930 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _930 + 68] = mem[idx + _906 + 32]
                    idx = idx + 32
                    continue 
                mem[_930 + 98] = 0
                revert with memory
                  from mem[64]
                   len _930 + -mem[64] + 100
            if stor8 and stor4[address(msg.sender)] / stor28 / _tTotal > -1 / stor8:
                revert with 0, 17
            if not stor8:
                revert with 0, 18
            if stor8 * stor4[address(msg.sender)] / stor28 / _tTotal / stor8 != stor4[address(msg.sender)] / stor28 / _tTotal:
                revert with 0, 'SafeMath: multiplication overflow'
            require stor8 * stor4[address(msg.sender)] / stor28 / _tTotal >= 0
            if stor9[address(msg.sender)].field_0 > (-1 * stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor8 * stor4[address(msg.sender)] / stor28 / _tTotal >= 0:
                revert with 0, 17
            if stor8 * stor4[address(msg.sender)] / stor28 / _tTotal < 0 and stor9[address(msg.sender)].field_0 < (-1 * stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            if stor9[address(msg.sender)].field_0 < 0:
                require (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0 < stor8 * stor4[address(msg.sender)] / stor28 / _tTotal
                require (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0 >= 0
                _702 = mem[64]
                mem[64] = mem[64] + 64
                mem[_702] = 30
                mem[_702 + 32] = 'SafeMath: subtraction overflow'
                if withdrawnDividendOf[address(msg.sender)].field_0 > Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128:
                    _713 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _713 + 68] = mem[idx + _702 + 32]
                        idx = idx + 32
                        continue 
                    mem[_713 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _713 + -mem[64] + 100
                if Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128 < withdrawnDividendOf[address(msg.sender)].field_0:
                    revert with 0, 17
                if not (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
                if withdrawnDividendOf[address(msg.sender)].field_0 > !((Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0):
                    revert with 0, 17
                if Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128 < withdrawnDividendOf[address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = msg.sender
                mem[32] = 10
                withdrawnDividendOf[address(msg.sender)].field_0 = Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128
                withdrawnDividendOf[address(msg.sender)].field_128 = 0
                emit DividendWithdrawn(((Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0), msg.sender);
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0
                require ext_code.size(rewardTokenAddress)
                call rewardTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _886 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_886] == bool(mem[_886])
                if mem[_886]:
                mem[0] = msg.sender
                mem[32] = 10
                _967 = mem[64]
                mem[64] = mem[64] + 64
                mem[_967] = 30
                mem[_967 + 32] = 'SafeMath: subtraction overflow'
                if (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0 <= withdrawnDividendOf[address(msg.sender)].field_0:
                    if withdrawnDividendOf[address(msg.sender)].field_0 < (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
                        revert with 0, 17
                    withdrawnDividendOf[address(msg.sender)].field_0 = (2 * withdrawnDividendOf[address(msg.sender)].field_0) - (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128)
                _982 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _982 + 68] = mem[idx + _967 + 32]
                    idx = idx + 32
                    continue 
                mem[_982 + 98] = 0
                revert with memory
                  from mem[64]
                   len _982 + -mem[64] + 100
            if (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0 >= stor8 * stor4[address(msg.sender)] / stor28 / _tTotal:
                require (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0 >= 0
                _696 = mem[64]
                mem[64] = mem[64] + 64
                mem[_696] = 30
                mem[_696 + 32] = 'SafeMath: subtraction overflow'
                if withdrawnDividendOf[address(msg.sender)].field_0 > Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128:
                    _706 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _706 + 68] = mem[idx + _696 + 32]
                        idx = idx + 32
                        continue 
                    mem[_706 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _706 + -mem[64] + 100
                if Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128 < withdrawnDividendOf[address(msg.sender)].field_0:
                    revert with 0, 17
                if not (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
                if withdrawnDividendOf[address(msg.sender)].field_0 > !((Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0):
                    revert with 0, 17
                if Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128 < withdrawnDividendOf[address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = msg.sender
                mem[32] = 10
                withdrawnDividendOf[address(msg.sender)].field_0 = Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128
                withdrawnDividendOf[address(msg.sender)].field_128 = 0
                emit DividendWithdrawn(((Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0), msg.sender);
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0
                require ext_code.size(rewardTokenAddress)
                call rewardTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _873 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_873] == bool(mem[_873])
                if mem[_873]:
                mem[0] = msg.sender
                mem[32] = 10
                _962 = mem[64]
                mem[64] = mem[64] + 64
                mem[_962] = 30
                mem[_962 + 32] = 'SafeMath: subtraction overflow'
                if (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0 <= withdrawnDividendOf[address(msg.sender)].field_0:
                    if withdrawnDividendOf[address(msg.sender)].field_0 < (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
                        revert with 0, 17
                    withdrawnDividendOf[address(msg.sender)].field_0 = (2 * withdrawnDividendOf[address(msg.sender)].field_0) - (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128)
                _973 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _973 + 68] = mem[idx + _962 + 32]
                    idx = idx + 32
                    continue 
                mem[_973 + 98] = 0
                revert with memory
                  from mem[64]
                   len _973 + -mem[64] + 100
            require stor9[address(msg.sender)].field_0 < 0
            require (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0 < stor8 * stor4[address(msg.sender)] / stor28 / _tTotal
            require (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0 >= 0
            _707 = mem[64]
            mem[64] = mem[64] + 64
            mem[_707] = 30
            mem[_707 + 32] = 'SafeMath: subtraction overflow'
            if withdrawnDividendOf[address(msg.sender)].field_0 > Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128:
                _720 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _720 + 68] = mem[idx + _707 + 32]
                    idx = idx + 32
                    continue 
                mem[_720 + 98] = 0
                revert with memory
                  from mem[64]
                   len _720 + -mem[64] + 100
            if Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128 < withdrawnDividendOf[address(msg.sender)].field_0:
                revert with 0, 17
            if not (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
            if withdrawnDividendOf[address(msg.sender)].field_0 > !((Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0):
                revert with 0, 17
            if Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128 < withdrawnDividendOf[address(msg.sender)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = msg.sender
            mem[32] = 10
            withdrawnDividendOf[address(msg.sender)].field_0 = Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128
            withdrawnDividendOf[address(msg.sender)].field_128 = 0
            emit DividendWithdrawn(((Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0), msg.sender);
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0
            require ext_code.size(rewardTokenAddress)
            call rewardTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _905 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_905] == bool(mem[_905])
            if mem[_905]:
            mem[0] = msg.sender
            mem[32] = 10
            _974 = mem[64]
            mem[64] = mem[64] + 64
            mem[_974] = 30
            mem[_974 + 32] = 'SafeMath: subtraction overflow'
            if (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0 <= withdrawnDividendOf[address(msg.sender)].field_0:
                if withdrawnDividendOf[address(msg.sender)].field_0 < (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
                    revert with 0, 17
                withdrawnDividendOf[address(msg.sender)].field_0 = (2 * withdrawnDividendOf[address(msg.sender)].field_0) - (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128)
            _990 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _990 + 68] = mem[idx + _974 + 32]
                idx = idx + 32
                continue 
            mem[_990 + 98] = 0
            revert with memory
              from mem[64]
               len _990 + -mem[64] + 100
        _580 = mem[64]
        mem[64] = mem[64] + 64
        mem[_580] = 26
        mem[_580 + 32] = 'SafeMath: division by zero'
        if not _tTotal:
            revert with 0, 'SafeMath: division by zero', 0
        if t >= stor28 / _tTotal:
            _618 = mem[64]
            mem[64] = mem[64] + 64
            mem[_618] = 26
            mem[_618 + 32] = 'SafeMath: division by zero'
            if not s:
                revert with 0, 'SafeMath: division by zero', 0
            _650 = mem[64]
            mem[64] = mem[64] + 64
            mem[_650] = 26
            mem[_650 + 32] = 'SafeMath: division by zero'
            if not t / s:
                revert with 0, 'SafeMath: division by zero', 0
            if not stor8:
                if stor9[address(msg.sender)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                require stor9[address(msg.sender)].field_0 >= 0
                _685 = mem[64]
                mem[64] = mem[64] + 64
                mem[_685] = 30
                mem[_685 + 32] = 'SafeMath: subtraction overflow'
                if withdrawnDividendOf[address(msg.sender)].field_0 > stor9[address(msg.sender)].field_128:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor9[address(msg.sender)].field_128 < withdrawnDividendOf[address(msg.sender)].field_0:
                    revert with 0, 17
                if stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0:
                    if withdrawnDividendOf[address(msg.sender)].field_0 > !(stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0):
                        revert with 0, 17
                    if stor9[address(msg.sender)].field_128 < withdrawnDividendOf[address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = msg.sender
                    mem[32] = 10
                    withdrawnDividendOf[address(msg.sender)].field_0 = stor9[address(msg.sender)].field_128
                    emit DividendWithdrawn((stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0), msg.sender);
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0
                    require ext_code.size(rewardTokenAddress)
                    call rewardTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _845 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_845] == bool(mem[_845])
                    if not mem[_845]:
                        if stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0 > withdrawnDividendOf[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if withdrawnDividendOf[address(msg.sender)].field_0 < stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0:
                            revert with 0, 17
                        withdrawnDividendOf[address(msg.sender)].field_0 = (2 * withdrawnDividendOf[address(msg.sender)].field_0) - stor9[address(msg.sender)].field_128
            else:
                if stor8 and stor4[address(msg.sender)] / t / s > -1 / stor8:
                    revert with 0, 17
                if not stor8:
                    revert with 0, 18
                if stor8 * stor4[address(msg.sender)] / t / s / stor8 != stor4[address(msg.sender)] / t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                require stor8 * stor4[address(msg.sender)] / t / s >= 0
                if stor9[address(msg.sender)].field_0 > (-1 * stor8 * stor4[address(msg.sender)] / t / s) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor8 * stor4[address(msg.sender)] / t / s >= 0:
                    revert with 0, 17
                if stor8 * stor4[address(msg.sender)] / t / s < 0 and stor9[address(msg.sender)].field_0 < (-1 * stor8 * stor4[address(msg.sender)] / t / s) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                if stor9[address(msg.sender)].field_0 < 0:
                    require (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0 < stor8 * stor4[address(msg.sender)] / t / s
                    require (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0 >= 0
                    _721 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_721] = 30
                    mem[_721 + 32] = 'SafeMath: subtraction overflow'
                    if withdrawnDividendOf[address(msg.sender)].field_0 > Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128 < withdrawnDividendOf[address(msg.sender)].field_0:
                        revert with 0, 17
                    if (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
                        if withdrawnDividendOf[address(msg.sender)].field_0 > !((Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0):
                            revert with 0, 17
                        if Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128 < withdrawnDividendOf[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = msg.sender
                        mem[32] = 10
                        withdrawnDividendOf[address(msg.sender)].field_0 = Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128
                        withdrawnDividendOf[address(msg.sender)].field_128 = 0
                        emit DividendWithdrawn(((Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0), msg.sender);
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _931 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_931] == bool(mem[_931])
                        if not mem[_931]:
                            if (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0 > withdrawnDividendOf[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if withdrawnDividendOf[address(msg.sender)].field_0 < (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
                                revert with 0, 17
                            withdrawnDividendOf[address(msg.sender)].field_0 = (2 * withdrawnDividendOf[address(msg.sender)].field_0) - (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128)
                else:
                    if (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0 >= stor8 * stor4[address(msg.sender)] / t / s:
                        require (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0 >= 0
                        _716 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_716] = 30
                        mem[_716 + 32] = 'SafeMath: subtraction overflow'
                        if withdrawnDividendOf[address(msg.sender)].field_0 > Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128 < withdrawnDividendOf[address(msg.sender)].field_0:
                            revert with 0, 17
                        if (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
                            if withdrawnDividendOf[address(msg.sender)].field_0 > !((Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0):
                                revert with 0, 17
                            if Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128 < withdrawnDividendOf[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = msg.sender
                            mem[32] = 10
                            withdrawnDividendOf[address(msg.sender)].field_0 = Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128
                            withdrawnDividendOf[address(msg.sender)].field_128 = 0
                            emit DividendWithdrawn(((Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0), msg.sender);
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _921 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_921] == bool(mem[_921])
                            if not mem[_921]:
                                if (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0 > withdrawnDividendOf[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if withdrawnDividendOf[address(msg.sender)].field_0 < (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
                                    revert with 0, 17
                                withdrawnDividendOf[address(msg.sender)].field_0 = (2 * withdrawnDividendOf[address(msg.sender)].field_0) - (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128)
                    else:
                        require stor9[address(msg.sender)].field_0 < 0
                        require (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0 < stor8 * stor4[address(msg.sender)] / t / s
                        require (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0 >= 0
                        _730 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_730] = 30
                        mem[_730 + 32] = 'SafeMath: subtraction overflow'
                        if withdrawnDividendOf[address(msg.sender)].field_0 > Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128 < withdrawnDividendOf[address(msg.sender)].field_0:
                            revert with 0, 17
                        if (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
                            if withdrawnDividendOf[address(msg.sender)].field_0 > !((Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0):
                                revert with 0, 17
                            if Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128 < withdrawnDividendOf[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = msg.sender
                            mem[32] = 10
                            withdrawnDividendOf[address(msg.sender)].field_0 = Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128
                            withdrawnDividendOf[address(msg.sender)].field_128 = 0
                            emit DividendWithdrawn(((Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0), msg.sender);
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _939 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_939] == bool(mem[_939])
                            if not mem[_939]:
                                if (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0 > withdrawnDividendOf[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if withdrawnDividendOf[address(msg.sender)].field_0 < (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
                                    revert with 0, 17
                                withdrawnDividendOf[address(msg.sender)].field_0 = (2 * withdrawnDividendOf[address(msg.sender)].field_0) - (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128)
        else:
            _619 = mem[64]
            mem[64] = mem[64] + 64
            mem[_619] = 26
            mem[_619 + 32] = 'SafeMath: division by zero'
            if not _tTotal:
                revert with 0, 'SafeMath: division by zero', 0
            _651 = mem[64]
            mem[64] = mem[64] + 64
            mem[_651] = 26
            mem[_651 + 32] = 'SafeMath: division by zero'
            if not stor28 / _tTotal:
                revert with 0, 'SafeMath: division by zero', 0
            if not stor8:
                if stor9[address(msg.sender)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                require stor9[address(msg.sender)].field_0 >= 0
                _686 = mem[64]
                mem[64] = mem[64] + 64
                mem[_686] = 30
                mem[_686 + 32] = 'SafeMath: subtraction overflow'
                if withdrawnDividendOf[address(msg.sender)].field_0 > stor9[address(msg.sender)].field_128:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor9[address(msg.sender)].field_128 < withdrawnDividendOf[address(msg.sender)].field_0:
                    revert with 0, 17
                if stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0:
                    if withdrawnDividendOf[address(msg.sender)].field_0 > !(stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0):
                        revert with 0, 17
                    if stor9[address(msg.sender)].field_128 < withdrawnDividendOf[address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = msg.sender
                    mem[32] = 10
                    withdrawnDividendOf[address(msg.sender)].field_0 = stor9[address(msg.sender)].field_128
                    emit DividendWithdrawn((stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0), msg.sender);
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0
                    require ext_code.size(rewardTokenAddress)
                    call rewardTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _846 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_846] == bool(mem[_846])
                    if not mem[_846]:
                        if stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0 > withdrawnDividendOf[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if withdrawnDividendOf[address(msg.sender)].field_0 < stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0:
                            revert with 0, 17
                        withdrawnDividendOf[address(msg.sender)].field_0 = (2 * withdrawnDividendOf[address(msg.sender)].field_0) - stor9[address(msg.sender)].field_128
            else:
                if stor8 and stor4[address(msg.sender)] / stor28 / _tTotal > -1 / stor8:
                    revert with 0, 17
                if not stor8:
                    revert with 0, 18
                if stor8 * stor4[address(msg.sender)] / stor28 / _tTotal / stor8 != stor4[address(msg.sender)] / stor28 / _tTotal:
                    revert with 0, 'SafeMath: multiplication overflow'
                require stor8 * stor4[address(msg.sender)] / stor28 / _tTotal >= 0
                if stor9[address(msg.sender)].field_0 > (-1 * stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor8 * stor4[address(msg.sender)] / stor28 / _tTotal >= 0:
                    revert with 0, 17
                if stor8 * stor4[address(msg.sender)] / stor28 / _tTotal < 0 and stor9[address(msg.sender)].field_0 < (-1 * stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                if stor9[address(msg.sender)].field_0 < 0:
                    require (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0 < stor8 * stor4[address(msg.sender)] / stor28 / _tTotal
                    require (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0 >= 0
                    _723 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_723] = 30
                    mem[_723 + 32] = 'SafeMath: subtraction overflow'
                    if withdrawnDividendOf[address(msg.sender)].field_0 > Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128 < withdrawnDividendOf[address(msg.sender)].field_0:
                        revert with 0, 17
                    if (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
                        if withdrawnDividendOf[address(msg.sender)].field_0 > !((Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0):
                            revert with 0, 17
                        if Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128 < withdrawnDividendOf[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = msg.sender
                        mem[32] = 10
                        withdrawnDividendOf[address(msg.sender)].field_0 = Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128
                        withdrawnDividendOf[address(msg.sender)].field_128 = 0
                        emit DividendWithdrawn(((Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0), msg.sender);
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _933 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_933] == bool(mem[_933])
                        if not mem[_933]:
                            if (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0 > withdrawnDividendOf[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if withdrawnDividendOf[address(msg.sender)].field_0 < (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
                                revert with 0, 17
                            withdrawnDividendOf[address(msg.sender)].field_0 = (2 * withdrawnDividendOf[address(msg.sender)].field_0) - (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128)
                else:
                    if (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0 >= stor8 * stor4[address(msg.sender)] / stor28 / _tTotal:
                        require (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0 >= 0
                        _717 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_717] = 30
                        mem[_717 + 32] = 'SafeMath: subtraction overflow'
                        if withdrawnDividendOf[address(msg.sender)].field_0 > Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128 < withdrawnDividendOf[address(msg.sender)].field_0:
                            revert with 0, 17
                        if (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
                            if withdrawnDividendOf[address(msg.sender)].field_0 > !((Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0):
                                revert with 0, 17
                            if Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128 < withdrawnDividendOf[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = msg.sender
                            mem[32] = 10
                            withdrawnDividendOf[address(msg.sender)].field_0 = Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128
                            withdrawnDividendOf[address(msg.sender)].field_128 = 0
                            emit DividendWithdrawn(((Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0), msg.sender);
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _925 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_925] == bool(mem[_925])
                            if not mem[_925]:
                                if (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0 > withdrawnDividendOf[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if withdrawnDividendOf[address(msg.sender)].field_0 < (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
                                    revert with 0, 17
                                withdrawnDividendOf[address(msg.sender)].field_0 = (2 * withdrawnDividendOf[address(msg.sender)].field_0) - (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128)
                    else:
                        require stor9[address(msg.sender)].field_0 < 0
                        require (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0 < stor8 * stor4[address(msg.sender)] / stor28 / _tTotal
                        require (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0 >= 0
                        _733 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_733] = 30
                        mem[_733 + 32] = 'SafeMath: subtraction overflow'
                        if withdrawnDividendOf[address(msg.sender)].field_0 > Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128 < withdrawnDividendOf[address(msg.sender)].field_0:
                            revert with 0, 17
                        if (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
                            if withdrawnDividendOf[address(msg.sender)].field_0 > !((Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0):
                                revert with 0, 17
                            if Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128 < withdrawnDividendOf[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = msg.sender
                            mem[32] = 10
                            withdrawnDividendOf[address(msg.sender)].field_0 = Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128
                            withdrawnDividendOf[address(msg.sender)].field_128 = 0
                            emit DividendWithdrawn(((Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0), msg.sender);
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _942 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_942] == bool(mem[_942])
                            if not mem[_942]:
                                if (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0 > withdrawnDividendOf[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if withdrawnDividendOf[address(msg.sender)].field_0 < (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
                                    revert with 0, 17
                                withdrawnDividendOf[address(msg.sender)].field_0 = (2 * withdrawnDividendOf[address(msg.sender)].field_0) - (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128)
}

function claim() payable {
    mem[64] = 96
    require not msg.value
    if stor23[address(msg.sender)]:
        if not stor8:
            if stor9[address(msg.sender)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            require stor9[address(msg.sender)].field_0 >= 0
            if withdrawnDividendOf[address(msg.sender)].field_0 > stor9[address(msg.sender)].field_128:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor9[address(msg.sender)].field_128 < withdrawnDividendOf[address(msg.sender)].field_0:
                revert with 0, 17
            if stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0:
                if withdrawnDividendOf[address(msg.sender)].field_0 > !(stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0):
                    revert with 0, 17
                if stor9[address(msg.sender)].field_128 < withdrawnDividendOf[address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                withdrawnDividendOf[address(msg.sender)].field_0 = stor9[address(msg.sender)].field_128
                emit DividendWithdrawn((stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0), msg.sender);
                require ext_code.size(rewardTokenAddress)
                call rewardTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ext_call.return_data[0]:
                    if stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0:
                        lastClaimTimes[address(msg.sender)] = block.timestamp
                        emit Claim((stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0), msg.sender, 0);
                else:
                    if stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0 > withdrawnDividendOf[address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if withdrawnDividendOf[address(msg.sender)].field_0 < stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0:
                        revert with 0, 17
                    withdrawnDividendOf[address(msg.sender)].field_0 = (2 * withdrawnDividendOf[address(msg.sender)].field_0) - stor9[address(msg.sender)].field_128
        else:
            if stor8 and stor5[address(msg.sender)] > -1 / stor8:
                revert with 0, 17
            if not stor8:
                revert with 0, 18
            if stor8 * stor5[address(msg.sender)] / stor8 != stor5[address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            require stor8 * stor5[address(msg.sender)] >= 0
            if stor9[address(msg.sender)].field_0 > (-1 * stor8 * stor5[address(msg.sender)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor8 * stor5[address(msg.sender)] >= 0:
                revert with 0, 17
            if stor8 * stor5[address(msg.sender)] < 0 and stor9[address(msg.sender)].field_0 < (-1 * stor8 * stor5[address(msg.sender)]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            if stor9[address(msg.sender)].field_0 < 0:
                require (stor8 * stor5[address(msg.sender)]) + stor9[address(msg.sender)].field_0 < stor8 * stor5[address(msg.sender)]
            else:
                if (stor8 * stor5[address(msg.sender)]) + stor9[address(msg.sender)].field_0 < stor8 * stor5[address(msg.sender)]:
                    require stor9[address(msg.sender)].field_0 < 0
                    require (stor8 * stor5[address(msg.sender)]) + stor9[address(msg.sender)].field_0 < stor8 * stor5[address(msg.sender)]
            require (stor8 * stor5[address(msg.sender)]) + stor9[address(msg.sender)].field_0 >= 0
            if withdrawnDividendOf[address(msg.sender)].field_0 > Mask(128, 128, (stor8 * stor5[address(msg.sender)]) + stor9[address(msg.sender)].field_0) >> 128:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if Mask(128, 128, (stor8 * stor5[address(msg.sender)]) + stor9[address(msg.sender)].field_0) >> 128 < withdrawnDividendOf[address(msg.sender)].field_0:
                revert with 0, 17
            if (Mask(128, 128, (stor8 * stor5[address(msg.sender)]) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
                if withdrawnDividendOf[address(msg.sender)].field_0 > !((Mask(128, 128, (stor8 * stor5[address(msg.sender)]) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0):
                    revert with 0, 17
                if Mask(128, 128, (stor8 * stor5[address(msg.sender)]) + stor9[address(msg.sender)].field_0) >> 128 < withdrawnDividendOf[address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                withdrawnDividendOf[address(msg.sender)].field_0 = Mask(128, 128, (stor8 * stor5[address(msg.sender)]) + stor9[address(msg.sender)].field_0) >> 128
                withdrawnDividendOf[address(msg.sender)].field_128 = 0
                emit DividendWithdrawn(((Mask(128, 128, (stor8 * stor5[address(msg.sender)]) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0), msg.sender);
                require ext_code.size(rewardTokenAddress)
                call rewardTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (Mask(128, 128, (stor8 * stor5[address(msg.sender)]) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ext_call.return_data[0]:
                    if (Mask(128, 128, (stor8 * stor5[address(msg.sender)]) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
                        lastClaimTimes[address(msg.sender)] = block.timestamp
                        emit Claim(((Mask(128, 128, (stor8 * stor5[address(msg.sender)]) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0), msg.sender, 0);
                else:
                    if (Mask(128, 128, (stor8 * stor5[address(msg.sender)]) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0 > withdrawnDividendOf[address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if withdrawnDividendOf[address(msg.sender)].field_0 < (Mask(128, 128, (stor8 * stor5[address(msg.sender)]) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
                        revert with 0, 17
                    withdrawnDividendOf[address(msg.sender)].field_0 = (2 * withdrawnDividendOf[address(msg.sender)].field_0) - (Mask(128, 128, (stor8 * stor5[address(msg.sender)]) + stor9[address(msg.sender)].field_0) >> 128)
    else:
        mem[0] = msg.sender
        mem[32] = 4
        if stor4[address(msg.sender)] > stor28:
            revert with 0, 'Amt must be less than tot refl'
        idx = 0
        s = _tTotal
        t = stor28
        while idx < stor24.length:
            mem[0] = stor24[idx]
            mem[32] = 4
            if stor4[stor24[idx]] > t:
                _663 = mem[64]
                mem[64] = mem[64] + 64
                mem[_663] = 26
                mem[_663 + 32] = 'SafeMath: division by zero'
                if not _tTotal:
                    _667 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _667 + 68] = mem[idx + _663 + 32]
                        idx = idx + 32
                        continue 
                    mem[_667 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _667 + -mem[64] + 100
                _688 = mem[64]
                mem[64] = mem[64] + 64
                mem[_688] = 26
                mem[_688 + 32] = 'SafeMath: division by zero'
                if not stor28 / _tTotal:
                    _697 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _697 + 68] = mem[idx + _688 + 32]
                        idx = idx + 32
                        continue 
                    mem[_697 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _697 + -mem[64] + 100
                if not stor8:
                    if stor9[address(msg.sender)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    require stor9[address(msg.sender)].field_0 >= 0
                    _738 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_738] = 30
                    mem[_738 + 32] = 'SafeMath: subtraction overflow'
                    if withdrawnDividendOf[address(msg.sender)].field_0 > stor9[address(msg.sender)].field_128:
                        _739 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _739 + 68] = mem[idx + _738 + 32]
                            idx = idx + 32
                            continue 
                        mem[_739 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _739 + -mem[64] + 100
                    if stor9[address(msg.sender)].field_128 < withdrawnDividendOf[address(msg.sender)].field_0:
                        revert with 0, 17
                    if not stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0:
                    if withdrawnDividendOf[address(msg.sender)].field_0 > !(stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0):
                        revert with 0, 17
                    if stor9[address(msg.sender)].field_128 < withdrawnDividendOf[address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = msg.sender
                    mem[32] = 10
                    withdrawnDividendOf[address(msg.sender)].field_0 = stor9[address(msg.sender)].field_128
                    emit DividendWithdrawn((stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0), msg.sender);
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0
                    require ext_code.size(rewardTokenAddress)
                    call rewardTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _838 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_838] == bool(mem[_838])
                    if mem[_838]:
                        if stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0:
                            lastClaimTimes[address(msg.sender)] = block.timestamp
                            emit Claim((stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0), msg.sender, 0);
                    mem[0] = msg.sender
                    mem[32] = 10
                    _932 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_932] = 30
                    mem[_932 + 32] = 'SafeMath: subtraction overflow'
                    if stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0 <= withdrawnDividendOf[address(msg.sender)].field_0:
                        if withdrawnDividendOf[address(msg.sender)].field_0 < stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0:
                            revert with 0, 17
                        withdrawnDividendOf[address(msg.sender)].field_0 = (2 * withdrawnDividendOf[address(msg.sender)].field_0) - stor9[address(msg.sender)].field_128
                    _966 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _966 + 68] = mem[idx + _932 + 32]
                        idx = idx + 32
                        continue 
                    mem[_966 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _966 + -mem[64] + 100
                if stor8 and stor4[address(msg.sender)] / stor28 / _tTotal > -1 / stor8:
                    revert with 0, 17
                if not stor8:
                    revert with 0, 18
                if stor8 * stor4[address(msg.sender)] / stor28 / _tTotal / stor8 != stor4[address(msg.sender)] / stor28 / _tTotal:
                    revert with 0, 'SafeMath: multiplication overflow'
                require stor8 * stor4[address(msg.sender)] / stor28 / _tTotal >= 0
                if stor9[address(msg.sender)].field_0 > (-1 * stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor8 * stor4[address(msg.sender)] / stor28 / _tTotal >= 0:
                    revert with 0, 17
                if stor8 * stor4[address(msg.sender)] / stor28 / _tTotal < 0 and stor9[address(msg.sender)].field_0 < (-1 * stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                if stor9[address(msg.sender)].field_0 < 0:
                    require (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0 < stor8 * stor4[address(msg.sender)] / stor28 / _tTotal
                    require (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0 >= 0
                    _748 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_748] = 30
                    mem[_748 + 32] = 'SafeMath: subtraction overflow'
                    if withdrawnDividendOf[address(msg.sender)].field_0 > Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128:
                        _759 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _759 + 68] = mem[idx + _748 + 32]
                            idx = idx + 32
                            continue 
                        mem[_759 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _759 + -mem[64] + 100
                    if Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128 < withdrawnDividendOf[address(msg.sender)].field_0:
                        revert with 0, 17
                    if not (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
                    if withdrawnDividendOf[address(msg.sender)].field_0 > !((Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0):
                        revert with 0, 17
                    if Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128 < withdrawnDividendOf[address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = msg.sender
                    mem[32] = 10
                    withdrawnDividendOf[address(msg.sender)].field_0 = Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128
                    withdrawnDividendOf[address(msg.sender)].field_128 = 0
                    emit DividendWithdrawn(((Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0), msg.sender);
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0
                    require ext_code.size(rewardTokenAddress)
                    call rewardTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _918 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_918] == bool(mem[_918])
                    if mem[_918]:
                        if (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
                            lastClaimTimes[address(msg.sender)] = block.timestamp
                            emit Claim(((Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0), msg.sender, 0);
                    mem[0] = msg.sender
                    mem[32] = 10
                    _1018 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1018] = 30
                    mem[_1018 + 32] = 'SafeMath: subtraction overflow'
                    if (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0 <= withdrawnDividendOf[address(msg.sender)].field_0:
                        if withdrawnDividendOf[address(msg.sender)].field_0 < (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
                            revert with 0, 17
                        withdrawnDividendOf[address(msg.sender)].field_0 = (2 * withdrawnDividendOf[address(msg.sender)].field_0) - (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128)
                    _1043 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1043 + 68] = mem[idx + _1018 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1043 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1043 + -mem[64] + 100
                if (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0 >= stor8 * stor4[address(msg.sender)] / stor28 / _tTotal:
                    require (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0 >= 0
                    _747 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_747] = 30
                    mem[_747 + 32] = 'SafeMath: subtraction overflow'
                    if withdrawnDividendOf[address(msg.sender)].field_0 > Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128:
                        _753 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _753 + 68] = mem[idx + _747 + 32]
                            idx = idx + 32
                            continue 
                        mem[_753 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _753 + -mem[64] + 100
                    if Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128 < withdrawnDividendOf[address(msg.sender)].field_0:
                        revert with 0, 17
                    if not (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
                    if withdrawnDividendOf[address(msg.sender)].field_0 > !((Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0):
                        revert with 0, 17
                    if Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128 < withdrawnDividendOf[address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = msg.sender
                    mem[32] = 10
                    withdrawnDividendOf[address(msg.sender)].field_0 = Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128
                    withdrawnDividendOf[address(msg.sender)].field_128 = 0
                    emit DividendWithdrawn(((Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0), msg.sender);
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0
                    require ext_code.size(rewardTokenAddress)
                    call rewardTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _907 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_907] == bool(mem[_907])
                    if mem[_907]:
                        if (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
                            lastClaimTimes[address(msg.sender)] = block.timestamp
                            emit Claim(((Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0), msg.sender, 0);
                    mem[0] = msg.sender
                    mem[32] = 10
                    _1011 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1011] = 30
                    mem[_1011 + 32] = 'SafeMath: subtraction overflow'
                    if (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0 <= withdrawnDividendOf[address(msg.sender)].field_0:
                        if withdrawnDividendOf[address(msg.sender)].field_0 < (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
                            revert with 0, 17
                        withdrawnDividendOf[address(msg.sender)].field_0 = (2 * withdrawnDividendOf[address(msg.sender)].field_0) - (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128)
                    _1035 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1035 + 68] = mem[idx + _1011 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1035 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1035 + -mem[64] + 100
                require stor9[address(msg.sender)].field_0 < 0
                require (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0 < stor8 * stor4[address(msg.sender)] / stor28 / _tTotal
                require (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0 >= 0
                _754 = mem[64]
                mem[64] = mem[64] + 64
                mem[_754] = 30
                mem[_754 + 32] = 'SafeMath: subtraction overflow'
                if withdrawnDividendOf[address(msg.sender)].field_0 > Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128:
                    _765 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _765 + 68] = mem[idx + _754 + 32]
                        idx = idx + 32
                        continue 
                    mem[_765 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _765 + -mem[64] + 100
                if Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128 < withdrawnDividendOf[address(msg.sender)].field_0:
                    revert with 0, 17
                if not (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
                if withdrawnDividendOf[address(msg.sender)].field_0 > !((Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0):
                    revert with 0, 17
                if Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128 < withdrawnDividendOf[address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = msg.sender
                mem[32] = 10
                withdrawnDividendOf[address(msg.sender)].field_0 = Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128
                withdrawnDividendOf[address(msg.sender)].field_128 = 0
                emit DividendWithdrawn(((Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0), msg.sender);
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0
                require ext_code.size(rewardTokenAddress)
                call rewardTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _931 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_931] == bool(mem[_931])
                if mem[_931]:
                    if (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
                        lastClaimTimes[address(msg.sender)] = block.timestamp
                        emit Claim(((Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0), msg.sender, 0);
                mem[0] = msg.sender
                mem[32] = 10
                _1036 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1036] = 30
                mem[_1036 + 32] = 'SafeMath: subtraction overflow'
                if (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0 <= withdrawnDividendOf[address(msg.sender)].field_0:
                    if withdrawnDividendOf[address(msg.sender)].field_0 < (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
                        revert with 0, 17
                    withdrawnDividendOf[address(msg.sender)].field_0 = (2 * withdrawnDividendOf[address(msg.sender)].field_0) - (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128)
                _1055 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1055 + 68] = mem[idx + _1036 + 32]
                    idx = idx + 32
                    continue 
                mem[_1055 + 98] = 0
                revert with memory
                  from mem[64]
                   len _1055 + -mem[64] + 100
            if idx >= stor24.length:
                revert with 0, 50
            mem[0] = stor24[idx]
            mem[32] = 5
            if stor5[stor24[idx]] <= s:
                if idx >= stor24.length:
                    revert with 0, 50
                mem[0] = stor24[idx]
                mem[32] = 4
                _668 = mem[64]
                mem[64] = mem[64] + 64
                mem[_668] = 30
                mem[_668 + 32] = 'SafeMath: subtraction overflow'
                if stor4[stor24[idx]] > t:
                    _673 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _673 + 68] = mem[idx + _668 + 32]
                        idx = idx + 32
                        continue 
                    mem[_673 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _673 + -mem[64] + 100
                if t < stor4[stor24[idx]]:
                    revert with 0, 17
                if idx >= stor24.length:
                    revert with 0, 50
                mem[0] = stor24[idx]
                mem[32] = 5
                _698 = mem[64]
                mem[64] = mem[64] + 64
                mem[_698] = 30
                mem[_698 + 32] = 'SafeMath: subtraction overflow'
                if stor5[stor24[idx]] <= s:
                    if s < stor5[stor24[idx]]:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s - stor5[stor24[idx]]
                    t = t - stor4[stor24[idx]]
                    continue 
                _703 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _703 + 68] = mem[idx + _698 + 32]
                    idx = idx + 32
                    continue 
                mem[_703 + 98] = 0
                revert with memory
                  from mem[64]
                   len _703 + -mem[64] + 100
            _669 = mem[64]
            mem[64] = mem[64] + 64
            mem[_669] = 26
            mem[_669 + 32] = 'SafeMath: division by zero'
            if not _tTotal:
                _674 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _674 + 68] = mem[idx + _669 + 32]
                    idx = idx + 32
                    continue 
                mem[_674 + 94] = 0
                revert with memory
                  from mem[64]
                   len _674 + -mem[64] + 100
            _699 = mem[64]
            mem[64] = mem[64] + 64
            mem[_699] = 26
            mem[_699 + 32] = 'SafeMath: division by zero'
            if not stor28 / _tTotal:
                _704 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _704 + 68] = mem[idx + _699 + 32]
                    idx = idx + 32
                    continue 
                mem[_704 + 94] = 0
                revert with memory
                  from mem[64]
                   len _704 + -mem[64] + 100
            if not stor8:
                if stor9[address(msg.sender)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                require stor9[address(msg.sender)].field_0 >= 0
                _740 = mem[64]
                mem[64] = mem[64] + 64
                mem[_740] = 30
                mem[_740 + 32] = 'SafeMath: subtraction overflow'
                if withdrawnDividendOf[address(msg.sender)].field_0 > stor9[address(msg.sender)].field_128:
                    _742 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _742 + 68] = mem[idx + _740 + 32]
                        idx = idx + 32
                        continue 
                    mem[_742 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _742 + -mem[64] + 100
                if stor9[address(msg.sender)].field_128 < withdrawnDividendOf[address(msg.sender)].field_0:
                    revert with 0, 17
                if not stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0:
                if withdrawnDividendOf[address(msg.sender)].field_0 > !(stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0):
                    revert with 0, 17
                if stor9[address(msg.sender)].field_128 < withdrawnDividendOf[address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = msg.sender
                mem[32] = 10
                withdrawnDividendOf[address(msg.sender)].field_0 = stor9[address(msg.sender)].field_128
                emit DividendWithdrawn((stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0), msg.sender);
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0
                require ext_code.size(rewardTokenAddress)
                call rewardTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _857 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_857] == bool(mem[_857])
                if mem[_857]:
                    if stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0:
                        lastClaimTimes[address(msg.sender)] = block.timestamp
                        emit Claim((stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0), msg.sender, 0);
                mem[0] = msg.sender
                mem[32] = 10
                _969 = mem[64]
                mem[64] = mem[64] + 64
                mem[_969] = 30
                mem[_969 + 32] = 'SafeMath: subtraction overflow'
                if stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0 <= withdrawnDividendOf[address(msg.sender)].field_0:
                    if withdrawnDividendOf[address(msg.sender)].field_0 < stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0:
                        revert with 0, 17
                    withdrawnDividendOf[address(msg.sender)].field_0 = (2 * withdrawnDividendOf[address(msg.sender)].field_0) - stor9[address(msg.sender)].field_128
                _996 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _996 + 68] = mem[idx + _969 + 32]
                    idx = idx + 32
                    continue 
                mem[_996 + 98] = 0
                revert with memory
                  from mem[64]
                   len _996 + -mem[64] + 100
            if stor8 and stor4[address(msg.sender)] / stor28 / _tTotal > -1 / stor8:
                revert with 0, 17
            if not stor8:
                revert with 0, 18
            if stor8 * stor4[address(msg.sender)] / stor28 / _tTotal / stor8 != stor4[address(msg.sender)] / stor28 / _tTotal:
                revert with 0, 'SafeMath: multiplication overflow'
            require stor8 * stor4[address(msg.sender)] / stor28 / _tTotal >= 0
            if stor9[address(msg.sender)].field_0 > (-1 * stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor8 * stor4[address(msg.sender)] / stor28 / _tTotal >= 0:
                revert with 0, 17
            if stor8 * stor4[address(msg.sender)] / stor28 / _tTotal < 0 and stor9[address(msg.sender)].field_0 < (-1 * stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            if stor9[address(msg.sender)].field_0 < 0:
                require (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0 < stor8 * stor4[address(msg.sender)] / stor28 / _tTotal
                require (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0 >= 0
                _762 = mem[64]
                mem[64] = mem[64] + 64
                mem[_762] = 30
                mem[_762 + 32] = 'SafeMath: subtraction overflow'
                if withdrawnDividendOf[address(msg.sender)].field_0 > Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128:
                    _773 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _773 + 68] = mem[idx + _762 + 32]
                        idx = idx + 32
                        continue 
                    mem[_773 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _773 + -mem[64] + 100
                if Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128 < withdrawnDividendOf[address(msg.sender)].field_0:
                    revert with 0, 17
                if not (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
                if withdrawnDividendOf[address(msg.sender)].field_0 > !((Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0):
                    revert with 0, 17
                if Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128 < withdrawnDividendOf[address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = msg.sender
                mem[32] = 10
                withdrawnDividendOf[address(msg.sender)].field_0 = Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128
                withdrawnDividendOf[address(msg.sender)].field_128 = 0
                emit DividendWithdrawn(((Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0), msg.sender);
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0
                require ext_code.size(rewardTokenAddress)
                call rewardTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _948 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_948] == bool(mem[_948])
                if mem[_948]:
                    if (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
                        lastClaimTimes[address(msg.sender)] = block.timestamp
                        emit Claim(((Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0), msg.sender, 0);
                mem[0] = msg.sender
                mem[32] = 10
                _1047 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1047] = 30
                mem[_1047 + 32] = 'SafeMath: subtraction overflow'
                if (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0 <= withdrawnDividendOf[address(msg.sender)].field_0:
                    if withdrawnDividendOf[address(msg.sender)].field_0 < (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
                        revert with 0, 17
                    withdrawnDividendOf[address(msg.sender)].field_0 = (2 * withdrawnDividendOf[address(msg.sender)].field_0) - (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128)
                _1069 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1069 + 68] = mem[idx + _1047 + 32]
                    idx = idx + 32
                    continue 
                mem[_1069 + 98] = 0
                revert with memory
                  from mem[64]
                   len _1069 + -mem[64] + 100
            if (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0 >= stor8 * stor4[address(msg.sender)] / stor28 / _tTotal:
                require (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0 >= 0
                _756 = mem[64]
                mem[64] = mem[64] + 64
                mem[_756] = 30
                mem[_756 + 32] = 'SafeMath: subtraction overflow'
                if withdrawnDividendOf[address(msg.sender)].field_0 > Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128:
                    _766 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _766 + 68] = mem[idx + _756 + 32]
                        idx = idx + 32
                        continue 
                    mem[_766 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _766 + -mem[64] + 100
                if Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128 < withdrawnDividendOf[address(msg.sender)].field_0:
                    revert with 0, 17
                if not (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
                if withdrawnDividendOf[address(msg.sender)].field_0 > !((Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0):
                    revert with 0, 17
                if Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128 < withdrawnDividendOf[address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = msg.sender
                mem[32] = 10
                withdrawnDividendOf[address(msg.sender)].field_0 = Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128
                withdrawnDividendOf[address(msg.sender)].field_128 = 0
                emit DividendWithdrawn(((Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0), msg.sender);
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0
                require ext_code.size(rewardTokenAddress)
                call rewardTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _933 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_933] == bool(mem[_933])
                if mem[_933]:
                    if (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
                        lastClaimTimes[address(msg.sender)] = block.timestamp
                        emit Claim(((Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0), msg.sender, 0);
                mem[0] = msg.sender
                mem[32] = 10
                _1039 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1039] = 30
                mem[_1039 + 32] = 'SafeMath: subtraction overflow'
                if (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0 <= withdrawnDividendOf[address(msg.sender)].field_0:
                    if withdrawnDividendOf[address(msg.sender)].field_0 < (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
                        revert with 0, 17
                    withdrawnDividendOf[address(msg.sender)].field_0 = (2 * withdrawnDividendOf[address(msg.sender)].field_0) - (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128)
                _1059 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1059 + 68] = mem[idx + _1039 + 32]
                    idx = idx + 32
                    continue 
                mem[_1059 + 98] = 0
                revert with memory
                  from mem[64]
                   len _1059 + -mem[64] + 100
            require stor9[address(msg.sender)].field_0 < 0
            require (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0 < stor8 * stor4[address(msg.sender)] / stor28 / _tTotal
            require (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0 >= 0
            _767 = mem[64]
            mem[64] = mem[64] + 64
            mem[_767] = 30
            mem[_767 + 32] = 'SafeMath: subtraction overflow'
            if withdrawnDividendOf[address(msg.sender)].field_0 > Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128:
                _780 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _780 + 68] = mem[idx + _767 + 32]
                    idx = idx + 32
                    continue 
                mem[_780 + 98] = 0
                revert with memory
                  from mem[64]
                   len _780 + -mem[64] + 100
            if Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128 < withdrawnDividendOf[address(msg.sender)].field_0:
                revert with 0, 17
            if not (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
            if withdrawnDividendOf[address(msg.sender)].field_0 > !((Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0):
                revert with 0, 17
            if Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128 < withdrawnDividendOf[address(msg.sender)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = msg.sender
            mem[32] = 10
            withdrawnDividendOf[address(msg.sender)].field_0 = Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128
            withdrawnDividendOf[address(msg.sender)].field_128 = 0
            emit DividendWithdrawn(((Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0), msg.sender);
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0
            require ext_code.size(rewardTokenAddress)
            call rewardTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _968 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_968] == bool(mem[_968])
            if mem[_968]:
                if (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
                    lastClaimTimes[address(msg.sender)] = block.timestamp
                    emit Claim(((Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0), msg.sender, 0);
            mem[0] = msg.sender
            mem[32] = 10
            _1060 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1060] = 30
            mem[_1060 + 32] = 'SafeMath: subtraction overflow'
            if (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0 <= withdrawnDividendOf[address(msg.sender)].field_0:
                if withdrawnDividendOf[address(msg.sender)].field_0 < (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
                    revert with 0, 17
                withdrawnDividendOf[address(msg.sender)].field_0 = (2 * withdrawnDividendOf[address(msg.sender)].field_0) - (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128)
            _1080 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _1080 + 68] = mem[idx + _1060 + 32]
                idx = idx + 32
                continue 
            mem[_1080 + 98] = 0
            revert with memory
              from mem[64]
               len _1080 + -mem[64] + 100
        _640 = mem[64]
        mem[64] = mem[64] + 64
        mem[_640] = 26
        mem[_640 + 32] = 'SafeMath: division by zero'
        if not _tTotal:
            revert with 0, 'SafeMath: division by zero', 0
        if t >= stor28 / _tTotal:
            _678 = mem[64]
            mem[64] = mem[64] + 64
            mem[_678] = 26
            mem[_678 + 32] = 'SafeMath: division by zero'
            if not s:
                revert with 0, 'SafeMath: division by zero', 0
            _710 = mem[64]
            mem[64] = mem[64] + 64
            mem[_710] = 26
            mem[_710 + 32] = 'SafeMath: division by zero'
            if not t / s:
                revert with 0, 'SafeMath: division by zero', 0
            if not stor8:
                if stor9[address(msg.sender)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                require stor9[address(msg.sender)].field_0 >= 0
                _745 = mem[64]
                mem[64] = mem[64] + 64
                mem[_745] = 30
                mem[_745 + 32] = 'SafeMath: subtraction overflow'
                if withdrawnDividendOf[address(msg.sender)].field_0 > stor9[address(msg.sender)].field_128:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor9[address(msg.sender)].field_128 < withdrawnDividendOf[address(msg.sender)].field_0:
                    revert with 0, 17
                if stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0:
                    if withdrawnDividendOf[address(msg.sender)].field_0 > !(stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0):
                        revert with 0, 17
                    if stor9[address(msg.sender)].field_128 < withdrawnDividendOf[address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = msg.sender
                    mem[32] = 10
                    withdrawnDividendOf[address(msg.sender)].field_0 = stor9[address(msg.sender)].field_128
                    emit DividendWithdrawn((stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0), msg.sender);
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0
                    require ext_code.size(rewardTokenAddress)
                    call rewardTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _905 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_905] == bool(mem[_905])
                    if mem[_905]:
                        if stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0:
                            lastClaimTimes[address(msg.sender)] = block.timestamp
                            emit Claim((stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0), msg.sender, 0);
                    else:
                        if stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0 > withdrawnDividendOf[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if withdrawnDividendOf[address(msg.sender)].field_0 < stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0:
                            revert with 0, 17
                        withdrawnDividendOf[address(msg.sender)].field_0 = (2 * withdrawnDividendOf[address(msg.sender)].field_0) - stor9[address(msg.sender)].field_128
            else:
                if stor8 and stor4[address(msg.sender)] / t / s > -1 / stor8:
                    revert with 0, 17
                if not stor8:
                    revert with 0, 18
                if stor8 * stor4[address(msg.sender)] / t / s / stor8 != stor4[address(msg.sender)] / t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                require stor8 * stor4[address(msg.sender)] / t / s >= 0
                if stor9[address(msg.sender)].field_0 > (-1 * stor8 * stor4[address(msg.sender)] / t / s) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor8 * stor4[address(msg.sender)] / t / s >= 0:
                    revert with 0, 17
                if stor8 * stor4[address(msg.sender)] / t / s < 0 and stor9[address(msg.sender)].field_0 < (-1 * stor8 * stor4[address(msg.sender)] / t / s) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                if stor9[address(msg.sender)].field_0 < 0:
                    require (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0 < stor8 * stor4[address(msg.sender)] / t / s
                    require (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0 >= 0
                    _781 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_781] = 30
                    mem[_781 + 32] = 'SafeMath: subtraction overflow'
                    if withdrawnDividendOf[address(msg.sender)].field_0 > Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128 < withdrawnDividendOf[address(msg.sender)].field_0:
                        revert with 0, 17
                    if (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
                        if withdrawnDividendOf[address(msg.sender)].field_0 > !((Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0):
                            revert with 0, 17
                        if Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128 < withdrawnDividendOf[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = msg.sender
                        mem[32] = 10
                        withdrawnDividendOf[address(msg.sender)].field_0 = Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128
                        withdrawnDividendOf[address(msg.sender)].field_128 = 0
                        emit DividendWithdrawn(((Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0), msg.sender);
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _997 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_997] == bool(mem[_997])
                        if mem[_997]:
                            if (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
                                lastClaimTimes[address(msg.sender)] = block.timestamp
                                emit Claim(((Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0), msg.sender, 0);
                        else:
                            if (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0 > withdrawnDividendOf[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if withdrawnDividendOf[address(msg.sender)].field_0 < (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
                                revert with 0, 17
                            withdrawnDividendOf[address(msg.sender)].field_0 = (2 * withdrawnDividendOf[address(msg.sender)].field_0) - (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128)
                else:
                    if (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0 >= stor8 * stor4[address(msg.sender)] / t / s:
                        require (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0 >= 0
                        _776 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_776] = 30
                        mem[_776 + 32] = 'SafeMath: subtraction overflow'
                        if withdrawnDividendOf[address(msg.sender)].field_0 > Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128 < withdrawnDividendOf[address(msg.sender)].field_0:
                            revert with 0, 17
                        if (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
                            if withdrawnDividendOf[address(msg.sender)].field_0 > !((Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0):
                                revert with 0, 17
                            if Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128 < withdrawnDividendOf[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = msg.sender
                            mem[32] = 10
                            withdrawnDividendOf[address(msg.sender)].field_0 = Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128
                            withdrawnDividendOf[address(msg.sender)].field_128 = 0
                            emit DividendWithdrawn(((Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0), msg.sender);
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _986 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_986] == bool(mem[_986])
                            if mem[_986]:
                                if (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
                                    lastClaimTimes[address(msg.sender)] = block.timestamp
                                    emit Claim(((Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0), msg.sender, 0);
                            else:
                                if (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0 > withdrawnDividendOf[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if withdrawnDividendOf[address(msg.sender)].field_0 < (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
                                    revert with 0, 17
                                withdrawnDividendOf[address(msg.sender)].field_0 = (2 * withdrawnDividendOf[address(msg.sender)].field_0) - (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128)
                    else:
                        require stor9[address(msg.sender)].field_0 < 0
                        require (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0 < stor8 * stor4[address(msg.sender)] / t / s
                        require (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0 >= 0
                        _790 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_790] = 30
                        mem[_790 + 32] = 'SafeMath: subtraction overflow'
                        if withdrawnDividendOf[address(msg.sender)].field_0 > Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128 < withdrawnDividendOf[address(msg.sender)].field_0:
                            revert with 0, 17
                        if (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
                            if withdrawnDividendOf[address(msg.sender)].field_0 > !((Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0):
                                revert with 0, 17
                            if Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128 < withdrawnDividendOf[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = msg.sender
                            mem[32] = 10
                            withdrawnDividendOf[address(msg.sender)].field_0 = Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128
                            withdrawnDividendOf[address(msg.sender)].field_128 = 0
                            emit DividendWithdrawn(((Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0), msg.sender);
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1005 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1005] == bool(mem[_1005])
                            if mem[_1005]:
                                if (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
                                    lastClaimTimes[address(msg.sender)] = block.timestamp
                                    emit Claim(((Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0), msg.sender, 0);
                            else:
                                if (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0 > withdrawnDividendOf[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if withdrawnDividendOf[address(msg.sender)].field_0 < (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
                                    revert with 0, 17
                                withdrawnDividendOf[address(msg.sender)].field_0 = (2 * withdrawnDividendOf[address(msg.sender)].field_0) - (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / t / s) + stor9[address(msg.sender)].field_0) >> 128)
        else:
            _679 = mem[64]
            mem[64] = mem[64] + 64
            mem[_679] = 26
            mem[_679 + 32] = 'SafeMath: division by zero'
            if not _tTotal:
                revert with 0, 'SafeMath: division by zero', 0
            _711 = mem[64]
            mem[64] = mem[64] + 64
            mem[_711] = 26
            mem[_711 + 32] = 'SafeMath: division by zero'
            if not stor28 / _tTotal:
                revert with 0, 'SafeMath: division by zero', 0
            if not stor8:
                if stor9[address(msg.sender)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                require stor9[address(msg.sender)].field_0 >= 0
                _746 = mem[64]
                mem[64] = mem[64] + 64
                mem[_746] = 30
                mem[_746 + 32] = 'SafeMath: subtraction overflow'
                if withdrawnDividendOf[address(msg.sender)].field_0 > stor9[address(msg.sender)].field_128:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor9[address(msg.sender)].field_128 < withdrawnDividendOf[address(msg.sender)].field_0:
                    revert with 0, 17
                if stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0:
                    if withdrawnDividendOf[address(msg.sender)].field_0 > !(stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0):
                        revert with 0, 17
                    if stor9[address(msg.sender)].field_128 < withdrawnDividendOf[address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = msg.sender
                    mem[32] = 10
                    withdrawnDividendOf[address(msg.sender)].field_0 = stor9[address(msg.sender)].field_128
                    emit DividendWithdrawn((stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0), msg.sender);
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0
                    require ext_code.size(rewardTokenAddress)
                    call rewardTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _906 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_906] == bool(mem[_906])
                    if mem[_906]:
                        if stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0:
                            lastClaimTimes[address(msg.sender)] = block.timestamp
                            emit Claim((stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0), msg.sender, 0);
                    else:
                        if stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0 > withdrawnDividendOf[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if withdrawnDividendOf[address(msg.sender)].field_0 < stor9[address(msg.sender)].field_128 - withdrawnDividendOf[address(msg.sender)].field_0:
                            revert with 0, 17
                        withdrawnDividendOf[address(msg.sender)].field_0 = (2 * withdrawnDividendOf[address(msg.sender)].field_0) - stor9[address(msg.sender)].field_128
            else:
                if stor8 and stor4[address(msg.sender)] / stor28 / _tTotal > -1 / stor8:
                    revert with 0, 17
                if not stor8:
                    revert with 0, 18
                if stor8 * stor4[address(msg.sender)] / stor28 / _tTotal / stor8 != stor4[address(msg.sender)] / stor28 / _tTotal:
                    revert with 0, 'SafeMath: multiplication overflow'
                require stor8 * stor4[address(msg.sender)] / stor28 / _tTotal >= 0
                if stor9[address(msg.sender)].field_0 > (-1 * stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor8 * stor4[address(msg.sender)] / stor28 / _tTotal >= 0:
                    revert with 0, 17
                if stor8 * stor4[address(msg.sender)] / stor28 / _tTotal < 0 and stor9[address(msg.sender)].field_0 < (-1 * stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                if stor9[address(msg.sender)].field_0 < 0:
                    require (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0 < stor8 * stor4[address(msg.sender)] / stor28 / _tTotal
                    require (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0 >= 0
                    _783 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_783] = 30
                    mem[_783 + 32] = 'SafeMath: subtraction overflow'
                    if withdrawnDividendOf[address(msg.sender)].field_0 > Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128 < withdrawnDividendOf[address(msg.sender)].field_0:
                        revert with 0, 17
                    if (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
                        if withdrawnDividendOf[address(msg.sender)].field_0 > !((Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0):
                            revert with 0, 17
                        if Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128 < withdrawnDividendOf[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = msg.sender
                        mem[32] = 10
                        withdrawnDividendOf[address(msg.sender)].field_0 = Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128
                        withdrawnDividendOf[address(msg.sender)].field_128 = 0
                        emit DividendWithdrawn(((Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0), msg.sender);
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _999 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_999] == bool(mem[_999])
                        if mem[_999]:
                            if (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
                                lastClaimTimes[address(msg.sender)] = block.timestamp
                                emit Claim(((Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0), msg.sender, 0);
                        else:
                            if (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0 > withdrawnDividendOf[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if withdrawnDividendOf[address(msg.sender)].field_0 < (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
                                revert with 0, 17
                            withdrawnDividendOf[address(msg.sender)].field_0 = (2 * withdrawnDividendOf[address(msg.sender)].field_0) - (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128)
                else:
                    if (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0 >= stor8 * stor4[address(msg.sender)] / stor28 / _tTotal:
                        require (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0 >= 0
                        _777 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_777] = 30
                        mem[_777 + 32] = 'SafeMath: subtraction overflow'
                        if withdrawnDividendOf[address(msg.sender)].field_0 > Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128 < withdrawnDividendOf[address(msg.sender)].field_0:
                            revert with 0, 17
                        if (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
                            if withdrawnDividendOf[address(msg.sender)].field_0 > !((Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0):
                                revert with 0, 17
                            if Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128 < withdrawnDividendOf[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = msg.sender
                            mem[32] = 10
                            withdrawnDividendOf[address(msg.sender)].field_0 = Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128
                            withdrawnDividendOf[address(msg.sender)].field_128 = 0
                            emit DividendWithdrawn(((Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0), msg.sender);
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _990 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_990] == bool(mem[_990])
                            if mem[_990]:
                                if (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
                                    lastClaimTimes[address(msg.sender)] = block.timestamp
                                    emit Claim(((Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0), msg.sender, 0);
                            else:
                                if (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0 > withdrawnDividendOf[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if withdrawnDividendOf[address(msg.sender)].field_0 < (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
                                    revert with 0, 17
                                withdrawnDividendOf[address(msg.sender)].field_0 = (2 * withdrawnDividendOf[address(msg.sender)].field_0) - (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128)
                    else:
                        require stor9[address(msg.sender)].field_0 < 0
                        require (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0 < stor8 * stor4[address(msg.sender)] / stor28 / _tTotal
                        require (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0 >= 0
                        _793 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_793] = 30
                        mem[_793 + 32] = 'SafeMath: subtraction overflow'
                        if withdrawnDividendOf[address(msg.sender)].field_0 > Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128 < withdrawnDividendOf[address(msg.sender)].field_0:
                            revert with 0, 17
                        if (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
                            if withdrawnDividendOf[address(msg.sender)].field_0 > !((Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0):
                                revert with 0, 17
                            if Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128 < withdrawnDividendOf[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = msg.sender
                            mem[32] = 10
                            withdrawnDividendOf[address(msg.sender)].field_0 = Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128
                            withdrawnDividendOf[address(msg.sender)].field_128 = 0
                            emit DividendWithdrawn(((Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0), msg.sender);
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1008 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1008] == bool(mem[_1008])
                            if mem[_1008]:
                                if (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
                                    lastClaimTimes[address(msg.sender)] = block.timestamp
                                    emit Claim(((Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0), msg.sender, 0);
                            else:
                                if (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0 > withdrawnDividendOf[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if withdrawnDividendOf[address(msg.sender)].field_0 < (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128) - withdrawnDividendOf[address(msg.sender)].field_0:
                                    revert with 0, 17
                                withdrawnDividendOf[address(msg.sender)].field_0 = (2 * withdrawnDividendOf[address(msg.sender)].field_0) - (Mask(128, 128, (stor8 * stor4[address(msg.sender)] / stor28 / _tTotal) + stor9[address(msg.sender)].field_0) >> 128)
}

function deliver(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[0] = msg.sender
    mem[32] = 23
    if stor23[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Excluded addresses cannot call this function'
    if not arg1:
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if _liquidityFee > -_burnFee + 255:
            revert with 0, 17
        if uint8(_burnFee + _liquidityFee) > -_walletFee + 255:
            revert with 0, 17
        if uint8(_walletFee + uint8(_burnFee + _liquidityFee)) > -_buybackFee + 255:
            revert with 0, 17
        if uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) > -sub_0f94892c + 255:
            revert with 0, 17
        if uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee)))) > -_rewardFee + 255:
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
            t = stor28
            while idx < stor24.length:
                mem[0] = stor24[idx]
                mem[32] = 4
                if stor4[stor24[idx]] > t:
                    _2247 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2247] = 26
                    mem[_2247 + 32] = 'SafeMath: division by zero'
                    if not _tTotal:
                        _2269 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2269 + 68] = mem[idx + _2247 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2269 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2269 + -mem[64] + 100
                    if not arg1:
                        _2437 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2437] = 30
                        mem[_2437 + 32] = 'SafeMath: subtraction overflow'
                        _2518 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2518] = 30
                        mem[_2518 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 4
                        _2775 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2775] = 30
                        mem[_2775 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor4[address(msg.sender)]:
                            _2876 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2876 + 68] = mem[idx + _2775 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2876 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2876 + -mem[64] + 100
                        if stor4[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 4
                        _3169 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3169] = 30
                        mem[_3169 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor28:
                            if stor28 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3275 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3275 + 68] = mem[idx + _3169 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3275 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3275 + -mem[64] + 100
                    if arg1 and stor28 / _tTotal > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor28 / _tTotal / arg1 != stor28 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2491 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2491] = 30
                    mem[_2491 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor28 / _tTotal:
                        _2517 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2517 + 68] = mem[idx + _2491 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2517 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2517 + -mem[64] + 100
                    if arg1 * stor28 / _tTotal < 0:
                        revert with 0, 17
                    _2653 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2653] = 30
                    mem[_2653 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor28 / _tTotal:
                        _2709 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2709 + 68] = mem[idx + _2653 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2709 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2709 + -mem[64] + 100
                    if arg1 * stor28 / _tTotal < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 4
                    _3056 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3056] = 30
                    mem[_3056 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor28 / _tTotal > stor4[address(msg.sender)]:
                        _3168 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3168 + 68] = mem[idx + _3056 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3168 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3168 + -mem[64] + 100
                    if stor4[address(msg.sender)] < arg1 * stor28 / _tTotal:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 4
                    stor4[address(msg.sender)] += -1 * arg1 * stor28 / _tTotal
                    _3504 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3504] = 30
                    mem[_3504 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor28 / _tTotal <= stor28:
                        if stor28 < arg1 * stor28 / _tTotal:
                            revert with 0, 17
                        stor28 += -1 * arg1 * stor28 / _tTotal
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _3613 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3613 + 68] = mem[idx + _3504 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3613 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3613 + -mem[64] + 100
                if idx >= stor24.length:
                    revert with 0, 50
                mem[0] = stor24[idx]
                mem[32] = 5
                if stor5[stor24[idx]] <= s:
                    if idx >= stor24.length:
                        revert with 0, 50
                    mem[0] = stor24[idx]
                    mem[32] = 4
                    _2270 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2270] = 30
                    mem[_2270 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor24[idx]] > t:
                        _2290 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2290 + 68] = mem[idx + _2270 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2290 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2290 + -mem[64] + 100
                    if t < stor4[stor24[idx]]:
                        revert with 0, 17
                    if idx >= stor24.length:
                        revert with 0, 50
                    mem[0] = stor24[idx]
                    mem[32] = 5
                    _2379 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2379] = 30
                    mem[_2379 + 32] = 'SafeMath: subtraction overflow'
                    if stor5[stor24[idx]] <= s:
                        if s < stor5[stor24[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor5[stor24[idx]]
                        t = t - stor4[stor24[idx]]
                        continue 
                    _2391 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2391 + 68] = mem[idx + _2379 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2391 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2391 + -mem[64] + 100
                _2271 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2271] = 26
                mem[_2271 + 32] = 'SafeMath: division by zero'
                if not _tTotal:
                    _2291 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2291 + 68] = mem[idx + _2271 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2291 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2291 + -mem[64] + 100
                if not arg1:
                    _2453 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2453] = 30
                    mem[_2453 + 32] = 'SafeMath: subtraction overflow'
                    _2544 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2544] = 30
                    mem[_2544 + 32] = 'SafeMath: subtraction overflow'
                    mem[0] = msg.sender
                    mem[32] = 4
                    _2877 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2877] = 30
                    mem[_2877 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor4[address(msg.sender)]:
                        _2959 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2959 + 68] = mem[idx + _2877 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2959 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2959 + -mem[64] + 100
                    if stor4[address(msg.sender)] < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 4
                    _3277 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3277] = 30
                    mem[_3277 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor28:
                        if stor28 < 0:
                            revert with 0, 17
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _3376 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3376 + 68] = mem[idx + _3277 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3376 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3376 + -mem[64] + 100
                if arg1 and stor28 / _tTotal > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor28 / _tTotal / arg1 != stor28 / _tTotal:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2519 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2519] = 30
                mem[_2519 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor28 / _tTotal:
                    _2543 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2543 + 68] = mem[idx + _2519 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2543 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2543 + -mem[64] + 100
                if arg1 * stor28 / _tTotal < 0:
                    revert with 0, 17
                _2710 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2710] = 30
                mem[_2710 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor28 / _tTotal:
                    _2776 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2776 + 68] = mem[idx + _2710 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2776 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2776 + -mem[64] + 100
                if arg1 * stor28 / _tTotal < 0:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 4
                _3171 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3171] = 30
                mem[_3171 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor28 / _tTotal > stor4[address(msg.sender)]:
                    _3276 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3276 + 68] = mem[idx + _3171 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3276 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3276 + -mem[64] + 100
                if stor4[address(msg.sender)] < arg1 * stor28 / _tTotal:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 4
                stor4[address(msg.sender)] += -1 * arg1 * stor28 / _tTotal
                _3615 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3615] = 30
                mem[_3615 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor28 / _tTotal <= stor28:
                    if stor28 < arg1 * stor28 / _tTotal:
                        revert with 0, 17
                    stor28 += -1 * arg1 * stor28 / _tTotal
                    if totalFees > !arg1:
                        revert with 0, 17
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _3699 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3699 + 68] = mem[idx + _3615 + 32]
                    idx = idx + 32
                    continue 
                mem[_3699 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3699 + -mem[64] + 100
            if not _tTotal:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor28 / _tTotal:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if 0 > stor4[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor4[address(msg.sender)] < 0:
                        revert with 0, 17
                    if 0 > stor28:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor28 < 0:
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
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if arg1 * t / s > stor4[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor4[address(msg.sender)] < arg1 * t / s:
                        revert with 0, 17
                    stor4[address(msg.sender)] += -1 * arg1 * t / s
                    if arg1 * t / s > stor28:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor28 < arg1 * t / s:
                        revert with 0, 17
                    stor28 += -1 * arg1 * t / s
            else:
                if not _tTotal:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if 0 > stor4[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor4[address(msg.sender)] < 0:
                        revert with 0, 17
                    if 0 > stor28:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor28 < 0:
                        revert with 0, 17
                else:
                    if arg1 and stor28 / _tTotal > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor28 / _tTotal / arg1 != stor28 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * stor28 / _tTotal:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor28 / _tTotal < 0:
                        revert with 0, 17
                    if 0 > arg1 * stor28 / _tTotal:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor28 / _tTotal < 0:
                        revert with 0, 17
                    if arg1 * stor28 / _tTotal > stor4[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor4[address(msg.sender)] < arg1 * stor28 / _tTotal:
                        revert with 0, 17
                    stor4[address(msg.sender)] += -1 * arg1 * stor28 / _tTotal
                    if arg1 * stor28 / _tTotal > stor28:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor28 < arg1 * stor28 / _tTotal:
                        revert with 0, 17
                    stor28 += -1 * arg1 * stor28 / _tTotal
        else:
            if arg1 and uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / arg1 != uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))):
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
            if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                revert with 0, 17
            idx = 0
            s = _tTotal
            t = stor28
            while idx < stor24.length:
                mem[0] = stor24[idx]
                mem[32] = 4
                if stor4[stor24[idx]] > t:
                    _2246 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2246] = 26
                    mem[_2246 + 32] = 'SafeMath: division by zero'
                    if not _tTotal:
                        _2266 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2266 + 68] = mem[idx + _2246 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2266 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2266 + -mem[64] + 100
                    if not arg1:
                        if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                            _2436 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2436] = 30
                            mem[_2436 + 32] = 'SafeMath: subtraction overflow'
                            _2514 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2514] = 30
                            mem[_2514 + 32] = 'SafeMath: subtraction overflow'
                            mem[0] = msg.sender
                            mem[32] = 4
                            _2772 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2772] = 30
                            mem[_2772 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor4[address(msg.sender)]:
                                _2870 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2870 + 68] = mem[idx + _2772 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2870 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2870 + -mem[64] + 100
                            if stor4[address(msg.sender)] < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 4
                            _3162 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3162] = 30
                            mem[_3162 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor28:
                                if stor28 < 0:
                                    revert with 0, 17
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _3268 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3268 + 68] = mem[idx + _3162 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3268 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3268 + -mem[64] + 100
                        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and stor28 / _tTotal > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                            revert with 0, 17
                        if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                            revert with 0, 18
                        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != stor28 / _tTotal:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2487 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2487] = 30
                        mem[_2487 + 32] = 'SafeMath: subtraction overflow'
                        _2647 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2647] = 30
                        mem[_2647 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal > 0:
                            _2704 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2704 + 68] = mem[idx + _2647 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2704 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2704 + -mem[64] + 100
                        if 0 < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 4
                        _3050 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3050] = 30
                        mem[_3050 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor4[address(msg.sender)]:
                            _3161 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3161 + 68] = mem[idx + _3050 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3161 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3161 + -mem[64] + 100
                        if stor4[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 4
                        _3495 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3495] = 30
                        mem[_3495 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor28:
                            if stor28 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3604 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3604 + 68] = mem[idx + _3495 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3604 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3604 + -mem[64] + 100
                    if arg1 and stor28 / _tTotal > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor28 / _tTotal / arg1 != stor28 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        _2486 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2486] = 30
                        mem[_2486 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor28 / _tTotal:
                            _2513 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2513 + 68] = mem[idx + _2486 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2513 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2513 + -mem[64] + 100
                        if arg1 * stor28 / _tTotal < 0:
                            revert with 0, 17
                        _2645 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2645] = 30
                        mem[_2645 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor28 / _tTotal:
                            _2703 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2703 + 68] = mem[idx + _2645 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2703 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2703 + -mem[64] + 100
                        if arg1 * stor28 / _tTotal < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 4
                        _3049 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3049] = 30
                        mem[_3049 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor28 / _tTotal > stor4[address(msg.sender)]:
                            _3160 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3160 + 68] = mem[idx + _3049 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3160 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3160 + -mem[64] + 100
                        if stor4[address(msg.sender)] < arg1 * stor28 / _tTotal:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 4
                        stor4[address(msg.sender)] += -1 * arg1 * stor28 / _tTotal
                        _3493 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3493] = 30
                        mem[_3493 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor28 / _tTotal <= stor28:
                            if stor28 < arg1 * stor28 / _tTotal:
                                revert with 0, 17
                            stor28 += -1 * arg1 * stor28 / _tTotal
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3603 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3603 + 68] = mem[idx + _3493 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3603 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3603 + -mem[64] + 100
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and stor28 / _tTotal > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        revert with 0, 17
                    if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        revert with 0, 18
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != stor28 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2588 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2588] = 30
                    mem[_2588 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor28 / _tTotal:
                        _2644 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2644 + 68] = mem[idx + _2588 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2644 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2644 + -mem[64] + 100
                    if arg1 * stor28 / _tTotal < 0:
                        revert with 0, 17
                    _2868 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2868] = 30
                    mem[_2868 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal > arg1 * stor28 / _tTotal:
                        _2950 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2950 + 68] = mem[idx + _2868 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2950 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2950 + -mem[64] + 100
                    if arg1 * stor28 / _tTotal < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 4
                    _3371 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3371] = 30
                    mem[_3371 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor28 / _tTotal > stor4[address(msg.sender)]:
                        _3492 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3492 + 68] = mem[idx + _3371 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3492 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3492 + -mem[64] + 100
                    if stor4[address(msg.sender)] < arg1 * stor28 / _tTotal:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 4
                    stor4[address(msg.sender)] += -1 * arg1 * stor28 / _tTotal
                    _3825 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3825] = 30
                    mem[_3825 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor28 / _tTotal <= stor28:
                        if stor28 < arg1 * stor28 / _tTotal:
                            revert with 0, 17
                        stor28 += -1 * arg1 * stor28 / _tTotal
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _3926 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3926 + 68] = mem[idx + _3825 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3926 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3926 + -mem[64] + 100
                if idx >= stor24.length:
                    revert with 0, 50
                mem[0] = stor24[idx]
                mem[32] = 5
                if stor5[stor24[idx]] <= s:
                    if idx >= stor24.length:
                        revert with 0, 50
                    mem[0] = stor24[idx]
                    mem[32] = 4
                    _2267 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2267] = 30
                    mem[_2267 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor24[idx]] > t:
                        _2287 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2287 + 68] = mem[idx + _2267 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2287 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2287 + -mem[64] + 100
                    if t < stor4[stor24[idx]]:
                        revert with 0, 17
                    if idx >= stor24.length:
                        revert with 0, 50
                    mem[0] = stor24[idx]
                    mem[32] = 5
                    _2376 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2376] = 30
                    mem[_2376 + 32] = 'SafeMath: subtraction overflow'
                    if stor5[stor24[idx]] <= s:
                        if s < stor5[stor24[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor5[stor24[idx]]
                        t = t - stor4[stor24[idx]]
                        continue 
                    _2388 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2388 + 68] = mem[idx + _2376 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2388 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2388 + -mem[64] + 100
                _2268 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2268] = 26
                mem[_2268 + 32] = 'SafeMath: division by zero'
                if not _tTotal:
                    _2288 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2288 + 68] = mem[idx + _2268 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2288 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2288 + -mem[64] + 100
                if not arg1:
                    if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        _2450 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2450] = 30
                        mem[_2450 + 32] = 'SafeMath: subtraction overflow'
                        _2542 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2542] = 30
                        mem[_2542 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 4
                        _2871 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2871] = 30
                        mem[_2871 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor4[address(msg.sender)]:
                            _2955 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2955 + 68] = mem[idx + _2871 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2955 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2955 + -mem[64] + 100
                        if stor4[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 4
                        _3271 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3271] = 30
                        mem[_3271 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor28:
                            if stor28 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3373 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3373 + 68] = mem[idx + _3271 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3373 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3373 + -mem[64] + 100
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and stor28 / _tTotal > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        revert with 0, 17
                    if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        revert with 0, 18
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != stor28 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2516 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2516] = 30
                    mem[_2516 + 32] = 'SafeMath: subtraction overflow'
                    _2708 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2708] = 30
                    mem[_2708 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal > 0:
                        _2774 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2774 + 68] = mem[idx + _2708 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2774 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2774 + -mem[64] + 100
                    if 0 < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 4
                    _3165 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3165] = 30
                    mem[_3165 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor4[address(msg.sender)]:
                        _3270 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3270 + 68] = mem[idx + _3165 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3270 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3270 + -mem[64] + 100
                    if stor4[address(msg.sender)] < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 4
                    _3609 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3609] = 30
                    mem[_3609 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor28:
                        if stor28 < 0:
                            revert with 0, 17
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _3697 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3697 + 68] = mem[idx + _3609 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3697 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3697 + -mem[64] + 100
                if arg1 and stor28 / _tTotal > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor28 / _tTotal / arg1 != stor28 / _tTotal:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                    _2515 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2515] = 30
                    mem[_2515 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor28 / _tTotal:
                        _2541 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2541 + 68] = mem[idx + _2515 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2541 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2541 + -mem[64] + 100
                    if arg1 * stor28 / _tTotal < 0:
                        revert with 0, 17
                    _2706 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2706] = 30
                    mem[_2706 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor28 / _tTotal:
                        _2773 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2773 + 68] = mem[idx + _2706 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2773 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2773 + -mem[64] + 100
                    if arg1 * stor28 / _tTotal < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 4
                    _3164 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3164] = 30
                    mem[_3164 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor28 / _tTotal > stor4[address(msg.sender)]:
                        _3269 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3269 + 68] = mem[idx + _3164 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3269 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3269 + -mem[64] + 100
                    if stor4[address(msg.sender)] < arg1 * stor28 / _tTotal:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 4
                    stor4[address(msg.sender)] += -1 * arg1 * stor28 / _tTotal
                    _3607 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3607] = 30
                    mem[_3607 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor28 / _tTotal <= stor28:
                        if stor28 < arg1 * stor28 / _tTotal:
                            revert with 0, 17
                        stor28 += -1 * arg1 * stor28 / _tTotal
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _3696 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3696 + 68] = mem[idx + _3607 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3696 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3696 + -mem[64] + 100
                if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and stor28 / _tTotal > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                    revert with 0, 17
                if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                    revert with 0, 18
                if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != stor28 / _tTotal:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2648 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2648] = 30
                mem[_2648 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor28 / _tTotal:
                    _2705 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2705 + 68] = mem[idx + _2648 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2705 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2705 + -mem[64] + 100
                if arg1 * stor28 / _tTotal < 0:
                    revert with 0, 17
                _2953 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2953] = 30
                mem[_2953 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal > arg1 * stor28 / _tTotal:
                    _3051 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3051 + 68] = mem[idx + _2953 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3051 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3051 + -mem[64] + 100
                if arg1 * stor28 / _tTotal < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 4
                _3497 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3497] = 30
                mem[_3497 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor28 / _tTotal > stor4[address(msg.sender)]:
                    _3606 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3606 + 68] = mem[idx + _3497 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3606 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3606 + -mem[64] + 100
                if stor4[address(msg.sender)] < arg1 * stor28 / _tTotal:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 4
                stor4[address(msg.sender)] += -1 * arg1 * stor28 / _tTotal
                _3929 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3929] = 30
                mem[_3929 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor28 / _tTotal <= stor28:
                    if stor28 < arg1 * stor28 / _tTotal:
                        revert with 0, 17
                    stor28 += -1 * arg1 * stor28 / _tTotal
                    if totalFees > !arg1:
                        revert with 0, 17
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _3996 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3996 + 68] = mem[idx + _3929 + 32]
                    idx = idx + 32
                    continue 
                mem[_3996 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3996 + -mem[64] + 100
            if not _tTotal:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor28 / _tTotal:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and t / s > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                            revert with 0, 17
                        if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                            revert with 0, 18
                        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * t / s / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * t / s:
                            revert with 0, 17
                    if 0 > stor4[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor4[address(msg.sender)] < 0:
                        revert with 0, 17
                    if 0 > stor28:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor28 < 0:
                        revert with 0, 17
                else:
                    if arg1 and t / s > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                    else:
                        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and t / s > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                            revert with 0, 17
                        if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                            revert with 0, 18
                        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * t / s / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * t / s:
                            revert with 0, 17
                    if arg1 * t / s > stor4[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor4[address(msg.sender)] < arg1 * t / s:
                        revert with 0, 17
                    stor4[address(msg.sender)] += -1 * arg1 * t / s
                    if arg1 * t / s > stor28:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor28 < arg1 * t / s:
                        revert with 0, 17
                    stor28 += -1 * arg1 * t / s
            else:
                if not _tTotal:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and stor28 / _tTotal > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                            revert with 0, 17
                        if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                            revert with 0, 18
                        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != stor28 / _tTotal:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal:
                            revert with 0, 17
                    if 0 > stor4[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor4[address(msg.sender)] < 0:
                        revert with 0, 17
                    if 0 > stor28:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor28 < 0:
                        revert with 0, 17
                else:
                    if arg1 and stor28 / _tTotal > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor28 / _tTotal / arg1 != stor28 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        if 0 > arg1 * stor28 / _tTotal:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor28 / _tTotal < 0:
                            revert with 0, 17
                        if 0 > arg1 * stor28 / _tTotal:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor28 / _tTotal < 0:
                            revert with 0, 17
                    else:
                        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and stor28 / _tTotal > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                            revert with 0, 17
                        if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                            revert with 0, 18
                        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != stor28 / _tTotal:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > arg1 * stor28 / _tTotal:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor28 / _tTotal < 0:
                            revert with 0, 17
                        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal > arg1 * stor28 / _tTotal:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor28 / _tTotal < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal:
                            revert with 0, 17
                    if arg1 * stor28 / _tTotal > stor4[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor4[address(msg.sender)] < arg1 * stor28 / _tTotal:
                        revert with 0, 17
                    stor4[address(msg.sender)] += -1 * arg1 * stor28 / _tTotal
                    if arg1 * stor28 / _tTotal > stor28:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor28 < arg1 * stor28 / _tTotal:
                        revert with 0, 17
                    stor28 += -1 * arg1 * stor28 / _tTotal
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
        if uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) > -sub_0f94892c + 255:
            revert with 0, 17
        if uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee)))) > -_rewardFee + 255:
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
            t = stor28
            while idx < stor24.length:
                mem[0] = stor24[idx]
                mem[32] = 4
                if stor4[stor24[idx]] > t:
                    _2245 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2245] = 26
                    mem[_2245 + 32] = 'SafeMath: division by zero'
                    if not _tTotal:
                        _2263 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2263 + 68] = mem[idx + _2245 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2263 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2263 + -mem[64] + 100
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            _2435 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2435] = 30
                            mem[_2435 + 32] = 'SafeMath: subtraction overflow'
                            _2509 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2509] = 30
                            mem[_2509 + 32] = 'SafeMath: subtraction overflow'
                            mem[0] = msg.sender
                            mem[32] = 4
                            _2767 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2767] = 30
                            mem[_2767 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor4[address(msg.sender)]:
                                _2858 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2858 + 68] = mem[idx + _2767 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2858 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2858 + -mem[64] + 100
                            if stor4[address(msg.sender)] < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 4
                            _3150 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3150] = 30
                            mem[_3150 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor28:
                                if stor28 < 0:
                                    revert with 0, 17
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _3256 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3256 + 68] = mem[idx + _3150 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3256 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3256 + -mem[64] + 100
                        if arg1 * _taxFee / 100 and stor28 / _tTotal > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * stor28 / _tTotal / arg1 * _taxFee / 100 != stor28 / _tTotal:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2483 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2483] = 30
                        mem[_2483 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor28 / _tTotal > 0:
                            _2508 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2508 + 68] = mem[idx + _2483 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2508 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2508 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 100 * stor28 / _tTotal:
                            revert with 0, 17
                        _2637 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2637] = 30
                        mem[_2637 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * _taxFee / 100 * stor28 / _tTotal:
                            _2695 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2695 + 68] = mem[idx + _2637 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2695 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2695 + -mem[64] + 100
                        if -1 * arg1 * _taxFee / 100 * stor28 / _tTotal < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 4
                        _3043 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3043] = 30
                        mem[_3043 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor4[address(msg.sender)]:
                            _3149 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3149 + 68] = mem[idx + _3043 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3149 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3149 + -mem[64] + 100
                        if stor4[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 4
                        _3481 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3481] = 30
                        mem[_3481 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor28:
                            if stor28 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3592 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3592 + 68] = mem[idx + _3481 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3592 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3592 + -mem[64] + 100
                    if arg1 and stor28 / _tTotal > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor28 / _tTotal / arg1 != stor28 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        _2482 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2482] = 30
                        mem[_2482 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor28 / _tTotal:
                            _2507 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2507 + 68] = mem[idx + _2482 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2507 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2507 + -mem[64] + 100
                        if arg1 * stor28 / _tTotal < 0:
                            revert with 0, 17
                        _2635 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2635] = 30
                        mem[_2635 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor28 / _tTotal:
                            _2694 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2694 + 68] = mem[idx + _2635 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2694 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2694 + -mem[64] + 100
                        if arg1 * stor28 / _tTotal < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 4
                        _3042 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3042] = 30
                        mem[_3042 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor28 / _tTotal > stor4[address(msg.sender)]:
                            _3148 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3148 + 68] = mem[idx + _3042 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3148 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3148 + -mem[64] + 100
                        if stor4[address(msg.sender)] < arg1 * stor28 / _tTotal:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 4
                        stor4[address(msg.sender)] += -1 * arg1 * stor28 / _tTotal
                        _3479 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3479] = 30
                        mem[_3479 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor28 / _tTotal <= stor28:
                            if stor28 < arg1 * stor28 / _tTotal:
                                revert with 0, 17
                            stor28 += -1 * arg1 * stor28 / _tTotal
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3591 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3591 + 68] = mem[idx + _3479 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3591 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3591 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor28 / _tTotal > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor28 / _tTotal / arg1 * _taxFee / 100 != stor28 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2583 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2583] = 30
                    mem[_2583 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor28 / _tTotal > arg1 * stor28 / _tTotal:
                        _2634 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2634 + 68] = mem[idx + _2583 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2634 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2634 + -mem[64] + 100
                    if arg1 * stor28 / _tTotal < arg1 * _taxFee / 100 * stor28 / _tTotal:
                        revert with 0, 17
                    _2856 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2856] = 30
                    mem[_2856 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor28 / _tTotal) - (arg1 * _taxFee / 100 * stor28 / _tTotal):
                        _2940 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2940 + 68] = mem[idx + _2856 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2940 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2940 + -mem[64] + 100
                    if (arg1 * stor28 / _tTotal) - (arg1 * _taxFee / 100 * stor28 / _tTotal) < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 4
                    _3364 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3364] = 30
                    mem[_3364 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor28 / _tTotal > stor4[address(msg.sender)]:
                        _3478 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3478 + 68] = mem[idx + _3364 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3478 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3478 + -mem[64] + 100
                    if stor4[address(msg.sender)] < arg1 * stor28 / _tTotal:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 4
                    stor4[address(msg.sender)] += -1 * arg1 * stor28 / _tTotal
                    _3812 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3812] = 30
                    mem[_3812 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor28 / _tTotal <= stor28:
                        if stor28 < arg1 * stor28 / _tTotal:
                            revert with 0, 17
                        stor28 += -1 * arg1 * stor28 / _tTotal
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _3914 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3914 + 68] = mem[idx + _3812 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3914 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3914 + -mem[64] + 100
                if idx >= stor24.length:
                    revert with 0, 50
                mem[0] = stor24[idx]
                mem[32] = 5
                if stor5[stor24[idx]] <= s:
                    if idx >= stor24.length:
                        revert with 0, 50
                    mem[0] = stor24[idx]
                    mem[32] = 4
                    _2264 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2264] = 30
                    mem[_2264 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor24[idx]] > t:
                        _2284 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2284 + 68] = mem[idx + _2264 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2284 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2284 + -mem[64] + 100
                    if t < stor4[stor24[idx]]:
                        revert with 0, 17
                    if idx >= stor24.length:
                        revert with 0, 50
                    mem[0] = stor24[idx]
                    mem[32] = 5
                    _2373 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2373] = 30
                    mem[_2373 + 32] = 'SafeMath: subtraction overflow'
                    if stor5[stor24[idx]] <= s:
                        if s < stor5[stor24[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor5[stor24[idx]]
                        t = t - stor4[stor24[idx]]
                        continue 
                    _2385 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2385 + 68] = mem[idx + _2373 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2385 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2385 + -mem[64] + 100
                _2265 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2265] = 26
                mem[_2265 + 32] = 'SafeMath: division by zero'
                if not _tTotal:
                    _2285 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2285 + 68] = mem[idx + _2265 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2285 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2285 + -mem[64] + 100
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        _2447 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2447] = 30
                        mem[_2447 + 32] = 'SafeMath: subtraction overflow'
                        _2537 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2537] = 30
                        mem[_2537 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 4
                        _2859 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2859] = 30
                        mem[_2859 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor4[address(msg.sender)]:
                            _2945 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2945 + 68] = mem[idx + _2859 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2945 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2945 + -mem[64] + 100
                        if stor4[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 4
                        _3259 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3259] = 30
                        mem[_3259 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor28:
                            if stor28 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3366 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3366 + 68] = mem[idx + _3259 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3366 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3366 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor28 / _tTotal > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor28 / _tTotal / arg1 * _taxFee / 100 != stor28 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2512 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2512] = 30
                    mem[_2512 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor28 / _tTotal > 0:
                        _2536 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2536 + 68] = mem[idx + _2512 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2536 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2536 + -mem[64] + 100
                    if 0 < arg1 * _taxFee / 100 * stor28 / _tTotal:
                        revert with 0, 17
                    _2699 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2699] = 30
                    mem[_2699 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > -1 * arg1 * _taxFee / 100 * stor28 / _tTotal:
                        _2769 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2769 + 68] = mem[idx + _2699 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2769 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2769 + -mem[64] + 100
                    if -1 * arg1 * _taxFee / 100 * stor28 / _tTotal < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 4
                    _3153 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3153] = 30
                    mem[_3153 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor4[address(msg.sender)]:
                        _3258 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3258 + 68] = mem[idx + _3153 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3258 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3258 + -mem[64] + 100
                    if stor4[address(msg.sender)] < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 4
                    _3597 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3597] = 30
                    mem[_3597 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor28:
                        if stor28 < 0:
                            revert with 0, 17
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _3692 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3692 + 68] = mem[idx + _3597 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3692 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3692 + -mem[64] + 100
                if arg1 and stor28 / _tTotal > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor28 / _tTotal / arg1 != stor28 / _tTotal:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    _2511 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2511] = 30
                    mem[_2511 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor28 / _tTotal:
                        _2535 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2535 + 68] = mem[idx + _2511 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2535 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2535 + -mem[64] + 100
                    if arg1 * stor28 / _tTotal < 0:
                        revert with 0, 17
                    _2697 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2697] = 30
                    mem[_2697 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor28 / _tTotal:
                        _2768 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2768 + 68] = mem[idx + _2697 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2768 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2768 + -mem[64] + 100
                    if arg1 * stor28 / _tTotal < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 4
                    _3152 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3152] = 30
                    mem[_3152 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor28 / _tTotal > stor4[address(msg.sender)]:
                        _3257 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3257 + 68] = mem[idx + _3152 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3257 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3257 + -mem[64] + 100
                    if stor4[address(msg.sender)] < arg1 * stor28 / _tTotal:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 4
                    stor4[address(msg.sender)] += -1 * arg1 * stor28 / _tTotal
                    _3595 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3595] = 30
                    mem[_3595 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor28 / _tTotal <= stor28:
                        if stor28 < arg1 * stor28 / _tTotal:
                            revert with 0, 17
                        stor28 += -1 * arg1 * stor28 / _tTotal
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _3691 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3691 + 68] = mem[idx + _3595 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3691 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3691 + -mem[64] + 100
                if arg1 * _taxFee / 100 and stor28 / _tTotal > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * stor28 / _tTotal / arg1 * _taxFee / 100 != stor28 / _tTotal:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2639 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2639] = 30
                mem[_2639 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor28 / _tTotal > arg1 * stor28 / _tTotal:
                    _2696 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2696 + 68] = mem[idx + _2639 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2696 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2696 + -mem[64] + 100
                if arg1 * stor28 / _tTotal < arg1 * _taxFee / 100 * stor28 / _tTotal:
                    revert with 0, 17
                _2943 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2943] = 30
                mem[_2943 + 32] = 'SafeMath: subtraction overflow'
                if 0 > (arg1 * stor28 / _tTotal) - (arg1 * _taxFee / 100 * stor28 / _tTotal):
                    _3044 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3044 + 68] = mem[idx + _2943 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3044 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3044 + -mem[64] + 100
                if (arg1 * stor28 / _tTotal) - (arg1 * _taxFee / 100 * stor28 / _tTotal) < 0:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 4
                _3483 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3483] = 30
                mem[_3483 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor28 / _tTotal > stor4[address(msg.sender)]:
                    _3594 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3594 + 68] = mem[idx + _3483 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3594 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3594 + -mem[64] + 100
                if stor4[address(msg.sender)] < arg1 * stor28 / _tTotal:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 4
                stor4[address(msg.sender)] += -1 * arg1 * stor28 / _tTotal
                _3917 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3917] = 30
                mem[_3917 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor28 / _tTotal <= stor28:
                    if stor28 < arg1 * stor28 / _tTotal:
                        revert with 0, 17
                    stor28 += -1 * arg1 * stor28 / _tTotal
                    if totalFees > !arg1:
                        revert with 0, 17
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _3993 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3993 + 68] = mem[idx + _3917 + 32]
                    idx = idx + 32
                    continue 
                mem[_3993 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3993 + -mem[64] + 100
            if not _tTotal:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor28 / _tTotal:
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
                    if 0 > stor4[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor4[address(msg.sender)] < 0:
                        revert with 0, 17
                    if 0 > stor28:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor28 < 0:
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
                    if arg1 * t / s > stor4[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor4[address(msg.sender)] < arg1 * t / s:
                        revert with 0, 17
                    stor4[address(msg.sender)] += -1 * arg1 * t / s
                    if arg1 * t / s > stor28:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor28 < arg1 * t / s:
                        revert with 0, 17
                    stor28 += -1 * arg1 * t / s
            else:
                if not _tTotal:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if arg1 * _taxFee / 100:
                        if arg1 * _taxFee / 100 and stor28 / _tTotal > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * stor28 / _tTotal / arg1 * _taxFee / 100 != stor28 / _tTotal:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _taxFee / 100 * stor28 / _tTotal > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _taxFee / 100 * stor28 / _tTotal:
                            revert with 0, 17
                        if 0 > -1 * arg1 * _taxFee / 100 * stor28 / _tTotal:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * _taxFee / 100 * stor28 / _tTotal < 0:
                            revert with 0, 17
                    if 0 > stor4[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor4[address(msg.sender)] < 0:
                        revert with 0, 17
                    if 0 > stor28:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor28 < 0:
                        revert with 0, 17
                else:
                    if arg1 and stor28 / _tTotal > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor28 / _tTotal / arg1 != stor28 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        if 0 > arg1 * stor28 / _tTotal:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor28 / _tTotal < 0:
                            revert with 0, 17
                        if 0 > arg1 * stor28 / _tTotal:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor28 / _tTotal < 0:
                            revert with 0, 17
                    else:
                        if arg1 * _taxFee / 100 and stor28 / _tTotal > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * stor28 / _tTotal / arg1 * _taxFee / 100 != stor28 / _tTotal:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _taxFee / 100 * stor28 / _tTotal > arg1 * stor28 / _tTotal:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor28 / _tTotal < arg1 * _taxFee / 100 * stor28 / _tTotal:
                            revert with 0, 17
                        if 0 > (arg1 * stor28 / _tTotal) - (arg1 * _taxFee / 100 * stor28 / _tTotal):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * stor28 / _tTotal) - (arg1 * _taxFee / 100 * stor28 / _tTotal) < 0:
                            revert with 0, 17
                    if arg1 * stor28 / _tTotal > stor4[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor4[address(msg.sender)] < arg1 * stor28 / _tTotal:
                        revert with 0, 17
                    stor4[address(msg.sender)] += -1 * arg1 * stor28 / _tTotal
                    if arg1 * stor28 / _tTotal > stor28:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor28 < arg1 * stor28 / _tTotal:
                        revert with 0, 17
                    stor28 += -1 * arg1 * stor28 / _tTotal
        else:
            if arg1 and uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / arg1 != uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))):
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
            if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 > arg1 - (arg1 * _taxFee / 100):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (arg1 * _taxFee / 100) < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                revert with 0, 17
            idx = 0
            s = _tTotal
            t = stor28
            while idx < stor24.length:
                mem[0] = stor24[idx]
                mem[32] = 4
                if stor4[stor24[idx]] > t:
                    _2244 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2244] = 26
                    mem[_2244 + 32] = 'SafeMath: division by zero'
                    if not _tTotal:
                        _2260 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2260 + 68] = mem[idx + _2244 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2260 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2260 + -mem[64] + 100
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                                _2433 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2433] = 30
                                mem[_2433 + 32] = 'SafeMath: subtraction overflow'
                                _2502 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2502] = 30
                                mem[_2502 + 32] = 'SafeMath: subtraction overflow'
                                mem[0] = msg.sender
                                mem[32] = 4
                                _2760 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2760] = 30
                                mem[_2760 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > stor4[address(msg.sender)]:
                                    _2843 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _2843 + 68] = mem[idx + _2760 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2843 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2843 + -mem[64] + 100
                                if stor4[address(msg.sender)] < 0:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 4
                                _3137 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3137] = 30
                                mem[_3137 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor28:
                                    if stor28 < 0:
                                        revert with 0, 17
                                    if totalFees > !arg1:
                                        revert with 0, 17
                                    if totalFees + arg1 < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees += arg1
                                _3241 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _3241 + 68] = mem[idx + _3137 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3241 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _3241 + -mem[64] + 100
                            if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and stor28 / _tTotal > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                                revert with 0, 17
                            if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                                revert with 0, 18
                            if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != stor28 / _tTotal:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _2475 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2475] = 30
                            mem[_2475 + 32] = 'SafeMath: subtraction overflow'
                            _2624 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2624] = 30
                            mem[_2624 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal > 0:
                                _2685 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2685 + 68] = mem[idx + _2624 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2685 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2685 + -mem[64] + 100
                            if 0 < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 4
                            _3033 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3033] = 30
                            mem[_3033 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor4[address(msg.sender)]:
                                _3136 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _3136 + 68] = mem[idx + _3033 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3136 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _3136 + -mem[64] + 100
                            if stor4[address(msg.sender)] < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 4
                            _3465 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3465] = 30
                            mem[_3465 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor28:
                                if stor28 < 0:
                                    revert with 0, 17
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _3576 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3576 + 68] = mem[idx + _3465 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3576 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3576 + -mem[64] + 100
                        if arg1 * _taxFee / 100 and stor28 / _tTotal > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * stor28 / _tTotal / arg1 * _taxFee / 100 != stor28 / _tTotal:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                            _2474 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2474] = 30
                            mem[_2474 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _taxFee / 100 * stor28 / _tTotal > 0:
                                _2501 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2501 + 68] = mem[idx + _2474 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2501 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2501 + -mem[64] + 100
                            if 0 < arg1 * _taxFee / 100 * stor28 / _tTotal:
                                revert with 0, 17
                            _2622 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2622] = 30
                            mem[_2622 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > -1 * arg1 * _taxFee / 100 * stor28 / _tTotal:
                                _2684 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2684 + 68] = mem[idx + _2622 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2684 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2684 + -mem[64] + 100
                            if -1 * arg1 * _taxFee / 100 * stor28 / _tTotal < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 4
                            _3032 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3032] = 30
                            mem[_3032 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor4[address(msg.sender)]:
                                _3135 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _3135 + 68] = mem[idx + _3032 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3135 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _3135 + -mem[64] + 100
                            if stor4[address(msg.sender)] < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 4
                            _3463 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3463] = 30
                            mem[_3463 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor28:
                                if stor28 < 0:
                                    revert with 0, 17
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _3575 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3575 + 68] = mem[idx + _3463 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3575 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3575 + -mem[64] + 100
                        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and stor28 / _tTotal > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                            revert with 0, 17
                        if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                            revert with 0, 18
                        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != stor28 / _tTotal:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2574 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2574] = 30
                        mem[_2574 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor28 / _tTotal > 0:
                            _2621 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2621 + 68] = mem[idx + _2574 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2621 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2621 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 100 * stor28 / _tTotal:
                            revert with 0, 17
                        _2841 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2841] = 30
                        mem[_2841 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal > -1 * arg1 * _taxFee / 100 * stor28 / _tTotal:
                            _2925 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2925 + 68] = mem[idx + _2841 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2925 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2925 + -mem[64] + 100
                        if -1 * arg1 * _taxFee / 100 * stor28 / _tTotal < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 4
                        _3354 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3354] = 30
                        mem[_3354 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor4[address(msg.sender)]:
                            _3462 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3462 + 68] = mem[idx + _3354 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3462 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3462 + -mem[64] + 100
                        if stor4[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 4
                        _3798 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3798] = 30
                        mem[_3798 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor28:
                            if stor28 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3897 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3897 + 68] = mem[idx + _3798 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3897 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3897 + -mem[64] + 100
                    if arg1 and stor28 / _tTotal > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor28 / _tTotal / arg1 != stor28 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                            _2473 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2473] = 30
                            mem[_2473 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor28 / _tTotal:
                                _2500 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2500 + 68] = mem[idx + _2473 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2500 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2500 + -mem[64] + 100
                            if arg1 * stor28 / _tTotal < 0:
                                revert with 0, 17
                            _2619 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2619] = 30
                            mem[_2619 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor28 / _tTotal:
                                _2683 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2683 + 68] = mem[idx + _2619 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2683 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2683 + -mem[64] + 100
                            if arg1 * stor28 / _tTotal < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 4
                            _3031 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3031] = 30
                            mem[_3031 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor28 / _tTotal > stor4[address(msg.sender)]:
                                _3134 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _3134 + 68] = mem[idx + _3031 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3134 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _3134 + -mem[64] + 100
                            if stor4[address(msg.sender)] < arg1 * stor28 / _tTotal:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 4
                            stor4[address(msg.sender)] += -1 * arg1 * stor28 / _tTotal
                            _3460 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3460] = 30
                            mem[_3460 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor28 / _tTotal <= stor28:
                                if stor28 < arg1 * stor28 / _tTotal:
                                    revert with 0, 17
                                stor28 += -1 * arg1 * stor28 / _tTotal
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _3574 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3574 + 68] = mem[idx + _3460 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3574 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3574 + -mem[64] + 100
                        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and stor28 / _tTotal > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                            revert with 0, 17
                        if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                            revert with 0, 18
                        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != stor28 / _tTotal:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2573 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2573] = 30
                        mem[_2573 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor28 / _tTotal:
                            _2618 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2618 + 68] = mem[idx + _2573 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2618 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2618 + -mem[64] + 100
                        if arg1 * stor28 / _tTotal < 0:
                            revert with 0, 17
                        _2839 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2839] = 30
                        mem[_2839 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal > arg1 * stor28 / _tTotal:
                            _2923 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2923 + 68] = mem[idx + _2839 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2923 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2923 + -mem[64] + 100
                        if arg1 * stor28 / _tTotal < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 4
                        _3353 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3353] = 30
                        mem[_3353 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor28 / _tTotal > stor4[address(msg.sender)]:
                            _3459 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3459 + 68] = mem[idx + _3353 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3459 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3459 + -mem[64] + 100
                        if stor4[address(msg.sender)] < arg1 * stor28 / _tTotal:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 4
                        stor4[address(msg.sender)] += -1 * arg1 * stor28 / _tTotal
                        _3796 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3796] = 30
                        mem[_3796 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor28 / _tTotal <= stor28:
                            if stor28 < arg1 * stor28 / _tTotal:
                                revert with 0, 17
                            stor28 += -1 * arg1 * stor28 / _tTotal
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3895 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3895 + 68] = mem[idx + _3796 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3895 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3895 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor28 / _tTotal > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor28 / _tTotal / arg1 * _taxFee / 100 != stor28 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        _2572 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2572] = 30
                        mem[_2572 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor28 / _tTotal > arg1 * stor28 / _tTotal:
                            _2617 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2617 + 68] = mem[idx + _2572 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2617 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2617 + -mem[64] + 100
                        if arg1 * stor28 / _tTotal < arg1 * _taxFee / 100 * stor28 / _tTotal:
                            revert with 0, 17
                        _2837 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2837] = 30
                        mem[_2837 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > (arg1 * stor28 / _tTotal) - (arg1 * _taxFee / 100 * stor28 / _tTotal):
                            _2922 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2922 + 68] = mem[idx + _2837 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2922 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2922 + -mem[64] + 100
                        if (arg1 * stor28 / _tTotal) - (arg1 * _taxFee / 100 * stor28 / _tTotal) < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 4
                        _3352 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3352] = 30
                        mem[_3352 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor28 / _tTotal > stor4[address(msg.sender)]:
                            _3458 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3458 + 68] = mem[idx + _3352 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3458 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3458 + -mem[64] + 100
                        if stor4[address(msg.sender)] < arg1 * stor28 / _tTotal:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 4
                        stor4[address(msg.sender)] += -1 * arg1 * stor28 / _tTotal
                        _3794 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3794] = 30
                        mem[_3794 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor28 / _tTotal <= stor28:
                            if stor28 < arg1 * stor28 / _tTotal:
                                revert with 0, 17
                            stor28 += -1 * arg1 * stor28 / _tTotal
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3894 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3894 + 68] = mem[idx + _3794 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3894 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3894 + -mem[64] + 100
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and stor28 / _tTotal > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        revert with 0, 17
                    if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        revert with 0, 18
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != stor28 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2759 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2759] = 30
                    mem[_2759 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor28 / _tTotal > arg1 * stor28 / _tTotal:
                        _2836 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2836 + 68] = mem[idx + _2759 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2836 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2836 + -mem[64] + 100
                    if arg1 * stor28 / _tTotal < arg1 * _taxFee / 100 * stor28 / _tTotal:
                        revert with 0, 17
                    _3132 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3132] = 30
                    mem[_3132 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal > (arg1 * stor28 / _tTotal) - (arg1 * _taxFee / 100 * stor28 / _tTotal):
                        _3237 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3237 + 68] = mem[idx + _3132 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3237 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3237 + -mem[64] + 100
                    if (arg1 * stor28 / _tTotal) - (arg1 * _taxFee / 100 * stor28 / _tTotal) < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 4
                    _3683 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3683] = 30
                    mem[_3683 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor28 / _tTotal > stor4[address(msg.sender)]:
                        _3793 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3793 + 68] = mem[idx + _3683 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3793 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3793 + -mem[64] + 100
                    if stor4[address(msg.sender)] < arg1 * stor28 / _tTotal:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 4
                    stor4[address(msg.sender)] += -1 * arg1 * stor28 / _tTotal
                    _4065 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4065] = 30
                    mem[_4065 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor28 / _tTotal <= stor28:
                        if stor28 < arg1 * stor28 / _tTotal:
                            revert with 0, 17
                        stor28 += -1 * arg1 * stor28 / _tTotal
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _4147 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4147 + 68] = mem[idx + _4065 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4147 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4147 + -mem[64] + 100
                if idx >= stor24.length:
                    revert with 0, 50
                mem[0] = stor24[idx]
                mem[32] = 5
                if stor5[stor24[idx]] <= s:
                    if idx >= stor24.length:
                        revert with 0, 50
                    mem[0] = stor24[idx]
                    mem[32] = 4
                    _2261 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2261] = 30
                    mem[_2261 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor24[idx]] > t:
                        _2281 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2281 + 68] = mem[idx + _2261 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2281 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2281 + -mem[64] + 100
                    if t < stor4[stor24[idx]]:
                        revert with 0, 17
                    if idx >= stor24.length:
                        revert with 0, 50
                    mem[0] = stor24[idx]
                    mem[32] = 5
                    _2370 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2370] = 30
                    mem[_2370 + 32] = 'SafeMath: subtraction overflow'
                    if stor5[stor24[idx]] <= s:
                        if s < stor5[stor24[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor5[stor24[idx]]
                        t = t - stor4[stor24[idx]]
                        continue 
                    _2382 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2382 + 68] = mem[idx + _2370 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2382 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2382 + -mem[64] + 100
                _2262 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2262] = 26
                mem[_2262 + 32] = 'SafeMath: division by zero'
                if not _tTotal:
                    _2282 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2282 + 68] = mem[idx + _2262 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2282 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2282 + -mem[64] + 100
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                            _2443 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2443] = 30
                            mem[_2443 + 32] = 'SafeMath: subtraction overflow'
                            _2534 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2534] = 30
                            mem[_2534 + 32] = 'SafeMath: subtraction overflow'
                            mem[0] = msg.sender
                            mem[32] = 4
                            _2845 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2845] = 30
                            mem[_2845 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor4[address(msg.sender)]:
                                _2935 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2935 + 68] = mem[idx + _2845 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2935 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2935 + -mem[64] + 100
                            if stor4[address(msg.sender)] < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 4
                            _3247 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3247] = 30
                            mem[_3247 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor28:
                                if stor28 < 0:
                                    revert with 0, 17
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _3359 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3359 + 68] = mem[idx + _3247 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3359 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3359 + -mem[64] + 100
                        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and stor28 / _tTotal > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                            revert with 0, 17
                        if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                            revert with 0, 18
                        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != stor28 / _tTotal:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2506 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2506] = 30
                        mem[_2506 + 32] = 'SafeMath: subtraction overflow'
                        _2693 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2693] = 30
                        mem[_2693 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal > 0:
                            _2764 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2764 + 68] = mem[idx + _2693 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2764 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2764 + -mem[64] + 100
                        if 0 < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 4
                        _3141 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3141] = 30
                        mem[_3141 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor4[address(msg.sender)]:
                            _3246 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3246 + 68] = mem[idx + _3141 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3246 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3246 + -mem[64] + 100
                        if stor4[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 4
                        _3585 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3585] = 30
                        mem[_3585 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor28:
                            if stor28 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3687 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3687 + 68] = mem[idx + _3585 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3687 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3687 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor28 / _tTotal > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor28 / _tTotal / arg1 * _taxFee / 100 != stor28 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        _2505 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2505] = 30
                        mem[_2505 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor28 / _tTotal > 0:
                            _2533 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2533 + 68] = mem[idx + _2505 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2533 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2533 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 100 * stor28 / _tTotal:
                            revert with 0, 17
                        _2691 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2691] = 30
                        mem[_2691 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * _taxFee / 100 * stor28 / _tTotal:
                            _2763 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2763 + 68] = mem[idx + _2691 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2763 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2763 + -mem[64] + 100
                        if -1 * arg1 * _taxFee / 100 * stor28 / _tTotal < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 4
                        _3140 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3140] = 30
                        mem[_3140 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor4[address(msg.sender)]:
                            _3245 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3245 + 68] = mem[idx + _3140 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3245 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3245 + -mem[64] + 100
                        if stor4[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 4
                        _3583 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3583] = 30
                        mem[_3583 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor28:
                            if stor28 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3686 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3686 + 68] = mem[idx + _3583 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3686 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3686 + -mem[64] + 100
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and stor28 / _tTotal > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        revert with 0, 17
                    if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        revert with 0, 18
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != stor28 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2627 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2627] = 30
                    mem[_2627 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor28 / _tTotal > 0:
                        _2690 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2690 + 68] = mem[idx + _2627 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2690 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2690 + -mem[64] + 100
                    if 0 < arg1 * _taxFee / 100 * stor28 / _tTotal:
                        revert with 0, 17
                    _2933 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2933] = 30
                    mem[_2933 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal > -1 * arg1 * _taxFee / 100 * stor28 / _tTotal:
                        _3037 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3037 + 68] = mem[idx + _2933 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3037 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3037 + -mem[64] + 100
                    if -1 * arg1 * _taxFee / 100 * stor28 / _tTotal < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 4
                    _3469 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3469] = 30
                    mem[_3469 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor4[address(msg.sender)]:
                        _3582 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3582 + 68] = mem[idx + _3469 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3582 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3582 + -mem[64] + 100
                    if stor4[address(msg.sender)] < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 4
                    _3905 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3905] = 30
                    mem[_3905 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor28:
                        if stor28 < 0:
                            revert with 0, 17
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _3990 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3990 + 68] = mem[idx + _3905 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3990 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3990 + -mem[64] + 100
                if arg1 and stor28 / _tTotal > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor28 / _tTotal / arg1 != stor28 / _tTotal:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        _2504 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2504] = 30
                        mem[_2504 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor28 / _tTotal:
                            _2532 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2532 + 68] = mem[idx + _2504 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2532 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2532 + -mem[64] + 100
                        if arg1 * stor28 / _tTotal < 0:
                            revert with 0, 17
                        _2688 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2688] = 30
                        mem[_2688 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor28 / _tTotal:
                            _2762 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2762 + 68] = mem[idx + _2688 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2762 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2762 + -mem[64] + 100
                        if arg1 * stor28 / _tTotal < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 4
                        _3139 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3139] = 30
                        mem[_3139 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor28 / _tTotal > stor4[address(msg.sender)]:
                            _3244 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3244 + 68] = mem[idx + _3139 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3244 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3244 + -mem[64] + 100
                        if stor4[address(msg.sender)] < arg1 * stor28 / _tTotal:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 4
                        stor4[address(msg.sender)] += -1 * arg1 * stor28 / _tTotal
                        _3580 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3580] = 30
                        mem[_3580 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor28 / _tTotal <= stor28:
                            if stor28 < arg1 * stor28 / _tTotal:
                                revert with 0, 17
                            stor28 += -1 * arg1 * stor28 / _tTotal
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3685 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3685 + 68] = mem[idx + _3580 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3685 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3685 + -mem[64] + 100
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and stor28 / _tTotal > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        revert with 0, 17
                    if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        revert with 0, 18
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != stor28 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2626 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2626] = 30
                    mem[_2626 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor28 / _tTotal:
                        _2687 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2687 + 68] = mem[idx + _2626 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2687 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2687 + -mem[64] + 100
                    if arg1 * stor28 / _tTotal < 0:
                        revert with 0, 17
                    _2931 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2931] = 30
                    mem[_2931 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal > arg1 * stor28 / _tTotal:
                        _3035 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3035 + 68] = mem[idx + _2931 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3035 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3035 + -mem[64] + 100
                    if arg1 * stor28 / _tTotal < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 4
                    _3468 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3468] = 30
                    mem[_3468 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor28 / _tTotal > stor4[address(msg.sender)]:
                        _3579 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3579 + 68] = mem[idx + _3468 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3579 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3579 + -mem[64] + 100
                    if stor4[address(msg.sender)] < arg1 * stor28 / _tTotal:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 4
                    stor4[address(msg.sender)] += -1 * arg1 * stor28 / _tTotal
                    _3903 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3903] = 30
                    mem[_3903 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor28 / _tTotal <= stor28:
                        if stor28 < arg1 * stor28 / _tTotal:
                            revert with 0, 17
                        stor28 += -1 * arg1 * stor28 / _tTotal
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _3988 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3988 + 68] = mem[idx + _3903 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3988 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3988 + -mem[64] + 100
                if arg1 * _taxFee / 100 and stor28 / _tTotal > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * stor28 / _tTotal / arg1 * _taxFee / 100 != stor28 / _tTotal:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                    _2625 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2625] = 30
                    mem[_2625 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor28 / _tTotal > arg1 * stor28 / _tTotal:
                        _2686 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2686 + 68] = mem[idx + _2625 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2686 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2686 + -mem[64] + 100
                    if arg1 * stor28 / _tTotal < arg1 * _taxFee / 100 * stor28 / _tTotal:
                        revert with 0, 17
                    _2929 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2929] = 30
                    mem[_2929 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor28 / _tTotal) - (arg1 * _taxFee / 100 * stor28 / _tTotal):
                        _3034 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3034 + 68] = mem[idx + _2929 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3034 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3034 + -mem[64] + 100
                    if (arg1 * stor28 / _tTotal) - (arg1 * _taxFee / 100 * stor28 / _tTotal) < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 4
                    _3467 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3467] = 30
                    mem[_3467 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor28 / _tTotal > stor4[address(msg.sender)]:
                        _3578 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3578 + 68] = mem[idx + _3467 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3578 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3578 + -mem[64] + 100
                    if stor4[address(msg.sender)] < arg1 * stor28 / _tTotal:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 4
                    stor4[address(msg.sender)] += -1 * arg1 * stor28 / _tTotal
                    _3901 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3901] = 30
                    mem[_3901 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor28 / _tTotal <= stor28:
                        if stor28 < arg1 * stor28 / _tTotal:
                            revert with 0, 17
                        stor28 += -1 * arg1 * stor28 / _tTotal
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _3987 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3987 + 68] = mem[idx + _3901 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3987 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3987 + -mem[64] + 100
                if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and stor28 / _tTotal > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                    revert with 0, 17
                if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                    revert with 0, 18
                if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != stor28 / _tTotal:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2844 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2844] = 30
                mem[_2844 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor28 / _tTotal > arg1 * stor28 / _tTotal:
                    _2928 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2928 + 68] = mem[idx + _2844 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2928 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2928 + -mem[64] + 100
                if arg1 * stor28 / _tTotal < arg1 * _taxFee / 100 * stor28 / _tTotal:
                    revert with 0, 17
                _3242 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3242] = 30
                mem[_3242 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal > (arg1 * stor28 / _tTotal) - (arg1 * _taxFee / 100 * stor28 / _tTotal):
                    _3355 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3355 + 68] = mem[idx + _3242 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3355 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3355 + -mem[64] + 100
                if (arg1 * stor28 / _tTotal) - (arg1 * _taxFee / 100 * stor28 / _tTotal) < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 4
                _3801 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3801] = 30
                mem[_3801 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor28 / _tTotal > stor4[address(msg.sender)]:
                    _3900 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3900 + 68] = mem[idx + _3801 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3900 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3900 + -mem[64] + 100
                if stor4[address(msg.sender)] < arg1 * stor28 / _tTotal:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 4
                stor4[address(msg.sender)] += -1 * arg1 * stor28 / _tTotal
                _4151 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4151] = 30
                mem[_4151 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor28 / _tTotal <= stor28:
                    if stor28 < arg1 * stor28 / _tTotal:
                        revert with 0, 17
                    stor28 += -1 * arg1 * stor28 / _tTotal
                    if totalFees > !arg1:
                        revert with 0, 17
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _4203 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4203 + 68] = mem[idx + _4151 + 32]
                    idx = idx + 32
                    continue 
                mem[_4203 + 98] = 0
                revert with memory
                  from mem[64]
                   len _4203 + -mem[64] + 100
            if not _tTotal:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor28 / _tTotal:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                            if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and t / s > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                                revert with 0, 17
                            if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                                revert with 0, 18
                            if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * t / s / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * t / s:
                                revert with 0, 17
                    else:
                        if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                            if arg1 * _taxFee / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _taxFee / 100 * t / s:
                                revert with 0, 17
                            if 0 > -1 * arg1 * _taxFee / 100 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _taxFee / 100 * t / s < 0:
                                revert with 0, 17
                        else:
                            if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and t / s > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                                revert with 0, 17
                            if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                                revert with 0, 18
                            if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * t / s / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * _taxFee / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _taxFee / 100 * t / s:
                                revert with 0, 17
                            if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * t / s > -1 * arg1 * _taxFee / 100 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _taxFee / 100 * t / s < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * t / s:
                                revert with 0, 17
                    if 0 > stor4[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor4[address(msg.sender)] < 0:
                        revert with 0, 17
                    if 0 > stor28:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor28 < 0:
                        revert with 0, 17
                else:
                    if arg1 and t / s > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < 0:
                                revert with 0, 17
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < 0:
                                revert with 0, 17
                        else:
                            if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and t / s > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                                revert with 0, 17
                            if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                                revert with 0, 18
                            if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * t / s / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < 0:
                                revert with 0, 17
                            if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * t / s > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * t / s:
                                revert with 0, 17
                    else:
                        if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                            if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < arg1 * _taxFee / 100 * t / s:
                                revert with 0, 17
                            if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) < 0:
                                revert with 0, 17
                        else:
                            if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and t / s > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                                revert with 0, 17
                            if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                                revert with 0, 18
                            if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * t / s / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < arg1 * _taxFee / 100 * t / s:
                                revert with 0, 17
                            if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * t / s > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * t / s:
                                revert with 0, 17
                    if arg1 * t / s > stor4[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor4[address(msg.sender)] < arg1 * t / s:
                        revert with 0, 17
                    stor4[address(msg.sender)] += -1 * arg1 * t / s
                    if arg1 * t / s > stor28:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor28 < arg1 * t / s:
                        revert with 0, 17
                    stor28 += -1 * arg1 * t / s
            else:
                if not _tTotal:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                            if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and stor28 / _tTotal > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                                revert with 0, 17
                            if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                                revert with 0, 18
                            if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != stor28 / _tTotal:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal:
                                revert with 0, 17
                    else:
                        if arg1 * _taxFee / 100 and stor28 / _tTotal > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * stor28 / _tTotal / arg1 * _taxFee / 100 != stor28 / _tTotal:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                            if arg1 * _taxFee / 100 * stor28 / _tTotal > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _taxFee / 100 * stor28 / _tTotal:
                                revert with 0, 17
                            if 0 > -1 * arg1 * _taxFee / 100 * stor28 / _tTotal:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _taxFee / 100 * stor28 / _tTotal < 0:
                                revert with 0, 17
                        else:
                            if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and stor28 / _tTotal > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                                revert with 0, 17
                            if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                                revert with 0, 18
                            if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != stor28 / _tTotal:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * _taxFee / 100 * stor28 / _tTotal > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _taxFee / 100 * stor28 / _tTotal:
                                revert with 0, 17
                            if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal > -1 * arg1 * _taxFee / 100 * stor28 / _tTotal:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _taxFee / 100 * stor28 / _tTotal < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal:
                                revert with 0, 17
                    if 0 > stor4[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor4[address(msg.sender)] < 0:
                        revert with 0, 17
                    if 0 > stor28:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor28 < 0:
                        revert with 0, 17
                else:
                    if arg1 and stor28 / _tTotal > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor28 / _tTotal / arg1 != stor28 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                            if 0 > arg1 * stor28 / _tTotal:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor28 / _tTotal < 0:
                                revert with 0, 17
                            if 0 > arg1 * stor28 / _tTotal:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor28 / _tTotal < 0:
                                revert with 0, 17
                        else:
                            if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and stor28 / _tTotal > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                                revert with 0, 17
                            if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                                revert with 0, 18
                            if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != stor28 / _tTotal:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > arg1 * stor28 / _tTotal:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor28 / _tTotal < 0:
                                revert with 0, 17
                            if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal > arg1 * stor28 / _tTotal:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor28 / _tTotal < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal:
                                revert with 0, 17
                    else:
                        if arg1 * _taxFee / 100 and stor28 / _tTotal > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * stor28 / _tTotal / arg1 * _taxFee / 100 != stor28 / _tTotal:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                            if arg1 * _taxFee / 100 * stor28 / _tTotal > arg1 * stor28 / _tTotal:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor28 / _tTotal < arg1 * _taxFee / 100 * stor28 / _tTotal:
                                revert with 0, 17
                            if 0 > (arg1 * stor28 / _tTotal) - (arg1 * _taxFee / 100 * stor28 / _tTotal):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if (arg1 * stor28 / _tTotal) - (arg1 * _taxFee / 100 * stor28 / _tTotal) < 0:
                                revert with 0, 17
                        else:
                            if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and stor28 / _tTotal > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                                revert with 0, 17
                            if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                                revert with 0, 18
                            if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != stor28 / _tTotal:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * _taxFee / 100 * stor28 / _tTotal > arg1 * stor28 / _tTotal:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor28 / _tTotal < arg1 * _taxFee / 100 * stor28 / _tTotal:
                                revert with 0, 17
                            if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal > (arg1 * stor28 / _tTotal) - (arg1 * _taxFee / 100 * stor28 / _tTotal):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if (arg1 * stor28 / _tTotal) - (arg1 * _taxFee / 100 * stor28 / _tTotal) < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal:
                                revert with 0, 17
                    if arg1 * stor28 / _tTotal > stor4[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor4[address(msg.sender)] < arg1 * stor28 / _tTotal:
                        revert with 0, 17
                    stor4[address(msg.sender)] += -1 * arg1 * stor28 / _tTotal
                    if arg1 * stor28 / _tTotal > stor28:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor28 < arg1 * stor28 / _tTotal:
                        revert with 0, 17
                    stor28 += -1 * arg1 * stor28 / _tTotal
    if totalFees > !arg1:
        revert with 0, 17
    if totalFees + arg1 < totalFees:
        revert with 0, 'SafeMath: addition overflow'
    totalFees += arg1
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
            if uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) > -sub_0f94892c + 255:
                revert with 0, 17
            if uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee)))) > -_rewardFee + 255:
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
                t = stor28
                while idx < stor24.length:
                    mem[0] = stor24[idx]
                    mem[32] = 4
                    if stor4[stor24[idx]] > t:
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
                        if arg1 and stor28 / _tTotal > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 * stor28 / _tTotal / arg1 != stor28 / _tTotal:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2938 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2938] = 30
                        mem[_2938 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor28 / _tTotal:
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
                        if arg1 * stor28 / _tTotal < 0:
                            revert with 0, 17
                        _3243 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3243] = 30
                        mem[_3243 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor28 / _tTotal:
                            if arg1 * stor28 / _tTotal < 0:
                                revert with 0, 17
                            return (arg1 * stor28 / _tTotal)
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
                    if idx >= stor24.length:
                        revert with 0, 50
                    mem[0] = stor24[idx]
                    mem[32] = 5
                    if stor5[stor24[idx]] <= s:
                        if idx >= stor24.length:
                            revert with 0, 50
                        mem[0] = stor24[idx]
                        mem[32] = 4
                        _2509 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2509] = 30
                        mem[_2509 + 32] = 'SafeMath: subtraction overflow'
                        if stor4[stor24[idx]] > t:
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
                        if t < stor4[stor24[idx]]:
                            revert with 0, 17
                        if idx >= stor24.length:
                            revert with 0, 50
                        mem[0] = stor24[idx]
                        mem[32] = 5
                        _2726 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2726] = 30
                        mem[_2726 + 32] = 'SafeMath: subtraction overflow'
                        if stor5[stor24[idx]] <= s:
                            if s < stor5[stor24[idx]]:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s - stor5[stor24[idx]]
                            t = t - stor4[stor24[idx]]
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
                    if arg1 and stor28 / _tTotal > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor28 / _tTotal / arg1 != stor28 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2998 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2998] = 30
                    mem[_2998 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor28 / _tTotal:
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
                    if arg1 * stor28 / _tTotal < 0:
                        revert with 0, 17
                    _3367 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3367] = 30
                    mem[_3367 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor28 / _tTotal:
                        if arg1 * stor28 / _tTotal < 0:
                            revert with 0, 17
                        return (arg1 * stor28 / _tTotal)
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
                if t >= stor28 / _tTotal:
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
                if arg1 and stor28 / _tTotal > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor28 / _tTotal / arg1 != stor28 / _tTotal:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * stor28 / _tTotal:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor28 / _tTotal < 0:
                    revert with 0, 17
                if 0 > arg1 * stor28 / _tTotal:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor28 / _tTotal < 0:
                    revert with 0, 17
                return (arg1 * stor28 / _tTotal)
            if arg1 and uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / arg1 != uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))):
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
            if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                revert with 0, 17
            idx = 0
            s = _tTotal
            t = stor28
            while idx < stor24.length:
                mem[0] = stor24[idx]
                mem[32] = 4
                if stor4[stor24[idx]] > t:
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
                        if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                            return 0
                        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and stor28 / _tTotal > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                            revert with 0, 17
                        if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                            revert with 0, 18
                        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != stor28 / _tTotal:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2934 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2934] = 30
                        mem[_2934 + 32] = 'SafeMath: subtraction overflow'
                        _3237 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3237] = 30
                        mem[_3237 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal <= 0:
                            if 0 < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal:
                                revert with 0, 17
                            return (-1 * arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal)
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
                    if arg1 and stor28 / _tTotal > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor28 / _tTotal / arg1 != stor28 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        _2933 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2933] = 30
                        mem[_2933 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor28 / _tTotal:
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
                        if arg1 * stor28 / _tTotal < 0:
                            revert with 0, 17
                        _3235 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3235] = 30
                        mem[_3235 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor28 / _tTotal:
                            if arg1 * stor28 / _tTotal < 0:
                                revert with 0, 17
                            return (arg1 * stor28 / _tTotal)
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
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and stor28 / _tTotal > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        revert with 0, 17
                    if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        revert with 0, 18
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != stor28 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3131 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3131] = 30
                    mem[_3131 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor28 / _tTotal:
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
                    if arg1 * stor28 / _tTotal < 0:
                        revert with 0, 17
                    _3649 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3649] = 30
                    mem[_3649 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal <= arg1 * stor28 / _tTotal:
                        if arg1 * stor28 / _tTotal < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal:
                            revert with 0, 17
                        return ((arg1 * stor28 / _tTotal) - (arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal))
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
                if idx >= stor24.length:
                    revert with 0, 50
                mem[0] = stor24[idx]
                mem[32] = 5
                if stor5[stor24[idx]] <= s:
                    if idx >= stor24.length:
                        revert with 0, 50
                    mem[0] = stor24[idx]
                    mem[32] = 4
                    _2506 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2506] = 30
                    mem[_2506 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor24[idx]] > t:
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
                    if t < stor4[stor24[idx]]:
                        revert with 0, 17
                    if idx >= stor24.length:
                        revert with 0, 50
                    mem[0] = stor24[idx]
                    mem[32] = 5
                    _2723 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2723] = 30
                    mem[_2723 + 32] = 'SafeMath: subtraction overflow'
                    if stor5[stor24[idx]] <= s:
                        if s < stor5[stor24[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor5[stor24[idx]]
                        t = t - stor4[stor24[idx]]
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
                    if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        return 0
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and stor28 / _tTotal > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        revert with 0, 17
                    if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        revert with 0, 18
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != stor28 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2995 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2995] = 30
                    mem[_2995 + 32] = 'SafeMath: subtraction overflow'
                    _3365 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3365] = 30
                    mem[_3365 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal <= 0:
                        if 0 < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal:
                            revert with 0, 17
                        return (-1 * arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal)
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
                if arg1 and stor28 / _tTotal > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor28 / _tTotal / arg1 != stor28 / _tTotal:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                    _2994 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2994] = 30
                    mem[_2994 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor28 / _tTotal:
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
                    if arg1 * stor28 / _tTotal < 0:
                        revert with 0, 17
                    _3363 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3363] = 30
                    mem[_3363 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor28 / _tTotal:
                        if arg1 * stor28 / _tTotal < 0:
                            revert with 0, 17
                        return (arg1 * stor28 / _tTotal)
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
                if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and stor28 / _tTotal > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                    revert with 0, 17
                if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                    revert with 0, 18
                if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != stor28 / _tTotal:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3238 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3238] = 30
                mem[_3238 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor28 / _tTotal:
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
                if arg1 * stor28 / _tTotal < 0:
                    revert with 0, 17
                _3822 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3822] = 30
                mem[_3822 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal <= arg1 * stor28 / _tTotal:
                    if arg1 * stor28 / _tTotal < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal:
                        revert with 0, 17
                    return ((arg1 * stor28 / _tTotal) - (arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal))
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
            if t >= stor28 / _tTotal:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        return 0
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and t / s > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        revert with 0, 17
                    if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        revert with 0, 18
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * t / s / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * t / s:
                        revert with 0, 17
                    return (-1 * arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * t / s)
                if arg1 and t / s > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    return (arg1 * t / s)
                if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and t / s > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                    revert with 0, 17
                if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                    revert with 0, 18
                if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * t / s / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < 0:
                    revert with 0, 17
                if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * t / s:
                    revert with 0, 17
                return ((arg1 * t / s) - (arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * t / s))
            if not _tTotal:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                    return 0
                if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and stor28 / _tTotal > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                    revert with 0, 17
                if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                    revert with 0, 18
                if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != stor28 / _tTotal:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal:
                    revert with 0, 17
                return (-1 * arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal)
            if arg1 and stor28 / _tTotal > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor28 / _tTotal / arg1 != stor28 / _tTotal:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                if 0 > arg1 * stor28 / _tTotal:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor28 / _tTotal < 0:
                    revert with 0, 17
                if 0 > arg1 * stor28 / _tTotal:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor28 / _tTotal < 0:
                    revert with 0, 17
                return (arg1 * stor28 / _tTotal)
            if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and stor28 / _tTotal > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                revert with 0, 17
            if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                revert with 0, 18
            if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != stor28 / _tTotal:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 > arg1 * stor28 / _tTotal:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor28 / _tTotal < 0:
                revert with 0, 17
            if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal > arg1 * stor28 / _tTotal:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor28 / _tTotal < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal:
                revert with 0, 17
            return ((arg1 * stor28 / _tTotal) - (arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal))
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
        if uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) > -sub_0f94892c + 255:
            revert with 0, 17
        if uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee)))) > -_rewardFee + 255:
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
            t = stor28
            while idx < stor24.length:
                mem[0] = stor24[idx]
                mem[32] = 4
                if stor4[stor24[idx]] > t:
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
                        if arg1 * _taxFee / 100 and stor28 / _tTotal > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * stor28 / _tTotal / arg1 * _taxFee / 100 != stor28 / _tTotal:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2930 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2930] = 30
                        mem[_2930 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor28 / _tTotal > 0:
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
                        if 0 < arg1 * _taxFee / 100 * stor28 / _tTotal:
                            revert with 0, 17
                        _3227 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3227] = 30
                        mem[_3227 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _taxFee / 100 * stor28 / _tTotal:
                            if -1 * arg1 * _taxFee / 100 * stor28 / _tTotal < 0:
                                revert with 0, 17
                            return (-1 * arg1 * _taxFee / 100 * stor28 / _tTotal)
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
                    if arg1 and stor28 / _tTotal > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor28 / _tTotal / arg1 != stor28 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        _2929 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2929] = 30
                        mem[_2929 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor28 / _tTotal:
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
                        if arg1 * stor28 / _tTotal < 0:
                            revert with 0, 17
                        _3225 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3225] = 30
                        mem[_3225 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor28 / _tTotal:
                            if arg1 * stor28 / _tTotal < 0:
                                revert with 0, 17
                            return (arg1 * stor28 / _tTotal)
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
                    if arg1 * _taxFee / 100 and stor28 / _tTotal > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor28 / _tTotal / arg1 * _taxFee / 100 != stor28 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3126 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3126] = 30
                    mem[_3126 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor28 / _tTotal > arg1 * stor28 / _tTotal:
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
                    if arg1 * stor28 / _tTotal < arg1 * _taxFee / 100 * stor28 / _tTotal:
                        revert with 0, 17
                    _3638 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3638] = 30
                    mem[_3638 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor28 / _tTotal) - (arg1 * _taxFee / 100 * stor28 / _tTotal):
                        if (arg1 * stor28 / _tTotal) - (arg1 * _taxFee / 100 * stor28 / _tTotal) < 0:
                            revert with 0, 17
                        return ((arg1 * stor28 / _tTotal) - (arg1 * _taxFee / 100 * stor28 / _tTotal))
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
                if idx >= stor24.length:
                    revert with 0, 50
                mem[0] = stor24[idx]
                mem[32] = 5
                if stor5[stor24[idx]] <= s:
                    if idx >= stor24.length:
                        revert with 0, 50
                    mem[0] = stor24[idx]
                    mem[32] = 4
                    _2503 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2503] = 30
                    mem[_2503 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor24[idx]] > t:
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
                    if t < stor4[stor24[idx]]:
                        revert with 0, 17
                    if idx >= stor24.length:
                        revert with 0, 50
                    mem[0] = stor24[idx]
                    mem[32] = 5
                    _2720 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2720] = 30
                    mem[_2720 + 32] = 'SafeMath: subtraction overflow'
                    if stor5[stor24[idx]] <= s:
                        if s < stor5[stor24[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor5[stor24[idx]]
                        t = t - stor4[stor24[idx]]
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
                    if arg1 * _taxFee / 100 and stor28 / _tTotal > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor28 / _tTotal / arg1 * _taxFee / 100 != stor28 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2991 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2991] = 30
                    mem[_2991 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor28 / _tTotal > 0:
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
                    if 0 < arg1 * _taxFee / 100 * stor28 / _tTotal:
                        revert with 0, 17
                    _3356 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3356] = 30
                    mem[_3356 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * arg1 * _taxFee / 100 * stor28 / _tTotal:
                        if -1 * arg1 * _taxFee / 100 * stor28 / _tTotal < 0:
                            revert with 0, 17
                        return (-1 * arg1 * _taxFee / 100 * stor28 / _tTotal)
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
                if arg1 and stor28 / _tTotal > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor28 / _tTotal / arg1 != stor28 / _tTotal:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    _2990 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2990] = 30
                    mem[_2990 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor28 / _tTotal:
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
                    if arg1 * stor28 / _tTotal < 0:
                        revert with 0, 17
                    _3354 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3354] = 30
                    mem[_3354 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor28 / _tTotal:
                        if arg1 * stor28 / _tTotal < 0:
                            revert with 0, 17
                        return (arg1 * stor28 / _tTotal)
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
                if arg1 * _taxFee / 100 and stor28 / _tTotal > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * stor28 / _tTotal / arg1 * _taxFee / 100 != stor28 / _tTotal:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3229 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3229] = 30
                mem[_3229 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor28 / _tTotal > arg1 * stor28 / _tTotal:
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
                if arg1 * stor28 / _tTotal < arg1 * _taxFee / 100 * stor28 / _tTotal:
                    revert with 0, 17
                _3812 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3812] = 30
                mem[_3812 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (arg1 * stor28 / _tTotal) - (arg1 * _taxFee / 100 * stor28 / _tTotal):
                    if (arg1 * stor28 / _tTotal) - (arg1 * _taxFee / 100 * stor28 / _tTotal) < 0:
                        revert with 0, 17
                    return ((arg1 * stor28 / _tTotal) - (arg1 * _taxFee / 100 * stor28 / _tTotal))
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
            if t >= stor28 / _tTotal:
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
                if arg1 * _taxFee / 100 and stor28 / _tTotal > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * stor28 / _tTotal / arg1 * _taxFee / 100 != stor28 / _tTotal:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * _taxFee / 100 * stor28 / _tTotal > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * _taxFee / 100 * stor28 / _tTotal:
                    revert with 0, 17
                if 0 > -1 * arg1 * _taxFee / 100 * stor28 / _tTotal:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * _taxFee / 100 * stor28 / _tTotal < 0:
                    revert with 0, 17
                return (-1 * arg1 * _taxFee / 100 * stor28 / _tTotal)
            if arg1 and stor28 / _tTotal > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor28 / _tTotal / arg1 != stor28 / _tTotal:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _taxFee / 100:
                if 0 > arg1 * stor28 / _tTotal:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor28 / _tTotal < 0:
                    revert with 0, 17
                if 0 > arg1 * stor28 / _tTotal:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor28 / _tTotal < 0:
                    revert with 0, 17
                return (arg1 * stor28 / _tTotal)
            if arg1 * _taxFee / 100 and stor28 / _tTotal > -1 / arg1 * _taxFee / 100:
                revert with 0, 17
            if not arg1 * _taxFee / 100:
                revert with 0, 18
            if arg1 * _taxFee / 100 * stor28 / _tTotal / arg1 * _taxFee / 100 != stor28 / _tTotal:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 * _taxFee / 100 * stor28 / _tTotal > arg1 * stor28 / _tTotal:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor28 / _tTotal < arg1 * _taxFee / 100 * stor28 / _tTotal:
                revert with 0, 17
            if 0 > (arg1 * stor28 / _tTotal) - (arg1 * _taxFee / 100 * stor28 / _tTotal):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * stor28 / _tTotal) - (arg1 * _taxFee / 100 * stor28 / _tTotal) < 0:
                revert with 0, 17
            return ((arg1 * stor28 / _tTotal) - (arg1 * _taxFee / 100 * stor28 / _tTotal))
        if arg1 and uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) > -1 / arg1:
            revert with 0, 17
        if not arg1:
            revert with 0, 18
        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / arg1 != uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))):
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
        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 > arg1 - (arg1 * _taxFee / 100):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 - (arg1 * _taxFee / 100) < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
            revert with 0, 17
        idx = 0
        s = _tTotal
        t = stor28
        while idx < stor24.length:
            mem[0] = stor24[idx]
            mem[32] = 4
            if stor4[stor24[idx]] > t:
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
                        if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                            return 0
                        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and stor28 / _tTotal > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                            revert with 0, 17
                        if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                            revert with 0, 18
                        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != stor28 / _tTotal:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2922 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2922] = 30
                        mem[_2922 + 32] = 'SafeMath: subtraction overflow'
                        _3214 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3214] = 30
                        mem[_3214 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal <= 0:
                            if 0 < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal:
                                revert with 0, 17
                            return (-1 * arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal)
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
                    if arg1 * _taxFee / 100 and stor28 / _tTotal > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor28 / _tTotal / arg1 * _taxFee / 100 != stor28 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        _2921 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2921] = 30
                        mem[_2921 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor28 / _tTotal > 0:
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
                        if 0 < arg1 * _taxFee / 100 * stor28 / _tTotal:
                            revert with 0, 17
                        _3212 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3212] = 30
                        mem[_3212 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _taxFee / 100 * stor28 / _tTotal:
                            if -1 * arg1 * _taxFee / 100 * stor28 / _tTotal < 0:
                                revert with 0, 17
                            return (-1 * arg1 * _taxFee / 100 * stor28 / _tTotal)
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
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and stor28 / _tTotal > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        revert with 0, 17
                    if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        revert with 0, 18
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != stor28 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3117 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3117] = 30
                    mem[_3117 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor28 / _tTotal > 0:
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
                    if 0 < arg1 * _taxFee / 100 * stor28 / _tTotal:
                        revert with 0, 17
                    _3624 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3624] = 30
                    mem[_3624 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal <= -1 * arg1 * _taxFee / 100 * stor28 / _tTotal:
                        if -1 * arg1 * _taxFee / 100 * stor28 / _tTotal < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal:
                            revert with 0, 17
                        return ((-1 * arg1 * _taxFee / 100 * stor28 / _tTotal) - (arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal))
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
                if arg1 and stor28 / _tTotal > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor28 / _tTotal / arg1 != stor28 / _tTotal:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        _2920 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2920] = 30
                        mem[_2920 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor28 / _tTotal:
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
                        if arg1 * stor28 / _tTotal < 0:
                            revert with 0, 17
                        _3209 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3209] = 30
                        mem[_3209 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor28 / _tTotal:
                            if arg1 * stor28 / _tTotal < 0:
                                revert with 0, 17
                            return (arg1 * stor28 / _tTotal)
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
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and stor28 / _tTotal > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        revert with 0, 17
                    if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        revert with 0, 18
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != stor28 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3116 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3116] = 30
                    mem[_3116 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor28 / _tTotal:
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
                    if arg1 * stor28 / _tTotal < 0:
                        revert with 0, 17
                    _3622 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3622] = 30
                    mem[_3622 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal <= arg1 * stor28 / _tTotal:
                        if arg1 * stor28 / _tTotal < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal:
                            revert with 0, 17
                        return ((arg1 * stor28 / _tTotal) - (arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal))
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
                if arg1 * _taxFee / 100 and stor28 / _tTotal > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * stor28 / _tTotal / arg1 * _taxFee / 100 != stor28 / _tTotal:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                    _3115 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3115] = 30
                    mem[_3115 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor28 / _tTotal > arg1 * stor28 / _tTotal:
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
                    if arg1 * stor28 / _tTotal < arg1 * _taxFee / 100 * stor28 / _tTotal:
                        revert with 0, 17
                    _3620 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3620] = 30
                    mem[_3620 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor28 / _tTotal) - (arg1 * _taxFee / 100 * stor28 / _tTotal):
                        if (arg1 * stor28 / _tTotal) - (arg1 * _taxFee / 100 * stor28 / _tTotal) < 0:
                            revert with 0, 17
                        return ((arg1 * stor28 / _tTotal) - (arg1 * _taxFee / 100 * stor28 / _tTotal))
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
                if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and stor28 / _tTotal > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                    revert with 0, 17
                if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                    revert with 0, 18
                if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != stor28 / _tTotal:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3483 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3483] = 30
                mem[_3483 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor28 / _tTotal > arg1 * stor28 / _tTotal:
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
                if arg1 * stor28 / _tTotal < arg1 * _taxFee / 100 * stor28 / _tTotal:
                    revert with 0, 17
                _4115 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4115] = 30
                mem[_4115 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal <= (arg1 * stor28 / _tTotal) - (arg1 * _taxFee / 100 * stor28 / _tTotal):
                    if (arg1 * stor28 / _tTotal) - (arg1 * _taxFee / 100 * stor28 / _tTotal) < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal:
                        revert with 0, 17
                    return ((arg1 * stor28 / _tTotal) - (arg1 * _taxFee / 100 * stor28 / _tTotal) - (arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal))
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
            if idx >= stor24.length:
                revert with 0, 50
            mem[0] = stor24[idx]
            mem[32] = 5
            if stor5[stor24[idx]] <= s:
                if idx >= stor24.length:
                    revert with 0, 50
                mem[0] = stor24[idx]
                mem[32] = 4
                _2500 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2500] = 30
                mem[_2500 + 32] = 'SafeMath: subtraction overflow'
                if stor4[stor24[idx]] > t:
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
                if t < stor4[stor24[idx]]:
                    revert with 0, 17
                if idx >= stor24.length:
                    revert with 0, 50
                mem[0] = stor24[idx]
                mem[32] = 5
                _2717 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2717] = 30
                mem[_2717 + 32] = 'SafeMath: subtraction overflow'
                if stor5[stor24[idx]] <= s:
                    if s < stor5[stor24[idx]]:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s - stor5[stor24[idx]]
                    t = t - stor4[stor24[idx]]
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
                    if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        return 0
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and stor28 / _tTotal > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        revert with 0, 17
                    if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        revert with 0, 18
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != stor28 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2985 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2985] = 30
                    mem[_2985 + 32] = 'SafeMath: subtraction overflow'
                    _3350 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3350] = 30
                    mem[_3350 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal <= 0:
                        if 0 < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal:
                            revert with 0, 17
                        return (-1 * arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal)
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
                if arg1 * _taxFee / 100 and stor28 / _tTotal > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * stor28 / _tTotal / arg1 * _taxFee / 100 != stor28 / _tTotal:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                    _2984 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2984] = 30
                    mem[_2984 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor28 / _tTotal > 0:
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
                    if 0 < arg1 * _taxFee / 100 * stor28 / _tTotal:
                        revert with 0, 17
                    _3348 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3348] = 30
                    mem[_3348 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * arg1 * _taxFee / 100 * stor28 / _tTotal:
                        if -1 * arg1 * _taxFee / 100 * stor28 / _tTotal < 0:
                            revert with 0, 17
                        return (-1 * arg1 * _taxFee / 100 * stor28 / _tTotal)
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
                if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and stor28 / _tTotal > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                    revert with 0, 17
                if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                    revert with 0, 18
                if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != stor28 / _tTotal:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3217 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3217] = 30
                mem[_3217 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor28 / _tTotal > 0:
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
                if 0 < arg1 * _taxFee / 100 * stor28 / _tTotal:
                    revert with 0, 17
                _3802 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3802] = 30
                mem[_3802 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal <= -1 * arg1 * _taxFee / 100 * stor28 / _tTotal:
                    if -1 * arg1 * _taxFee / 100 * stor28 / _tTotal < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal:
                        revert with 0, 17
                    return ((-1 * arg1 * _taxFee / 100 * stor28 / _tTotal) - (arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal))
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
            if arg1 and stor28 / _tTotal > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor28 / _tTotal / arg1 != stor28 / _tTotal:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _taxFee / 100:
                if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                    _2983 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2983] = 30
                    mem[_2983 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor28 / _tTotal:
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
                    if arg1 * stor28 / _tTotal < 0:
                        revert with 0, 17
                    _3345 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3345] = 30
                    mem[_3345 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor28 / _tTotal:
                        if arg1 * stor28 / _tTotal < 0:
                            revert with 0, 17
                        return (arg1 * stor28 / _tTotal)
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
                if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and stor28 / _tTotal > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                    revert with 0, 17
                if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                    revert with 0, 18
                if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != stor28 / _tTotal:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3216 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3216] = 30
                mem[_3216 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor28 / _tTotal:
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
                if arg1 * stor28 / _tTotal < 0:
                    revert with 0, 17
                _3800 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3800] = 30
                mem[_3800 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal <= arg1 * stor28 / _tTotal:
                    if arg1 * stor28 / _tTotal < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal:
                        revert with 0, 17
                    return ((arg1 * stor28 / _tTotal) - (arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal))
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
            if arg1 * _taxFee / 100 and stor28 / _tTotal > -1 / arg1 * _taxFee / 100:
                revert with 0, 17
            if not arg1 * _taxFee / 100:
                revert with 0, 18
            if arg1 * _taxFee / 100 * stor28 / _tTotal / arg1 * _taxFee / 100 != stor28 / _tTotal:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                _3215 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3215] = 30
                mem[_3215 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor28 / _tTotal > arg1 * stor28 / _tTotal:
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
                if arg1 * stor28 / _tTotal < arg1 * _taxFee / 100 * stor28 / _tTotal:
                    revert with 0, 17
                _3798 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3798] = 30
                mem[_3798 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (arg1 * stor28 / _tTotal) - (arg1 * _taxFee / 100 * stor28 / _tTotal):
                    if (arg1 * stor28 / _tTotal) - (arg1 * _taxFee / 100 * stor28 / _tTotal) < 0:
                        revert with 0, 17
                    return ((arg1 * stor28 / _tTotal) - (arg1 * _taxFee / 100 * stor28 / _tTotal))
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
            if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and stor28 / _tTotal > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                revert with 0, 17
            if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                revert with 0, 18
            if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != stor28 / _tTotal:
                revert with 0, 'SafeMath: multiplication overflow'
            _3627 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3627] = 30
            mem[_3627 + 32] = 'SafeMath: subtraction overflow'
            if arg1 * _taxFee / 100 * stor28 / _tTotal > arg1 * stor28 / _tTotal:
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
            if arg1 * stor28 / _tTotal < arg1 * _taxFee / 100 * stor28 / _tTotal:
                revert with 0, 17
            _4269 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4269] = 30
            mem[_4269 + 32] = 'SafeMath: subtraction overflow'
            if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal <= (arg1 * stor28 / _tTotal) - (arg1 * _taxFee / 100 * stor28 / _tTotal):
                if (arg1 * stor28 / _tTotal) - (arg1 * _taxFee / 100 * stor28 / _tTotal) < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal:
                    revert with 0, 17
                return ((arg1 * stor28 / _tTotal) - (arg1 * _taxFee / 100 * stor28 / _tTotal) - (arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal))
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
        if t >= stor28 / _tTotal:
            if not s:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                if not arg1 * _taxFee / 100:
                    if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        return 0
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and t / s > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        revert with 0, 17
                    if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        revert with 0, 18
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * t / s / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * t / s:
                        revert with 0, 17
                    return (-1 * arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * t / s)
                if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                    if arg1 * _taxFee / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * _taxFee / 100 * t / s:
                        revert with 0, 17
                    if 0 > -1 * arg1 * _taxFee / 100 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * _taxFee / 100 * t / s < 0:
                        revert with 0, 17
                    return (-1 * arg1 * _taxFee / 100 * t / s)
                if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and t / s > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                    revert with 0, 17
                if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                    revert with 0, 18
                if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * t / s / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * _taxFee / 100 * t / s > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * _taxFee / 100 * t / s:
                    revert with 0, 17
                if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * t / s > -1 * arg1 * _taxFee / 100 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * _taxFee / 100 * t / s < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * t / s:
                    revert with 0, 17
                return ((-1 * arg1 * _taxFee / 100 * t / s) - (arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * t / s))
            if arg1 and t / s > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * t / s / arg1 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _taxFee / 100:
                if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    return (arg1 * t / s)
                if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and t / s > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                    revert with 0, 17
                if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                    revert with 0, 18
                if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * t / s / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < 0:
                    revert with 0, 17
                if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * t / s:
                    revert with 0, 17
                return ((arg1 * t / s) - (arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * t / s))
            if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                revert with 0, 17
            if not arg1 * _taxFee / 100:
                revert with 0, 18
            if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < arg1 * _taxFee / 100 * t / s:
                    revert with 0, 17
                if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) < 0:
                    revert with 0, 17
                return ((arg1 * t / s) - (arg1 * _taxFee / 100 * t / s))
            if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and t / s > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                revert with 0, 17
            if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                revert with 0, 18
            if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * t / s / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * t / s < arg1 * _taxFee / 100 * t / s:
                revert with 0, 17
            if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * t / s > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * t / s:
                revert with 0, 17
            return ((arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) - (arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * t / s))
        if not _tTotal:
            revert with 0, 'SafeMath: division by zero', 0
        if not arg1:
            if not arg1 * _taxFee / 100:
                if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                    return 0
                if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and stor28 / _tTotal > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                    revert with 0, 17
                if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                    revert with 0, 18
                if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != stor28 / _tTotal:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal:
                    revert with 0, 17
                return (-1 * arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal)
            if arg1 * _taxFee / 100 and stor28 / _tTotal > -1 / arg1 * _taxFee / 100:
                revert with 0, 17
            if not arg1 * _taxFee / 100:
                revert with 0, 18
            if arg1 * _taxFee / 100 * stor28 / _tTotal / arg1 * _taxFee / 100 != stor28 / _tTotal:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                if arg1 * _taxFee / 100 * stor28 / _tTotal > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * _taxFee / 100 * stor28 / _tTotal:
                    revert with 0, 17
                if 0 > -1 * arg1 * _taxFee / 100 * stor28 / _tTotal:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * _taxFee / 100 * stor28 / _tTotal < 0:
                    revert with 0, 17
                return (-1 * arg1 * _taxFee / 100 * stor28 / _tTotal)
            if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and stor28 / _tTotal > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                revert with 0, 17
            if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                revert with 0, 18
            if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != stor28 / _tTotal:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 * _taxFee / 100 * stor28 / _tTotal > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < arg1 * _taxFee / 100 * stor28 / _tTotal:
                revert with 0, 17
            if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal > -1 * arg1 * _taxFee / 100 * stor28 / _tTotal:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if -1 * arg1 * _taxFee / 100 * stor28 / _tTotal < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal:
                revert with 0, 17
            return ((-1 * arg1 * _taxFee / 100 * stor28 / _tTotal) - (arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal))
        if arg1 and stor28 / _tTotal > -1 / arg1:
            revert with 0, 17
        if not arg1:
            revert with 0, 18
        if arg1 * stor28 / _tTotal / arg1 != stor28 / _tTotal:
            revert with 0, 'SafeMath: multiplication overflow'
        if not arg1 * _taxFee / 100:
            if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                if 0 > arg1 * stor28 / _tTotal:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor28 / _tTotal < 0:
                    revert with 0, 17
                if 0 > arg1 * stor28 / _tTotal:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor28 / _tTotal < 0:
                    revert with 0, 17
                return (arg1 * stor28 / _tTotal)
            if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and stor28 / _tTotal > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                revert with 0, 17
            if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                revert with 0, 18
            if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != stor28 / _tTotal:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 > arg1 * stor28 / _tTotal:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor28 / _tTotal < 0:
                revert with 0, 17
            if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal > arg1 * stor28 / _tTotal:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor28 / _tTotal < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal:
                revert with 0, 17
            return ((arg1 * stor28 / _tTotal) - (arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal))
        if arg1 * _taxFee / 100 and stor28 / _tTotal > -1 / arg1 * _taxFee / 100:
            revert with 0, 17
        if not arg1 * _taxFee / 100:
            revert with 0, 18
        if arg1 * _taxFee / 100 * stor28 / _tTotal / arg1 * _taxFee / 100 != stor28 / _tTotal:
            revert with 0, 'SafeMath: multiplication overflow'
        if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
            if arg1 * _taxFee / 100 * stor28 / _tTotal > arg1 * stor28 / _tTotal:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor28 / _tTotal < arg1 * _taxFee / 100 * stor28 / _tTotal:
                revert with 0, 17
            if 0 > (arg1 * stor28 / _tTotal) - (arg1 * _taxFee / 100 * stor28 / _tTotal):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * stor28 / _tTotal) - (arg1 * _taxFee / 100 * stor28 / _tTotal) < 0:
                revert with 0, 17
            return ((arg1 * stor28 / _tTotal) - (arg1 * _taxFee / 100 * stor28 / _tTotal))
        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and stor28 / _tTotal > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
            revert with 0, 17
        if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
            revert with 0, 18
        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != stor28 / _tTotal:
            revert with 0, 'SafeMath: multiplication overflow'
        if arg1 * _taxFee / 100 * stor28 / _tTotal > arg1 * stor28 / _tTotal:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 * stor28 / _tTotal < arg1 * _taxFee / 100 * stor28 / _tTotal:
            revert with 0, 17
        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal > (arg1 * stor28 / _tTotal) - (arg1 * _taxFee / 100 * stor28 / _tTotal):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (arg1 * stor28 / _tTotal) - (arg1 * _taxFee / 100 * stor28 / _tTotal) < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal:
            revert with 0, 17
        return ((arg1 * stor28 / _tTotal) - (arg1 * _taxFee / 100 * stor28 / _tTotal) - (arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal))
    if not arg1:
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if _liquidityFee > -_burnFee + 255:
            revert with 0, 17
        if uint8(_burnFee + _liquidityFee) > -_walletFee + 255:
            revert with 0, 17
        if uint8(_walletFee + uint8(_burnFee + _liquidityFee)) > -_buybackFee + 255:
            revert with 0, 17
        if uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) > -sub_0f94892c + 255:
            revert with 0, 17
        if uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee)))) > -_rewardFee + 255:
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
            t = stor28
            while idx < stor24.length:
                mem[0] = stor24[idx]
                mem[32] = 4
                if stor4[stor24[idx]] > t:
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
                    if arg1 and stor28 / _tTotal > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor28 / _tTotal / arg1 != stor28 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2962 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2962] = 30
                    mem[_2962 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor28 / _tTotal:
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
                    if arg1 * stor28 / _tTotal < 0:
                        revert with 0, 17
                    _3287 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3287] = 30
                    mem[_3287 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor28 / _tTotal:
                        if arg1 * stor28 / _tTotal < 0:
                            revert with 0, 17
                        return (arg1 * stor28 / _tTotal)
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
                if idx >= stor24.length:
                    revert with 0, 50
                mem[0] = stor24[idx]
                mem[32] = 5
                if stor5[stor24[idx]] <= s:
                    if idx >= stor24.length:
                        revert with 0, 50
                    mem[0] = stor24[idx]
                    mem[32] = 4
                    _2521 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2521] = 30
                    mem[_2521 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor24[idx]] > t:
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
                    if t < stor4[stor24[idx]]:
                        revert with 0, 17
                    if idx >= stor24.length:
                        revert with 0, 50
                    mem[0] = stor24[idx]
                    mem[32] = 5
                    _2738 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2738] = 30
                    mem[_2738 + 32] = 'SafeMath: subtraction overflow'
                    if stor5[stor24[idx]] <= s:
                        if s < stor5[stor24[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor5[stor24[idx]]
                        t = t - stor4[stor24[idx]]
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
                if arg1 and stor28 / _tTotal > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor28 / _tTotal / arg1 != stor28 / _tTotal:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3018 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3018] = 30
                mem[_3018 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor28 / _tTotal:
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
                if arg1 * stor28 / _tTotal < 0:
                    revert with 0, 17
                _3401 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3401] = 30
                mem[_3401 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= arg1 * stor28 / _tTotal:
                    if arg1 * stor28 / _tTotal < 0:
                        revert with 0, 17
                    return (arg1 * stor28 / _tTotal)
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
            if t >= stor28 / _tTotal:
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
            if arg1 and stor28 / _tTotal > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor28 / _tTotal / arg1 != stor28 / _tTotal:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 > arg1 * stor28 / _tTotal:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor28 / _tTotal < 0:
                revert with 0, 17
            if 0 > arg1 * stor28 / _tTotal:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor28 / _tTotal < 0:
                revert with 0, 17
        else:
            if arg1 and uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / arg1 != uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))):
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
            if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                revert with 0, 17
            idx = 0
            s = _tTotal
            t = stor28
            while idx < stor24.length:
                mem[0] = stor24[idx]
                mem[32] = 4
                if stor4[stor24[idx]] > t:
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
                        if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                            return 0
                        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and stor28 / _tTotal > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                            revert with 0, 17
                        if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                            revert with 0, 18
                        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != stor28 / _tTotal:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2958 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2958] = 30
                        mem[_2958 + 32] = 'SafeMath: subtraction overflow'
                        _3281 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3281] = 30
                        mem[_3281 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal <= 0:
                            if 0 < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal:
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
                    if arg1 and stor28 / _tTotal > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor28 / _tTotal / arg1 != stor28 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        _2957 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2957] = 30
                        mem[_2957 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor28 / _tTotal:
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
                        if arg1 * stor28 / _tTotal < 0:
                            revert with 0, 17
                        _3279 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3279] = 30
                        mem[_3279 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor28 / _tTotal:
                            if arg1 * stor28 / _tTotal < 0:
                                revert with 0, 17
                            return (arg1 * stor28 / _tTotal)
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
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and stor28 / _tTotal > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        revert with 0, 17
                    if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        revert with 0, 18
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != stor28 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3159 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3159] = 30
                    mem[_3159 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor28 / _tTotal:
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
                    if arg1 * stor28 / _tTotal < 0:
                        revert with 0, 17
                    _3703 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3703] = 30
                    mem[_3703 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal <= arg1 * stor28 / _tTotal:
                        if arg1 * stor28 / _tTotal < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal:
                            revert with 0, 17
                        return (arg1 * stor28 / _tTotal)
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
                if idx >= stor24.length:
                    revert with 0, 50
                mem[0] = stor24[idx]
                mem[32] = 5
                if stor5[stor24[idx]] <= s:
                    if idx >= stor24.length:
                        revert with 0, 50
                    mem[0] = stor24[idx]
                    mem[32] = 4
                    _2518 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2518] = 30
                    mem[_2518 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor24[idx]] > t:
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
                    if t < stor4[stor24[idx]]:
                        revert with 0, 17
                    if idx >= stor24.length:
                        revert with 0, 50
                    mem[0] = stor24[idx]
                    mem[32] = 5
                    _2735 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2735] = 30
                    mem[_2735 + 32] = 'SafeMath: subtraction overflow'
                    if stor5[stor24[idx]] <= s:
                        if s < stor5[stor24[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor5[stor24[idx]]
                        t = t - stor4[stor24[idx]]
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
                    if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        return 0
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and stor28 / _tTotal > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        revert with 0, 17
                    if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        revert with 0, 18
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != stor28 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3015 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3015] = 30
                    mem[_3015 + 32] = 'SafeMath: subtraction overflow'
                    _3399 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3399] = 30
                    mem[_3399 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal <= 0:
                        if 0 < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal:
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
                if arg1 and stor28 / _tTotal > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor28 / _tTotal / arg1 != stor28 / _tTotal:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                    _3014 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3014] = 30
                    mem[_3014 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor28 / _tTotal:
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
                    if arg1 * stor28 / _tTotal < 0:
                        revert with 0, 17
                    _3397 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3397] = 30
                    mem[_3397 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor28 / _tTotal:
                        if arg1 * stor28 / _tTotal < 0:
                            revert with 0, 17
                        return (arg1 * stor28 / _tTotal)
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
                if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and stor28 / _tTotal > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                    revert with 0, 17
                if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                    revert with 0, 18
                if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != stor28 / _tTotal:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3282 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3282] = 30
                mem[_3282 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor28 / _tTotal:
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
                if arg1 * stor28 / _tTotal < 0:
                    revert with 0, 17
                _3868 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3868] = 30
                mem[_3868 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal <= arg1 * stor28 / _tTotal:
                    if arg1 * stor28 / _tTotal < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal:
                        revert with 0, 17
                    return (arg1 * stor28 / _tTotal)
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
            if t >= stor28 / _tTotal:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and t / s > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                            revert with 0, 17
                        if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                            revert with 0, 18
                        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * t / s / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * t / s:
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
                if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                else:
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and t / s > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        revert with 0, 17
                    if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        revert with 0, 18
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * t / s / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * t / s:
                        revert with 0, 17
                return (arg1 * t / s)
            if not _tTotal:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and stor28 / _tTotal > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        revert with 0, 17
                    if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        revert with 0, 18
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != stor28 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal:
                        revert with 0, 17
                    else:
                        return 0
                else:
                    return 0
            if arg1 and stor28 / _tTotal > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor28 / _tTotal / arg1 != stor28 / _tTotal:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                if 0 > arg1 * stor28 / _tTotal:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor28 / _tTotal < 0:
                    revert with 0, 17
                if 0 > arg1 * stor28 / _tTotal:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor28 / _tTotal < 0:
                    revert with 0, 17
            else:
                if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and stor28 / _tTotal > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                    revert with 0, 17
                if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                    revert with 0, 18
                if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != stor28 / _tTotal:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * stor28 / _tTotal:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor28 / _tTotal < 0:
                    revert with 0, 17
                if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal > arg1 * stor28 / _tTotal:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor28 / _tTotal < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal:
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
        if uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))) > -sub_0f94892c + 255:
            revert with 0, 17
        if uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee)))) > -_rewardFee + 255:
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
            t = stor28
            while idx < stor24.length:
                mem[0] = stor24[idx]
                mem[32] = 4
                if stor4[stor24[idx]] > t:
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
                        if arg1 * _taxFee / 100 and stor28 / _tTotal > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * stor28 / _tTotal / arg1 * _taxFee / 100 != stor28 / _tTotal:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2954 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2954] = 30
                        mem[_2954 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor28 / _tTotal > 0:
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
                        if 0 < arg1 * _taxFee / 100 * stor28 / _tTotal:
                            revert with 0, 17
                        _3271 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3271] = 30
                        mem[_3271 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _taxFee / 100 * stor28 / _tTotal:
                            if -1 * arg1 * _taxFee / 100 * stor28 / _tTotal < 0:
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
                    if arg1 and stor28 / _tTotal > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor28 / _tTotal / arg1 != stor28 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        _2953 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2953] = 30
                        mem[_2953 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor28 / _tTotal:
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
                        if arg1 * stor28 / _tTotal < 0:
                            revert with 0, 17
                        _3269 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3269] = 30
                        mem[_3269 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor28 / _tTotal:
                            if arg1 * stor28 / _tTotal < 0:
                                revert with 0, 17
                            return (arg1 * stor28 / _tTotal)
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
                    if arg1 * _taxFee / 100 and stor28 / _tTotal > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor28 / _tTotal / arg1 * _taxFee / 100 != stor28 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3154 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3154] = 30
                    mem[_3154 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor28 / _tTotal > arg1 * stor28 / _tTotal:
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
                    if arg1 * stor28 / _tTotal < arg1 * _taxFee / 100 * stor28 / _tTotal:
                        revert with 0, 17
                    _3692 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3692] = 30
                    mem[_3692 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor28 / _tTotal) - (arg1 * _taxFee / 100 * stor28 / _tTotal):
                        if (arg1 * stor28 / _tTotal) - (arg1 * _taxFee / 100 * stor28 / _tTotal) < 0:
                            revert with 0, 17
                        return (arg1 * stor28 / _tTotal)
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
                if idx >= stor24.length:
                    revert with 0, 50
                mem[0] = stor24[idx]
                mem[32] = 5
                if stor5[stor24[idx]] <= s:
                    if idx >= stor24.length:
                        revert with 0, 50
                    mem[0] = stor24[idx]
                    mem[32] = 4
                    _2515 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2515] = 30
                    mem[_2515 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor24[idx]] > t:
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
                    if t < stor4[stor24[idx]]:
                        revert with 0, 17
                    if idx >= stor24.length:
                        revert with 0, 50
                    mem[0] = stor24[idx]
                    mem[32] = 5
                    _2732 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2732] = 30
                    mem[_2732 + 32] = 'SafeMath: subtraction overflow'
                    if stor5[stor24[idx]] <= s:
                        if s < stor5[stor24[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor5[stor24[idx]]
                        t = t - stor4[stor24[idx]]
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
                    if arg1 * _taxFee / 100 and stor28 / _tTotal > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor28 / _tTotal / arg1 * _taxFee / 100 != stor28 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3011 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3011] = 30
                    mem[_3011 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor28 / _tTotal > 0:
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
                    if 0 < arg1 * _taxFee / 100 * stor28 / _tTotal:
                        revert with 0, 17
                    _3390 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3390] = 30
                    mem[_3390 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * arg1 * _taxFee / 100 * stor28 / _tTotal:
                        if -1 * arg1 * _taxFee / 100 * stor28 / _tTotal < 0:
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
                if arg1 and stor28 / _tTotal > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor28 / _tTotal / arg1 != stor28 / _tTotal:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    _3010 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3010] = 30
                    mem[_3010 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor28 / _tTotal:
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
                    if arg1 * stor28 / _tTotal < 0:
                        revert with 0, 17
                    _3388 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3388] = 30
                    mem[_3388 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor28 / _tTotal:
                        if arg1 * stor28 / _tTotal < 0:
                            revert with 0, 17
                        return (arg1 * stor28 / _tTotal)
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
                if arg1 * _taxFee / 100 and stor28 / _tTotal > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * stor28 / _tTotal / arg1 * _taxFee / 100 != stor28 / _tTotal:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3273 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3273] = 30
                mem[_3273 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor28 / _tTotal > arg1 * stor28 / _tTotal:
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
                if arg1 * stor28 / _tTotal < arg1 * _taxFee / 100 * stor28 / _tTotal:
                    revert with 0, 17
                _3858 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3858] = 30
                mem[_3858 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (arg1 * stor28 / _tTotal) - (arg1 * _taxFee / 100 * stor28 / _tTotal):
                    if (arg1 * stor28 / _tTotal) - (arg1 * _taxFee / 100 * stor28 / _tTotal) < 0:
                        revert with 0, 17
                    return (arg1 * stor28 / _tTotal)
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
            if t >= stor28 / _tTotal:
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
                    if arg1 * _taxFee / 100 and stor28 / _tTotal > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor28 / _tTotal / arg1 * _taxFee / 100 != stor28 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _taxFee / 100 * stor28 / _tTotal > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * _taxFee / 100 * stor28 / _tTotal:
                        revert with 0, 17
                    if 0 > -1 * arg1 * _taxFee / 100 * stor28 / _tTotal:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * _taxFee / 100 * stor28 / _tTotal < 0:
                        revert with 0, 17
                    else:
                        return 0
                else:
                    return 0
            if arg1 and stor28 / _tTotal > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor28 / _tTotal / arg1 != stor28 / _tTotal:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _taxFee / 100:
                if 0 > arg1 * stor28 / _tTotal:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor28 / _tTotal < 0:
                    revert with 0, 17
                if 0 > arg1 * stor28 / _tTotal:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor28 / _tTotal < 0:
                    revert with 0, 17
            else:
                if arg1 * _taxFee / 100 and stor28 / _tTotal > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * stor28 / _tTotal / arg1 * _taxFee / 100 != stor28 / _tTotal:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * _taxFee / 100 * stor28 / _tTotal > arg1 * stor28 / _tTotal:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor28 / _tTotal < arg1 * _taxFee / 100 * stor28 / _tTotal:
                    revert with 0, 17
                if 0 > (arg1 * stor28 / _tTotal) - (arg1 * _taxFee / 100 * stor28 / _tTotal):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * stor28 / _tTotal) - (arg1 * _taxFee / 100 * stor28 / _tTotal) < 0:
                    revert with 0, 17
        else:
            if arg1 and uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / arg1 != uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))):
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
            if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 > arg1 - (arg1 * _taxFee / 100):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (arg1 * _taxFee / 100) < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                revert with 0, 17
            idx = 0
            s = _tTotal
            t = stor28
            while idx < stor24.length:
                mem[0] = stor24[idx]
                mem[32] = 4
                if stor4[stor24[idx]] > t:
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
                            if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                                return 0
                            if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and stor28 / _tTotal > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                                revert with 0, 17
                            if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                                revert with 0, 18
                            if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != stor28 / _tTotal:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _2946 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2946] = 30
                            mem[_2946 + 32] = 'SafeMath: subtraction overflow'
                            _3258 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3258] = 30
                            mem[_3258 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal <= 0:
                                if 0 < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal:
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
                        if arg1 * _taxFee / 100 and stor28 / _tTotal > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * stor28 / _tTotal / arg1 * _taxFee / 100 != stor28 / _tTotal:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                            _2945 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2945] = 30
                            mem[_2945 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _taxFee / 100 * stor28 / _tTotal > 0:
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
                            if 0 < arg1 * _taxFee / 100 * stor28 / _tTotal:
                                revert with 0, 17
                            _3256 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3256] = 30
                            mem[_3256 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * arg1 * _taxFee / 100 * stor28 / _tTotal:
                                if -1 * arg1 * _taxFee / 100 * stor28 / _tTotal < 0:
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
                        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and stor28 / _tTotal > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                            revert with 0, 17
                        if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                            revert with 0, 18
                        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != stor28 / _tTotal:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _3145 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3145] = 30
                        mem[_3145 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor28 / _tTotal > 0:
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
                        if 0 < arg1 * _taxFee / 100 * stor28 / _tTotal:
                            revert with 0, 17
                        _3678 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3678] = 30
                        mem[_3678 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal <= -1 * arg1 * _taxFee / 100 * stor28 / _tTotal:
                            if -1 * arg1 * _taxFee / 100 * stor28 / _tTotal < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal:
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
                    if arg1 and stor28 / _tTotal > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor28 / _tTotal / arg1 != stor28 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                            _2944 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2944] = 30
                            mem[_2944 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor28 / _tTotal:
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
                            if arg1 * stor28 / _tTotal < 0:
                                revert with 0, 17
                            _3253 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3253] = 30
                            mem[_3253 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor28 / _tTotal:
                                if arg1 * stor28 / _tTotal < 0:
                                    revert with 0, 17
                                return (arg1 * stor28 / _tTotal)
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
                        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and stor28 / _tTotal > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                            revert with 0, 17
                        if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                            revert with 0, 18
                        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != stor28 / _tTotal:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _3144 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3144] = 30
                        mem[_3144 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor28 / _tTotal:
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
                        if arg1 * stor28 / _tTotal < 0:
                            revert with 0, 17
                        _3676 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3676] = 30
                        mem[_3676 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal <= arg1 * stor28 / _tTotal:
                            if arg1 * stor28 / _tTotal < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal:
                                revert with 0, 17
                            return (arg1 * stor28 / _tTotal)
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
                    if arg1 * _taxFee / 100 and stor28 / _tTotal > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor28 / _tTotal / arg1 * _taxFee / 100 != stor28 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        _3143 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3143] = 30
                        mem[_3143 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor28 / _tTotal > arg1 * stor28 / _tTotal:
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
                        if arg1 * stor28 / _tTotal < arg1 * _taxFee / 100 * stor28 / _tTotal:
                            revert with 0, 17
                        _3674 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3674] = 30
                        mem[_3674 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor28 / _tTotal) - (arg1 * _taxFee / 100 * stor28 / _tTotal):
                            if (arg1 * stor28 / _tTotal) - (arg1 * _taxFee / 100 * stor28 / _tTotal) < 0:
                                revert with 0, 17
                            return (arg1 * stor28 / _tTotal)
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
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and stor28 / _tTotal > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        revert with 0, 17
                    if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        revert with 0, 18
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != stor28 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3503 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3503] = 30
                    mem[_3503 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor28 / _tTotal > arg1 * stor28 / _tTotal:
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
                    if arg1 * stor28 / _tTotal < arg1 * _taxFee / 100 * stor28 / _tTotal:
                        revert with 0, 17
                    _4155 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4155] = 30
                    mem[_4155 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal <= (arg1 * stor28 / _tTotal) - (arg1 * _taxFee / 100 * stor28 / _tTotal):
                        if (arg1 * stor28 / _tTotal) - (arg1 * _taxFee / 100 * stor28 / _tTotal) < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal:
                            revert with 0, 17
                        return (arg1 * stor28 / _tTotal)
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
                if idx >= stor24.length:
                    revert with 0, 50
                mem[0] = stor24[idx]
                mem[32] = 5
                if stor5[stor24[idx]] <= s:
                    if idx >= stor24.length:
                        revert with 0, 50
                    mem[0] = stor24[idx]
                    mem[32] = 4
                    _2512 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2512] = 30
                    mem[_2512 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor24[idx]] > t:
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
                    if t < stor4[stor24[idx]]:
                        revert with 0, 17
                    if idx >= stor24.length:
                        revert with 0, 50
                    mem[0] = stor24[idx]
                    mem[32] = 5
                    _2729 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2729] = 30
                    mem[_2729 + 32] = 'SafeMath: subtraction overflow'
                    if stor5[stor24[idx]] <= s:
                        if s < stor5[stor24[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor5[stor24[idx]]
                        t = t - stor4[stor24[idx]]
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
                        if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                            return 0
                        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and stor28 / _tTotal > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                            revert with 0, 17
                        if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                            revert with 0, 18
                        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != stor28 / _tTotal:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _3005 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3005] = 30
                        mem[_3005 + 32] = 'SafeMath: subtraction overflow'
                        _3384 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3384] = 30
                        mem[_3384 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal <= 0:
                            if 0 < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal:
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
                    if arg1 * _taxFee / 100 and stor28 / _tTotal > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor28 / _tTotal / arg1 * _taxFee / 100 != stor28 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        _3004 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3004] = 30
                        mem[_3004 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor28 / _tTotal > 0:
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
                        if 0 < arg1 * _taxFee / 100 * stor28 / _tTotal:
                            revert with 0, 17
                        _3382 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3382] = 30
                        mem[_3382 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _taxFee / 100 * stor28 / _tTotal:
                            if -1 * arg1 * _taxFee / 100 * stor28 / _tTotal < 0:
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
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and stor28 / _tTotal > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        revert with 0, 17
                    if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        revert with 0, 18
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != stor28 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3261 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3261] = 30
                    mem[_3261 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor28 / _tTotal > 0:
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
                    if 0 < arg1 * _taxFee / 100 * stor28 / _tTotal:
                        revert with 0, 17
                    _3848 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3848] = 30
                    mem[_3848 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal <= -1 * arg1 * _taxFee / 100 * stor28 / _tTotal:
                        if -1 * arg1 * _taxFee / 100 * stor28 / _tTotal < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal:
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
                if arg1 and stor28 / _tTotal > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor28 / _tTotal / arg1 != stor28 / _tTotal:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        _3003 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3003] = 30
                        mem[_3003 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor28 / _tTotal:
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
                        if arg1 * stor28 / _tTotal < 0:
                            revert with 0, 17
                        _3379 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3379] = 30
                        mem[_3379 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor28 / _tTotal:
                            if arg1 * stor28 / _tTotal < 0:
                                revert with 0, 17
                            return (arg1 * stor28 / _tTotal)
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
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and stor28 / _tTotal > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        revert with 0, 17
                    if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        revert with 0, 18
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != stor28 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3260 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3260] = 30
                    mem[_3260 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor28 / _tTotal:
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
                    if arg1 * stor28 / _tTotal < 0:
                        revert with 0, 17
                    _3846 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3846] = 30
                    mem[_3846 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal <= arg1 * stor28 / _tTotal:
                        if arg1 * stor28 / _tTotal < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal:
                            revert with 0, 17
                        return (arg1 * stor28 / _tTotal)
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
                if arg1 * _taxFee / 100 and stor28 / _tTotal > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * stor28 / _tTotal / arg1 * _taxFee / 100 != stor28 / _tTotal:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                    _3259 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3259] = 30
                    mem[_3259 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor28 / _tTotal > arg1 * stor28 / _tTotal:
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
                    if arg1 * stor28 / _tTotal < arg1 * _taxFee / 100 * stor28 / _tTotal:
                        revert with 0, 17
                    _3844 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3844] = 30
                    mem[_3844 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor28 / _tTotal) - (arg1 * _taxFee / 100 * stor28 / _tTotal):
                        if (arg1 * stor28 / _tTotal) - (arg1 * _taxFee / 100 * stor28 / _tTotal) < 0:
                            revert with 0, 17
                        return (arg1 * stor28 / _tTotal)
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
                if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and stor28 / _tTotal > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                    revert with 0, 17
                if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                    revert with 0, 18
                if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != stor28 / _tTotal:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3681 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3681] = 30
                mem[_3681 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor28 / _tTotal > arg1 * stor28 / _tTotal:
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
                if arg1 * stor28 / _tTotal < arg1 * _taxFee / 100 * stor28 / _tTotal:
                    revert with 0, 17
                _4311 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4311] = 30
                mem[_4311 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal <= (arg1 * stor28 / _tTotal) - (arg1 * _taxFee / 100 * stor28 / _tTotal):
                    if (arg1 * stor28 / _tTotal) - (arg1 * _taxFee / 100 * stor28 / _tTotal) < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal:
                        revert with 0, 17
                    return (arg1 * stor28 / _tTotal)
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
            if t >= stor28 / _tTotal:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                            if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and t / s > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                                revert with 0, 17
                            if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                                revert with 0, 18
                            if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * t / s / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * t / s:
                                revert with 0, 17
                    else:
                        if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                            if arg1 * _taxFee / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _taxFee / 100 * t / s:
                                revert with 0, 17
                            if 0 > -1 * arg1 * _taxFee / 100 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _taxFee / 100 * t / s < 0:
                                revert with 0, 17
                        else:
                            if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and t / s > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                                revert with 0, 17
                            if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                                revert with 0, 18
                            if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * t / s / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * _taxFee / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _taxFee / 100 * t / s:
                                revert with 0, 17
                            if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * t / s > -1 * arg1 * _taxFee / 100 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _taxFee / 100 * t / s < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * t / s:
                                revert with 0, 17
                    return 0
                if arg1 and t / s > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                    else:
                        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and t / s > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                            revert with 0, 17
                        if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                            revert with 0, 18
                        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * t / s / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * t / s:
                            revert with 0, 17
                else:
                    if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < arg1 * _taxFee / 100 * t / s:
                            revert with 0, 17
                        if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) < 0:
                            revert with 0, 17
                    else:
                        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and t / s > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                            revert with 0, 17
                        if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                            revert with 0, 18
                        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * t / s / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < arg1 * _taxFee / 100 * t / s:
                            revert with 0, 17
                        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * t / s > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * t / s:
                            revert with 0, 17
                return (arg1 * t / s)
            if not _tTotal:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                if not arg1 * _taxFee / 100:
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and stor28 / _tTotal > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                            revert with 0, 17
                        if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                            revert with 0, 18
                        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != stor28 / _tTotal:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal:
                            revert with 0, 17
                else:
                    if arg1 * _taxFee / 100 and stor28 / _tTotal > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor28 / _tTotal / arg1 * _taxFee / 100 != stor28 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        if arg1 * _taxFee / 100 * stor28 / _tTotal > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _taxFee / 100 * stor28 / _tTotal:
                            revert with 0, 17
                        if 0 > -1 * arg1 * _taxFee / 100 * stor28 / _tTotal:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * _taxFee / 100 * stor28 / _tTotal < 0:
                            revert with 0, 17
                    else:
                        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and stor28 / _tTotal > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                            revert with 0, 17
                        if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                            revert with 0, 18
                        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != stor28 / _tTotal:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _taxFee / 100 * stor28 / _tTotal > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _taxFee / 100 * stor28 / _tTotal:
                            revert with 0, 17
                        if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal > -1 * arg1 * _taxFee / 100 * stor28 / _tTotal:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * _taxFee / 100 * stor28 / _tTotal < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal:
                            revert with 0, 17
                return 0
            if arg1 and stor28 / _tTotal > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor28 / _tTotal / arg1 != stor28 / _tTotal:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _taxFee / 100:
                if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                    if 0 > arg1 * stor28 / _tTotal:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor28 / _tTotal < 0:
                        revert with 0, 17
                    if 0 > arg1 * stor28 / _tTotal:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor28 / _tTotal < 0:
                        revert with 0, 17
                else:
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and stor28 / _tTotal > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        revert with 0, 17
                    if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        revert with 0, 18
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != stor28 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * stor28 / _tTotal:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor28 / _tTotal < 0:
                        revert with 0, 17
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal > arg1 * stor28 / _tTotal:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor28 / _tTotal < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal:
                        revert with 0, 17
            else:
                if arg1 * _taxFee / 100 and stor28 / _tTotal > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * stor28 / _tTotal / arg1 * _taxFee / 100 != stor28 / _tTotal:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                    if arg1 * _taxFee / 100 * stor28 / _tTotal > arg1 * stor28 / _tTotal:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor28 / _tTotal < arg1 * _taxFee / 100 * stor28 / _tTotal:
                        revert with 0, 17
                    if 0 > (arg1 * stor28 / _tTotal) - (arg1 * _taxFee / 100 * stor28 / _tTotal):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * stor28 / _tTotal) - (arg1 * _taxFee / 100 * stor28 / _tTotal) < 0:
                        revert with 0, 17
                else:
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 and stor28 / _tTotal > -1 / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        revert with 0, 17
                    if not arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100:
                        revert with 0, 18
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal / arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 != stor28 / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _taxFee / 100 * stor28 / _tTotal > arg1 * stor28 / _tTotal:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor28 / _tTotal < arg1 * _taxFee / 100 * stor28 / _tTotal:
                        revert with 0, 17
                    if arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal > (arg1 * stor28 / _tTotal) - (arg1 * _taxFee / 100 * stor28 / _tTotal):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * stor28 / _tTotal) - (arg1 * _taxFee / 100 * stor28 / _tTotal) < arg1 * uint8(_rewardFee + uint8(sub_0f94892c + uint8(_buybackFee + uint8(_walletFee + uint8(_burnFee + _liquidityFee))))) / 100 * stor28 / _tTotal:
                        revert with 0, 17
    return (arg1 * stor28 / _tTotal)
}



}
