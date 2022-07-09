contract main {




// =====================  Runtime code  =====================


#
#  - _fallback()
#
const decimals = 18

const VERSION = 1


mapping of uint256 balanceOf;
mapping of struct allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
address owner;
address uniswapV2RouterAddress;
uint8 stor7; offset 160
address uniswapV2PairAddress;
address dividendTrackerAddress;
address rewardTokenAddress;
uint256 swapTokensAtAmount;
uint256 tokenRewardsFee;
uint256 liquidityFee;
uint256 marketingFee;
uint256 totalFees;
address _marketingWalletAddress;
uint256 gasForProcessing;
mapping of uint8 stor17;
mapping of uint8 stor18;

function totalFees() {
    return totalFees
}

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function totalSupply() {
    return totalSupply
}

function dividendTracker() {
    return dividendTrackerAddress
}

function _marketingWalletAddress() {
    return _marketingWalletAddress
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function isExcludedFromFees(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor17[address(arg1)])
}

function marketingFee() {
    return marketingFee
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function liquidityFee() {
    return liquidityFee
}

function gasForProcessing() {
    return gasForProcessing
}

function automatedMarketMakerPairs(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor18[arg1])
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)].field_0
}

function swapTokensAtAmount() {
    return swapTokensAtAmount
}

function tokenRewardsFee() {
    return tokenRewardsFee
}

function rewardToken() {
    return rewardTokenAddress
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setSwapTokensAtAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    swapTokensAtAmount = arg1
}

function setMarketingWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _marketingWalletAddress = arg1
}

function getClaimWait() {
    require ext_code.size(dividendTrackerAddress)
    staticcall dividendTrackerAddress.claimWait() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getLastProcessedIndex() {
    require ext_code.size(dividendTrackerAddress)
    staticcall dividendTrackerAddress.0xe7841ec0 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getTotalDividendsDistributed() {
    require ext_code.size(dividendTrackerAddress)
    staticcall dividendTrackerAddress.totalDividendsDistributed() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getNumberOfDividendTokenHolders() {
    require ext_code.size(dividendTrackerAddress)
    staticcall dividendTrackerAddress.getNumberOfTokenHolders() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getMinimumTokenBalanceForDividends() {
    require ext_code.size(dividendTrackerAddress)
    staticcall dividendTrackerAddress.minimumTokenBalanceForDividends() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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

function claim() {
    require ext_code.size(dividendTrackerAddress)
    call dividendTrackerAddress.processAccount(address arg1, bool arg2) with:
         gas gas_remaining wei
        args msg.sender, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function updateClaimWait(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(dividendTrackerAddress)
    call dividendTrackerAddress.0xe98030c7 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function dividendTokenBalanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(dividendTrackerAddress)
    staticcall dividendTrackerAddress.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withdrawableDividendOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(dividendTrackerAddress)
    staticcall dividendTrackerAddress.0xa8b9d240 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function excludeFromDividends(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(dividendTrackerAddress)
    call dividendTrackerAddress.0x31e79db0 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setTokenRewardsFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenRewardsFee = arg1
    if arg1 > !liquidityFee:
        revert with 0, 17
    if arg1 + liquidityFee > !marketingFee:
        revert with 0, 17
    totalFees = arg1 + liquidityFee + marketingFee
    if 25 < arg1 + liquidityFee + marketingFee:
        revert with 0, 'Total fee is over 25%'
}

function updateMinimumTokenBalanceForDividends(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(dividendTrackerAddress)
    call dividendTrackerAddress.updateMinimumTokenBalanceForDividends(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setLiquiditFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    liquidityFee = arg1
    if tokenRewardsFee > !arg1:
        revert with 0, 17
    if tokenRewardsFee + arg1 > !marketingFee:
        revert with 0, 17
    totalFees = tokenRewardsFee + arg1 + marketingFee
    if 25 < tokenRewardsFee + arg1 + marketingFee:
        revert with 0, 'Total fee is over 25%'
}

function setMarketingFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    marketingFee = arg1
    if tokenRewardsFee > !liquidityFee:
        revert with 0, 17
    if tokenRewardsFee + liquidityFee > !arg1:
        revert with 0, 17
    totalFees = tokenRewardsFee + liquidityFee + arg1
    if 25 < tokenRewardsFee + liquidityFee + arg1:
        revert with 0, 'Total fee is over 25%'
}

function processDividendTracker(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(dividendTrackerAddress)
    call dividendTrackerAddress.process(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], arg1, 0, tx.origin);
}

function isExcludedFromDividends(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(dividendTrackerAddress)
    staticcall dividendTrackerAddress.0xc705c569 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function excludeFromFees(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 == bool(stor17[address(arg1)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'BABYTOKEN: Account is already the value of 'excluded''
    stor17[address(arg1)] = uint8(arg2)
    emit ExcludeFromFees(arg2, arg1);
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

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)].field_0 > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)].field_0 = allowance[msg.sender][address(arg1)].field_0 + arg2
    emit Approval((allowance[msg.sender][address(arg1)].field_0 + arg2), msg.sender, arg1);
    return 1
}

function getAccountDividendsInfoAtIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(dividendTrackerAddress)
    staticcall dividendTrackerAddress.getAccountAtIndex(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 256
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96],
           ext_call.return_data[128],
           ext_call.return_data[160],
           ext_call.return_data[192],
           ext_call.return_data[224]
}

function getAccountDividendsInfo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(dividendTrackerAddress)
    staticcall dividendTrackerAddress.getAccount(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 256
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96],
           ext_call.return_data[128],
           ext_call.return_data[160],
           ext_call.return_data[192],
           ext_call.return_data[224]
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)].field_0 < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)].field_0 = allowance[msg.sender][address(arg1)].field_0 - arg2
    emit Approval((allowance[msg.sender][address(arg1)].field_0 - arg2), msg.sender, arg1);
    return 1
}

function updateGasForProcessing(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 200000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'BABYTOKEN: gasForProcessing must be between 200,000 and 500,000'
    if arg1 > 500000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'BABYTOKEN: gasForProcessing must be between 200,000 and 500,000'
    if arg1 == gasForProcessing:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'BABYTOKEN: Cannot update gasForProcessing to same value'
    emit GasForProcessingUpdated(arg1, gasForProcessing);
    gasForProcessing = arg1
}

