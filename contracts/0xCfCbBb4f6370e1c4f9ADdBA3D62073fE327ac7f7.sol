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
    else:
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
        else:
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
            else:
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
                else:
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
                    else:
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
                            call uniswapV2RouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args balanceOf[this.address] * marketingFee / totalFees, 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 388 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 228] = this.address
                            require ext_code.size(rewardTokenAddress)
                            staticcall rewardTokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 17
                            mem[(4 * ceil32(return_data.size)) + 228] = _marketingWalletAddress
                            mem[(4 * ceil32(return_data.size)) + 260] = 0
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args _marketingWalletAddress, 0
                            mem[(4 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if balanceOf[this.address] and liquidityFee > -1 / balanceOf[this.address]:
                                revert with 0, 17
                            if not totalFees:
                                revert with 0, 18
                            if balanceOf[this.address] * liquidityFee / totalFees < balanceOf[this.address] * liquidityFee / totalFees / 2:
                                revert with 0, 17
                            mem[(6 * ceil32(return_data.size)) + 224] = 2
                            mem[(6 * ceil32(return_data.size)) + 256] = this.address
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[(6 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(6 * ceil32(return_data.size)) + 288] = ext_call.return_data[12 len 20]
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor6].field_0 = balanceOf[this.address] * liquidityFee / totalFees / 2
                            allowance[address(this.address)][stor6].field_255 = 0
                            emit Approval((balanceOf[this.address] * liquidityFee / totalFees / 2), this.address, uniswapV2RouterAddress);
                            mem[(7 * ceil32(return_data.size)) + 320] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[(7 * ceil32(return_data.size)) + 324] = balanceOf[this.address] * liquidityFee / totalFees / 2
                            idx = 0
                            s = (7 * ceil32(return_data.size)) + 516
                            t = (6 * ceil32(return_data.size)) + 256
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args Mask(255, 1, balanceOf[this.address] * liquidityFee / totalFees), 0, 160, address(this.address), block.timestamp, 2, mem[(7 * ceil32(return_data.size)) + 516 len 64]
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
                            mem[(7 * ceil32(return_data.size)) + 324] = this.address
                            mem[(7 * ceil32(return_data.size)) + 356] = (balanceOf[this.address] * liquidityFee / totalFees) - (balanceOf[this.address] * liquidityFee / totalFees / 2)
                            mem[(7 * ceil32(return_data.size)) + 388] = 0
                            mem[(7 * ceil32(return_data.size)) + 420] = 0
                            mem[(7 * ceil32(return_data.size)) + 452] = 0
                            mem[(7 * ceil32(return_data.size)) + 484] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                 gas gas_remaining wei
                                args this.address, (balanceOf[this.address] * liquidityFee / totalFees) - (balanceOf[this.address] * liquidityFee / totalFees / 2), 0, 0, 0, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            emit SwapAndLiquify(Mask(255, 1, balanceOf[this.address] * liquidityFee / totalFees), 0, (balanceOf[this.address] * liquidityFee / totalFees) - (balanceOf[this.address] * liquidityFee / totalFees / 2));
                            mem[(8 * ceil32(return_data.size)) + 320] = 3
                            mem[(8 * ceil32(return_data.size)) + 352] = this.address
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[(8 * ceil32(return_data.size)) + 448] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (10 * ceil32(return_data.size)) + 448
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(8 * ceil32(return_data.size)) + 384] = ext_call.return_data[12 len 20]
                            mem[(8 * ceil32(return_data.size)) + 416] = rewardTokenAddress
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            mem[0] = uniswapV2RouterAddress
                            mem[32] = sha3(address(this.address), 1)
                            allowance[address(this.address)][stor6].field_0 = balanceOf[this.address]
                            emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                            mem[(10 * ceil32(return_data.size)) + 448] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[(10 * ceil32(return_data.size)) + 452] = balanceOf[this.address]
                            mem[(10 * ceil32(return_data.size)) + 484] = 0
                            mem[(10 * ceil32(return_data.size)) + 516] = 160
                            mem[(10 * ceil32(return_data.size)) + 612] = 3
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + 644
                            t = (8 * ceil32(return_data.size)) + 352
                            while idx < mem[(8 * ceil32(return_data.size)) + 320]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[(10 * ceil32(return_data.size)) + 612 len (32 * mem[(8 * ceil32(return_data.size)) + 320]) + 32]
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
                            if stor17[address(arg1)]:
                                if not arg1:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg2:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(arg1)] < arg3:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[arg2] > !arg3:
                                    revert with 0, 17
                                balanceOf[arg2] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if stor17[address(arg2)]:
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(arg1)] < arg3:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[arg2] > !arg3:
                                        revert with 0, 17
                                    balanceOf[arg2] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if stor7:
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
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
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(arg1)] < arg3 * totalFees / 100:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(arg1)] -= arg3 * totalFees / 100
                                            if balanceOf[this.address] > !(arg3 * totalFees / 100):
                                                revert with 0, 17
                                            balanceOf[this.address] += arg3 * totalFees / 100
                                            emit Transfer((arg3 * totalFees / 100), arg1, this.address);
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg2:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(arg1)] < arg3 - (arg3 * totalFees / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
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
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(arg1)] < (arg3 * totalFees / 100) + (arg3 / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - (arg3 * totalFees / 100) - (arg3 / 100)
                                            if balanceOf[this.address] > !((arg3 * totalFees / 100) + (arg3 / 100)):
                                                revert with 0, 17
                                            balanceOf[this.address] = balanceOf[this.address] + (arg3 * totalFees / 100) + (arg3 / 100)
                                            emit Transfer(((arg3 * totalFees / 100) + (arg3 / 100)), arg1, this.address);
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg2:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(arg1)] < arg3 - (arg3 * totalFees / 100) - (arg3 / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
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
                            if not stor7:
                                require ext_code.size(dividendTrackerAddress)
                                call dividendTrackerAddress.process(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args gasForProcessing
                                if ext_call.success:
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
                            call uniswapV2RouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args balanceOf[this.address] * marketingFee / totalFees, 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 388 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 228] = this.address
                            require ext_code.size(rewardTokenAddress)
                            staticcall rewardTokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 17
                            mem[(4 * ceil32(return_data.size)) + 228] = _marketingWalletAddress
                            mem[(4 * ceil32(return_data.size)) + 260] = 0
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args _marketingWalletAddress, 0
                            mem[(4 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if balanceOf[this.address] and liquidityFee > -1 / balanceOf[this.address]:
                                revert with 0, 17
                            if not totalFees:
                                revert with 0, 18
                            if balanceOf[this.address] * liquidityFee / totalFees < balanceOf[this.address] * liquidityFee / totalFees / 2:
                                revert with 0, 17
                            mem[(6 * ceil32(return_data.size)) + 224] = 2
                            mem[(6 * ceil32(return_data.size)) + 256] = this.address
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[(6 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(6 * ceil32(return_data.size)) + 288] = ext_call.return_data[12 len 20]
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor6].field_0 = balanceOf[this.address] * liquidityFee / totalFees / 2
                            allowance[address(this.address)][stor6].field_255 = 0
                            emit Approval((balanceOf[this.address] * liquidityFee / totalFees / 2), this.address, uniswapV2RouterAddress);
                            mem[(7 * ceil32(return_data.size)) + 320] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[(7 * ceil32(return_data.size)) + 324] = balanceOf[this.address] * liquidityFee / totalFees / 2
                            idx = 0
                            s = (7 * ceil32(return_data.size)) + 516
                            t = (6 * ceil32(return_data.size)) + 256
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args Mask(255, 1, balanceOf[this.address] * liquidityFee / totalFees), 0, 160, address(this.address), block.timestamp, 2, mem[(7 * ceil32(return_data.size)) + 516 len 64]
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
                            mem[(7 * ceil32(return_data.size)) + 324] = this.address
                            mem[(7 * ceil32(return_data.size)) + 356] = (balanceOf[this.address] * liquidityFee / totalFees) - (balanceOf[this.address] * liquidityFee / totalFees / 2)
                            mem[(7 * ceil32(return_data.size)) + 388] = 0
                            mem[(7 * ceil32(return_data.size)) + 420] = 0
                            mem[(7 * ceil32(return_data.size)) + 452] = 0
                            mem[(7 * ceil32(return_data.size)) + 484] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                 gas gas_remaining wei
                                args this.address, (balanceOf[this.address] * liquidityFee / totalFees) - (balanceOf[this.address] * liquidityFee / totalFees / 2), 0, 0, 0, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            emit SwapAndLiquify(Mask(255, 1, balanceOf[this.address] * liquidityFee / totalFees), 0, (balanceOf[this.address] * liquidityFee / totalFees) - (balanceOf[this.address] * liquidityFee / totalFees / 2));
                            mem[(8 * ceil32(return_data.size)) + 320] = 3
                            mem[(8 * ceil32(return_data.size)) + 352] = this.address
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[(8 * ceil32(return_data.size)) + 448] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (10 * ceil32(return_data.size)) + 448
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(8 * ceil32(return_data.size)) + 384] = ext_call.return_data[12 len 20]
                            mem[(8 * ceil32(return_data.size)) + 416] = rewardTokenAddress
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            mem[0] = uniswapV2RouterAddress
                            mem[32] = sha3(address(this.address), 1)
                            allowance[address(this.address)][stor6].field_0 = balanceOf[this.address]
                            emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                            mem[(10 * ceil32(return_data.size)) + 448] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[(10 * ceil32(return_data.size)) + 452] = balanceOf[this.address]
                            mem[(10 * ceil32(return_data.size)) + 484] = 0
                            mem[(10 * ceil32(return_data.size)) + 516] = 160
                            mem[(10 * ceil32(return_data.size)) + 612] = 3
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + 644
                            t = (8 * ceil32(return_data.size)) + 352
                            while idx < mem[(8 * ceil32(return_data.size)) + 320]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(10 * ceil32(return_data.size)) + 548] = this.address
                            mem[(10 * ceil32(return_data.size)) + 580] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + 320]) + -mem[64] + 640]
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
                            _4015 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4016 = mem[_4015]
                            mem[mem[64] + 4] = dividendTrackerAddress
                            mem[mem[64] + 36] = _4016
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args dividendTrackerAddress, _4016
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4019 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4019] == bool(mem[_4019])
                            if not mem[_4019]:
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
                                    require ext_code.size(dividendTrackerAddress)
                                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, balanceOf[address(msg.sender)]
                                    mem[0] = arg1
                                    mem[32] = 0
                                    require ext_code.size(dividendTrackerAddress)
                                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg1), balanceOf[address(arg1)]
                                    if not ext_call.success:
                                        if not ext_call.success:
                                            if not stor7:
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args gasForProcessing
                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                if ext_call.success:
                                                    _4164 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 96
                                                    _4199 = mem[_4164 + 32]
                                                    _4200 = mem[_4164 + 64]
                                                    mem[mem[64]] = mem[_4164]
                                                    mem[mem[64] + 64] = _4200
                                                    mem[mem[64] + 96] = gasForProcessing
                                                    emit ProcessedDividendTracker(mem[mem[64]], _4199, _4200, gasForProcessing, 1, tx.origin);
                                        else:
                                            if not stor7:
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args gasForProcessing
                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                if ext_call.success:
                                                    _4180 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 96
                                                    _4232 = mem[_4180 + 32]
                                                    _4233 = mem[_4180 + 64]
                                                    mem[mem[64]] = mem[_4180]
                                                    mem[mem[64] + 64] = _4233
                                                    mem[mem[64] + 96] = gasForProcessing
                                                    emit ProcessedDividendTracker(mem[mem[64]], _4232, _4233, gasForProcessing, 1, tx.origin);
                                    else:
                                        if not ext_call.success:
                                            if not stor7:
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args gasForProcessing
                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                if ext_call.success:
                                                    _4182 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 96
                                                    _4235 = mem[_4182 + 32]
                                                    _4236 = mem[_4182 + 64]
                                                    mem[mem[64]] = mem[_4182]
                                                    mem[mem[64] + 64] = _4236
                                                    mem[mem[64] + 96] = gasForProcessing
                                                    emit ProcessedDividendTracker(mem[mem[64]], _4235, _4236, gasForProcessing, 1, tx.origin);
                                        else:
                                            if not stor7:
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args gasForProcessing
                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                if ext_call.success:
                                                    _4204 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 96
                                                    _4268 = mem[_4204 + 32]
                                                    _4269 = mem[_4204 + 64]
                                                    mem[mem[64]] = mem[_4204]
                                                    mem[mem[64] + 64] = _4269
                                                    mem[mem[64] + 96] = gasForProcessing
                                                    emit ProcessedDividendTracker(mem[mem[64]], _4268, _4269, gasForProcessing, 1, tx.origin);
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
                                        require ext_code.size(dividendTrackerAddress)
                                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, balanceOf[address(msg.sender)]
                                        mem[0] = arg1
                                        mem[32] = 0
                                        require ext_code.size(dividendTrackerAddress)
                                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(arg1), balanceOf[address(arg1)]
                                        if not ext_call.success:
                                            if not ext_call.success:
                                                if not stor7:
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args gasForProcessing
                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                    if ext_call.success:
                                                        _4191 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 96
                                                        _4248 = mem[_4191 + 32]
                                                        _4249 = mem[_4191 + 64]
                                                        mem[mem[64]] = mem[_4191]
                                                        mem[mem[64] + 64] = _4249
                                                        mem[mem[64] + 96] = gasForProcessing
                                                        emit ProcessedDividendTracker(mem[mem[64]], _4248, _4249, gasForProcessing, 1, tx.origin);
                                            else:
                                                if not stor7:
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args gasForProcessing
                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                    if ext_call.success:
                                                        _4218 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 96
                                                        _4274 = mem[_4218 + 32]
                                                        _4275 = mem[_4218 + 64]
                                                        mem[mem[64]] = mem[_4218]
                                                        mem[mem[64] + 64] = _4275
                                                        mem[mem[64] + 96] = gasForProcessing
                                                        emit ProcessedDividendTracker(mem[mem[64]], _4274, _4275, gasForProcessing, 1, tx.origin);
                                        else:
                                            if not ext_call.success:
                                                if not stor7:
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args gasForProcessing
                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                    if ext_call.success:
                                                        _4220 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 96
                                                        _4277 = mem[_4220 + 32]
                                                        _4278 = mem[_4220 + 64]
                                                        mem[mem[64]] = mem[_4220]
                                                        mem[mem[64] + 64] = _4278
                                                        mem[mem[64] + 96] = gasForProcessing
                                                        emit ProcessedDividendTracker(mem[mem[64]], _4277, _4278, gasForProcessing, 1, tx.origin);
                                            else:
                                                if not stor7:
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args gasForProcessing
                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                    if ext_call.success:
                                                        _4253 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 96
                                                        _4304 = mem[_4253 + 32]
                                                        _4305 = mem[_4253 + 64]
                                                        mem[mem[64]] = mem[_4253]
                                                        mem[mem[64] + 64] = _4305
                                                        mem[mem[64] + 96] = gasForProcessing
                                                        emit ProcessedDividendTracker(mem[mem[64]], _4304, _4305, gasForProcessing, 1, tx.origin);
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
                                            require ext_code.size(dividendTrackerAddress)
                                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, balanceOf[address(msg.sender)]
                                            mem[0] = arg1
                                            mem[32] = 0
                                            require ext_code.size(dividendTrackerAddress)
                                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(arg1), balanceOf[address(arg1)]
                                            if not ext_call.success:
                                                if not ext_call.success:
                                                    if not stor7:
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args gasForProcessing
                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                        if ext_call.success:
                                                            _4168 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 96
                                                            _4206 = mem[_4168 + 32]
                                                            _4207 = mem[_4168 + 64]
                                                            mem[mem[64]] = mem[_4168]
                                                            mem[mem[64] + 64] = _4207
                                                            mem[mem[64] + 96] = gasForProcessing
                                                            emit ProcessedDividendTracker(mem[mem[64]], _4206, _4207, gasForProcessing, 1, tx.origin);
                                                else:
                                                    if not stor7:
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args gasForProcessing
                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                        if ext_call.success:
                                                            _4185 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 96
                                                            _4239 = mem[_4185 + 32]
                                                            _4240 = mem[_4185 + 64]
                                                            mem[mem[64]] = mem[_4185]
                                                            mem[mem[64] + 64] = _4240
                                                            mem[mem[64] + 96] = gasForProcessing
                                                            emit ProcessedDividendTracker(mem[mem[64]], _4239, _4240, gasForProcessing, 1, tx.origin);
                                            else:
                                                if not ext_call.success:
                                                    if not stor7:
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args gasForProcessing
                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                        if ext_call.success:
                                                            _4187 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 96
                                                            _4242 = mem[_4187 + 32]
                                                            _4243 = mem[_4187 + 64]
                                                            mem[mem[64]] = mem[_4187]
                                                            mem[mem[64] + 64] = _4243
                                                            mem[mem[64] + 96] = gasForProcessing
                                                            emit ProcessedDividendTracker(mem[mem[64]], _4242, _4243, gasForProcessing, 1, tx.origin);
                                                else:
                                                    if not stor7:
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args gasForProcessing
                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                        if ext_call.success:
                                                            _4211 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 96
                                                            _4271 = mem[_4211 + 32]
                                                            _4272 = mem[_4211 + 64]
                                                            mem[mem[64]] = mem[_4211]
                                                            mem[mem[64] + 64] = _4272
                                                            mem[mem[64] + 96] = gasForProcessing
                                                            emit ProcessedDividendTracker(mem[mem[64]], _4271, _4272, gasForProcessing, 1, tx.origin);
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
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, balanceOf[address(msg.sender)]
                                                mem[0] = arg1
                                                mem[32] = 0
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg1), balanceOf[address(arg1)]
                                                if not ext_call.success:
                                                    if not ext_call.success:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _4581 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _4599 = mem[_4581 + 32]
                                                                _4600 = mem[_4581 + 64]
                                                                mem[mem[64]] = mem[_4581]
                                                                mem[mem[64] + 64] = _4600
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _4599, _4600, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _4590 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _4612 = mem[_4590 + 32]
                                                                _4613 = mem[_4590 + 64]
                                                                mem[mem[64]] = mem[_4590]
                                                                mem[mem[64] + 64] = _4613
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _4612, _4613, gasForProcessing, 1, tx.origin);
                                                else:
                                                    if not ext_call.success:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _4592 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _4615 = mem[_4592 + 32]
                                                                _4616 = mem[_4592 + 64]
                                                                mem[mem[64]] = mem[_4592]
                                                                mem[mem[64] + 64] = _4616
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _4615, _4616, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _4604 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _4628 = mem[_4604 + 32]
                                                                _4629 = mem[_4604 + 64]
                                                                mem[mem[64]] = mem[_4604]
                                                                mem[mem[64] + 64] = _4629
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _4628, _4629, gasForProcessing, 1, tx.origin);
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
                                                mem[0] = arg1
                                                mem[32] = 0
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg1), balanceOf[address(arg1)]
                                                if not ext_call.success:
                                                    if not ext_call.success:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _4726 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _4741 = mem[_4726 + 32]
                                                                _4742 = mem[_4726 + 64]
                                                                mem[mem[64]] = mem[_4726]
                                                                mem[mem[64] + 64] = _4742
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _4741, _4742, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _4734 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _4752 = mem[_4734 + 32]
                                                                _4753 = mem[_4734 + 64]
                                                                mem[mem[64]] = mem[_4734]
                                                                mem[mem[64] + 64] = _4753
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _4752, _4753, gasForProcessing, 1, tx.origin);
                                                else:
                                                    if not ext_call.success:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _4736 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _4755 = mem[_4736 + 32]
                                                                _4756 = mem[_4736 + 64]
                                                                mem[mem[64]] = mem[_4736]
                                                                mem[mem[64] + 64] = _4756
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _4755, _4756, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _4746 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _4763 = mem[_4746 + 32]
                                                                _4764 = mem[_4746 + 64]
                                                                mem[mem[64]] = mem[_4746]
                                                                mem[mem[64] + 64] = _4764
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _4763, _4764, gasForProcessing, 1, tx.origin);
                            else:
                                require ext_code.size(dividendTrackerAddress)
                                call dividendTrackerAddress.distributeCAKEDividends(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args _4016
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit SendDividends(balanceOf[this.address], _4016);
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
                                    require ext_code.size(dividendTrackerAddress)
                                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, balanceOf[address(msg.sender)]
                                    mem[0] = arg1
                                    mem[32] = 0
                                    require ext_code.size(dividendTrackerAddress)
                                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg1), balanceOf[address(arg1)]
                                    if not ext_call.success:
                                        if not ext_call.success:
                                            if not stor7:
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args gasForProcessing
                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                if ext_call.success:
                                                    _4255 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 96
                                                    _4307 = mem[_4255 + 32]
                                                    _4308 = mem[_4255 + 64]
                                                    mem[mem[64]] = mem[_4255]
                                                    mem[mem[64] + 64] = _4308
                                                    mem[mem[64] + 96] = gasForProcessing
                                                    emit ProcessedDividendTracker(mem[mem[64]], _4307, _4308, gasForProcessing, 1, tx.origin);
                                        else:
                                            if not stor7:
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args gasForProcessing
                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                if ext_call.success:
                                                    _4282 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 96
                                                    _4348 = mem[_4282 + 32]
                                                    _4349 = mem[_4282 + 64]
                                                    mem[mem[64]] = mem[_4282]
                                                    mem[mem[64] + 64] = _4349
                                                    mem[mem[64] + 96] = gasForProcessing
                                                    emit ProcessedDividendTracker(mem[mem[64]], _4348, _4349, gasForProcessing, 1, tx.origin);
                                    else:
                                        if not ext_call.success:
                                            if not stor7:
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args gasForProcessing
                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                if ext_call.success:
                                                    _4284 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 96
                                                    _4351 = mem[_4284 + 32]
                                                    _4352 = mem[_4284 + 64]
                                                    mem[mem[64]] = mem[_4284]
                                                    mem[mem[64] + 64] = _4352
                                                    mem[mem[64] + 96] = gasForProcessing
                                                    emit ProcessedDividendTracker(mem[mem[64]], _4351, _4352, gasForProcessing, 1, tx.origin);
                                        else:
                                            if not stor7:
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args gasForProcessing
                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                if ext_call.success:
                                                    _4312 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 96
                                                    _4388 = mem[_4312 + 32]
                                                    _4389 = mem[_4312 + 64]
                                                    mem[mem[64]] = mem[_4312]
                                                    mem[mem[64] + 64] = _4389
                                                    mem[mem[64] + 96] = gasForProcessing
                                                    emit ProcessedDividendTracker(mem[mem[64]], _4388, _4389, gasForProcessing, 1, tx.origin);
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
                                        require ext_code.size(dividendTrackerAddress)
                                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, balanceOf[address(msg.sender)]
                                        mem[0] = arg1
                                        mem[32] = 0
                                        require ext_code.size(dividendTrackerAddress)
                                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(arg1), balanceOf[address(arg1)]
                                        if not ext_call.success:
                                            if not ext_call.success:
                                                if not stor7:
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args gasForProcessing
                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                    if ext_call.success:
                                                        _4293 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 96
                                                        _4364 = mem[_4293 + 32]
                                                        _4365 = mem[_4293 + 64]
                                                        mem[mem[64]] = mem[_4293]
                                                        mem[mem[64] + 64] = _4365
                                                        mem[mem[64] + 96] = gasForProcessing
                                                        emit ProcessedDividendTracker(mem[mem[64]], _4364, _4365, gasForProcessing, 1, tx.origin);
                                            else:
                                                if not stor7:
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args gasForProcessing
                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                    if ext_call.success:
                                                        _4326 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 96
                                                        _4394 = mem[_4326 + 32]
                                                        _4395 = mem[_4326 + 64]
                                                        mem[mem[64]] = mem[_4326]
                                                        mem[mem[64] + 64] = _4395
                                                        mem[mem[64] + 96] = gasForProcessing
                                                        emit ProcessedDividendTracker(mem[mem[64]], _4394, _4395, gasForProcessing, 1, tx.origin);
                                        else:
                                            if not ext_call.success:
                                                if not stor7:
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args gasForProcessing
                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                    if ext_call.success:
                                                        _4328 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 96
                                                        _4397 = mem[_4328 + 32]
                                                        _4398 = mem[_4328 + 64]
                                                        mem[mem[64]] = mem[_4328]
                                                        mem[mem[64] + 64] = _4398
                                                        mem[mem[64] + 96] = gasForProcessing
                                                        emit ProcessedDividendTracker(mem[mem[64]], _4397, _4398, gasForProcessing, 1, tx.origin);
                                            else:
                                                if not stor7:
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args gasForProcessing
                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                    if ext_call.success:
                                                        _4369 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 96
                                                        _4415 = mem[_4369 + 32]
                                                        _4416 = mem[_4369 + 64]
                                                        mem[mem[64]] = mem[_4369]
                                                        mem[mem[64] + 64] = _4416
                                                        mem[mem[64] + 96] = gasForProcessing
                                                        emit ProcessedDividendTracker(mem[mem[64]], _4415, _4416, gasForProcessing, 1, tx.origin);
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
                                            require ext_code.size(dividendTrackerAddress)
                                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, balanceOf[address(msg.sender)]
                                            mem[0] = arg1
                                            mem[32] = 0
                                            require ext_code.size(dividendTrackerAddress)
                                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(arg1), balanceOf[address(arg1)]
                                            if not ext_call.success:
                                                if not ext_call.success:
                                                    if not stor7:
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args gasForProcessing
                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                        if ext_call.success:
                                                            _4259 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 96
                                                            _4314 = mem[_4259 + 32]
                                                            _4315 = mem[_4259 + 64]
                                                            mem[mem[64]] = mem[_4259]
                                                            mem[mem[64] + 64] = _4315
                                                            mem[mem[64] + 96] = gasForProcessing
                                                            emit ProcessedDividendTracker(mem[mem[64]], _4314, _4315, gasForProcessing, 1, tx.origin);
                                                else:
                                                    if not stor7:
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args gasForProcessing
                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                        if ext_call.success:
                                                            _4287 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 96
                                                            _4355 = mem[_4287 + 32]
                                                            _4356 = mem[_4287 + 64]
                                                            mem[mem[64]] = mem[_4287]
                                                            mem[mem[64] + 64] = _4356
                                                            mem[mem[64] + 96] = gasForProcessing
                                                            emit ProcessedDividendTracker(mem[mem[64]], _4355, _4356, gasForProcessing, 1, tx.origin);
                                            else:
                                                if not ext_call.success:
                                                    if not stor7:
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args gasForProcessing
                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                        if ext_call.success:
                                                            _4289 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 96
                                                            _4358 = mem[_4289 + 32]
                                                            _4359 = mem[_4289 + 64]
                                                            mem[mem[64]] = mem[_4289]
                                                            mem[mem[64] + 64] = _4359
                                                            mem[mem[64] + 96] = gasForProcessing
                                                            emit ProcessedDividendTracker(mem[mem[64]], _4358, _4359, gasForProcessing, 1, tx.origin);
                                                else:
                                                    if not stor7:
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args gasForProcessing
                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                        if ext_call.success:
                                                            _4319 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 96
                                                            _4391 = mem[_4319 + 32]
                                                            _4392 = mem[_4319 + 64]
                                                            mem[mem[64]] = mem[_4319]
                                                            mem[mem[64] + 64] = _4392
                                                            mem[mem[64] + 96] = gasForProcessing
                                                            emit ProcessedDividendTracker(mem[mem[64]], _4391, _4392, gasForProcessing, 1, tx.origin);
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
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, balanceOf[address(msg.sender)]
                                                mem[0] = arg1
                                                mem[32] = 0
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg1), balanceOf[address(arg1)]
                                                if not ext_call.success:
                                                    if not ext_call.success:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _4620 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _4643 = mem[_4620 + 32]
                                                                _4644 = mem[_4620 + 64]
                                                                mem[mem[64]] = mem[_4620]
                                                                mem[mem[64] + 64] = _4644
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _4643, _4644, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _4633 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _4659 = mem[_4633 + 32]
                                                                _4660 = mem[_4633 + 64]
                                                                mem[mem[64]] = mem[_4633]
                                                                mem[mem[64] + 64] = _4660
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _4659, _4660, gasForProcessing, 1, tx.origin);
                                                else:
                                                    if not ext_call.success:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _4635 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _4662 = mem[_4635 + 32]
                                                                _4663 = mem[_4635 + 64]
                                                                mem[mem[64]] = mem[_4635]
                                                                mem[mem[64] + 64] = _4663
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _4662, _4663, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _4648 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _4672 = mem[_4648 + 32]
                                                                _4673 = mem[_4648 + 64]
                                                                mem[mem[64]] = mem[_4648]
                                                                mem[mem[64] + 64] = _4673
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _4672, _4673, gasForProcessing, 1, tx.origin);
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
                                                mem[0] = arg1
                                                mem[32] = 0
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg1), balanceOf[address(arg1)]
                                                if not ext_call.success:
                                                    if not ext_call.success:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _4759 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _4774 = mem[_4759 + 32]
                                                                _4775 = mem[_4759 + 64]
                                                                mem[mem[64]] = mem[_4759]
                                                                mem[mem[64] + 64] = _4775
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _4774, _4775, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _4767 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _4788 = mem[_4767 + 32]
                                                                _4789 = mem[_4767 + 64]
                                                                mem[mem[64]] = mem[_4767]
                                                                mem[mem[64] + 64] = _4789
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _4788, _4789, gasForProcessing, 1, tx.origin);
                                                else:
                                                    if not ext_call.success:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _4769 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _4791 = mem[_4769 + 32]
                                                                _4792 = mem[_4769 + 64]
                                                                mem[mem[64]] = mem[_4769]
                                                                mem[mem[64] + 64] = _4792
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _4791, _4792, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _4779 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _4800 = mem[_4779 + 32]
                                                                _4801 = mem[_4779 + 64]
                                                                mem[mem[64]] = mem[_4779]
                                                                mem[mem[64] + 64] = _4801
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _4800, _4801, gasForProcessing, 1, tx.origin);
    return 1
}



}