function setAutomatedMarketMakerPair(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uniswapV2PairAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'BABYTOKEN: The PancakeSwap pair cannot be removed from automatedMarketMakerPairs'
    if arg2 == bool(stor18[address(arg1)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'BABYTOKEN: Automated market maker pair is already set to that value'
    stor18[address(arg1)] = uint8(arg2)
    if arg2:
        require ext_code.size(dividendTrackerAddress)
        call dividendTrackerAddress.0x31e79db0 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit SetAutomatedMarketMakerPair(arg1, arg2);
}

function excludeMultipleAccountsFromFees(address[] arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 17
        stor17[address(cd[((32 * idx) + arg1 + 36)])] = uint8(arg2)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    s = 192
    t = arg1 + 36
    while idx < arg1.length:
        require cd[t] == address(cd[t])
        mem[s] = address(cd[t])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit ExcludeMultipleAccountsFromFees(Array(len=arg1.length, data=mem[192 len 32 * arg1.length]), arg2);
}

function updateUniswapV2Router(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uniswapV2RouterAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BABYTOKEN: The router already has that address'
    emit UpdateUniswapV2Router(arg1, uniswapV2RouterAddress);
    uniswapV2RouterAddress = arg1
    require ext_code.size(arg1)
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(uniswapV2RouterAddress)
    staticcall uniswapV2RouterAddress.WETH() with:
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
}

function updateDividendTracker(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if dividendTrackerAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'BABYTOKEN: The dividend tracker already has that address'
    require ext_code.size(arg1)
    staticcall arg1.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'BABYTOKEN: The new dividend tracker must be owned by the BABYTOKEN token contract'
    require ext_code.size(arg1)
    call arg1.0x31e79db0 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.0x31e79db0 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.0x31e79db0 with:
         gas gas_remaining wei
        args owner
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.0x31e79db0 with:
         gas gas_remaining wei
        args uniswapV2RouterAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit UpdateDividendTracker(arg1, dividendTrackerAddress);
    dividendTrackerAddress = arg1
}

function name() {
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor3.length):
            if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor3.length):
                if 31 < uint255(stor3.length) * 0.5:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor3.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(uint255(stor3.length) * 0.5) + 192 len ceil32(uint255(stor3.length) * 0.5)] = mem[128 len ceil32(uint255(stor3.length) * 0.5)]
        if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
            mem[ceil32(uint255(stor3.length) * 0.5) + (uint255(stor3.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 0, 34
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor3.length):
            if 31 < uint255(stor3.length) * 0.5:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while (uint255(stor3.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
    if ceil32(stor3.length.field_1) > stor3.length.field_1:
        mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
}

function symbol() {
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4.length):
                if 31 < uint255(stor4.length) * 0.5:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor4.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(uint255(stor4.length) * 0.5) + 192 len ceil32(uint255(stor4.length) * 0.5)] = mem[128 len ceil32(uint255(stor4.length) * 0.5)]
        if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
            mem[ceil32(uint255(stor4.length) * 0.5) + (uint255(stor4.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 0, 34
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor4.length):
            if 31 < uint255(stor4.length) * 0.5:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while (uint255(stor4.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
    if ceil32(stor4.length.field_1) > stor4.length.field_1:
        mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if not arg2:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
        if balanceOf[address(msg.sender)] < 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
        if balanceOf[arg1] > -1:
            revert with 0, 17
        emit Transfer(0, msg.sender, arg1);
    else:
        if balanceOf[this.address] < swapTokensAtAmount:
            if stor17[address(msg.sender)]:
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[arg1] > !arg2:
                    revert with 0, 17
                balanceOf[arg1] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if stor17[address(arg1)]:
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    balanceOf[arg1] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if stor7:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !arg2:
                            revert with 0, 17
                        balanceOf[arg1] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if arg2 and totalFees > -1 / arg2:
                            revert with 0, 17
                        if not stor18[address(arg1)]:
                            if arg2 < arg2 * totalFees / 100:
                                revert with 0, 17
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not this.address:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < arg2 * totalFees / 100:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] -= arg2 * totalFees / 100
                            if balanceOf[this.address] > !(arg2 * totalFees / 100):
                                revert with 0, 17
                            balanceOf[this.address] += arg2 * totalFees / 100
                            emit Transfer((arg2 * totalFees / 100), msg.sender, this.address);
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * totalFees / 100):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * totalFees / 100)
                            if balanceOf[arg1] > !(arg2 - (arg2 * totalFees / 100)):
                                revert with 0, 17
                            balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * totalFees / 100)
                            emit Transfer((arg2 - (arg2 * totalFees / 100)), msg.sender, arg1);
                        else:
                            if arg2 and 1 > -1 / arg2:
                                revert with 0, 17
                            if arg2 * totalFees / 100 > !(arg2 / 100):
                                revert with 0, 17
                            if arg2 < (arg2 * totalFees / 100) + (arg2 / 100):
                                revert with 0, 17
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not this.address:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < (arg2 * totalFees / 100) + (arg2 / 100):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 * totalFees / 100) - (arg2 / 100)
                            if balanceOf[this.address] > !((arg2 * totalFees / 100) + (arg2 / 100)):
                                revert with 0, 17
                            balanceOf[this.address] = balanceOf[this.address] + (arg2 * totalFees / 100) + (arg2 / 100)
                            emit Transfer(((arg2 * totalFees / 100) + (arg2 / 100)), msg.sender, this.address);
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * totalFees / 100) - (arg2 / 100):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * totalFees / 100) + (arg2 / 100)
                            if balanceOf[arg1] > !(arg2 - (arg2 * totalFees / 100) - (arg2 / 100)):
                                revert with 0, 17
                            balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * totalFees / 100) - (arg2 / 100)
                            emit Transfer((arg2 - (arg2 * totalFees / 100) - (arg2 / 100)), msg.sender, arg1);
        else:
            if stor7:
                if stor17[address(msg.sender)]:
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    balanceOf[arg1] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if stor17[address(arg1)]:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !arg2:
                            revert with 0, 17
                        balanceOf[arg1] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if stor7:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            balanceOf[arg1] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if arg2 and totalFees > -1 / arg2:
                                revert with 0, 17
                            if not stor18[address(arg1)]:
                                if arg2 < arg2 * totalFees / 100:
                                    revert with 0, 17
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2 * totalFees / 100:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= arg2 * totalFees / 100
                                if balanceOf[this.address] > !(arg2 * totalFees / 100):
                                    revert with 0, 17
                                balanceOf[this.address] += arg2 * totalFees / 100
                                emit Transfer((arg2 * totalFees / 100), msg.sender, this.address);
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2 - (arg2 * totalFees / 100):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * totalFees / 100)
                                if balanceOf[arg1] > !(arg2 - (arg2 * totalFees / 100)):
                                    revert with 0, 17
                                balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * totalFees / 100)
                                emit Transfer((arg2 - (arg2 * totalFees / 100)), msg.sender, arg1);
                            else:
                                if arg2 and 1 > -1 / arg2:
                                    revert with 0, 17
                                if arg2 * totalFees / 100 > !(arg2 / 100):
                                    revert with 0, 17
                                if arg2 < (arg2 * totalFees / 100) + (arg2 / 100):
                                    revert with 0, 17
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < (arg2 * totalFees / 100) + (arg2 / 100):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 * totalFees / 100) - (arg2 / 100)
                                if balanceOf[this.address] > !((arg2 * totalFees / 100) + (arg2 / 100)):
                                    revert with 0, 17
                                balanceOf[this.address] = balanceOf[this.address] + (arg2 * totalFees / 100) + (arg2 / 100)
                                emit Transfer(((arg2 * totalFees / 100) + (arg2 / 100)), msg.sender, this.address);
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2 - (arg2 * totalFees / 100) - (arg2 / 100):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * totalFees / 100) + (arg2 / 100)
                                if balanceOf[arg1] > !(arg2 - (arg2 * totalFees / 100) - (arg2 / 100)):
                                    revert with 0, 17
                                balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * totalFees / 100) - (arg2 / 100)
                                emit Transfer((arg2 - (arg2 * totalFees / 100) - (arg2 / 100)), msg.sender, arg1);
            else:
                if stor18[address(msg.sender)]:
                    if stor17[address(msg.sender)]:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !arg2:
                            revert with 0, 17
                        balanceOf[arg1] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if stor17[address(arg1)]:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            balanceOf[arg1] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if stor7:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if arg2 and totalFees > -1 / arg2:
                                    revert with 0, 17
                                if not stor18[address(arg1)]:
                                    if arg2 < arg2 * totalFees / 100:
                                        revert with 0, 17
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < arg2 * totalFees / 100:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] -= arg2 * totalFees / 100
                                    if balanceOf[this.address] > !(arg2 * totalFees / 100):
                                        revert with 0, 17
                                    balanceOf[this.address] += arg2 * totalFees / 100
                                    emit Transfer((arg2 * totalFees / 100), msg.sender, this.address);
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * totalFees / 100):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * totalFees / 100)
                                    if balanceOf[arg1] > !(arg2 - (arg2 * totalFees / 100)):
                                        revert with 0, 17
                                    balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * totalFees / 100)
                                    emit Transfer((arg2 - (arg2 * totalFees / 100)), msg.sender, arg1);
                                else:
                                    if arg2 and 1 > -1 / arg2:
                                        revert with 0, 17
                                    if arg2 * totalFees / 100 > !(arg2 / 100):
                                        revert with 0, 17
                                    if arg2 < (arg2 * totalFees / 100) + (arg2 / 100):
                                        revert with 0, 17
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < (arg2 * totalFees / 100) + (arg2 / 100):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 * totalFees / 100) - (arg2 / 100)
                                    if balanceOf[this.address] > !((arg2 * totalFees / 100) + (arg2 / 100)):
                                        revert with 0, 17
                                    balanceOf[this.address] = balanceOf[this.address] + (arg2 * totalFees / 100) + (arg2 / 100)
                                    emit Transfer(((arg2 * totalFees / 100) + (arg2 / 100)), msg.sender, this.address);
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * totalFees / 100) - (arg2 / 100):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * totalFees / 100) + (arg2 / 100)
                                    if balanceOf[arg1] > !(arg2 - (arg2 * totalFees / 100) - (arg2 / 100)):
                                        revert with 0, 17
                                    balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * totalFees / 100) - (arg2 / 100)
                                    emit Transfer((arg2 - (arg2 * totalFees / 100) - (arg2 / 100)), msg.sender, arg1);
                else:
                    if owner == msg.sender:
                        if stor17[address(msg.sender)]:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            balanceOf[arg1] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if stor17[address(arg1)]:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if stor7:
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg2 and totalFees > -1 / arg2:
                                        revert with 0, 17
                                    if not stor18[address(arg1)]:
                                        if arg2 < arg2 * totalFees / 100:
                                            revert with 0, 17
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2 * totalFees / 100:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= arg2 * totalFees / 100
                                        if balanceOf[this.address] > !(arg2 * totalFees / 100):
                                            revert with 0, 17
                                        balanceOf[this.address] += arg2 * totalFees / 100
                                        emit Transfer((arg2 * totalFees / 100), msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * totalFees / 100):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * totalFees / 100)
                                        if balanceOf[arg1] > !(arg2 - (arg2 * totalFees / 100)):
                                            revert with 0, 17
                                        balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * totalFees / 100)
                                        emit Transfer((arg2 - (arg2 * totalFees / 100)), msg.sender, arg1);
                                    else:
                                        if arg2 and 1 > -1 / arg2:
                                            revert with 0, 17
                                        if arg2 * totalFees / 100 > !(arg2 / 100):
                                            revert with 0, 17
                                        if arg2 < (arg2 * totalFees / 100) + (arg2 / 100):
                                            revert with 0, 17
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < (arg2 * totalFees / 100) + (arg2 / 100):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 * totalFees / 100) - (arg2 / 100)
                                        if balanceOf[this.address] > !((arg2 * totalFees / 100) + (arg2 / 100)):
                                            revert with 0, 17
                                        balanceOf[this.address] = balanceOf[this.address] + (arg2 * totalFees / 100) + (arg2 / 100)
                                        emit Transfer(((arg2 * totalFees / 100) + (arg2 / 100)), msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * totalFees / 100) - (arg2 / 100):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * totalFees / 100) + (arg2 / 100)
                                        if balanceOf[arg1] > !(arg2 - (arg2 * totalFees / 100) - (arg2 / 100)):
                                            revert with 0, 17
                                        balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * totalFees / 100) - (arg2 / 100)
                                        emit Transfer((arg2 - (arg2 * totalFees / 100) - (arg2 / 100)), msg.sender, arg1);
                    else:
                        if owner == arg1:
                            if stor17[address(msg.sender)]:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if stor17[address(arg1)]:
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor7:
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        balanceOf[arg1] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg2 and totalFees > -1 / arg2:
                                            revert with 0, 17
                                        if not stor18[address(arg1)]:
                                            if arg2 < arg2 * totalFees / 100:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < arg2 * totalFees / 100:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= arg2 * totalFees / 100
                                            if balanceOf[this.address] > !(arg2 * totalFees / 100):
                                                revert with 0, 17
                                            balanceOf[this.address] += arg2 * totalFees / 100
                                            emit Transfer((arg2 * totalFees / 100), msg.sender, this.address);
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * totalFees / 100):
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * totalFees / 100)
                                            if balanceOf[arg1] > !(arg2 - (arg2 * totalFees / 100)):
                                                revert with 0, 17
                                            balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * totalFees / 100)
                                            emit Transfer((arg2 - (arg2 * totalFees / 100)), msg.sender, arg1);
                                        else:
                                            if arg2 and 1 > -1 / arg2:
                                                revert with 0, 17
                                            if arg2 * totalFees / 100 > !(arg2 / 100):
                                                revert with 0, 17
                                            if arg2 < (arg2 * totalFees / 100) + (arg2 / 100):
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < (arg2 * totalFees / 100) + (arg2 / 100):
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 * totalFees / 100) - (arg2 / 100)
                                            if balanceOf[this.address] > !((arg2 * totalFees / 100) + (arg2 / 100)):
                                                revert with 0, 17
                                            balanceOf[this.address] = balanceOf[this.address] + (arg2 * totalFees / 100) + (arg2 / 100)
                                            emit Transfer(((arg2 * totalFees / 100) + (arg2 / 100)), msg.sender, this.address);
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * totalFees / 100) - (arg2 / 100):
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * totalFees / 100) + (arg2 / 100)
                                            if balanceOf[arg1] > !(arg2 - (arg2 * totalFees / 100) - (arg2 / 100)):
                                                revert with 0, 17
                                            balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * totalFees / 100) - (arg2 / 100)
                                            emit Transfer((arg2 - (arg2 * totalFees / 100) - (arg2 / 100)), msg.sender, arg1);
                        else:
                            stor7 = 1
                            if balanceOf[this.address] and marketingFee > -1 / balanceOf[this.address]:
                                revert with 0, 17
                            if not totalFees:
                                revert with 0, 18
                            mem[100] = this.address
                            require ext_code.size(rewardTokenAddress)
                            staticcall rewardTokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[ceil32(return_data.size) + 96] = 3
                            mem[ceil32(return_data.size) + 128] = this.address
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 224
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                            mem[ceil32(return_data.size) + 192] = rewardTokenAddress
                            if not this.address:
                                mem[(2 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 228] = 32
                                mem[(2 * ceil32(return_data.size)) + 260] = 36
                                mem[(2 * ceil32(return_data.size)) + 292] = 'ERC20: approve from the zero add'
                                mem[(2 * ceil32(return_data.size)) + 324] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                revert with memory
                                  from (2 * ceil32(return_data.size)) + 224
                                   len ceil32(return_data.size) + 132
                            if not uniswapV2RouterAddress:
                                mem[(2 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 228] = 32
                                mem[(2 * ceil32(return_data.size)) + 260] = 34
                                mem[(2 * ceil32(return_data.size)) + 292] = 'ERC20: approve to the zero addre'
                                mem[(2 * ceil32(return_data.size)) + 324] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                revert with memory
                                  from (2 * ceil32(return_data.size)) + 224
                                   len ceil32(return_data.size) + 132
                            mem[0] = uniswapV2RouterAddress
                            mem[32] = sha3(address(this.address), 1)
                            allowance[address(this.address)][stor6].field_0 = balanceOf[this.address] * marketingFee / totalFees
                            mem[(2 * ceil32(return_data.size)) + 224] = balanceOf[this.address] * marketingFee / totalFees
                            emit Approval(mem[(2 * ceil32(return_data.size)) + 224 len ceil32(return_data.size) + 32], this.address, uniswapV2RouterAddress);
                            mem[(2 * ceil32(return_data.size)) + 224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 228] = balanceOf[this.address] * marketingFee / totalFees
                            mem[(2 * ceil32(return_data.size)) + 260] = 0
                            mem[(2 * ceil32(return_data.size)) + 292] = 160
                            mem[(2 * ceil32(return_data.size)) + 388] = 3
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 420
                            t = ceil32(return_data.size) + 128
                            while idx < mem[ceil32(return_data.size) + 96]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 324] = this.address
                            mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 512]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(rewardTokenAddress)
                            staticcall rewardTokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2270 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2271 = mem[_2270]
                            if mem[_2270] < ext_call.return_data[0]:
                                revert with 0, 17
                            mem[mem[64] + 4] = _marketingWalletAddress
                            mem[mem[64] + 36] = _2271 - ext_call.return_data[0]
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args _marketingWalletAddress, _2271 - ext_call.return_data[0]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2274 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2274] == bool(mem[_2274])
                            if balanceOf[this.address] and liquidityFee > -1 / balanceOf[this.address]:
                                revert with 0, 17
                            if not totalFees:
                                revert with 0, 18
                            if balanceOf[this.address] * liquidityFee / totalFees < balanceOf[this.address] * liquidityFee / totalFees / 2:
                                revert with 0, 17
                            _2276 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            mem[_2276 + 32 len 64] = call.data[calldata.size len 64]
                            if 0 >= mem[_2276]:
                                revert with 0, 50
                            mem[_2276 + 32] = this.address
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[_2276 + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _2276 + ceil32(return_data.size) + 96
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if 1 >= mem[_2276]:
                                revert with 0, 50
                            mem[_2276 + 64] = ext_call.return_data[12 len 20]
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            mem[0] = uniswapV2RouterAddress
                            mem[32] = sha3(address(this.address), 1)
                            allowance[address(this.address)][stor6].field_0 = balanceOf[this.address] * liquidityFee / totalFees / 2
                            allowance[address(this.address)][stor6].field_255 = 0
                            emit Approval((balanceOf[this.address] * liquidityFee / totalFees / 2), this.address, uniswapV2RouterAddress);
                            mem[_2276 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[_2276 + ceil32(return_data.size) + 100] = balanceOf[this.address] * liquidityFee / totalFees / 2
                            mem[_2276 + ceil32(return_data.size) + 132] = 0
                            mem[_2276 + ceil32(return_data.size) + 164] = 160
                            mem[_2276 + ceil32(return_data.size) + 260] = mem[_2276]
                            idx = 0
                            s = _2276 + ceil32(return_data.size) + 292
                            t = _2276 + 32
                            while idx < mem[_2276]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_2276 + ceil32(return_data.size) + 196] = this.address
                            mem[_2276 + ceil32(return_data.size) + 228] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2276 + ceil32(return_data.size) + (32 * mem[_2276]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 0, 17
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            mem[0] = uniswapV2RouterAddress
                            mem[32] = sha3(address(this.address), 1)
                            allowance[address(this.address)][stor6].field_0 = (balanceOf[this.address] * liquidityFee / totalFees) - (balanceOf[this.address] * liquidityFee / totalFees / 2)
                            emit Approval(((balanceOf[this.address] * liquidityFee / totalFees) - (balanceOf[this.address] * liquidityFee / totalFees / 2)), this.address, uniswapV2RouterAddress);
                            mem[mem[64] + 68] = 0
                            mem[mem[64] + 100] = 0
                            mem[mem[64] + 132] = 0
                            mem[mem[64] + 164] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                 gas gas_remaining wei
                                args this.address, (balanceOf[this.address] * liquidityFee / totalFees) - (balanceOf[this.address] * liquidityFee / totalFees / 2), 0, 0, 0, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            mem[mem[64] + 32] = 0
                            mem[mem[64] + 64] = (balanceOf[this.address] * liquidityFee / totalFees) - (balanceOf[this.address] * liquidityFee / totalFees / 2)
                            emit SwapAndLiquify(Mask(255, 1, balanceOf[this.address] * liquidityFee / totalFees), 0, (balanceOf[this.address] * liquidityFee / totalFees) - (balanceOf[this.address] * liquidityFee / totalFees / 2));
                            mem[0] = this.address
                            mem[32] = 0
                            _3169 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            mem[_3169 + 32 len 96] = call.data[calldata.size len 96]
                            if 0 >= mem[_3169]:
                                revert with 0, 50
                            mem[_3169 + 32] = this.address
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[_3169 + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _3169 + ceil32(return_data.size) + 128
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if 1 >= mem[_3169]:
                                revert with 0, 50
                            mem[_3169 + 64] = ext_call.return_data[12 len 20]
                            if 2 >= mem[_3169]:
                                revert with 0, 50
                            mem[_3169 + 96] = rewardTokenAddress
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            mem[0] = uniswapV2RouterAddress
                            mem[32] = sha3(address(this.address), 1)
                            allowance[address(this.address)][stor6].field_0 = balanceOf[this.address]
                            emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                            mem[_3169 + ceil32(return_data.size) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[_3169 + ceil32(return_data.size) + 132] = balanceOf[this.address]
                            mem[_3169 + ceil32(return_data.size) + 164] = 0
                            mem[_3169 + ceil32(return_data.size) + 196] = 160
                            mem[_3169 + ceil32(return_data.size) + 292] = mem[_3169]
                            idx = 0
                            s = _3169 + ceil32(return_data.size) + 324
                            t = _3169 + 32
                            while idx < mem[_3169]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[_3169 + ceil32(return_data.size) + 292 len (32 * mem[_3169]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(rewardTokenAddress)
                            staticcall rewardTokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args dividendTrackerAddress, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if ext_call.return_data[0]:
                                require ext_code.size(dividendTrackerAddress)
                                call dividendTrackerAddress.distributeCAKEDividends(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit SendDividends(balanceOf[this.address], ext_call.return_data[0]);
                            stor7 = 0
                            if stor17[address(msg.sender)]:
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if stor17[address(arg1)]:
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor7:
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        balanceOf[arg1] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg2 and totalFees > -1 / arg2:
                                            revert with 0, 17
                                        if not stor18[address(arg1)]:
                                            if arg2 < arg2 * totalFees / 100:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < arg2 * totalFees / 100:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= arg2 * totalFees / 100
                                            if balanceOf[this.address] > !(arg2 * totalFees / 100):
                                                revert with 0, 17
                                            balanceOf[this.address] += arg2 * totalFees / 100
                                            emit Transfer((arg2 * totalFees / 100), msg.sender, this.address);
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * totalFees / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * totalFees / 100)
                                            if balanceOf[arg1] > !(arg2 - (arg2 * totalFees / 100)):
                                                revert with 0, 17
                                            balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * totalFees / 100)
                                            emit Transfer((arg2 - (arg2 * totalFees / 100)), msg.sender, arg1);
                                        else:
                                            if arg2 and 1 > -1 / arg2:
                                                revert with 0, 17
                                            if arg2 * totalFees / 100 > !(arg2 / 100):
                                                revert with 0, 17
                                            if arg2 < (arg2 * totalFees / 100) + (arg2 / 100):
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < (arg2 * totalFees / 100) + (arg2 / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 * totalFees / 100) - (arg2 / 100)
                                            if balanceOf[this.address] > !((arg2 * totalFees / 100) + (arg2 / 100)):
                                                revert with 0, 17
                                            balanceOf[this.address] = balanceOf[this.address] + (arg2 * totalFees / 100) + (arg2 / 100)
                                            emit Transfer(((arg2 * totalFees / 100) + (arg2 / 100)), msg.sender, this.address);
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * totalFees / 100) - (arg2 / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * totalFees / 100) + (arg2 / 100)
                                            if balanceOf[arg1] > !(arg2 - (arg2 * totalFees / 100) - (arg2 / 100)):
                                                revert with 0, 17
                                            balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * totalFees / 100) - (arg2 / 100)
                                            emit Transfer((arg2 - (arg2 * totalFees / 100) - (arg2 / 100)), msg.sender, arg1);
        require ext_code.size(dividendTrackerAddress)
        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, balanceOf[address(msg.sender)]
        require ext_code.size(dividendTrackerAddress)
        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
        if not stor7:
            require ext_code.size(dividendTrackerAddress)
            call dividendTrackerAddress.process(uint256 arg1) with:
                 gas gas_remaining wei
                args gasForProcessing
            if ext_call.success:
                require return_data.size >= 96
                emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if not arg3:
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
        if not arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
        if balanceOf[address(arg1)] < 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
        if balanceOf[arg2] > -1:
            revert with 0, 17
        emit Transfer(0, arg1, arg2);
        if allowance[address(arg1)][msg.sender].field_0 < arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
        allowance[address(arg1)][address(msg.sender)].field_0 = allowance[address(arg1)][msg.sender].field_0 - arg3
        emit Approval((allowance[address(arg1)][msg.sender].field_0 - arg3), arg1, msg.sender);
        return 1
    if balanceOf[this.address] < swapTokensAtAmount:
        if stor17[address(arg1)]:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if balanceOf[address(arg1)] < arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(arg1)] -= arg3
            if balanceOf[arg2] > !arg3:
                revert with 0, 17
            balanceOf[arg2] += arg3
            emit Transfer(arg3, arg1, arg2);
        else:
            if stor17[address(arg2)]:
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if balanceOf[address(arg1)] < arg3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(arg1)] -= arg3
                if balanceOf[arg2] > !arg3:
                    revert with 0, 17
                balanceOf[arg2] += arg3
                emit Transfer(arg3, arg1, arg2);
            else:
                if stor7:
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[arg2] > !arg3:
                        revert with 0, 17
                    balanceOf[arg2] += arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if arg3 and totalFees > -1 / arg3:
                        revert with 0, 17
                    if not stor18[address(arg2)]:
                        if arg3 < arg3 * totalFees / 100:
                            revert with 0, 17
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not this.address:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)] < arg3 * totalFees / 100:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)] -= arg3 * totalFees / 100
                        if balanceOf[this.address] > !(arg3 * totalFees / 100):
                            revert with 0, 17
                        balanceOf[this.address] += arg3 * totalFees / 100
                        emit Transfer((arg3 * totalFees / 100), arg1, this.address);
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)] < arg3 - (arg3 * totalFees / 100):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * totalFees / 100)
                        if balanceOf[arg2] > !(arg3 - (arg3 * totalFees / 100)):
                            revert with 0, 17
                        balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * totalFees / 100)
                        emit Transfer((arg3 - (arg3 * totalFees / 100)), arg1, arg2);
                    else:
                        if arg3 and 1 > -1 / arg3:
                            revert with 0, 17
                        if arg3 * totalFees / 100 > !(arg3 / 100):
                            revert with 0, 17
                        if arg3 < (arg3 * totalFees / 100) + (arg3 / 100):
                            revert with 0, 17
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not this.address:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)] < (arg3 * totalFees / 100) + (arg3 / 100):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - (arg3 * totalFees / 100) - (arg3 / 100)
                        if balanceOf[this.address] > !((arg3 * totalFees / 100) + (arg3 / 100)):
                            revert with 0, 17
                        balanceOf[this.address] = balanceOf[this.address] + (arg3 * totalFees / 100) + (arg3 / 100)
                        emit Transfer(((arg3 * totalFees / 100) + (arg3 / 100)), arg1, this.address);
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)] < arg3 - (arg3 * totalFees / 100) - (arg3 / 100):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * totalFees / 100) + (arg3 / 100)
                        if balanceOf[arg2] > !(arg3 - (arg3 * totalFees / 100) - (arg3 / 100)):
                            revert with 0, 17
                        balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * totalFees / 100) - (arg3 / 100)
                        emit Transfer((arg3 - (arg3 * totalFees / 100) - (arg3 / 100)), arg1, arg2);
        require ext_code.size(dividendTrackerAddress)
        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
        require ext_code.size(dividendTrackerAddress)
        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), balanceOf[address(arg2)]
        if stor7:
            if allowance[address(arg1)][msg.sender].field_0 < arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
        else:
            require ext_code.size(dividendTrackerAddress)
            call dividendTrackerAddress.process(uint256 arg1) with:
                 gas gas_remaining wei
                args gasForProcessing
            if not ext_call.success:
                if allowance[address(arg1)][msg.sender].field_0 < arg3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
            else:
                require return_data.size >= 96
                emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                if allowance[address(arg1)][msg.sender].field_0 < arg3:
                    revert with 0, 'ERC20: transfer amount exceeds allowance'
                if not arg1:
                    revert with 0, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0, 'ERC20: approve to the zero address'
        ('bool', 'msg.sender')
        allowance[address(arg1)][address(msg.sender)].field_0 = allowance[address(arg1)][msg.sender].field_0 - arg3
        emit Approval((allowance[address(arg1)][msg.sender].field_0 - arg3), arg1, msg.sender);
        return 1
    if stor7:
        if stor17[address(arg1)]:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if balanceOf[address(arg1)] < arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(arg1)] -= arg3
            if balanceOf[arg2] > !arg3:
                revert with 0, 17
            balanceOf[arg2] += arg3
            emit Transfer(arg3, arg1, arg2);
        else:
            if stor17[address(arg2)]:
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if balanceOf[address(arg1)] < arg3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(arg1)] -= arg3
                if balanceOf[arg2] > !arg3:
                    revert with 0, 17
                balanceOf[arg2] += arg3
                emit Transfer(arg3, arg1, arg2);
            else:
                if stor7:
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[arg2] > !arg3:
                        revert with 0, 17
                    balanceOf[arg2] += arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if arg3 and totalFees > -1 / arg3:
                        revert with 0, 17
                    if not stor18[address(arg2)]:
                        if arg3 < arg3 * totalFees / 100:
                            revert with 0, 17
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not this.address:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)] < arg3 * totalFees / 100:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)] -= arg3 * totalFees / 100
                        if balanceOf[this.address] > !(arg3 * totalFees / 100):
                            revert with 0, 17
                        balanceOf[this.address] += arg3 * totalFees / 100
                        emit Transfer((arg3 * totalFees / 100), arg1, this.address);
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)] < arg3 - (arg3 * totalFees / 100):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * totalFees / 100)
                        if balanceOf[arg2] > !(arg3 - (arg3 * totalFees / 100)):
                            revert with 0, 17
                        balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * totalFees / 100)
                        emit Transfer((arg3 - (arg3 * totalFees / 100)), arg1, arg2);
                    else:
                        if arg3 and 1 > -1 / arg3:
                            revert with 0, 17
                        if arg3 * totalFees / 100 > !(arg3 / 100):
                            revert with 0, 17
                        if arg3 < (arg3 * totalFees / 100) + (arg3 / 100):
                            revert with 0, 17
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not this.address:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)] < (arg3 * totalFees / 100) + (arg3 / 100):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - (arg3 * totalFees / 100) - (arg3 / 100)
                        if balanceOf[this.address] > !((arg3 * totalFees / 100) + (arg3 / 100)):
                            revert with 0, 17
                        balanceOf[this.address] = balanceOf[this.address] + (arg3 * totalFees / 100) + (arg3 / 100)
                        emit Transfer(((arg3 * totalFees / 100) + (arg3 / 100)), arg1, this.address);
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)] < arg3 - (arg3 * totalFees / 100) - (arg3 / 100):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * totalFees / 100) + (arg3 / 100)
                        if balanceOf[arg2] > !(arg3 - (arg3 * totalFees / 100) - (arg3 / 100)):
                            revert with 0, 17
                        balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * totalFees / 100) - (arg3 / 100)
                        emit Transfer((arg3 - (arg3 * totalFees / 100) - (arg3 / 100)), arg1, arg2);
        require ext_code.size(dividendTrackerAddress)
        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
        require ext_code.size(dividendTrackerAddress)
        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), balanceOf[address(arg2)]
        if stor7:
            if allowance[address(arg1)][msg.sender].field_0 < arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
        else:
            require ext_code.size(dividendTrackerAddress)
            call dividendTrackerAddress.process(uint256 arg1) with:
                 gas gas_remaining wei
                args gasForProcessing
            if not ext_call.success:
                if allowance[address(arg1)][msg.sender].field_0 < arg3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
            else:
                require return_data.size >= 96
                emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                if allowance[address(arg1)][msg.sender].field_0 < arg3:
                    revert with 0, 'ERC20: transfer amount exceeds allowance'
                if not arg1:
                    revert with 0, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0, 'ERC20: approve to the zero address'
        ('bool', 'msg.sender')
        allowance[address(arg1)][address(msg.sender)].field_0 = allowance[address(arg1)][msg.sender].field_0 - arg3
        emit Approval((allowance[address(arg1)][msg.sender].field_0 - arg3), arg1, msg.sender);
        return 1
    if stor18[address(arg1)]:
        if stor17[address(arg1)]:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if balanceOf[address(arg1)] < arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(arg1)] -= arg3
            if balanceOf[arg2] > !arg3:
                revert with 0, 17
            balanceOf[arg2] += arg3
            emit Transfer(arg3, arg1, arg2);
        else:
            if stor17[address(arg2)]:
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if balanceOf[address(arg1)] < arg3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(arg1)] -= arg3
                if balanceOf[arg2] > !arg3:
                    revert with 0, 17
                balanceOf[arg2] += arg3
                emit Transfer(arg3, arg1, arg2);
            else:
                if stor7:
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[arg2] > !arg3:
                        revert with 0, 17
                    balanceOf[arg2] += arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if arg3 and totalFees > -1 / arg3:
                        revert with 0, 17
                    if not stor18[address(arg2)]:
                        if arg3 < arg3 * totalFees / 100:
                            revert with 0, 17
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not this.address:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)] < arg3 * totalFees / 100:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)] -= arg3 * totalFees / 100
                        if balanceOf[this.address] > !(arg3 * totalFees / 100):
                            revert with 0, 17
                        balanceOf[this.address] += arg3 * totalFees / 100
                        emit Transfer((arg3 * totalFees / 100), arg1, this.address);
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)] < arg3 - (arg3 * totalFees / 100):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * totalFees / 100)
                        if balanceOf[arg2] > !(arg3 - (arg3 * totalFees / 100)):
                            revert with 0, 17
                        balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * totalFees / 100)
                        emit Transfer((arg3 - (arg3 * totalFees / 100)), arg1, arg2);
                    else:
                        if arg3 and 1 > -1 / arg3:
                            revert with 0, 17
                        if arg3 * totalFees / 100 > !(arg3 / 100):
                            revert with 0, 17
                        if arg3 < (arg3 * totalFees / 100) + (arg3 / 100):
                            revert with 0, 17
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not this.address:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)] < (arg3 * totalFees / 100) + (arg3 / 100):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - (arg3 * totalFees / 100) - (arg3 / 100)
                        if balanceOf[this.address] > !((arg3 * totalFees / 100) + (arg3 / 100)):
                            revert with 0, 17
                        balanceOf[this.address] = balanceOf[this.address] + (arg3 * totalFees / 100) + (arg3 / 100)
                        emit Transfer(((arg3 * totalFees / 100) + (arg3 / 100)), arg1, this.address);
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)] < arg3 - (arg3 * totalFees / 100) - (arg3 / 100):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * totalFees / 100) + (arg3 / 100)
                        if balanceOf[arg2] > !(arg3 - (arg3 * totalFees / 100) - (arg3 / 100)):
                            revert with 0, 17
                        balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * totalFees / 100) - (arg3 / 100)
                        emit Transfer((arg3 - (arg3 * totalFees / 100) - (arg3 / 100)), arg1, arg2);
        require ext_code.size(dividendTrackerAddress)
        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
        require ext_code.size(dividendTrackerAddress)
        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), balanceOf[address(arg2)]
        if stor7:
            if allowance[address(arg1)][msg.sender].field_0 < arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
        else:
            require ext_code.size(dividendTrackerAddress)
            call dividendTrackerAddress.process(uint256 arg1) with:
                 gas gas_remaining wei
                args gasForProcessing
            if not ext_call.success:
                if allowance[address(arg1)][msg.sender].field_0 < arg3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
            else:
                require return_data.size >= 96
                emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                if allowance[address(arg1)][msg.sender].field_0 < arg3:
                    revert with 0, 'ERC20: transfer amount exceeds allowance'
                if not arg1:
                    revert with 0, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0, 'ERC20: approve to the zero address'
        ('bool', 'msg.sender')
        allowance[address(arg1)][address(msg.sender)].field_0 = allowance[address(arg1)][msg.sender].field_0 - arg3
        emit Approval((allowance[address(arg1)][msg.sender].field_0 - arg3), arg1, msg.sender);
        return 1
    if owner == arg1:
        if stor17[address(arg1)]:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if balanceOf[address(arg1)] < arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(arg1)] -= arg3
            if balanceOf[arg2] > !arg3:
                revert with 0, 17
            balanceOf[arg2] += arg3
            emit Transfer(arg3, arg1, arg2);
        else:
            if stor17[address(arg2)]:
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if balanceOf[address(arg1)] < arg3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(arg1)] -= arg3
                if balanceOf[arg2] > !arg3:
                    revert with 0, 17
                balanceOf[arg2] += arg3
                emit Transfer(arg3, arg1, arg2);
            else:
                if stor7:
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[arg2] > !arg3:
                        revert with 0, 17
                    balanceOf[arg2] += arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if arg3 and totalFees > -1 / arg3:
                        revert with 0, 17
                    if not stor18[address(arg2)]:
                        if arg3 < arg3 * totalFees / 100:
                            revert with 0, 17
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not this.address:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)] < arg3 * totalFees / 100:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)] -= arg3 * totalFees / 100
                        if balanceOf[this.address] > !(arg3 * totalFees / 100):
                            revert with 0, 17
                        balanceOf[this.address] += arg3 * totalFees / 100
                        emit Transfer((arg3 * totalFees / 100), arg1, this.address);
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)] < arg3 - (arg3 * totalFees / 100):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * totalFees / 100)
                        if balanceOf[arg2] > !(arg3 - (arg3 * totalFees / 100)):
                            revert with 0, 17
                        balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * totalFees / 100)
                        emit Transfer((arg3 - (arg3 * totalFees / 100)), arg1, arg2);
                    else:
                        if arg3 and 1 > -1 / arg3:
                            revert with 0, 17
                        if arg3 * totalFees / 100 > !(arg3 / 100):
                            revert with 0, 17
                        if arg3 < (arg3 * totalFees / 100) + (arg3 / 100):
                            revert with 0, 17
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not this.address:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)] < (arg3 * totalFees / 100) + (arg3 / 100):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - (arg3 * totalFees / 100) - (arg3 / 100)
                        if balanceOf[this.address] > !((arg3 * totalFees / 100) + (arg3 / 100)):
                            revert with 0, 17
                        balanceOf[this.address] = balanceOf[this.address] + (arg3 * totalFees / 100) + (arg3 / 100)
                        emit Transfer(((arg3 * totalFees / 100) + (arg3 / 100)), arg1, this.address);
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)] < arg3 - (arg3 * totalFees / 100) - (arg3 / 100):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * totalFees / 100) + (arg3 / 100)
                        if balanceOf[arg2] > !(arg3 - (arg3 * totalFees / 100) - (arg3 / 100)):
                            revert with 0, 17
                        balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * totalFees / 100) - (arg3 / 100)
                        emit Transfer((arg3 - (arg3 * totalFees / 100) - (arg3 / 100)), arg1, arg2);
        require ext_code.size(dividendTrackerAddress)
        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
        require ext_code.size(dividendTrackerAddress)
        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), balanceOf[address(arg2)]
        if stor7:
            if allowance[address(arg1)][msg.sender].field_0 < arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
        else:
            require ext_code.size(dividendTrackerAddress)
            call dividendTrackerAddress.process(uint256 arg1) with:
                 gas gas_remaining wei
                args gasForProcessing
            if not ext_call.success:
                if allowance[address(arg1)][msg.sender].field_0 < arg3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
            else:
                require return_data.size >= 96
                emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                if allowance[address(arg1)][msg.sender].field_0 < arg3:
                    revert with 0, 'ERC20: transfer amount exceeds allowance'
                if not arg1:
                    revert with 0, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0, 'ERC20: approve to the zero address'
        ('bool', 'msg.sender')
        allowance[address(arg1)][address(msg.sender)].field_0 = allowance[address(arg1)][msg.sender].field_0 - arg3
        emit Approval((allowance[address(arg1)][msg.sender].field_0 - arg3), arg1, msg.sender);
        return 1
    if owner == arg2:
        if stor17[address(arg1)]:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if balanceOf[address(arg1)] < arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(arg1)] -= arg3
            if balanceOf[arg2] > !arg3:
                revert with 0, 17
            balanceOf[arg2] += arg3
            emit Transfer(arg3, arg1, arg2);
        else:
            if stor17[address(arg2)]:
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if balanceOf[address(arg1)] < arg3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(arg1)] -= arg3
                if balanceOf[arg2] > !arg3:
                    revert with 0, 17
                balanceOf[arg2] += arg3
                emit Transfer(arg3, arg1, arg2);
            else:
                if stor7:
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[arg2] > !arg3:
                        revert with 0, 17
                    balanceOf[arg2] += arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if arg3 and totalFees > -1 / arg3:
                        revert with 0, 17
                    if not stor18[address(arg2)]:
                        if arg3 < arg3 * totalFees / 100:
                            revert with 0, 17
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not this.address:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)] < arg3 * totalFees / 100:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)] -= arg3 * totalFees / 100
                        if balanceOf[this.address] > !(arg3 * totalFees / 100):
                            revert with 0, 17
                        balanceOf[this.address] += arg3 * totalFees / 100
                        emit Transfer((arg3 * totalFees / 100), arg1, this.address);
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)] < arg3 - (arg3 * totalFees / 100):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * totalFees / 100)
                        if balanceOf[arg2] > !(arg3 - (arg3 * totalFees / 100)):
                            revert with 0, 17
                        balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * totalFees / 100)
                        emit Transfer((arg3 - (arg3 * totalFees / 100)), arg1, arg2);
                    else:
                        if arg3 and 1 > -1 / arg3:
                            revert with 0, 17
                        if arg3 * totalFees / 100 > !(arg3 / 100):
                            revert with 0, 17
                        if arg3 < (arg3 * totalFees / 100) + (arg3 / 100):
                            revert with 0, 17
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not this.address:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)] < (arg3 * totalFees / 100) + (arg3 / 100):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - (arg3 * totalFees / 100) - (arg3 / 100)
                        if balanceOf[this.address] > !((arg3 * totalFees / 100) + (arg3 / 100)):
                            revert with 0, 17
                        balanceOf[this.address] = balanceOf[this.address] + (arg3 * totalFees / 100) + (arg3 / 100)
                        emit Transfer(((arg3 * totalFees / 100) + (arg3 / 100)), arg1, this.address);
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)] < arg3 - (arg3 * totalFees / 100) - (arg3 / 100):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * totalFees / 100) + (arg3 / 100)
                        if balanceOf[arg2] > !(arg3 - (arg3 * totalFees / 100) - (arg3 / 100)):
                            revert with 0, 17
                        balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * totalFees / 100) - (arg3 / 100)
                        emit Transfer((arg3 - (arg3 * totalFees / 100) - (arg3 / 100)), arg1, arg2);
        require ext_code.size(dividendTrackerAddress)
        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
        require ext_code.size(dividendTrackerAddress)
        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), balanceOf[address(arg2)]
        if stor7:
            if allowance[address(arg1)][msg.sender].field_0 < arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
        else:
            require ext_code.size(dividendTrackerAddress)
            call dividendTrackerAddress.process(uint256 arg1) with:
                 gas gas_remaining wei
                args gasForProcessing
            if not ext_call.success:
                if allowance[address(arg1)][msg.sender].field_0 < arg3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
            else:
                require return_data.size >= 96
                emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                if allowance[address(arg1)][msg.sender].field_0 < arg3:
                    revert with 0, 'ERC20: transfer amount exceeds allowance'
                if not arg1:
                    revert with 0, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0, 'ERC20: approve to the zero address'
        ('bool', 'msg.sender')
        allowance[address(arg1)][address(msg.sender)].field_0 = allowance[address(arg1)][msg.sender].field_0 - arg3
        emit Approval((allowance[address(arg1)][msg.sender].field_0 - arg3), arg1, msg.sender);
        return 1
    stor7 = 1
    if balanceOf[this.address] and marketingFee > -1 / balanceOf[this.address]:
        revert with 0, 17
    if not totalFees:
        revert with 0, 18
    mem[100] = this.address
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96] = 3
    mem[ceil32(return_data.size) + 128] = this.address
    require ext_code.size(uniswapV2RouterAddress)
    staticcall uniswapV2RouterAddress.WETH() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 192] = rewardTokenAddress
    if not this.address:
        mem[(2 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 228] = 32
        mem[(2 * ceil32(return_data.size)) + 260] = 36
        mem[(2 * ceil32(return_data.size)) + 292] = 'ERC20: approve from the zero add'
        mem[(2 * ceil32(return_data.size)) + 324] = 0x7265737300000000000000000000000000000000000000000000000000000000
        revert with memory
          from (2 * ceil32(return_data.size)) + 224
           len ceil32(return_data.size) + 132
    if not uniswapV2RouterAddress:
        mem[(2 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 228] = 32
        mem[(2 * ceil32(return_data.size)) + 260] = 34
        mem[(2 * ceil32(return_data.size)) + 292] = 'ERC20: approve to the zero addre'
        mem[(2 * ceil32(return_data.size)) + 324] = 0x7373000000000000000000000000000000000000000000000000000000000000
        revert with memory
          from (2 * ceil32(return_data.size)) + 224
           len ceil32(return_data.size) + 132
    mem[0] = uniswapV2RouterAddress
    mem[32] = sha3(address(this.address), 1)
    allowance[address(this.address)][stor6].field_0 = balanceOf[this.address] * marketingFee / totalFees
    mem[(2 * ceil32(return_data.size)) + 224] = balanceOf[this.address] * marketingFee / totalFees
    emit Approval(mem[(2 * ceil32(return_data.size)) + 224 len ceil32(return_data.size) + 32], this.address, uniswapV2RouterAddress);
    mem[(2 * ceil32(return_data.size)) + 224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 228] = balanceOf[this.address] * marketingFee / totalFees
    mem[(2 * ceil32(return_data.size)) + 260] = 0
    mem[(2 * ceil32(return_data.size)) + 292] = 160
    mem[(2 * ceil32(return_data.size)) + 388] = 3
    idx = 0
    s = (2 * ceil32(return_data.size)) + 420
    t = ceil32(return_data.size) + 128
    while idx < mem[ceil32(return_data.size) + 96]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 324] = this.address
    mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
    require ext_code.size(uniswapV2RouterAddress)
    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 512]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _5858 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _5859 = mem[_5858]
    if mem[_5858] < ext_call.return_data[0]:
        revert with 0, 17
    mem[mem[64] + 4] = _marketingWalletAddress
    mem[mem[64] + 36] = _5859 - ext_call.return_data[0]
    require ext_code.size(rewardTokenAddress)
    call rewardTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args _marketingWalletAddress, _5859 - ext_call.return_data[0]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _5862 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_5862] == bool(mem[_5862])
    if balanceOf[this.address] and liquidityFee > -1 / balanceOf[this.address]:
        revert with 0, 17
    if not totalFees:
        revert with 0, 18
    if balanceOf[this.address] * liquidityFee / totalFees < balanceOf[this.address] * liquidityFee / totalFees / 2:
        revert with 0, 17
    _5864 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    mem[_5864 + 32 len 64] = call.data[calldata.size len 64]
    if 0 >= mem[_5864]:
        revert with 0, 50
    mem[_5864 + 32] = this.address
    require ext_code.size(uniswapV2RouterAddress)
    staticcall uniswapV2RouterAddress.WETH() with:
            gas gas_remaining wei
    mem[_5864 + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = _5864 + ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if 1 >= mem[_5864]:
        revert with 0, 50
    mem[_5864 + 64] = ext_call.return_data[12 len 20]
    if not this.address:
        revert with 0, 'ERC20: approve from the zero address'
    if not uniswapV2RouterAddress:
        revert with 0, 'ERC20: approve to the zero address'
    mem[0] = uniswapV2RouterAddress
    mem[32] = sha3(address(this.address), 1)
    allowance[address(this.address)][stor6].field_0 = balanceOf[this.address] * liquidityFee / totalFees / 2
    allowance[address(this.address)][stor6].field_255 = 0
    emit Approval((balanceOf[this.address] * liquidityFee / totalFees / 2), this.address, uniswapV2RouterAddress);
    mem[_5864 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
    mem[_5864 + ceil32(return_data.size) + 100] = balanceOf[this.address] * liquidityFee / totalFees / 2
    mem[_5864 + ceil32(return_data.size) + 132] = 0
    mem[_5864 + ceil32(return_data.size) + 164] = 160
    mem[_5864 + ceil32(return_data.size) + 260] = mem[_5864]
    idx = 0
    s = _5864 + ceil32(return_data.size) + 292
    t = _5864 + 32
    while idx < mem[_5864]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(uniswapV2RouterAddress)
    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args Mask(255, 1, balanceOf[this.address] * liquidityFee / totalFees), 0, 160, address(this.address), block.timestamp, mem[_5864 + ceil32(return_data.size) + 260 len (32 * mem[_5864]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) < eth.balance(this.address):
        revert with 0, 17
    if not this.address:
        revert with 0, 'ERC20: approve from the zero address'
    if not uniswapV2RouterAddress:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(this.address)][stor6].field_0 = (balanceOf[this.address] * liquidityFee / totalFees) - (balanceOf[this.address] * liquidityFee / totalFees / 2)
    emit Approval(((balanceOf[this.address] * liquidityFee / totalFees) - (balanceOf[this.address] * liquidityFee / totalFees / 2)), this.address, uniswapV2RouterAddress);
    mem[_5864 + ceil32(return_data.size) + 164] = 0
    mem[_5864 + ceil32(return_data.size) + 196] = 0
    mem[_5864 + ceil32(return_data.size) + 228] = 0
    mem[_5864 + ceil32(return_data.size) + 260] = block.timestamp
    require ext_code.size(uniswapV2RouterAddress)
    call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
         gas gas_remaining wei
        args this.address, (balanceOf[this.address] * liquidityFee / totalFees) - (balanceOf[this.address] * liquidityFee / totalFees / 2), 0, 0, 0, block.timestamp
    mem[_5864 + ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    emit SwapAndLiquify(Mask(255, 1, balanceOf[this.address] * liquidityFee / totalFees), 0, (balanceOf[this.address] * liquidityFee / totalFees) - (balanceOf[this.address] * liquidityFee / totalFees / 2));
    mem[_5864 + (2 * ceil32(return_data.size)) + 96] = 3
    mem[_5864 + (2 * ceil32(return_data.size)) + 128] = this.address
    require ext_code.size(uniswapV2RouterAddress)
    staticcall uniswapV2RouterAddress.WETH() with:
            gas gas_remaining wei
    mem[_5864 + (2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = _5864 + (4 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[_5864 + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
    mem[_5864 + (2 * ceil32(return_data.size)) + 192] = rewardTokenAddress
    if not this.address:
        revert with 0, 'ERC20: approve from the zero address'
    if not uniswapV2RouterAddress:
        revert with 0, 'ERC20: approve to the zero address'
    mem[0] = uniswapV2RouterAddress
    mem[32] = sha3(address(this.address), 1)
    allowance[address(this.address)][stor6].field_0 = balanceOf[this.address]
    emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
    mem[_5864 + (4 * ceil32(return_data.size)) + 224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[_5864 + (4 * ceil32(return_data.size)) + 228] = balanceOf[this.address]
    mem[_5864 + (4 * ceil32(return_data.size)) + 260] = 0
    mem[_5864 + (4 * ceil32(return_data.size)) + 292] = 160
    mem[_5864 + (4 * ceil32(return_data.size)) + 388] = 3
    idx = 0
    s = _5864 + (4 * ceil32(return_data.size)) + 420
    t = _5864 + (2 * ceil32(return_data.size)) + 128
    while idx < mem[_5864 + (2 * ceil32(return_data.size)) + 96]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_5864 + (4 * ceil32(return_data.size)) + 324] = this.address
    mem[_5864 + (4 * ceil32(return_data.size)) + 356] = block.timestamp
    require ext_code.size(uniswapV2RouterAddress)
    call uniswapV2RouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[_5864 + (4 * ceil32(return_data.size)) + 388 len (32 * mem[_5864 + (2 * ceil32(return_data.size)) + 96]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[_5864 + (4 * ceil32(return_data.size)) + 228] = dividendTrackerAddress
    mem[_5864 + (4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
    require ext_code.size(rewardTokenAddress)
    call rewardTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args mem[_5864 + (4 * ceil32(return_data.size)) + 228 len (7 * ceil32(return_data.size)) + 64]
    mem[_5864 + (4 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        require ext_code.size(dividendTrackerAddress)
        call dividendTrackerAddress.distributeCAKEDividends(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit SendDividends(balanceOf[this.address], ext_call.return_data[0]);
    stor7 = 0
    if stor17[address(arg1)]:
        if not arg1:
            mem[_5864 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_5864 + (8 * ceil32(return_data.size)) + 228] = 32
            mem[_5864 + (8 * ceil32(return_data.size)) + 260] = 37
            mem[_5864 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer from the zero ad'
            mem[_5864 + (8 * ceil32(return_data.size)) + 324] = 0x6472657373000000000000000000000000000000000000000000000000000000
        else:
            if not arg2:
                mem[_5864 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_5864 + (8 * ceil32(return_data.size)) + 228] = 32
                mem[_5864 + (8 * ceil32(return_data.size)) + 260] = 35
                mem[_5864 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer to the zero addr'
                mem[_5864 + (8 * ceil32(return_data.size)) + 324] = 0x6573730000000000000000000000000000000000000000000000000000000000
            else:
                if balanceOf[address(arg1)] < arg3:
                    mem[_5864 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_5864 + (8 * ceil32(return_data.size)) + 228] = 32
                    mem[_5864 + (8 * ceil32(return_data.size)) + 260] = 38
                    mem[_5864 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer amount exceeds b'
                    mem[_5864 + (8 * ceil32(return_data.size)) + 324] = 0x616c616e63650000000000000000000000000000000000000000000000000000
                else:
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[arg2] > !arg3:
                        revert with 0, 17
                    balanceOf[arg2] += arg3
                    emit Transfer(arg3, arg1, arg2);
                    mem[_5864 + (8 * ceil32(return_data.size)) + 228] = arg1
                    mem[_5864 + (8 * ceil32(return_data.size)) + 260] = balanceOf[address(arg1)]
                    require ext_code.size(dividendTrackerAddress)
                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[_5864 + (8 * ceil32(return_data.size)) + 228 len (13 * ceil32(return_data.size)) + 64]
                    mem[_5864 + (8 * ceil32(return_data.size)) + 228] = arg2
                    mem[_5864 + (8 * ceil32(return_data.size)) + 260] = balanceOf[address(arg2)]
                    require ext_code.size(dividendTrackerAddress)
                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[_5864 + (8 * ceil32(return_data.size)) + 228 len (13 * ceil32(return_data.size)) + 64]
                    if not stor7:
                        require ext_code.size(dividendTrackerAddress)
                        call dividendTrackerAddress.process(uint256 arg1) with:
                             gas gas_remaining wei
                            args gasForProcessing
                        if ext_call.success:
                            require return_data.size >= 96
                            emit ProcessedDividendTracker(uint256 arg1, uint256 arg2, uint256 arg3, bool arg4, uint256 arg5, address arg6):
                                                          ext_call.return_data[0],
                                                          ext_call.return_data[32],
                                                          ext_call.return_data[64],
                                                          gasForProcessing,
                                                          mem[_5864 + (9 * ceil32(return_data.size)) + 352 len 5 * ceil32(return_data.size)],
                                                          1,
                                                          tx.origin,
                            if allowance[address(arg1)][msg.sender].field_0 < arg3:
                                revert with 0, 
                                            'ERC20: transfer amount exceeds allowance',
                                            mem[_5864 + (9 * ceil32(return_data.size)) + 356 len 5 * ceil32(return_data.size)]
                            if not arg1:
                                revert with 0, 
                                            'ERC20: approve from the zero address',
                                            mem[_5864 + (9 * ceil32(return_data.size)) + 356 len 5 * ceil32(return_data.size)]
                            if not msg.sender:
                                revert with 0, 
                                            'ERC20: approve to the zero address',
                                            mem[_5864 + (9 * ceil32(return_data.size)) + 356 len 5 * ceil32(return_data.size)]
                            allowance[address(arg1)][address(msg.sender)].field_0 = allowance[address(arg1)][msg.sender].field_0 - arg3
                            emit Approval((allowance[address(arg1)][msg.sender].field_0 - arg3), arg1, msg.sender);
                            return 1
                    if allowance[address(arg1)][msg.sender].field_0 < arg3:
                        mem[_5864 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_5864 + (8 * ceil32(return_data.size)) + 228] = 32
                        mem[_5864 + (8 * ceil32(return_data.size)) + 260] = 40
                        mem[_5864 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer amount exceeds a'
                        mem[_5864 + (8 * ceil32(return_data.size)) + 324] = 'llowance' << 192
                    else:
                        if not arg1:
                            mem[_5864 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5864 + (8 * ceil32(return_data.size)) + 228] = 32
                            mem[_5864 + (8 * ceil32(return_data.size)) + 260] = 36
                            mem[_5864 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: approve from the zero add'
                            mem[_5864 + (8 * ceil32(return_data.size)) + 324] = 0x7265737300000000000000000000000000000000000000000000000000000000
                        else:
                            if msg.sender:
                                allowance[address(arg1)][address(msg.sender)].field_0 = allowance[address(arg1)][msg.sender].field_0 - arg3
                                emit Approval((allowance[address(arg1)][msg.sender].field_0 - arg3), arg1, msg.sender);
                                return 1
                            mem[_5864 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5864 + (8 * ceil32(return_data.size)) + 228] = 32
                            mem[_5864 + (8 * ceil32(return_data.size)) + 260] = 34
                            mem[_5864 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: approve to the zero addre'
                            mem[_5864 + (8 * ceil32(return_data.size)) + 324] = 0x7373000000000000000000000000000000000000000000000000000000000000
    else:
        if stor17[address(arg2)]:
            if not arg1:
                mem[_5864 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_5864 + (8 * ceil32(return_data.size)) + 228] = 32
                mem[_5864 + (8 * ceil32(return_data.size)) + 260] = 37
                mem[_5864 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer from the zero ad'
                mem[_5864 + (8 * ceil32(return_data.size)) + 324] = 0x6472657373000000000000000000000000000000000000000000000000000000
            else:
                if not arg2:
                    mem[_5864 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_5864 + (8 * ceil32(return_data.size)) + 228] = 32
                    mem[_5864 + (8 * ceil32(return_data.size)) + 260] = 35
                    mem[_5864 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer to the zero addr'
                    mem[_5864 + (8 * ceil32(return_data.size)) + 324] = 0x6573730000000000000000000000000000000000000000000000000000000000
                else:
                    if balanceOf[address(arg1)] < arg3:
                        mem[_5864 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_5864 + (8 * ceil32(return_data.size)) + 228] = 32
                        mem[_5864 + (8 * ceil32(return_data.size)) + 260] = 38
                        mem[_5864 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer amount exceeds b'
                        mem[_5864 + (8 * ceil32(return_data.size)) + 324] = 0x616c616e63650000000000000000000000000000000000000000000000000000
                    else:
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[arg2] > !arg3:
                            revert with 0, 17
                        balanceOf[arg2] += arg3
                        emit Transfer(arg3, arg1, arg2);
                        mem[_5864 + (8 * ceil32(return_data.size)) + 228] = arg1
                        mem[_5864 + (8 * ceil32(return_data.size)) + 260] = balanceOf[address(arg1)]
                        require ext_code.size(dividendTrackerAddress)
                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args mem[_5864 + (8 * ceil32(return_data.size)) + 228 len (13 * ceil32(return_data.size)) + 64]
                        mem[_5864 + (8 * ceil32(return_data.size)) + 228] = arg2
                        mem[_5864 + (8 * ceil32(return_data.size)) + 260] = balanceOf[address(arg2)]
                        require ext_code.size(dividendTrackerAddress)
                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args mem[_5864 + (8 * ceil32(return_data.size)) + 228 len (13 * ceil32(return_data.size)) + 64]
                        if not stor7:
                            require ext_code.size(dividendTrackerAddress)
                            call dividendTrackerAddress.process(uint256 arg1) with:
                                 gas gas_remaining wei
                                args gasForProcessing
                            if ext_call.success:
                                require return_data.size >= 96
                                emit ProcessedDividendTracker(uint256 arg1, uint256 arg2, uint256 arg3, bool arg4, uint256 arg5, address arg6):
                                                              ext_call.return_data[0],
                                                              ext_call.return_data[32],
                                                              ext_call.return_data[64],
                                                              gasForProcessing,
                                                              mem[_5864 + (9 * ceil32(return_data.size)) + 352 len 5 * ceil32(return_data.size)],
                                                              1,
                                                              tx.origin,
                                if allowance[address(arg1)][msg.sender].field_0 < arg3:
                                    revert with 0, 
                                                'ERC20: transfer amount exceeds allowance',
                                                mem[_5864 + (9 * ceil32(return_data.size)) + 356 len 5 * ceil32(return_data.size)]
                                if not arg1:
                                    revert with 0, 
                                                'ERC20: approve from the zero address',
                                                mem[_5864 + (9 * ceil32(return_data.size)) + 356 len 5 * ceil32(return_data.size)]
                                if not msg.sender:
                                    revert with 0, 
                                                'ERC20: approve to the zero address',
                                                mem[_5864 + (9 * ceil32(return_data.size)) + 356 len 5 * ceil32(return_data.size)]
                                allowance[address(arg1)][address(msg.sender)].field_0 = allowance[address(arg1)][msg.sender].field_0 - arg3
                                emit Approval((allowance[address(arg1)][msg.sender].field_0 - arg3), arg1, msg.sender);
                                return 1
                        if allowance[address(arg1)][msg.sender].field_0 < arg3:
                            mem[_5864 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5864 + (8 * ceil32(return_data.size)) + 228] = 32
                            mem[_5864 + (8 * ceil32(return_data.size)) + 260] = 40
                            mem[_5864 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer amount exceeds a'
                            mem[_5864 + (8 * ceil32(return_data.size)) + 324] = 'llowance' << 192
                        else:
                            if not arg1:
                                mem[_5864 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5864 + (8 * ceil32(return_data.size)) + 228] = 32
                                mem[_5864 + (8 * ceil32(return_data.size)) + 260] = 36
                                mem[_5864 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: approve from the zero add'
                                mem[_5864 + (8 * ceil32(return_data.size)) + 324] = 0x7265737300000000000000000000000000000000000000000000000000000000
                            else:
                                if msg.sender:
                                    allowance[address(arg1)][address(msg.sender)].field_0 = allowance[address(arg1)][msg.sender].field_0 - arg3
                                    emit Approval((allowance[address(arg1)][msg.sender].field_0 - arg3), arg1, msg.sender);
                                    return 1
                                mem[_5864 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5864 + (8 * ceil32(return_data.size)) + 228] = 32
                                mem[_5864 + (8 * ceil32(return_data.size)) + 260] = 34
                                mem[_5864 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: approve to the zero addre'
                                mem[_5864 + (8 * ceil32(return_data.size)) + 324] = 0x7373000000000000000000000000000000000000000000000000000000000000
        else:
            if stor7:
                if not arg1:
                    mem[_5864 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_5864 + (8 * ceil32(return_data.size)) + 228] = 32
                    mem[_5864 + (8 * ceil32(return_data.size)) + 260] = 37
                    mem[_5864 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer from the zero ad'
                    mem[_5864 + (8 * ceil32(return_data.size)) + 324] = 0x6472657373000000000000000000000000000000000000000000000000000000
                else:
                    if not arg2:
                        mem[_5864 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_5864 + (8 * ceil32(return_data.size)) + 228] = 32
                        mem[_5864 + (8 * ceil32(return_data.size)) + 260] = 35
                        mem[_5864 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer to the zero addr'
                        mem[_5864 + (8 * ceil32(return_data.size)) + 324] = 0x6573730000000000000000000000000000000000000000000000000000000000
                    else:
                        if balanceOf[address(arg1)] < arg3:
                            mem[_5864 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5864 + (8 * ceil32(return_data.size)) + 228] = 32
                            mem[_5864 + (8 * ceil32(return_data.size)) + 260] = 38
                            mem[_5864 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer amount exceeds b'
                            mem[_5864 + (8 * ceil32(return_data.size)) + 324] = 0x616c616e63650000000000000000000000000000000000000000000000000000
                        else:
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[arg2] > !arg3:
                                revert with 0, 17
                            balanceOf[arg2] += arg3
                            emit Transfer(arg3, arg1, arg2);
                            mem[_5864 + (8 * ceil32(return_data.size)) + 228] = arg1
                            mem[_5864 + (8 * ceil32(return_data.size)) + 260] = balanceOf[address(arg1)]
                            require ext_code.size(dividendTrackerAddress)
                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args mem[_5864 + (8 * ceil32(return_data.size)) + 228 len (13 * ceil32(return_data.size)) + 64]
                            mem[_5864 + (8 * ceil32(return_data.size)) + 228] = arg2
                            mem[_5864 + (8 * ceil32(return_data.size)) + 260] = balanceOf[address(arg2)]
                            require ext_code.size(dividendTrackerAddress)
                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args mem[_5864 + (8 * ceil32(return_data.size)) + 228 len (13 * ceil32(return_data.size)) + 64]
                            if not stor7:
                                require ext_code.size(dividendTrackerAddress)
                                call dividendTrackerAddress.process(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args gasForProcessing
                                if ext_call.success:
                                    require return_data.size >= 96
                                    emit ProcessedDividendTracker(uint256 arg1, uint256 arg2, uint256 arg3, bool arg4, uint256 arg5, address arg6):
                                                                  ext_call.return_data[0],
                                                                  ext_call.return_data[32],
                                                                  ext_call.return_data[64],
                                                                  gasForProcessing,
                                                                  mem[_5864 + (9 * ceil32(return_data.size)) + 352 len 5 * ceil32(return_data.size)],
                                                                  1,
                                                                  tx.origin,
                                    if allowance[address(arg1)][msg.sender].field_0 < arg3:
                                        revert with 0, 
                                                    'ERC20: transfer amount exceeds allowance',
                                                    mem[_5864 + (9 * ceil32(return_data.size)) + 356 len 5 * ceil32(return_data.size)]
                                    if not arg1:
                                        revert with 0, 
                                                    'ERC20: approve from the zero address',
                                                    mem[_5864 + (9 * ceil32(return_data.size)) + 356 len 5 * ceil32(return_data.size)]
                                    if not msg.sender:
                                        revert with 0, 
                                                    'ERC20: approve to the zero address',
                                                    mem[_5864 + (9 * ceil32(return_data.size)) + 356 len 5 * ceil32(return_data.size)]
                                    allowance[address(arg1)][address(msg.sender)].field_0 = allowance[address(arg1)][msg.sender].field_0 - arg3
                                    emit Approval((allowance[address(arg1)][msg.sender].field_0 - arg3), arg1, msg.sender);
                                    return 1
                            if allowance[address(arg1)][msg.sender].field_0 < arg3:
                                mem[_5864 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5864 + (8 * ceil32(return_data.size)) + 228] = 32
                                mem[_5864 + (8 * ceil32(return_data.size)) + 260] = 40
                                mem[_5864 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer amount exceeds a'
                                mem[_5864 + (8 * ceil32(return_data.size)) + 324] = 'llowance' << 192
                            else:
                                if not arg1:
                                    mem[_5864 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_5864 + (8 * ceil32(return_data.size)) + 228] = 32
                                    mem[_5864 + (8 * ceil32(return_data.size)) + 260] = 36
                                    mem[_5864 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: approve from the zero add'
                                    mem[_5864 + (8 * ceil32(return_data.size)) + 324] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                else:
                                    if msg.sender:
                                        allowance[address(arg1)][address(msg.sender)].field_0 = allowance[address(arg1)][msg.sender].field_0 - arg3
                                        emit Approval((allowance[address(arg1)][msg.sender].field_0 - arg3), arg1, msg.sender);
                                        return 1
                                    mem[_5864 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_5864 + (8 * ceil32(return_data.size)) + 228] = 32
                                    mem[_5864 + (8 * ceil32(return_data.size)) + 260] = 34
                                    mem[_5864 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: approve to the zero addre'
                                    mem[_5864 + (8 * ceil32(return_data.size)) + 324] = 0x7373000000000000000000000000000000000000000000000000000000000000
            else:
                if arg3 and totalFees > -1 / arg3:
                    revert with 0, 17
                if not stor18[address(arg2)]:
                    if arg3 < arg3 * totalFees / 100:
                        revert with 0, 17
                    if not arg1:
                        mem[_5864 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_5864 + (8 * ceil32(return_data.size)) + 228] = 32
                        mem[_5864 + (8 * ceil32(return_data.size)) + 260] = 37
                        mem[_5864 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer from the zero ad'
                        mem[_5864 + (8 * ceil32(return_data.size)) + 324] = 0x6472657373000000000000000000000000000000000000000000000000000000
                    else:
                        if not this.address:
                            mem[_5864 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5864 + (8 * ceil32(return_data.size)) + 228] = 32
                            mem[_5864 + (8 * ceil32(return_data.size)) + 260] = 35
                            mem[_5864 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer to the zero addr'
                            mem[_5864 + (8 * ceil32(return_data.size)) + 324] = 0x6573730000000000000000000000000000000000000000000000000000000000
                        else:
                            if balanceOf[address(arg1)] < arg3 * totalFees / 100:
                                mem[_5864 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5864 + (8 * ceil32(return_data.size)) + 228] = 32
                                mem[_5864 + (8 * ceil32(return_data.size)) + 260] = 38
                                mem[_5864 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer amount exceeds b'
                                mem[_5864 + (8 * ceil32(return_data.size)) + 324] = 0x616c616e63650000000000000000000000000000000000000000000000000000
                            else:
                                balanceOf[address(arg1)] -= arg3 * totalFees / 100
                                if balanceOf[this.address] > !(arg3 * totalFees / 100):
                                    revert with 0, 17
                                balanceOf[this.address] += arg3 * totalFees / 100
                                emit Transfer((arg3 * totalFees / 100), arg1, this.address);
                                if not arg1:
                                    mem[_5864 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_5864 + (8 * ceil32(return_data.size)) + 228] = 32
                                    mem[_5864 + (8 * ceil32(return_data.size)) + 260] = 37
                                    mem[_5864 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer from the zero ad'
                                    mem[_5864 + (8 * ceil32(return_data.size)) + 324] = 0x6472657373000000000000000000000000000000000000000000000000000000
                                else:
                                    if not arg2:
                                        mem[_5864 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_5864 + (8 * ceil32(return_data.size)) + 228] = 32
                                        mem[_5864 + (8 * ceil32(return_data.size)) + 260] = 35
                                        mem[_5864 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer to the zero addr'
                                        mem[_5864 + (8 * ceil32(return_data.size)) + 324] = 0x6573730000000000000000000000000000000000000000000000000000000000
                                    else:
                                        if balanceOf[address(arg1)] < arg3 - (arg3 * totalFees / 100):
                                            mem[_5864 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_5864 + (8 * ceil32(return_data.size)) + 228] = 32
                                            mem[_5864 + (8 * ceil32(return_data.size)) + 260] = 38
                                            mem[_5864 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer amount exceeds b'
                                            mem[_5864 + (8 * ceil32(return_data.size)) + 324] = 0x616c616e63650000000000000000000000000000000000000000000000000000
                                        else:
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * totalFees / 100)
                                            if balanceOf[arg2] > !(arg3 - (arg3 * totalFees / 100)):
                                                revert with 0, 17
                                            balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * totalFees / 100)
                                            emit Transfer((arg3 - (arg3 * totalFees / 100)), arg1, arg2);
                                            mem[_5864 + (8 * ceil32(return_data.size)) + 228] = arg1
                                            mem[_5864 + (8 * ceil32(return_data.size)) + 260] = balanceOf[address(arg1)]
                                            require ext_code.size(dividendTrackerAddress)
                                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args mem[_5864 + (8 * ceil32(return_data.size)) + 228 len (13 * ceil32(return_data.size)) + 64]
                                            mem[_5864 + (8 * ceil32(return_data.size)) + 228] = arg2
                                            mem[_5864 + (8 * ceil32(return_data.size)) + 260] = balanceOf[address(arg2)]
                                            require ext_code.size(dividendTrackerAddress)
                                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args mem[_5864 + (8 * ceil32(return_data.size)) + 228 len (13 * ceil32(return_data.size)) + 64]
                                            if not stor7:
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args gasForProcessing
                                                if ext_call.success:
                                                    require return_data.size >= 96
                                                    emit ProcessedDividendTracker(uint256 arg1, uint256 arg2, uint256 arg3, bool arg4, uint256 arg5, address arg6):
                                                                                  ext_call.return_data[0],
                                                                                  ext_call.return_data[32],
                                                                                  ext_call.return_data[64],
                                                                                  gasForProcessing,
                                                                                  mem[_5864 + (9 * ceil32(return_data.size)) + 352 len 5 * ceil32(return_data.size)],
                                                                                  1,
                                                                                  tx.origin,
                                                    if allowance[address(arg1)][msg.sender].field_0 < arg3:
                                                        revert with 0, 
                                                                    'ERC20: transfer amount exceeds allowance',
                                                                    mem[_5864 + (9 * ceil32(return_data.size)) + 356 len 5 * ceil32(return_data.size)]
                                                    if not arg1:
                                                        revert with 0, 
                                                                    'ERC20: approve from the zero address',
                                                                    mem[_5864 + (9 * ceil32(return_data.size)) + 356 len 5 * ceil32(return_data.size)]
                                                    if not msg.sender:
                                                        revert with 0, 
                                                                    'ERC20: approve to the zero address',
                                                                    mem[_5864 + (9 * ceil32(return_data.size)) + 356 len 5 * ceil32(return_data.size)]
                                                    allowance[address(arg1)][address(msg.sender)].field_0 = allowance[address(arg1)][msg.sender].field_0 - arg3
                                                    emit Approval((allowance[address(arg1)][msg.sender].field_0 - arg3), arg1, msg.sender);
                                                    return 1
                                            if allowance[address(arg1)][msg.sender].field_0 < arg3:
                                                mem[_5864 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_5864 + (8 * ceil32(return_data.size)) + 228] = 32
                                                mem[_5864 + (8 * ceil32(return_data.size)) + 260] = 40
                                                mem[_5864 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer amount exceeds a'
                                                mem[_5864 + (8 * ceil32(return_data.size)) + 324] = 'llowance' << 192
                                            else:
                                                if not arg1:
                                                    mem[_5864 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_5864 + (8 * ceil32(return_data.size)) + 228] = 32
                                                    mem[_5864 + (8 * ceil32(return_data.size)) + 260] = 36
                                                    mem[_5864 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: approve from the zero add'
                                                    mem[_5864 + (8 * ceil32(return_data.size)) + 324] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                                else:
                                                    if msg.sender:
                                                        allowance[address(arg1)][address(msg.sender)].field_0 = allowance[address(arg1)][msg.sender].field_0 - arg3
                                                        emit Approval((allowance[address(arg1)][msg.sender].field_0 - arg3), arg1, msg.sender);
                                                        return 1
                                                    mem[_5864 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_5864 + (8 * ceil32(return_data.size)) + 228] = 32
                                                    mem[_5864 + (8 * ceil32(return_data.size)) + 260] = 34
                                                    mem[_5864 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: approve to the zero addre'
                                                    mem[_5864 + (8 * ceil32(return_data.size)) + 324] = 0x7373000000000000000000000000000000000000000000000000000000000000
                else:
                    if arg3 and 1 > -1 / arg3:
                        revert with 0, 17
                    if arg3 * totalFees / 100 > !(arg3 / 100):
                        revert with 0, 17
                    if arg3 < (arg3 * totalFees / 100) + (arg3 / 100):
                        revert with 0, 17
                    if not arg1:
                        mem[_5864 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_5864 + (8 * ceil32(return_data.size)) + 228] = 32
                        mem[_5864 + (8 * ceil32(return_data.size)) + 260] = 37
                        mem[_5864 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer from the zero ad'
                        mem[_5864 + (8 * ceil32(return_data.size)) + 324] = 0x6472657373000000000000000000000000000000000000000000000000000000
                    else:
                        if not this.address:
                            mem[_5864 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5864 + (8 * ceil32(return_data.size)) + 228] = 32
                            mem[_5864 + (8 * ceil32(return_data.size)) + 260] = 35
                            mem[_5864 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer to the zero addr'
                            mem[_5864 + (8 * ceil32(return_data.size)) + 324] = 0x6573730000000000000000000000000000000000000000000000000000000000
                        else:
                            if balanceOf[address(arg1)] < (arg3 * totalFees / 100) + (arg3 / 100):
                                mem[_5864 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5864 + (8 * ceil32(return_data.size)) + 228] = 32
                                mem[_5864 + (8 * ceil32(return_data.size)) + 260] = 38
                                mem[_5864 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer amount exceeds b'
                                mem[_5864 + (8 * ceil32(return_data.size)) + 324] = 0x616c616e63650000000000000000000000000000000000000000000000000000
                            else:
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - (arg3 * totalFees / 100) - (arg3 / 100)
                                if balanceOf[this.address] > !((arg3 * totalFees / 100) + (arg3 / 100)):
                                    revert with 0, 17
                                balanceOf[this.address] = balanceOf[this.address] + (arg3 * totalFees / 100) + (arg3 / 100)
                                emit Transfer(((arg3 * totalFees / 100) + (arg3 / 100)), arg1, this.address);
                                if not arg1:
                                    mem[_5864 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_5864 + (8 * ceil32(return_data.size)) + 228] = 32
                                    mem[_5864 + (8 * ceil32(return_data.size)) + 260] = 37
                                    mem[_5864 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer from the zero ad'
                                    mem[_5864 + (8 * ceil32(return_data.size)) + 324] = 0x6472657373000000000000000000000000000000000000000000000000000000
                                else:
                                    if not arg2:
                                        mem[_5864 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_5864 + (8 * ceil32(return_data.size)) + 228] = 32
                                        mem[_5864 + (8 * ceil32(return_data.size)) + 260] = 35
                                        mem[_5864 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer to the zero addr'
                                        mem[_5864 + (8 * ceil32(return_data.size)) + 324] = 0x6573730000000000000000000000000000000000000000000000000000000000
                                    else:
                                        if balanceOf[address(arg1)] < arg3 - (arg3 * totalFees / 100) - (arg3 / 100):
                                            mem[_5864 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_5864 + (8 * ceil32(return_data.size)) + 228] = 32
                                            mem[_5864 + (8 * ceil32(return_data.size)) + 260] = 38
                                            mem[_5864 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer amount exceeds b'
                                            mem[_5864 + (8 * ceil32(return_data.size)) + 324] = 0x616c616e63650000000000000000000000000000000000000000000000000000
                                        else:
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * totalFees / 100) + (arg3 / 100)
                                            if balanceOf[arg2] > !(arg3 - (arg3 * totalFees / 100) - (arg3 / 100)):
                                                revert with 0, 17
                                            balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * totalFees / 100) - (arg3 / 100)
                                            emit Transfer((arg3 - (arg3 * totalFees / 100) - (arg3 / 100)), arg1, arg2);
                                            mem[_5864 + (8 * ceil32(return_data.size)) + 228] = arg1
                                            mem[_5864 + (8 * ceil32(return_data.size)) + 260] = balanceOf[address(arg1)]
                                            require ext_code.size(dividendTrackerAddress)
                                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args mem[_5864 + (8 * ceil32(return_data.size)) + 228 len (13 * ceil32(return_data.size)) + 64]
                                            mem[_5864 + (8 * ceil32(return_data.size)) + 228] = arg2
                                            mem[_5864 + (8 * ceil32(return_data.size)) + 260] = balanceOf[address(arg2)]
                                            require ext_code.size(dividendTrackerAddress)
                                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args mem[_5864 + (8 * ceil32(return_data.size)) + 228 len (13 * ceil32(return_data.size)) + 64]
                                            if not stor7:
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args gasForProcessing
                                                if ext_call.success:
                                                    require return_data.size >= 96
                                                    emit ProcessedDividendTracker(uint256 arg1, uint256 arg2, uint256 arg3, bool arg4, uint256 arg5, address arg6):
                                                                                  ext_call.return_data[0],
                                                                                  ext_call.return_data[32],
                                                                                  ext_call.return_data[64],
                                                                                  gasForProcessing,
                                                                                  mem[_5864 + (9 * ceil32(return_data.size)) + 352 len 5 * ceil32(return_data.size)],
                                                                                  1,
                                                                                  tx.origin,
                                                    if allowance[address(arg1)][msg.sender].field_0 < arg3:
                                                        revert with 0, 
                                                                    'ERC20: transfer amount exceeds allowance',
                                                                    mem[_5864 + (9 * ceil32(return_data.size)) + 356 len 5 * ceil32(return_data.size)]
                                                    if not arg1:
                                                        revert with 0, 
                                                                    'ERC20: approve from the zero address',
                                                                    mem[_5864 + (9 * ceil32(return_data.size)) + 356 len 5 * ceil32(return_data.size)]
                                                    if not msg.sender:
                                                        revert with 0, 
                                                                    'ERC20: approve to the zero address',
                                                                    mem[_5864 + (9 * ceil32(return_data.size)) + 356 len 5 * ceil32(return_data.size)]
                                                    allowance[address(arg1)][address(msg.sender)].field_0 = allowance[address(arg1)][msg.sender].field_0 - arg3
                                                    emit Approval((allowance[address(arg1)][msg.sender].field_0 - arg3), arg1, msg.sender);
                                                    return 1
                                            if allowance[address(arg1)][msg.sender].field_0 < arg3:
                                                mem[_5864 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_5864 + (8 * ceil32(return_data.size)) + 228] = 32
                                                mem[_5864 + (8 * ceil32(return_data.size)) + 260] = 40
                                                mem[_5864 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer amount exceeds a'
                                                mem[_5864 + (8 * ceil32(return_data.size)) + 324] = 'llowance' << 192
                                            else:
                                                if not arg1:
                                                    mem[_5864 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_5864 + (8 * ceil32(return_data.size)) + 228] = 32
                                                    mem[_5864 + (8 * ceil32(return_data.size)) + 260] = 36
                                                    mem[_5864 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: approve from the zero add'
                                                    mem[_5864 + (8 * ceil32(return_data.size)) + 324] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                                else:
                                                    if msg.sender:
                                                        allowance[address(arg1)][address(msg.sender)].field_0 = allowance[address(arg1)][msg.sender].field_0 - arg3
                                                        emit Approval((allowance[address(arg1)][msg.sender].field_0 - arg3), arg1, msg.sender);
                                                        return 1
                                                    mem[_5864 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_5864 + (8 * ceil32(return_data.size)) + 228] = 32
                                                    mem[_5864 + (8 * ceil32(return_data.size)) + 260] = 34
                                                    mem[_5864 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: approve to the zero addre'
                                                    mem[_5864 + (8 * ceil32(return_data.size)) + 324] = 0x7373000000000000000000000000000000000000000000000000000000000000
    revert with memory
      from _5864 + (8 * ceil32(return_data.size)) + 224
       len (13 * ceil32(return_data.size)) + 132
}



}
