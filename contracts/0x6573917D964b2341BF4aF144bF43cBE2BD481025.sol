contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
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
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args Mask(255, 1, balanceOf[this.address] * liquidityFee / totalFees), 0, 160, address(this.address), block.timestamp, mem[_2276 + ceil32(return_data.size) + 260 len (32 * mem[_2276]) + 32]
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
                            mem[_2276 + ceil32(return_data.size) + 164] = 0
                            mem[_2276 + ceil32(return_data.size) + 196] = 0
                            mem[_2276 + ceil32(return_data.size) + 228] = 0
                            mem[_2276 + ceil32(return_data.size) + 260] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                 gas gas_remaining wei
                                args this.address, (balanceOf[this.address] * liquidityFee / totalFees) - (balanceOf[this.address] * liquidityFee / totalFees / 2), 0, 0, 0, block.timestamp
                            mem[_2276 + ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            emit SwapAndLiquify(Mask(255, 1, balanceOf[this.address] * liquidityFee / totalFees), 0, (balanceOf[this.address] * liquidityFee / totalFees) - (balanceOf[this.address] * liquidityFee / totalFees / 2));
                            mem[_2276 + (2 * ceil32(return_data.size)) + 96] = 3
                            mem[_2276 + (2 * ceil32(return_data.size)) + 128] = this.address
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[_2276 + (2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _2276 + (4 * ceil32(return_data.size)) + 224
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[_2276 + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                            mem[_2276 + (2 * ceil32(return_data.size)) + 192] = rewardTokenAddress
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            mem[0] = uniswapV2RouterAddress
                            mem[32] = sha3(address(this.address), 1)
                            allowance[address(this.address)][stor6].field_0 = balanceOf[this.address]
                            emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                            mem[_2276 + (4 * ceil32(return_data.size)) + 224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[_2276 + (4 * ceil32(return_data.size)) + 228] = balanceOf[this.address]
                            mem[_2276 + (4 * ceil32(return_data.size)) + 260] = 0
                            mem[_2276 + (4 * ceil32(return_data.size)) + 292] = 160
                            mem[_2276 + (4 * ceil32(return_data.size)) + 388] = 3
                            idx = 0
                            s = _2276 + (4 * ceil32(return_data.size)) + 420
                            t = _2276 + (2 * ceil32(return_data.size)) + 128
                            while idx < mem[_2276 + (2 * ceil32(return_data.size)) + 96]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_2276 + (4 * ceil32(return_data.size)) + 324] = this.address
                            mem[_2276 + (4 * ceil32(return_data.size)) + 356] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[_2276 + (4 * ceil32(return_data.size)) + 388 len (32 * mem[_2276 + (2 * ceil32(return_data.size)) + 96]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(rewardTokenAddress)
                            staticcall rewardTokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_2276 + (4 * ceil32(return_data.size)) + 228] = dividendTrackerAddress
                            mem[_2276 + (4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[_2276 + (4 * ceil32(return_data.size)) + 228 len (7 * ceil32(return_data.size)) + 64]
                            mem[_2276 + (4 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
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
                                    mem[_2276 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_2276 + (8 * ceil32(return_data.size)) + 228] = 32
                                    mem[_2276 + (8 * ceil32(return_data.size)) + 260] = 37
                                    mem[_2276 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer from the zero ad'
                                    mem[_2276 + (8 * ceil32(return_data.size)) + 324] = 0x6472657373000000000000000000000000000000000000000000000000000000
                                    revert with memory
                                      from _2276 + (8 * ceil32(return_data.size)) + 224
                                       len (13 * ceil32(return_data.size)) + 132
                                if not arg1:
                                    mem[_2276 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_2276 + (8 * ceil32(return_data.size)) + 228] = 32
                                    mem[_2276 + (8 * ceil32(return_data.size)) + 260] = 35
                                    mem[_2276 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer to the zero addr'
                                    mem[_2276 + (8 * ceil32(return_data.size)) + 324] = 0x6573730000000000000000000000000000000000000000000000000000000000
                                    revert with memory
                                      from _2276 + (8 * ceil32(return_data.size)) + 224
                                       len (13 * ceil32(return_data.size)) + 132
                                if balanceOf[address(msg.sender)] < arg2:
                                    mem[_2276 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_2276 + (8 * ceil32(return_data.size)) + 228] = 32
                                    mem[_2276 + (8 * ceil32(return_data.size)) + 260] = 38
                                    mem[_2276 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer amount exceeds b'
                                    mem[_2276 + (8 * ceil32(return_data.size)) + 324] = 0x616c616e63650000000000000000000000000000000000000000000000000000
                                    revert with memory
                                      from _2276 + (8 * ceil32(return_data.size)) + 224
                                       len (13 * ceil32(return_data.size)) + 132
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                balanceOf[arg1] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if stor17[address(arg1)]:
                                    if not msg.sender:
                                        mem[_2276 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_2276 + (8 * ceil32(return_data.size)) + 228] = 32
                                        mem[_2276 + (8 * ceil32(return_data.size)) + 260] = 37
                                        mem[_2276 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer from the zero ad'
                                        mem[_2276 + (8 * ceil32(return_data.size)) + 324] = 0x6472657373000000000000000000000000000000000000000000000000000000
                                        revert with memory
                                          from _2276 + (8 * ceil32(return_data.size)) + 224
                                           len (13 * ceil32(return_data.size)) + 132
                                    if not arg1:
                                        mem[_2276 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_2276 + (8 * ceil32(return_data.size)) + 228] = 32
                                        mem[_2276 + (8 * ceil32(return_data.size)) + 260] = 35
                                        mem[_2276 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer to the zero addr'
                                        mem[_2276 + (8 * ceil32(return_data.size)) + 324] = 0x6573730000000000000000000000000000000000000000000000000000000000
                                        revert with memory
                                          from _2276 + (8 * ceil32(return_data.size)) + 224
                                           len (13 * ceil32(return_data.size)) + 132
                                    if balanceOf[address(msg.sender)] < arg2:
                                        mem[_2276 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_2276 + (8 * ceil32(return_data.size)) + 228] = 32
                                        mem[_2276 + (8 * ceil32(return_data.size)) + 260] = 38
                                        mem[_2276 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer amount exceeds b'
                                        mem[_2276 + (8 * ceil32(return_data.size)) + 324] = 0x616c616e63650000000000000000000000000000000000000000000000000000
                                        revert with memory
                                          from _2276 + (8 * ceil32(return_data.size)) + 224
                                           len (13 * ceil32(return_data.size)) + 132
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor7:
                                        if not msg.sender:
                                            mem[_2276 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_2276 + (8 * ceil32(return_data.size)) + 228] = 32
                                            mem[_2276 + (8 * ceil32(return_data.size)) + 260] = 37
                                            mem[_2276 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer from the zero ad'
                                            mem[_2276 + (8 * ceil32(return_data.size)) + 324] = 0x6472657373000000000000000000000000000000000000000000000000000000
                                            revert with memory
                                              from _2276 + (8 * ceil32(return_data.size)) + 224
                                               len (13 * ceil32(return_data.size)) + 132
                                        if not arg1:
                                            mem[_2276 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_2276 + (8 * ceil32(return_data.size)) + 228] = 32
                                            mem[_2276 + (8 * ceil32(return_data.size)) + 260] = 35
                                            mem[_2276 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer to the zero addr'
                                            mem[_2276 + (8 * ceil32(return_data.size)) + 324] = 0x6573730000000000000000000000000000000000000000000000000000000000
                                            revert with memory
                                              from _2276 + (8 * ceil32(return_data.size)) + 224
                                               len (13 * ceil32(return_data.size)) + 132
                                        if balanceOf[address(msg.sender)] < arg2:
                                            mem[_2276 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_2276 + (8 * ceil32(return_data.size)) + 228] = 32
                                            mem[_2276 + (8 * ceil32(return_data.size)) + 260] = 38
                                            mem[_2276 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer amount exceeds b'
                                            mem[_2276 + (8 * ceil32(return_data.size)) + 324] = 0x616c616e63650000000000000000000000000000000000000000000000000000
                                            revert with memory
                                              from _2276 + (8 * ceil32(return_data.size)) + 224
                                               len (13 * ceil32(return_data.size)) + 132
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
                                                mem[_2276 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_2276 + (8 * ceil32(return_data.size)) + 228] = 32
                                                mem[_2276 + (8 * ceil32(return_data.size)) + 260] = 37
                                                mem[_2276 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer from the zero ad'
                                                mem[_2276 + (8 * ceil32(return_data.size)) + 324] = 0x6472657373000000000000000000000000000000000000000000000000000000
                                                revert with memory
                                                  from _2276 + (8 * ceil32(return_data.size)) + 224
                                                   len (13 * ceil32(return_data.size)) + 132
                                            if not this.address:
                                                mem[_2276 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_2276 + (8 * ceil32(return_data.size)) + 228] = 32
                                                mem[_2276 + (8 * ceil32(return_data.size)) + 260] = 35
                                                mem[_2276 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer to the zero addr'
                                                mem[_2276 + (8 * ceil32(return_data.size)) + 324] = 0x6573730000000000000000000000000000000000000000000000000000000000
                                                revert with memory
                                                  from _2276 + (8 * ceil32(return_data.size)) + 224
                                                   len (13 * ceil32(return_data.size)) + 132
                                            if balanceOf[address(msg.sender)] < arg2 * totalFees / 100:
                                                mem[_2276 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_2276 + (8 * ceil32(return_data.size)) + 228] = 32
                                                mem[_2276 + (8 * ceil32(return_data.size)) + 260] = 38
                                                mem[_2276 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer amount exceeds b'
                                                mem[_2276 + (8 * ceil32(return_data.size)) + 324] = 0x616c616e63650000000000000000000000000000000000000000000000000000
                                                revert with memory
                                                  from _2276 + (8 * ceil32(return_data.size)) + 224
                                                   len (13 * ceil32(return_data.size)) + 132
                                            balanceOf[address(msg.sender)] -= arg2 * totalFees / 100
                                            if balanceOf[this.address] > !(arg2 * totalFees / 100):
                                                revert with 0, 17
                                            balanceOf[this.address] += arg2 * totalFees / 100
                                            emit Transfer((arg2 * totalFees / 100), msg.sender, this.address);
                                            if not msg.sender:
                                                mem[_2276 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_2276 + (8 * ceil32(return_data.size)) + 228] = 32
                                                mem[_2276 + (8 * ceil32(return_data.size)) + 260] = 37
                                                mem[_2276 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer from the zero ad'
                                                mem[_2276 + (8 * ceil32(return_data.size)) + 324] = 0x6472657373000000000000000000000000000000000000000000000000000000
                                                revert with memory
                                                  from _2276 + (8 * ceil32(return_data.size)) + 224
                                                   len (13 * ceil32(return_data.size)) + 132
                                            if not arg1:
                                                mem[_2276 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_2276 + (8 * ceil32(return_data.size)) + 228] = 32
                                                mem[_2276 + (8 * ceil32(return_data.size)) + 260] = 35
                                                mem[_2276 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer to the zero addr'
                                                mem[_2276 + (8 * ceil32(return_data.size)) + 324] = 0x6573730000000000000000000000000000000000000000000000000000000000
                                                revert with memory
                                                  from _2276 + (8 * ceil32(return_data.size)) + 224
                                                   len (13 * ceil32(return_data.size)) + 132
                                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * totalFees / 100):
                                                mem[_2276 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_2276 + (8 * ceil32(return_data.size)) + 228] = 32
                                                mem[_2276 + (8 * ceil32(return_data.size)) + 260] = 38
                                                mem[_2276 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer amount exceeds b'
                                                mem[_2276 + (8 * ceil32(return_data.size)) + 324] = 0x616c616e63650000000000000000000000000000000000000000000000000000
                                                revert with memory
                                                  from _2276 + (8 * ceil32(return_data.size)) + 224
                                                   len (13 * ceil32(return_data.size)) + 132
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
                                                mem[_2276 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_2276 + (8 * ceil32(return_data.size)) + 228] = 32
                                                mem[_2276 + (8 * ceil32(return_data.size)) + 260] = 37
                                                mem[_2276 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer from the zero ad'
                                                mem[_2276 + (8 * ceil32(return_data.size)) + 324] = 0x6472657373000000000000000000000000000000000000000000000000000000
                                                revert with memory
                                                  from _2276 + (8 * ceil32(return_data.size)) + 224
                                                   len (13 * ceil32(return_data.size)) + 132
                                            if not this.address:
                                                mem[_2276 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_2276 + (8 * ceil32(return_data.size)) + 228] = 32
                                                mem[_2276 + (8 * ceil32(return_data.size)) + 260] = 35
                                                mem[_2276 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer to the zero addr'
                                                mem[_2276 + (8 * ceil32(return_data.size)) + 324] = 0x6573730000000000000000000000000000000000000000000000000000000000
                                                revert with memory
                                                  from _2276 + (8 * ceil32(return_data.size)) + 224
                                                   len (13 * ceil32(return_data.size)) + 132
                                            if balanceOf[address(msg.sender)] < (arg2 * totalFees / 100) + (arg2 / 100):
                                                mem[_2276 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_2276 + (8 * ceil32(return_data.size)) + 228] = 32
                                                mem[_2276 + (8 * ceil32(return_data.size)) + 260] = 38
                                                mem[_2276 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer amount exceeds b'
                                                mem[_2276 + (8 * ceil32(return_data.size)) + 324] = 0x616c616e63650000000000000000000000000000000000000000000000000000
                                                revert with memory
                                                  from _2276 + (8 * ceil32(return_data.size)) + 224
                                                   len (13 * ceil32(return_data.size)) + 132
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 * totalFees / 100) - (arg2 / 100)
                                            if balanceOf[this.address] > !((arg2 * totalFees / 100) + (arg2 / 100)):
                                                revert with 0, 17
                                            balanceOf[this.address] = balanceOf[this.address] + (arg2 * totalFees / 100) + (arg2 / 100)
                                            emit Transfer(((arg2 * totalFees / 100) + (arg2 / 100)), msg.sender, this.address);
                                            if not msg.sender:
                                                mem[_2276 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_2276 + (8 * ceil32(return_data.size)) + 228] = 32
                                                mem[_2276 + (8 * ceil32(return_data.size)) + 260] = 37
                                                mem[_2276 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer from the zero ad'
                                                mem[_2276 + (8 * ceil32(return_data.size)) + 324] = 0x6472657373000000000000000000000000000000000000000000000000000000
                                                revert with memory
                                                  from _2276 + (8 * ceil32(return_data.size)) + 224
                                                   len (13 * ceil32(return_data.size)) + 132
                                            if not arg1:
                                                mem[_2276 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_2276 + (8 * ceil32(return_data.size)) + 228] = 32
                                                mem[_2276 + (8 * ceil32(return_data.size)) + 260] = 35
                                                mem[_2276 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer to the zero addr'
                                                mem[_2276 + (8 * ceil32(return_data.size)) + 324] = 0x6573730000000000000000000000000000000000000000000000000000000000
                                                revert with memory
                                                  from _2276 + (8 * ceil32(return_data.size)) + 224
                                                   len (13 * ceil32(return_data.size)) + 132
                                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * totalFees / 100) - (arg2 / 100):
                                                mem[_2276 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_2276 + (8 * ceil32(return_data.size)) + 228] = 32
                                                mem[_2276 + (8 * ceil32(return_data.size)) + 260] = 38
                                                mem[_2276 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer amount exceeds b'
                                                mem[_2276 + (8 * ceil32(return_data.size)) + 324] = 0x616c616e63650000000000000000000000000000000000000000000000000000
                                                revert with memory
                                                  from _2276 + (8 * ceil32(return_data.size)) + 224
                                                   len (13 * ceil32(return_data.size)) + 132
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * totalFees / 100) + (arg2 / 100)
                                            if balanceOf[arg1] > !(arg2 - (arg2 * totalFees / 100) - (arg2 / 100)):
                                                revert with 0, 17
                                            balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * totalFees / 100) - (arg2 / 100)
                                            emit Transfer((arg2 - (arg2 * totalFees / 100) - (arg2 / 100)), msg.sender, arg1);
                            mem[_2276 + (8 * ceil32(return_data.size)) + 228] = msg.sender
                            mem[_2276 + (8 * ceil32(return_data.size)) + 260] = balanceOf[address(msg.sender)]
                            require ext_code.size(dividendTrackerAddress)
                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args mem[_2276 + (8 * ceil32(return_data.size)) + 228 len (13 * ceil32(return_data.size)) + 64]
                            mem[_2276 + (8 * ceil32(return_data.size)) + 228] = arg1
                            mem[_2276 + (8 * ceil32(return_data.size)) + 260] = balanceOf[address(arg1)]
                            require ext_code.size(dividendTrackerAddress)
                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args mem[_2276 + (8 * ceil32(return_data.size)) + 228 len (13 * ceil32(return_data.size)) + 64]
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
                                                                  mem[_2276 + (9 * ceil32(return_data.size)) + 352 len 5 * ceil32(return_data.size)],
                                                                  1,
                                                                  tx.origin,
    return 1
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if unknown_0x88bdd9be(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0xb62496f5(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xe708a0f9(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xf27fd254(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0xe708a0f9(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return tokenRewardsFee
                    if unknown_0xe7841ec0(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require ext_code.size(dividendTrackerAddress)
                        staticcall dividendTrackerAddress.0xe7841ec0 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return ext_call.return_data[0]
                    require unknown_0xe98030c7(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    require ext_code.size(dividendTrackerAddress)
                    call dividendTrackerAddress.0xe98030c7 with:
                         gas gas_remaining wei
                        args cd[4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if unknown_0xf27fd254(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require ext_code.size(dividendTrackerAddress)
                        staticcall dividendTrackerAddress.getAccountAtIndex(uint256 arg1) with:
                                gas gas_remaining wei
                               args cd[4]
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
                    if uint32(call.func_hash) >> 224 != unknown_0xf2fde38b(?????):
                        if unknown_0xf7c618c1(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return rewardTokenAddress
                        require unknown_0xffa1ad74(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return 1
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if not address(cd[4]):
                        revert with 0, 'Ownable: new owner is the zero address'
                    owner = address(cd[4])
                    emit OwnershipTransferred(owner, address(cd[4]));
            else:
                if unknown_0xc492f046(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0xb62496f5(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        return bool(stor18[cd[4]])
                    if unknown_0xbdd4f29f(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require ext_code.size(dividendTrackerAddress)
                        staticcall dividendTrackerAddress.minimumTokenBalanceForDividends() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return ext_call.return_data[0]
                    require unknown_0xc0246668(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    require cd[36] == bool(cd[36])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if bool(cd[36]) == bool(stor17[address(cd[4])]):
                        revert with 0, 'BABYTOKEN: Account is already the value of 'excluded''
                    stor17[address(cd[4])] = uint8(bool(cd[36]))
                    emit ExcludeFromFees(bool(cd[36]), address(cd[4]));
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0xc492f046(?????):
                        if uint32(call.func_hash) >> 224 != unknown_0xc705c569(?????):
                            if uint32(call.func_hash) >> 224 != unknown_0xdd62ed3e(?????):
                                require unknown_0xe2f45605(?????) == uint32(call.func_hash) >> 224
                                require not msg.value
                                return swapTokensAtAmount
                            require not msg.value
                            require calldata.size - 4 >= 64
                            require cd[4] == address(cd[4])
                            require cd[36] == address(cd[36])
                            return allowance[address(cd[4])][address(cd[36])].field_0
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        require ext_code.size(dividendTrackerAddress)
                        staticcall dividendTrackerAddress.0xc705c569 with:
                                gas gas_remaining wei
                               args address(cd[4])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        return bool(ext_call.return_data[0])
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] <= test266151307()
                    require cd[4] + 35 < calldata.size
                    require ('cd', 4).length <= test266151307()
                    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                    require cd[36] == bool(cd[36])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    idx = 0
                    while idx < ('cd', 4).length:
                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[32] = 17
                        stor17[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(bool(cd[36]))
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    idx = 0
                    s = 224
                    t = cd[4] + 36
                    while idx < ('cd', 4).length:
                        require cd[t] == address(cd[t])
                        mem[s] = address(cd[t])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    emit ExcludeMultipleAccountsFromFees(Array(len=('cd', 4).length, data=mem[224 len 32 * ('cd', 4).length]), bool(cd[36]));
        if unknown_0xa26579ad(?????) > uint32(call.func_hash) >> 224:
            if uint32(call.func_hash) >> 224 != unknown_0x88bdd9be(?????):
                if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return owner
                if unknown_0x95d89b41(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if bool(stor4.length):
                        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                            revert with 0, 34
                        if bool(stor4.length):
                            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor4.length):
                                if 31 < uint255(stor4.length) * 0.5:
                                    mem[160] = uint256(stor4.field_0)
                                    idx = 160
                                    s = 0
                                    while (uint255(stor4.length) * 0.5) + 128 > idx:
                                        mem[idx + 32] = stor4[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[160 len ceil32(uint255(stor4.length) * 0.5)])
                                mem[160] = 256 * stor4.length.field_8
                        else:
                            if bool(stor4.length) == stor4.length.field_1 < 32:
                                revert with 0, 34
                            if stor4.length.field_1:
                                if 31 < stor4.length.field_1:
                                    mem[160] = uint256(stor4.field_0)
                                    idx = 160
                                    s = 0
                                    while stor4.length.field_1 + 128 > idx:
                                        mem[idx + 32] = stor4[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[160 len ceil32(uint255(stor4.length) * 0.5)])
                                mem[160] = 256 * stor4.length.field_8
                        mem[ceil32(uint255(stor4.length) * 0.5) + 224 len ceil32(uint255(stor4.length) * 0.5)] = mem[160 len ceil32(uint255(stor4.length) * 0.5)]
                        if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
                            mem[ceil32(uint255(stor4.length) * 0.5) + (uint255(stor4.length) * 0.5) + 224] = 0
                        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[160 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
                    if bool(stor4.length) == stor4.length.field_1 < 32:
                        revert with 0, 34
                    if bool(stor4.length):
                        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor4.length):
                            if 31 < uint255(stor4.length) * 0.5:
                                mem[160] = uint256(stor4.field_0)
                                idx = 160
                                s = 0
                                while (uint255(stor4.length) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor4[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor4.length % 128, data=mem[160 len ceil32(stor4.length.field_1)])
                            mem[160] = 256 * stor4.length.field_8
                    else:
                        if bool(stor4.length) == stor4.length.field_1 < 32:
                            revert with 0, 34
                        if stor4.length.field_1:
                            if 31 < stor4.length.field_1:
                                mem[160] = uint256(stor4.field_0)
                                idx = 160
                                s = 0
                                while stor4.length.field_1 + 128 > idx:
                                    mem[idx + 32] = stor4[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor4.length % 128, data=mem[160 len ceil32(stor4.length.field_1)])
                            mem[160] = 256 * stor4.length.field_8
                    mem[ceil32(stor4.length.field_1) + 224 len ceil32(stor4.length.field_1)] = mem[160 len ceil32(stor4.length.field_1)]
                    if ceil32(stor4.length.field_1) > stor4.length.field_1:
                        mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 224] = 0
                    return Array(len=stor4.length % 128, data=mem[160 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 224 len 2 * ceil32(stor4.length.field_1)]), 
                if unknown_0x98118cb4(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return liquidityFee
                if uint32(call.func_hash) >> 224 != unknown_0x9a7a23d6(?????):
                    require unknown_0x9c1b8af5(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return gasForProcessing
                require not msg.value
                require calldata.size - 4 >= 64
                require cd[4] == address(cd[4])
                require cd[36] == bool(cd[36])
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if uniswapV2PairAddress == address(cd[4]):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'BABYTOKEN: The PancakeSwap pair cannot be removed from automatedMarketMakerPairs'
                if bool(cd[36]) == bool(stor18[address(cd[4])]):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'BABYTOKEN: Automated market maker pair is already set to that value'
                stor18[address(cd[4])] = uint8(bool(cd[36]))
                if cd[36]:
                    require ext_code.size(dividendTrackerAddress)
                    call dividendTrackerAddress.0x31e79db0 with:
                         gas gas_remaining wei
                        args address(cd[4])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                emit SetAutomatedMarketMakerPair(address(cd[4]), bool(cd[36]));
            else:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if dividendTrackerAddress == address(cd[4]):
                    revert with 0, 'BABYTOKEN: The dividend tracker already has that address'
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).0x8da5cb5b with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != this.address:
                    revert with 0, 'BABYTOKEN: The new dividend tracker must be owned by the BABYTOKEN token contract'
                require ext_code.size(address(cd[4]))
                call address(cd[4]).0x31e79db0 with:
                     gas gas_remaining wei
                    args address(cd[4])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(cd[4]))
                call address(cd[4]).0x31e79db0 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(cd[4]))
                call address(cd[4]).0x31e79db0 with:
                     gas gas_remaining wei
                    args owner
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(cd[4]))
                call address(cd[4]).0x31e79db0 with:
                     gas gas_remaining wei
                    args uniswapV2RouterAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit UpdateDividendTracker(address(cd[4]), dividendTrackerAddress);
                dividendTrackerAddress = address(cd[4])
        if unknown_0xa9059cbb(?????) > uint32(call.func_hash) >> 224:
            if unknown_0xa26579ad(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require ext_code.size(dividendTrackerAddress)
                staticcall dividendTrackerAddress.claimWait() with:
                        gas gas_remaining wei
            else:
                if unknown_0xa457c2d7(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    if allowance[msg.sender][address(cd[4])].field_0 < cd[36]:
                        revert with 0, 'ERC20: decreased allowance below zero'
                    if not msg.sender:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not address(cd[4]):
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(msg.sender)][address(cd[4])].field_0 = allowance[msg.sender][address(cd[4])].field_0 - cd[36]
                    emit Approval((allowance[msg.sender][address(cd[4])].field_0 - cd[36]), msg.sender, address(cd[4]));
                    return 1
                require unknown_0xa8b9d240(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                require ext_code.size(dividendTrackerAddress)
                staticcall dividendTrackerAddress.0xa8b9d240 with:
                        gas gas_remaining wei
                       args address(cd[4])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return ext_call.return_data[0]
        if uint32(call.func_hash) >> 224 != unknown_0xa9059cbb(?????):
            if unknown_0xad56c13c(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                require ext_code.size(dividendTrackerAddress)
                staticcall dividendTrackerAddress.getAccount(address arg1) with:
                        gas gas_remaining wei
                       args address(cd[4])
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
            if uint32(call.func_hash) >> 224 != unknown_0xadefd90c(?????):
                require unknown_0xafa4f3b2(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                swapTokensAtAmount = cd[4]
            else:
                require not msg.value
                require calldata.size - 4 >= 32
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                liquidityFee = cd[4]
                if tokenRewardsFee > !cd[4]:
                    revert with 0, 17
                if tokenRewardsFee + cd[4] > !marketingFee:
                    revert with 0, 17
                totalFees = tokenRewardsFee + cd[4] + marketingFee
                if 25 < tokenRewardsFee + cd[4] + marketingFee:
                    revert with 0, 'Total fee is over 25%'
        require not msg.value
        require calldata.size - 4 >= 64
        require cd[4] == address(cd[4])
        if not msg.sender:
            revert with 0, 'ERC20: transfer from the zero address'
        if not address(cd[4]):
            revert with 0, 'ERC20: transfer to the zero address'
        if not cd[36]:
            if not msg.sender:
                revert with 0, 'ERC20: transfer from the zero address'
            if not address(cd[4]):
                revert with 0, 'ERC20: transfer to the zero address'
            if balanceOf[address(msg.sender)] < 0:
                revert with 0, 'ERC20: transfer amount exceeds balance'
            if balanceOf[address(cd[4])] > -1:
                revert with 0, 17
            emit Transfer(0, msg.sender, address(cd[4]));
        else:
            if balanceOf[this.address] < swapTokensAtAmount:
                if stor17[address(msg.sender)]:
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not address(cd[4]):
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < cd[36]:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] -= cd[36]
                    if balanceOf[address(cd[4])] > !cd[36]:
                        revert with 0, 17
                    balanceOf[address(cd[4])] += cd[36]
                    emit Transfer(cd[36], msg.sender, address(cd[4]));
                else:
                    if stor17[address(cd[4])]:
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not address(cd[4]):
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)] < cd[36]:
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] -= cd[36]
                        if balanceOf[address(cd[4])] > !cd[36]:
                            revert with 0, 17
                        balanceOf[address(cd[4])] += cd[36]
                        emit Transfer(cd[36], msg.sender, address(cd[4]));
                    else:
                        if stor7:
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not address(cd[4]):
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < cd[36]:
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] -= cd[36]
                            if balanceOf[address(cd[4])] > !cd[36]:
                                revert with 0, 17
                            balanceOf[address(cd[4])] += cd[36]
                            emit Transfer(cd[36], msg.sender, address(cd[4]));
                        else:
                            if cd[36] and totalFees > -1 / cd[36]:
                                revert with 0, 17
                            if not stor18[address(cd[4])]:
                                if cd[36] < cd[36] * totalFees / 100:
                                    revert with 0, 17
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < cd[36] * totalFees / 100:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= cd[36] * totalFees / 100
                                if balanceOf[this.address] > !(cd[36] * totalFees / 100):
                                    revert with 0, 17
                                balanceOf[this.address] += cd[36] * totalFees / 100
                                emit Transfer((cd[36] * totalFees / 100), msg.sender, this.address);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not address(cd[4]):
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < cd[36] - (cd[36] * totalFees / 100):
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] * totalFees / 100)
                                if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] * totalFees / 100)):
                                    revert with 0, 17
                                balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] * totalFees / 100)
                                emit Transfer((cd[36] - (cd[36] * totalFees / 100)), msg.sender, address(cd[4]));
                            else:
                                if cd[36] and 1 > -1 / cd[36]:
                                    revert with 0, 17
                                if cd[36] * totalFees / 100 > !(cd[36] / 100):
                                    revert with 0, 17
                                if cd[36] < (cd[36] * totalFees / 100) + (cd[36] / 100):
                                    revert with 0, 17
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < (cd[36] * totalFees / 100) + (cd[36] / 100):
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (cd[36] * totalFees / 100) - (cd[36] / 100)
                                if balanceOf[this.address] > !((cd[36] * totalFees / 100) + (cd[36] / 100)):
                                    revert with 0, 17
                                balanceOf[this.address] = balanceOf[this.address] + (cd[36] * totalFees / 100) + (cd[36] / 100)
                                emit Transfer(((cd[36] * totalFees / 100) + (cd[36] / 100)), msg.sender, this.address);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not address(cd[4]):
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < cd[36] - (cd[36] * totalFees / 100) - (cd[36] / 100):
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] * totalFees / 100) + (cd[36] / 100)
                                if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] * totalFees / 100) - (cd[36] / 100)):
                                    revert with 0, 17
                                balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] * totalFees / 100) - (cd[36] / 100)
                                emit Transfer((cd[36] - (cd[36] * totalFees / 100) - (cd[36] / 100)), msg.sender, address(cd[4]));
                require ext_code.size(dividendTrackerAddress)
                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, balanceOf[address(msg.sender)]
                require ext_code.size(dividendTrackerAddress)
                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[4]), balanceOf[address(cd[4])]
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
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not address(cd[4]):
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)] < cd[36]:
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] -= cd[36]
                        if balanceOf[address(cd[4])] > !cd[36]:
                            revert with 0, 17
                        balanceOf[address(cd[4])] += cd[36]
                        emit Transfer(cd[36], msg.sender, address(cd[4]));
                    else:
                        if stor17[address(cd[4])]:
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not address(cd[4]):
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < cd[36]:
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] -= cd[36]
                            if balanceOf[address(cd[4])] > !cd[36]:
                                revert with 0, 17
                            balanceOf[address(cd[4])] += cd[36]
                            emit Transfer(cd[36], msg.sender, address(cd[4]));
                        else:
                            if stor7:
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not address(cd[4]):
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < cd[36]:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= cd[36]
                                if balanceOf[address(cd[4])] > !cd[36]:
                                    revert with 0, 17
                                balanceOf[address(cd[4])] += cd[36]
                                emit Transfer(cd[36], msg.sender, address(cd[4]));
                            else:
                                if cd[36] and totalFees > -1 / cd[36]:
                                    revert with 0, 17
                                if not stor18[address(cd[4])]:
                                    if cd[36] < cd[36] * totalFees / 100:
                                        revert with 0, 17
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < cd[36] * totalFees / 100:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] -= cd[36] * totalFees / 100
                                    if balanceOf[this.address] > !(cd[36] * totalFees / 100):
                                        revert with 0, 17
                                    balanceOf[this.address] += cd[36] * totalFees / 100
                                    emit Transfer((cd[36] * totalFees / 100), msg.sender, this.address);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not address(cd[4]):
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < cd[36] - (cd[36] * totalFees / 100):
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] * totalFees / 100)
                                    if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] * totalFees / 100)):
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] * totalFees / 100)
                                    emit Transfer((cd[36] - (cd[36] * totalFees / 100)), msg.sender, address(cd[4]));
                                else:
                                    if cd[36] and 1 > -1 / cd[36]:
                                        revert with 0, 17
                                    if cd[36] * totalFees / 100 > !(cd[36] / 100):
                                        revert with 0, 17
                                    if cd[36] < (cd[36] * totalFees / 100) + (cd[36] / 100):
                                        revert with 0, 17
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < (cd[36] * totalFees / 100) + (cd[36] / 100):
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (cd[36] * totalFees / 100) - (cd[36] / 100)
                                    if balanceOf[this.address] > !((cd[36] * totalFees / 100) + (cd[36] / 100)):
                                        revert with 0, 17
                                    balanceOf[this.address] = balanceOf[this.address] + (cd[36] * totalFees / 100) + (cd[36] / 100)
                                    emit Transfer(((cd[36] * totalFees / 100) + (cd[36] / 100)), msg.sender, this.address);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not address(cd[4]):
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < cd[36] - (cd[36] * totalFees / 100) - (cd[36] / 100):
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] * totalFees / 100) + (cd[36] / 100)
                                    if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] * totalFees / 100) - (cd[36] / 100)):
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] * totalFees / 100) - (cd[36] / 100)
                                    emit Transfer((cd[36] - (cd[36] * totalFees / 100) - (cd[36] / 100)), msg.sender, address(cd[4]));
                    require ext_code.size(dividendTrackerAddress)
                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, balanceOf[address(msg.sender)]
                    require ext_code.size(dividendTrackerAddress)
                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[4]), balanceOf[address(cd[4])]
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
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not address(cd[4]):
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < cd[36]:
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] -= cd[36]
                            if balanceOf[address(cd[4])] > !cd[36]:
                                revert with 0, 17
                            balanceOf[address(cd[4])] += cd[36]
                            emit Transfer(cd[36], msg.sender, address(cd[4]));
                        else:
                            if stor17[address(cd[4])]:
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not address(cd[4]):
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < cd[36]:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= cd[36]
                                if balanceOf[address(cd[4])] > !cd[36]:
                                    revert with 0, 17
                                balanceOf[address(cd[4])] += cd[36]
                                emit Transfer(cd[36], msg.sender, address(cd[4]));
                            else:
                                if stor7:
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not address(cd[4]):
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < cd[36]:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] -= cd[36]
                                    if balanceOf[address(cd[4])] > !cd[36]:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] += cd[36]
                                    emit Transfer(cd[36], msg.sender, address(cd[4]));
                                else:
                                    if cd[36] and totalFees > -1 / cd[36]:
                                        revert with 0, 17
                                    if not stor18[address(cd[4])]:
                                        if cd[36] < cd[36] * totalFees / 100:
                                            revert with 0, 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < cd[36] * totalFees / 100:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= cd[36] * totalFees / 100
                                        if balanceOf[this.address] > !(cd[36] * totalFees / 100):
                                            revert with 0, 17
                                        balanceOf[this.address] += cd[36] * totalFees / 100
                                        emit Transfer((cd[36] * totalFees / 100), msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not address(cd[4]):
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < cd[36] - (cd[36] * totalFees / 100):
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] * totalFees / 100)
                                        if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] * totalFees / 100)):
                                            revert with 0, 17
                                        balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] * totalFees / 100)
                                        emit Transfer((cd[36] - (cd[36] * totalFees / 100)), msg.sender, address(cd[4]));
                                    else:
                                        if cd[36] and 1 > -1 / cd[36]:
                                            revert with 0, 17
                                        if cd[36] * totalFees / 100 > !(cd[36] / 100):
                                            revert with 0, 17
                                        if cd[36] < (cd[36] * totalFees / 100) + (cd[36] / 100):
                                            revert with 0, 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < (cd[36] * totalFees / 100) + (cd[36] / 100):
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (cd[36] * totalFees / 100) - (cd[36] / 100)
                                        if balanceOf[this.address] > !((cd[36] * totalFees / 100) + (cd[36] / 100)):
                                            revert with 0, 17
                                        balanceOf[this.address] = balanceOf[this.address] + (cd[36] * totalFees / 100) + (cd[36] / 100)
                                        emit Transfer(((cd[36] * totalFees / 100) + (cd[36] / 100)), msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not address(cd[4]):
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < cd[36] - (cd[36] * totalFees / 100) - (cd[36] / 100):
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] * totalFees / 100) + (cd[36] / 100)
                                        if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] * totalFees / 100) - (cd[36] / 100)):
                                            revert with 0, 17
                                        balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] * totalFees / 100) - (cd[36] / 100)
                                        emit Transfer((cd[36] - (cd[36] * totalFees / 100) - (cd[36] / 100)), msg.sender, address(cd[4]));
                        require ext_code.size(dividendTrackerAddress)
                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, balanceOf[address(msg.sender)]
                        require ext_code.size(dividendTrackerAddress)
                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(cd[4]), balanceOf[address(cd[4])]
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
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not address(cd[4]):
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < cd[36]:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= cd[36]
                                if balanceOf[address(cd[4])] > !cd[36]:
                                    revert with 0, 17
                                balanceOf[address(cd[4])] += cd[36]
                                emit Transfer(cd[36], msg.sender, address(cd[4]));
                            else:
                                if stor17[address(cd[4])]:
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not address(cd[4]):
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < cd[36]:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] -= cd[36]
                                    if balanceOf[address(cd[4])] > !cd[36]:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] += cd[36]
                                    emit Transfer(cd[36], msg.sender, address(cd[4]));
                                else:
                                    if stor7:
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not address(cd[4]):
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < cd[36]:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= cd[36]
                                        if balanceOf[address(cd[4])] > !cd[36]:
                                            revert with 0, 17
                                        balanceOf[address(cd[4])] += cd[36]
                                        emit Transfer(cd[36], msg.sender, address(cd[4]));
                                    else:
                                        if cd[36] and totalFees > -1 / cd[36]:
                                            revert with 0, 17
                                        if not stor18[address(cd[4])]:
                                            if cd[36] < cd[36] * totalFees / 100:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < cd[36] * totalFees / 100:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= cd[36] * totalFees / 100
                                            if balanceOf[this.address] > !(cd[36] * totalFees / 100):
                                                revert with 0, 17
                                            balanceOf[this.address] += cd[36] * totalFees / 100
                                            emit Transfer((cd[36] * totalFees / 100), msg.sender, this.address);
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < cd[36] - (cd[36] * totalFees / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] * totalFees / 100)
                                            if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] * totalFees / 100)):
                                                revert with 0, 17
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] * totalFees / 100)
                                            emit Transfer((cd[36] - (cd[36] * totalFees / 100)), msg.sender, address(cd[4]));
                                        else:
                                            if cd[36] and 1 > -1 / cd[36]:
                                                revert with 0, 17
                                            if cd[36] * totalFees / 100 > !(cd[36] / 100):
                                                revert with 0, 17
                                            if cd[36] < (cd[36] * totalFees / 100) + (cd[36] / 100):
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < (cd[36] * totalFees / 100) + (cd[36] / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (cd[36] * totalFees / 100) - (cd[36] / 100)
                                            if balanceOf[this.address] > !((cd[36] * totalFees / 100) + (cd[36] / 100)):
                                                revert with 0, 17
                                            balanceOf[this.address] = balanceOf[this.address] + (cd[36] * totalFees / 100) + (cd[36] / 100)
                                            emit Transfer(((cd[36] * totalFees / 100) + (cd[36] / 100)), msg.sender, this.address);
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < cd[36] - (cd[36] * totalFees / 100) - (cd[36] / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] * totalFees / 100) + (cd[36] / 100)
                                            if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] * totalFees / 100) - (cd[36] / 100)):
                                                revert with 0, 17
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] * totalFees / 100) - (cd[36] / 100)
                                            emit Transfer((cd[36] - (cd[36] * totalFees / 100) - (cd[36] / 100)), msg.sender, address(cd[4]));
                            require ext_code.size(dividendTrackerAddress)
                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, balanceOf[address(msg.sender)]
                            require ext_code.size(dividendTrackerAddress)
                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(cd[4]), balanceOf[address(cd[4])]
                            if not stor7:
                                require ext_code.size(dividendTrackerAddress)
                                call dividendTrackerAddress.process(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args gasForProcessing
                                if ext_call.success:
                                    require return_data.size >= 96
                                    emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                        else:
                            if owner == address(cd[4]):
                                if stor17[address(msg.sender)]:
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not address(cd[4]):
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < cd[36]:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] -= cd[36]
                                    if balanceOf[address(cd[4])] > !cd[36]:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] += cd[36]
                                    emit Transfer(cd[36], msg.sender, address(cd[4]));
                                else:
                                    if stor17[address(cd[4])]:
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not address(cd[4]):
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < cd[36]:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= cd[36]
                                        if balanceOf[address(cd[4])] > !cd[36]:
                                            revert with 0, 17
                                        balanceOf[address(cd[4])] += cd[36]
                                        emit Transfer(cd[36], msg.sender, address(cd[4]));
                                    else:
                                        if stor7:
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < cd[36]:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= cd[36]
                                            if balanceOf[address(cd[4])] > !cd[36]:
                                                revert with 0, 17
                                            balanceOf[address(cd[4])] += cd[36]
                                            emit Transfer(cd[36], msg.sender, address(cd[4]));
                                        else:
                                            if cd[36] and totalFees > -1 / cd[36]:
                                                revert with 0, 17
                                            if not stor18[address(cd[4])]:
                                                if cd[36] < cd[36] * totalFees / 100:
                                                    revert with 0, 17
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not this.address:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)] < cd[36] * totalFees / 100:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)] -= cd[36] * totalFees / 100
                                                if balanceOf[this.address] > !(cd[36] * totalFees / 100):
                                                    revert with 0, 17
                                                balanceOf[this.address] += cd[36] * totalFees / 100
                                                emit Transfer((cd[36] * totalFees / 100), msg.sender, this.address);
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not address(cd[4]):
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)] < cd[36] - (cd[36] * totalFees / 100):
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] * totalFees / 100)
                                                if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] * totalFees / 100)):
                                                    revert with 0, 17
                                                balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] * totalFees / 100)
                                                emit Transfer((cd[36] - (cd[36] * totalFees / 100)), msg.sender, address(cd[4]));
                                            else:
                                                if cd[36] and 1 > -1 / cd[36]:
                                                    revert with 0, 17
                                                if cd[36] * totalFees / 100 > !(cd[36] / 100):
                                                    revert with 0, 17
                                                if cd[36] < (cd[36] * totalFees / 100) + (cd[36] / 100):
                                                    revert with 0, 17
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not this.address:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)] < (cd[36] * totalFees / 100) + (cd[36] / 100):
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (cd[36] * totalFees / 100) - (cd[36] / 100)
                                                if balanceOf[this.address] > !((cd[36] * totalFees / 100) + (cd[36] / 100)):
                                                    revert with 0, 17
                                                balanceOf[this.address] = balanceOf[this.address] + (cd[36] * totalFees / 100) + (cd[36] / 100)
                                                emit Transfer(((cd[36] * totalFees / 100) + (cd[36] / 100)), msg.sender, this.address);
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not address(cd[4]):
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)] < cd[36] - (cd[36] * totalFees / 100) - (cd[36] / 100):
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] * totalFees / 100) + (cd[36] / 100)
                                                if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] * totalFees / 100) - (cd[36] / 100)):
                                                    revert with 0, 17
                                                balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] * totalFees / 100) - (cd[36] / 100)
                                                emit Transfer((cd[36] - (cd[36] * totalFees / 100) - (cd[36] / 100)), msg.sender, address(cd[4]));
                                require ext_code.size(dividendTrackerAddress)
                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, balanceOf[address(msg.sender)]
                                require ext_code.size(dividendTrackerAddress)
                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(cd[4]), balanceOf[address(cd[4])]
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
                                mem[132] = this.address
                                require ext_code.size(rewardTokenAddress)
                                staticcall rewardTokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[ceil32(return_data.size) + 128] = 3
                                mem[ceil32(return_data.size) + 160] = this.address
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WETH() with:
                                        gas gas_remaining wei
                                mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 256
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                                mem[ceil32(return_data.size) + 224] = rewardTokenAddress
                                if not this.address:
                                    mem[(2 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 260] = 32
                                    mem[(2 * ceil32(return_data.size)) + 292] = 36
                                    mem[(2 * ceil32(return_data.size)) + 324] = 'ERC20: approve from the zero add'
                                    mem[(2 * ceil32(return_data.size)) + 356] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                    revert with memory
                                      from (2 * ceil32(return_data.size)) + 256
                                       len ceil32(return_data.size) + 132
                                if not uniswapV2RouterAddress:
                                    mem[(2 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 260] = 32
                                    mem[(2 * ceil32(return_data.size)) + 292] = 34
                                    mem[(2 * ceil32(return_data.size)) + 324] = 'ERC20: approve to the zero addre'
                                    mem[(2 * ceil32(return_data.size)) + 356] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                    revert with memory
                                      from (2 * ceil32(return_data.size)) + 256
                                       len ceil32(return_data.size) + 132
                                mem[0] = uniswapV2RouterAddress
                                mem[32] = sha3(address(this.address), 1)
                                allowance[address(this.address)][stor6].field_0 = balanceOf[this.address] * marketingFee / totalFees
                                mem[(2 * ceil32(return_data.size)) + 256] = balanceOf[this.address] * marketingFee / totalFees
                                emit Approval(mem[(2 * ceil32(return_data.size)) + 256 len ceil32(return_data.size) + 32], this.address, uniswapV2RouterAddress);
                                mem[(2 * ceil32(return_data.size)) + 256] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 260] = balanceOf[this.address] * marketingFee / totalFees
                                mem[(2 * ceil32(return_data.size)) + 292] = 0
                                mem[(2 * ceil32(return_data.size)) + 324] = 160
                                mem[(2 * ceil32(return_data.size)) + 420] = 3
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 452
                                t = ceil32(return_data.size) + 160
                                while idx < mem[ceil32(return_data.size) + 128]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(2 * ceil32(return_data.size)) + 356] = this.address
                                mem[(2 * ceil32(return_data.size)) + 388] = block.timestamp
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 544]
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
                                _8511 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _8530 = mem[_8511]
                                if mem[_8511] < ext_call.return_data[0]:
                                    revert with 0, 17
                                mem[mem[64] + 4] = _marketingWalletAddress
                                mem[mem[64] + 36] = _8530 - ext_call.return_data[0]
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args _marketingWalletAddress, _8530 - ext_call.return_data[0]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8536 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8536] == bool(mem[_8536])
                                if balanceOf[this.address] and liquidityFee > -1 / balanceOf[this.address]:
                                    revert with 0, 17
                                if not totalFees:
                                    revert with 0, 18
                                if balanceOf[this.address] * liquidityFee / totalFees < balanceOf[this.address] * liquidityFee / totalFees / 2:
                                    revert with 0, 17
                                _8541 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                mem[_8541 + 32 len 64] = call.data[calldata.size len 64]
                                if 0 >= mem[_8541]:
                                    revert with 0, 50
                                mem[_8541 + 32] = this.address
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WETH() with:
                                        gas gas_remaining wei
                                mem[_8541 + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _8541 + ceil32(return_data.size) + 96
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if 1 >= mem[_8541]:
                                    revert with 0, 50
                                mem[_8541 + 64] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                mem[0] = uniswapV2RouterAddress
                                mem[32] = sha3(address(this.address), 1)
                                allowance[address(this.address)][stor6].field_0 = balanceOf[this.address] * liquidityFee / totalFees / 2
                                allowance[address(this.address)][stor6].field_255 = 0
                                emit Approval((balanceOf[this.address] * liquidityFee / totalFees / 2), this.address, uniswapV2RouterAddress);
                                mem[_8541 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                mem[_8541 + ceil32(return_data.size) + 100] = balanceOf[this.address] * liquidityFee / totalFees / 2
                                mem[_8541 + ceil32(return_data.size) + 132] = 0
                                mem[_8541 + ceil32(return_data.size) + 164] = 160
                                mem[_8541 + ceil32(return_data.size) + 260] = mem[_8541]
                                idx = 0
                                s = _8541 + ceil32(return_data.size) + 292
                                t = _8541 + 32
                                while idx < mem[_8541]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_8541 + ceil32(return_data.size) + 196] = this.address
                                mem[_8541 + ceil32(return_data.size) + 228] = block.timestamp
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _8541 + ceil32(return_data.size) + (32 * mem[_8541]) + -mem[64] + 288]
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
                                _11727 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                mem[_11727 + 32 len 96] = call.data[calldata.size len 96]
                                if 0 >= mem[_11727]:
                                    revert with 0, 50
                                mem[_11727 + 32] = this.address
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WETH() with:
                                        gas gas_remaining wei
                                mem[_11727 + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _11727 + ceil32(return_data.size) + 128
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if 1 >= mem[_11727]:
                                    revert with 0, 50
                                mem[_11727 + 64] = ext_call.return_data[12 len 20]
                                if 2 >= mem[_11727]:
                                    revert with 0, 50
                                mem[_11727 + 96] = rewardTokenAddress
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                mem[0] = uniswapV2RouterAddress
                                mem[32] = sha3(address(this.address), 1)
                                allowance[address(this.address)][stor6].field_0 = balanceOf[this.address]
                                emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                mem[_11727 + ceil32(return_data.size) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[_11727 + ceil32(return_data.size) + 132] = balanceOf[this.address]
                                mem[_11727 + ceil32(return_data.size) + 164] = 0
                                mem[_11727 + ceil32(return_data.size) + 196] = 160
                                mem[_11727 + ceil32(return_data.size) + 292] = mem[_11727]
                                idx = 0
                                s = _11727 + ceil32(return_data.size) + 324
                                t = _11727 + 32
                                while idx < mem[_11727]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_11727 + ceil32(return_data.size) + 228] = this.address
                                mem[_11727 + ceil32(return_data.size) + 260] = block.timestamp
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _11727 + ceil32(return_data.size) + (32 * mem[_11727]) + -mem[64] + 320]
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
                                _14858 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _14860 = mem[_14858]
                                mem[mem[64] + 4] = dividendTrackerAddress
                                mem[mem[64] + 36] = _14860
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args dividendTrackerAddress, _14860
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _14866 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_14866] == bool(mem[_14866])
                                if not mem[_14866]:
                                    stor7 = 0
                                    if stor17[address(msg.sender)]:
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not address(cd[4]):
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < cd[36]:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= cd[36]
                                        if balanceOf[address(cd[4])] > !cd[36]:
                                            revert with 0, 17
                                        balanceOf[address(cd[4])] += cd[36]
                                        emit Transfer(cd[36], msg.sender, address(cd[4]));
                                        require ext_code.size(dividendTrackerAddress)
                                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, balanceOf[address(msg.sender)]
                                        mem[0] = address(cd[4])
                                        mem[32] = 0
                                        require ext_code.size(dividendTrackerAddress)
                                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(cd[4]), balanceOf[address(cd[4])]
                                        if not ext_call.success:
                                            if not ext_call.success:
                                                if not stor7:
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args gasForProcessing
                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                    if ext_call.success:
                                                        _15183 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 96
                                                        _15287 = mem[_15183 + 32]
                                                        _15288 = mem[_15183 + 64]
                                                        mem[mem[64]] = mem[_15183]
                                                        mem[mem[64] + 64] = _15288
                                                        mem[mem[64] + 96] = gasForProcessing
                                                        emit ProcessedDividendTracker(mem[mem[64]], _15287, _15288, gasForProcessing, 1, tx.origin);
                                            else:
                                                if not stor7:
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args gasForProcessing
                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                    if ext_call.success:
                                                        _15227 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 96
                                                        _15383 = mem[_15227 + 32]
                                                        _15384 = mem[_15227 + 64]
                                                        mem[mem[64]] = mem[_15227]
                                                        mem[mem[64] + 64] = _15384
                                                        mem[mem[64] + 96] = gasForProcessing
                                                        emit ProcessedDividendTracker(mem[mem[64]], _15383, _15384, gasForProcessing, 1, tx.origin);
                                        else:
                                            if not ext_call.success:
                                                if not stor7:
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args gasForProcessing
                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                    if ext_call.success:
                                                        _15229 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 96
                                                        _15386 = mem[_15229 + 32]
                                                        _15387 = mem[_15229 + 64]
                                                        mem[mem[64]] = mem[_15229]
                                                        mem[mem[64] + 64] = _15387
                                                        mem[mem[64] + 96] = gasForProcessing
                                                        emit ProcessedDividendTracker(mem[mem[64]], _15386, _15387, gasForProcessing, 1, tx.origin);
                                            else:
                                                if not stor7:
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args gasForProcessing
                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                    if ext_call.success:
                                                        _15292 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 96
                                                        _15496 = mem[_15292 + 32]
                                                        _15497 = mem[_15292 + 64]
                                                        mem[mem[64]] = mem[_15292]
                                                        mem[mem[64] + 64] = _15497
                                                        mem[mem[64] + 96] = gasForProcessing
                                                        emit ProcessedDividendTracker(mem[mem[64]], _15496, _15497, gasForProcessing, 1, tx.origin);
                                    else:
                                        if stor17[address(cd[4])]:
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < cd[36]:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= cd[36]
                                            if balanceOf[address(cd[4])] > !cd[36]:
                                                revert with 0, 17
                                            balanceOf[address(cd[4])] += cd[36]
                                            emit Transfer(cd[36], msg.sender, address(cd[4]));
                                            require ext_code.size(dividendTrackerAddress)
                                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, balanceOf[address(msg.sender)]
                                            mem[0] = address(cd[4])
                                            mem[32] = 0
                                            require ext_code.size(dividendTrackerAddress)
                                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(cd[4]), balanceOf[address(cd[4])]
                                            if not ext_call.success:
                                                if not ext_call.success:
                                                    if not stor7:
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args gasForProcessing
                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                        if ext_call.success:
                                                            _15238 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 96
                                                            _15399 = mem[_15238 + 32]
                                                            _15400 = mem[_15238 + 64]
                                                            mem[mem[64]] = mem[_15238]
                                                            mem[mem[64] + 64] = _15400
                                                            mem[mem[64] + 96] = gasForProcessing
                                                            emit ProcessedDividendTracker(mem[mem[64]], _15399, _15400, gasForProcessing, 1, tx.origin);
                                                else:
                                                    if not stor7:
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args gasForProcessing
                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                        if ext_call.success:
                                                            _15306 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 96
                                                            _15502 = mem[_15306 + 32]
                                                            _15503 = mem[_15306 + 64]
                                                            mem[mem[64]] = mem[_15306]
                                                            mem[mem[64] + 64] = _15503
                                                            mem[mem[64] + 96] = gasForProcessing
                                                            emit ProcessedDividendTracker(mem[mem[64]], _15502, _15503, gasForProcessing, 1, tx.origin);
                                            else:
                                                if not ext_call.success:
                                                    if not stor7:
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args gasForProcessing
                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                        if ext_call.success:
                                                            _15308 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 96
                                                            _15505 = mem[_15308 + 32]
                                                            _15506 = mem[_15308 + 64]
                                                            mem[mem[64]] = mem[_15308]
                                                            mem[mem[64] + 64] = _15506
                                                            mem[mem[64] + 96] = gasForProcessing
                                                            emit ProcessedDividendTracker(mem[mem[64]], _15505, _15506, gasForProcessing, 1, tx.origin);
                                                else:
                                                    if not stor7:
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args gasForProcessing
                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                        if ext_call.success:
                                                            _15404 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 96
                                                            _15611 = mem[_15404 + 32]
                                                            _15612 = mem[_15404 + 64]
                                                            mem[mem[64]] = mem[_15404]
                                                            mem[mem[64] + 64] = _15612
                                                            mem[mem[64] + 96] = gasForProcessing
                                                            emit ProcessedDividendTracker(mem[mem[64]], _15611, _15612, gasForProcessing, 1, tx.origin);
                                        else:
                                            if stor7:
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not address(cd[4]):
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)] < cd[36]:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)] -= cd[36]
                                                if balanceOf[address(cd[4])] > !cd[36]:
                                                    revert with 0, 17
                                                balanceOf[address(cd[4])] += cd[36]
                                                emit Transfer(cd[36], msg.sender, address(cd[4]));
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, balanceOf[address(msg.sender)]
                                                mem[0] = address(cd[4])
                                                mem[32] = 0
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(cd[4]), balanceOf[address(cd[4])]
                                                if not ext_call.success:
                                                    if not ext_call.success:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _15187 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _15294 = mem[_15187 + 32]
                                                                _15295 = mem[_15187 + 64]
                                                                mem[mem[64]] = mem[_15187]
                                                                mem[mem[64] + 64] = _15295
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _15294, _15295, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _15232 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _15390 = mem[_15232 + 32]
                                                                _15391 = mem[_15232 + 64]
                                                                mem[mem[64]] = mem[_15232]
                                                                mem[mem[64] + 64] = _15391
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _15390, _15391, gasForProcessing, 1, tx.origin);
                                                else:
                                                    if not ext_call.success:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _15234 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _15393 = mem[_15234 + 32]
                                                                _15394 = mem[_15234 + 64]
                                                                mem[mem[64]] = mem[_15234]
                                                                mem[mem[64] + 64] = _15394
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _15393, _15394, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _15299 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _15499 = mem[_15299 + 32]
                                                                _15500 = mem[_15299 + 64]
                                                                mem[mem[64]] = mem[_15299]
                                                                mem[mem[64] + 64] = _15500
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _15499, _15500, gasForProcessing, 1, tx.origin);
                                            else:
                                                if cd[36] and totalFees > -1 / cd[36]:
                                                    revert with 0, 17
                                                if not stor18[address(cd[4])]:
                                                    if cd[36] < cd[36] * totalFees / 100:
                                                        revert with 0, 17
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(msg.sender)] < cd[36] * totalFees / 100:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(msg.sender)] -= cd[36] * totalFees / 100
                                                    if balanceOf[this.address] > !(cd[36] * totalFees / 100):
                                                        revert with 0, 17
                                                    balanceOf[this.address] += cd[36] * totalFees / 100
                                                    emit Transfer((cd[36] * totalFees / 100), msg.sender, this.address);
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not address(cd[4]):
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(msg.sender)] < cd[36] - (cd[36] * totalFees / 100):
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] * totalFees / 100)
                                                    if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] * totalFees / 100)):
                                                        revert with 0, 17
                                                    balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] * totalFees / 100)
                                                    emit Transfer((cd[36] - (cd[36] * totalFees / 100)), msg.sender, address(cd[4]));
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args msg.sender, balanceOf[address(msg.sender)]
                                                    mem[0] = address(cd[4])
                                                    mem[32] = 0
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(cd[4]), balanceOf[address(cd[4])]
                                                    if not ext_call.success:
                                                        if not ext_call.success:
                                                            if not stor7:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _16866 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _16912 = mem[_16866 + 32]
                                                                    _16913 = mem[_16866 + 64]
                                                                    mem[mem[64]] = mem[_16866]
                                                                    mem[mem[64] + 64] = _16913
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _16912, _16913, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not stor7:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _16887 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _16953 = mem[_16887 + 32]
                                                                    _16954 = mem[_16887 + 64]
                                                                    mem[mem[64]] = mem[_16887]
                                                                    mem[mem[64] + 64] = _16954
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _16953, _16954, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not ext_call.success:
                                                            if not stor7:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _16889 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _16956 = mem[_16889 + 32]
                                                                    _16957 = mem[_16889 + 64]
                                                                    mem[mem[64]] = mem[_16889]
                                                                    mem[mem[64] + 64] = _16957
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _16956, _16957, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not stor7:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _16917 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _16998 = mem[_16917 + 32]
                                                                    _16999 = mem[_16917 + 64]
                                                                    mem[mem[64]] = mem[_16917]
                                                                    mem[mem[64] + 64] = _16999
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _16998, _16999, gasForProcessing, 1, tx.origin);
                                                else:
                                                    if cd[36] and 1 > -1 / cd[36]:
                                                        revert with 0, 17
                                                    if cd[36] * totalFees / 100 > !(cd[36] / 100):
                                                        revert with 0, 17
                                                    if cd[36] < (cd[36] * totalFees / 100) + (cd[36] / 100):
                                                        revert with 0, 17
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(msg.sender)] < (cd[36] * totalFees / 100) + (cd[36] / 100):
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (cd[36] * totalFees / 100) - (cd[36] / 100)
                                                    if balanceOf[this.address] > !((cd[36] * totalFees / 100) + (cd[36] / 100)):
                                                        revert with 0, 17
                                                    balanceOf[this.address] = balanceOf[this.address] + (cd[36] * totalFees / 100) + (cd[36] / 100)
                                                    emit Transfer(((cd[36] * totalFees / 100) + (cd[36] / 100)), msg.sender, this.address);
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not address(cd[4]):
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(msg.sender)] < cd[36] - (cd[36] * totalFees / 100) - (cd[36] / 100):
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] * totalFees / 100) + (cd[36] / 100)
                                                    if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] * totalFees / 100) - (cd[36] / 100)):
                                                        revert with 0, 17
                                                    balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] * totalFees / 100) - (cd[36] / 100)
                                                    emit Transfer((cd[36] - (cd[36] * totalFees / 100) - (cd[36] / 100)), msg.sender, address(cd[4]));
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args msg.sender, balanceOf[address(msg.sender)]
                                                    mem[0] = address(cd[4])
                                                    mem[32] = 0
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(cd[4]), balanceOf[address(cd[4])]
                                                    if not ext_call.success:
                                                        if not ext_call.success:
                                                            if not stor7:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _17392 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _17464 = mem[_17392 + 32]
                                                                    _17465 = mem[_17392 + 64]
                                                                    mem[mem[64]] = mem[_17392]
                                                                    mem[mem[64] + 64] = _17465
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _17464, _17465, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not stor7:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _17425 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _17508 = mem[_17425 + 32]
                                                                    _17509 = mem[_17425 + 64]
                                                                    mem[mem[64]] = mem[_17425]
                                                                    mem[mem[64] + 64] = _17509
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _17508, _17509, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not ext_call.success:
                                                            if not stor7:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _17427 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _17511 = mem[_17427 + 32]
                                                                    _17512 = mem[_17427 + 64]
                                                                    mem[mem[64]] = mem[_17427]
                                                                    mem[mem[64] + 64] = _17512
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _17511, _17512, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not stor7:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _17469 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _17549 = mem[_17469 + 32]
                                                                    _17550 = mem[_17469 + 64]
                                                                    mem[mem[64]] = mem[_17469]
                                                                    mem[mem[64] + 64] = _17550
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _17549, _17550, gasForProcessing, 1, tx.origin);
                                else:
                                    require ext_code.size(dividendTrackerAddress)
                                    call dividendTrackerAddress.distributeCAKEDividends(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args _14860
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit SendDividends(balanceOf[this.address], _14860);
                                    stor7 = 0
                                    if stor17[address(msg.sender)]:
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not address(cd[4]):
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < cd[36]:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= cd[36]
                                        if balanceOf[address(cd[4])] > !cd[36]:
                                            revert with 0, 17
                                        balanceOf[address(cd[4])] += cd[36]
                                        emit Transfer(cd[36], msg.sender, address(cd[4]));
                                        require ext_code.size(dividendTrackerAddress)
                                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, balanceOf[address(msg.sender)]
                                        mem[0] = address(cd[4])
                                        mem[32] = 0
                                        require ext_code.size(dividendTrackerAddress)
                                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(cd[4]), balanceOf[address(cd[4])]
                                        if not ext_call.success:
                                            if not ext_call.success:
                                                if not stor7:
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args gasForProcessing
                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                    if ext_call.success:
                                                        _15406 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 96
                                                        _15614 = mem[_15406 + 32]
                                                        _15615 = mem[_15406 + 64]
                                                        mem[mem[64]] = mem[_15406]
                                                        mem[mem[64] + 64] = _15615
                                                        mem[mem[64] + 96] = gasForProcessing
                                                        emit ProcessedDividendTracker(mem[mem[64]], _15614, _15615, gasForProcessing, 1, tx.origin);
                                            else:
                                                if not stor7:
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args gasForProcessing
                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                    if ext_call.success:
                                                        _15510 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 96
                                                        _15738 = mem[_15510 + 32]
                                                        _15739 = mem[_15510 + 64]
                                                        mem[mem[64]] = mem[_15510]
                                                        mem[mem[64] + 64] = _15739
                                                        mem[mem[64] + 96] = gasForProcessing
                                                        emit ProcessedDividendTracker(mem[mem[64]], _15738, _15739, gasForProcessing, 1, tx.origin);
                                        else:
                                            if not ext_call.success:
                                                if not stor7:
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args gasForProcessing
                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                    if ext_call.success:
                                                        _15512 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 96
                                                        _15741 = mem[_15512 + 32]
                                                        _15742 = mem[_15512 + 64]
                                                        mem[mem[64]] = mem[_15512]
                                                        mem[mem[64] + 64] = _15742
                                                        mem[mem[64] + 96] = gasForProcessing
                                                        emit ProcessedDividendTracker(mem[mem[64]], _15741, _15742, gasForProcessing, 1, tx.origin);
                                            else:
                                                if not stor7:
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args gasForProcessing
                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                    if ext_call.success:
                                                        _15619 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 96
                                                        _15862 = mem[_15619 + 32]
                                                        _15863 = mem[_15619 + 64]
                                                        mem[mem[64]] = mem[_15619]
                                                        mem[mem[64] + 64] = _15863
                                                        mem[mem[64] + 96] = gasForProcessing
                                                        emit ProcessedDividendTracker(mem[mem[64]], _15862, _15863, gasForProcessing, 1, tx.origin);
                                    else:
                                        if stor17[address(cd[4])]:
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < cd[36]:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= cd[36]
                                            if balanceOf[address(cd[4])] > !cd[36]:
                                                revert with 0, 17
                                            balanceOf[address(cd[4])] += cd[36]
                                            emit Transfer(cd[36], msg.sender, address(cd[4]));
                                            require ext_code.size(dividendTrackerAddress)
                                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, balanceOf[address(msg.sender)]
                                            mem[0] = address(cd[4])
                                            mem[32] = 0
                                            require ext_code.size(dividendTrackerAddress)
                                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(cd[4]), balanceOf[address(cd[4])]
                                            if not ext_call.success:
                                                if not ext_call.success:
                                                    if not stor7:
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args gasForProcessing
                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                        if ext_call.success:
                                                            _15521 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 96
                                                            _15754 = mem[_15521 + 32]
                                                            _15755 = mem[_15521 + 64]
                                                            mem[mem[64]] = mem[_15521]
                                                            mem[mem[64] + 64] = _15755
                                                            mem[mem[64] + 96] = gasForProcessing
                                                            emit ProcessedDividendTracker(mem[mem[64]], _15754, _15755, gasForProcessing, 1, tx.origin);
                                                else:
                                                    if not stor7:
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args gasForProcessing
                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                        if ext_call.success:
                                                            _15633 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 96
                                                            _15868 = mem[_15633 + 32]
                                                            _15869 = mem[_15633 + 64]
                                                            mem[mem[64]] = mem[_15633]
                                                            mem[mem[64] + 64] = _15869
                                                            mem[mem[64] + 96] = gasForProcessing
                                                            emit ProcessedDividendTracker(mem[mem[64]], _15868, _15869, gasForProcessing, 1, tx.origin);
                                            else:
                                                if not ext_call.success:
                                                    if not stor7:
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args gasForProcessing
                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                        if ext_call.success:
                                                            _15635 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 96
                                                            _15871 = mem[_15635 + 32]
                                                            _15872 = mem[_15635 + 64]
                                                            mem[mem[64]] = mem[_15635]
                                                            mem[mem[64] + 64] = _15872
                                                            mem[mem[64] + 96] = gasForProcessing
                                                            emit ProcessedDividendTracker(mem[mem[64]], _15871, _15872, gasForProcessing, 1, tx.origin);
                                                else:
                                                    if not stor7:
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args gasForProcessing
                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                        if ext_call.success:
                                                            _15759 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 96
                                                            _15974 = mem[_15759 + 32]
                                                            _15975 = mem[_15759 + 64]
                                                            mem[mem[64]] = mem[_15759]
                                                            mem[mem[64] + 64] = _15975
                                                            mem[mem[64] + 96] = gasForProcessing
                                                            emit ProcessedDividendTracker(mem[mem[64]], _15974, _15975, gasForProcessing, 1, tx.origin);
                                        else:
                                            if stor7:
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not address(cd[4]):
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)] < cd[36]:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)] -= cd[36]
                                                if balanceOf[address(cd[4])] > !cd[36]:
                                                    revert with 0, 17
                                                balanceOf[address(cd[4])] += cd[36]
                                                emit Transfer(cd[36], msg.sender, address(cd[4]));
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, balanceOf[address(msg.sender)]
                                                mem[0] = address(cd[4])
                                                mem[32] = 0
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(cd[4]), balanceOf[address(cd[4])]
                                                if not ext_call.success:
                                                    if not ext_call.success:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _15410 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _15621 = mem[_15410 + 32]
                                                                _15622 = mem[_15410 + 64]
                                                                mem[mem[64]] = mem[_15410]
                                                                mem[mem[64] + 64] = _15622
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _15621, _15622, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _15515 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _15745 = mem[_15515 + 32]
                                                                _15746 = mem[_15515 + 64]
                                                                mem[mem[64]] = mem[_15515]
                                                                mem[mem[64] + 64] = _15746
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _15745, _15746, gasForProcessing, 1, tx.origin);
                                                else:
                                                    if not ext_call.success:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _15517 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _15748 = mem[_15517 + 32]
                                                                _15749 = mem[_15517 + 64]
                                                                mem[mem[64]] = mem[_15517]
                                                                mem[mem[64] + 64] = _15749
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _15748, _15749, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _15626 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _15865 = mem[_15626 + 32]
                                                                _15866 = mem[_15626 + 64]
                                                                mem[mem[64]] = mem[_15626]
                                                                mem[mem[64] + 64] = _15866
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _15865, _15866, gasForProcessing, 1, tx.origin);
                                            else:
                                                if cd[36] and totalFees > -1 / cd[36]:
                                                    revert with 0, 17
                                                if not stor18[address(cd[4])]:
                                                    if cd[36] < cd[36] * totalFees / 100:
                                                        revert with 0, 17
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(msg.sender)] < cd[36] * totalFees / 100:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(msg.sender)] -= cd[36] * totalFees / 100
                                                    if balanceOf[this.address] > !(cd[36] * totalFees / 100):
                                                        revert with 0, 17
                                                    balanceOf[this.address] += cd[36] * totalFees / 100
                                                    emit Transfer((cd[36] * totalFees / 100), msg.sender, this.address);
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not address(cd[4]):
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(msg.sender)] < cd[36] - (cd[36] * totalFees / 100):
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] * totalFees / 100)
                                                    if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] * totalFees / 100)):
                                                        revert with 0, 17
                                                    balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] * totalFees / 100)
                                                    emit Transfer((cd[36] - (cd[36] * totalFees / 100)), msg.sender, address(cd[4]));
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args msg.sender, balanceOf[address(msg.sender)]
                                                    mem[0] = address(cd[4])
                                                    mem[32] = 0
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(cd[4]), balanceOf[address(cd[4])]
                                                    if not ext_call.success:
                                                        if not ext_call.success:
                                                            if not stor7:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _16961 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _17038 = mem[_16961 + 32]
                                                                    _17039 = mem[_16961 + 64]
                                                                    mem[mem[64]] = mem[_16961]
                                                                    mem[mem[64] + 64] = _17039
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _17038, _17039, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not stor7:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _17003 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _17085 = mem[_17003 + 32]
                                                                    _17086 = mem[_17003 + 64]
                                                                    mem[mem[64]] = mem[_17003]
                                                                    mem[mem[64] + 64] = _17086
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _17085, _17086, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not ext_call.success:
                                                            if not stor7:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _17005 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _17088 = mem[_17005 + 32]
                                                                    _17089 = mem[_17005 + 64]
                                                                    mem[mem[64]] = mem[_17005]
                                                                    mem[mem[64] + 64] = _17089
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _17088, _17089, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not stor7:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _17043 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _17127 = mem[_17043 + 32]
                                                                    _17128 = mem[_17043 + 64]
                                                                    mem[mem[64]] = mem[_17043]
                                                                    mem[mem[64] + 64] = _17128
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _17127, _17128, gasForProcessing, 1, tx.origin);
                                                else:
                                                    if cd[36] and 1 > -1 / cd[36]:
                                                        revert with 0, 17
                                                    if cd[36] * totalFees / 100 > !(cd[36] / 100):
                                                        revert with 0, 17
                                                    if cd[36] < (cd[36] * totalFees / 100) + (cd[36] / 100):
                                                        revert with 0, 17
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(msg.sender)] < (cd[36] * totalFees / 100) + (cd[36] / 100):
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (cd[36] * totalFees / 100) - (cd[36] / 100)
                                                    if balanceOf[this.address] > !((cd[36] * totalFees / 100) + (cd[36] / 100)):
                                                        revert with 0, 17
                                                    balanceOf[this.address] = balanceOf[this.address] + (cd[36] * totalFees / 100) + (cd[36] / 100)
                                                    emit Transfer(((cd[36] * totalFees / 100) + (cd[36] / 100)), msg.sender, this.address);
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not address(cd[4]):
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(msg.sender)] < cd[36] - (cd[36] * totalFees / 100) - (cd[36] / 100):
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] * totalFees / 100) + (cd[36] / 100)
                                                    if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] * totalFees / 100) - (cd[36] / 100)):
                                                        revert with 0, 17
                                                    balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] * totalFees / 100) - (cd[36] / 100)
                                                    emit Transfer((cd[36] - (cd[36] * totalFees / 100) - (cd[36] / 100)), msg.sender, address(cd[4]));
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args msg.sender, balanceOf[address(msg.sender)]
                                                    mem[0] = address(cd[4])
                                                    mem[32] = 0
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(cd[4]), balanceOf[address(cd[4])]
                                                    if not ext_call.success:
                                                        if not ext_call.success:
                                                            if not stor7:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _17515 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _17587 = mem[_17515 + 32]
                                                                    _17588 = mem[_17515 + 64]
                                                                    mem[mem[64]] = mem[_17515]
                                                                    mem[mem[64] + 64] = _17588
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _17587, _17588, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not stor7:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _17553 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _17630 = mem[_17553 + 32]
                                                                    _17631 = mem[_17553 + 64]
                                                                    mem[mem[64]] = mem[_17553]
                                                                    mem[mem[64] + 64] = _17631
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _17630, _17631, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not ext_call.success:
                                                            if not stor7:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _17555 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _17633 = mem[_17555 + 32]
                                                                    _17634 = mem[_17555 + 64]
                                                                    mem[mem[64]] = mem[_17555]
                                                                    mem[mem[64] + 64] = _17634
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _17633, _17634, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not stor7:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _17592 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _17670 = mem[_17592 + 32]
                                                                    _17671 = mem[_17592 + 64]
                                                                    mem[mem[64]] = mem[_17592]
                                                                    mem[mem[64] + 64] = _17671
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _17670, _17671, gasForProcessing, 1, tx.origin);
    else:
        if unknown_0x49bd5a5e(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x65b8dbc0(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x4fbee193(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0x49bd5a5e(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return uniswapV2PairAddress
                    if unknown_0x4e71d92d(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require ext_code.size(dividendTrackerAddress)
                        call dividendTrackerAddress.processAccount(address arg1, bool arg2) with:
                             gas gas_remaining wei
                            args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        require unknown_0x4ed080c7(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        tokenRewardsFee = cd[4]
                        if cd[4] > !liquidityFee:
                            revert with 0, 17
                        if cd[4] + liquidityFee > !marketingFee:
                            revert with 0, 17
                        totalFees = cd[4] + liquidityFee + marketingFee
                        if 25 < cd[4] + liquidityFee + marketingFee:
                            revert with 0, 'Total fee is over 25%'
                else:
                    if unknown_0x4fbee193(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        return bool(stor17[address(cd[4])])
                    if unknown_0x5d098b38(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        _marketingWalletAddress = address(cd[4])
                    else:
                        if uint32(call.func_hash) >> 224 != unknown_0x625e764c(?????):
                            require unknown_0x64b0f653(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require ext_code.size(dividendTrackerAddress)
                            staticcall dividendTrackerAddress.getNumberOfTokenHolders() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            return ext_call.return_data[0]
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        marketingFee = cd[4]
                        if tokenRewardsFee > !liquidityFee:
                            revert with 0, 17
                        if tokenRewardsFee + liquidityFee > !cd[4]:
                            revert with 0, 17
                        totalFees = tokenRewardsFee + liquidityFee + cd[4]
                        if 25 < tokenRewardsFee + liquidityFee + cd[4]:
                            revert with 0, 'Total fee is over 25%'
            else:
                if unknown_0x700bb191(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0x700bb191(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require ext_code.size(dividendTrackerAddress)
                        call dividendTrackerAddress.process(uint256 arg1) with:
                             gas gas_remaining wei
                            args cd[4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], cd[4], 0, tx.origin);
                    else:
                        if unknown_0x70a08231(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == address(cd[4])
                            return balanceOf[address(cd[4])]
                        if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            owner = 0
                            emit OwnershipTransferred(owner, 0);
                        else:
                            require unknown_0x871c128d(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            if cd[4] < 200000:
                                revert with 0, 'BABYTOKEN: gasForProcessing must be between 200,000 and 500,000'
                            if cd[4] > 500000:
                                revert with 0, 'BABYTOKEN: gasForProcessing must be between 200,000 and 500,000'
                            if cd[4] == gasForProcessing:
                                revert with 0, 'BABYTOKEN: Cannot update gasForProcessing to same value'
                            emit GasForProcessingUpdated(cd[4], gasForProcessing);
                            gasForProcessing = cd[4]
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0x65b8dbc0(?????):
                        if uint32(call.func_hash) >> 224 != unknown_0x6843cd84(?????):
                            require unknown_0x6b67c4df(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            return marketingFee
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        require ext_code.size(dividendTrackerAddress)
                        staticcall dividendTrackerAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(cd[4])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return ext_call.return_data[0]
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if uniswapV2RouterAddress == address(cd[4]):
                        revert with 0, 'BABYTOKEN: The router already has that address'
                    emit UpdateUniswapV2Router(address(cd[4]), uniswapV2RouterAddress);
                    uniswapV2RouterAddress = address(cd[4])
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).factory() with:
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
        if unknown_0x23b872dd(?????) > uint32(call.func_hash) >> 224:
            if uint32(call.func_hash) >> 224 != name():
                if approve(address arg1, uint256 arg2) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    if not msg.sender:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not address(cd[4]):
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(msg.sender)][address(cd[4])].field_0 = cd[36]
                    emit Approval(cd[36], msg.sender, address(cd[4]));
                    return 1
                if uint32(call.func_hash) >> 224 != updateMinimumTokenBalanceForDividends(uint256 arg1):
                    if unknown_0x13114a9d(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return totalFees
                    if unknown_0x1694505e(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return uniswapV2RouterAddress
                    require unknown_0x18160ddd(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return totalSupply
                require not msg.value
                require calldata.size - 4 >= 32
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                require ext_code.size(dividendTrackerAddress)
                call dividendTrackerAddress.updateMinimumTokenBalanceForDividends(uint256 arg1) with:
                     gas gas_remaining wei
                    args cd[4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require not msg.value
            if bool(stor3.length):
                if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                    revert with 0, 34
                if bool(stor3.length):
                    if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor3.length):
                        if 31 < uint255(stor3.length) * 0.5:
                            mem[160] = uint256(stor3.field_0)
                            idx = 160
                            s = 0
                            while (uint255(stor3.length) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor3[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor3.length), data=mem[160 len ceil32(uint255(stor3.length) * 0.5)])
                        mem[160] = 256 * stor3.length.field_8
                else:
                    if bool(stor3.length) == stor3.length.field_1 < 32:
                        revert with 0, 34
                    if stor3.length.field_1:
                        if 31 < stor3.length.field_1:
                            mem[160] = uint256(stor3.field_0)
                            idx = 160
                            s = 0
                            while stor3.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor3[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor3.length), data=mem[160 len ceil32(uint255(stor3.length) * 0.5)])
                        mem[160] = 256 * stor3.length.field_8
                mem[ceil32(uint255(stor3.length) * 0.5) + 224 len ceil32(uint255(stor3.length) * 0.5)] = mem[160 len ceil32(uint255(stor3.length) * 0.5)]
                if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
                    mem[ceil32(uint255(stor3.length) * 0.5) + (uint255(stor3.length) * 0.5) + 224] = 0
                return Array(len=2 * Mask(256, -1, stor3.length), data=mem[160 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
            if bool(stor3.length):
                if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor3.length):
                    if 31 < uint255(stor3.length) * 0.5:
                        mem[160] = uint256(stor3.field_0)
                        idx = 160
                        s = 0
                        while (uint255(stor3.length) * 0.5) + 128 > idx:
                            mem[idx + 32] = stor3[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor3.length % 128, data=mem[160 len ceil32(stor3.length.field_1)])
                    mem[160] = 256 * stor3.length.field_8
            else:
                if bool(stor3.length) == stor3.length.field_1 < 32:
                    revert with 0, 34
                if stor3.length.field_1:
                    if 31 < stor3.length.field_1:
                        mem[160] = uint256(stor3.field_0)
                        idx = 160
                        s = 0
                        while stor3.length.field_1 + 128 > idx:
                            mem[idx + 32] = stor3[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor3.length % 128, data=mem[160 len ceil32(stor3.length.field_1)])
                    mem[160] = 256 * stor3.length.field_8
            mem[ceil32(stor3.length.field_1) + 224 len ceil32(stor3.length.field_1)] = mem[160 len ceil32(stor3.length.field_1)]
            if ceil32(stor3.length.field_1) > stor3.length.field_1:
                mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 224] = 0
            return Array(len=stor3.length % 128, data=mem[160 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 224 len 2 * ceil32(stor3.length.field_1)]), 
        if unknown_0x313ce567(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x313ce567(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return 18
            if unknown_0x31e79db0(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                require ext_code.size(dividendTrackerAddress)
                call dividendTrackerAddress.0x31e79db0 with:
                     gas gas_remaining wei
                    args address(cd[4])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if uint32(call.func_hash) >> 224 != unknown_0x39509351(?????):
                require unknown_0x4144d9e4(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return _marketingWalletAddress
            require not msg.value
            require calldata.size - 4 >= 64
            require cd[4] == address(cd[4])
            if allowance[msg.sender][address(cd[4])].field_0 > !cd[36]:
                revert with 0, 17
            if not msg.sender:
                revert with 0, 'ERC20: approve from the zero address'
            if not address(cd[4]):
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(msg.sender)][address(cd[4])].field_0 = allowance[msg.sender][address(cd[4])].field_0 + cd[36]
            emit Approval((allowance[msg.sender][address(cd[4])].field_0 + cd[36]), msg.sender, address(cd[4]));
        else:
            if uint32(call.func_hash) >> 224 != unknown_0x23b872dd(?????):
                if unknown_0x2c1f5216(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return dividendTrackerAddress
                require unknown_0x30bb4cff(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require ext_code.size(dividendTrackerAddress)
                staticcall dividendTrackerAddress.totalDividendsDistributed() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                return ext_call.return_data[0]
            require not msg.value
            require calldata.size - 4 >= 96
            require cd[4] == address(cd[4])
            require cd[36] == address(cd[36])
            if not address(cd[4]):
                revert with 0, 'ERC20: transfer from the zero address'
            if not address(cd[36]):
                revert with 0, 'ERC20: transfer to the zero address'
            if not cd[68]:
                if not address(cd[4]):
                    revert with 0, 'ERC20: transfer from the zero address'
                if not address(cd[36]):
                    revert with 0, 'ERC20: transfer to the zero address'
                if balanceOf[address(cd[4])] < 0:
                    revert with 0, 'ERC20: transfer amount exceeds balance'
                if balanceOf[address(cd[36])] > -1:
                    revert with 0, 17
                emit Transfer(0, address(cd[4]), address(cd[36]));
            else:
                if balanceOf[this.address] < swapTokensAtAmount:
                    if stor17[address(cd[4])]:
                        if not address(cd[4]):
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not address(cd[36]):
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[address(cd[4])] < cd[68]:
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(cd[4])] -= cd[68]
                        if balanceOf[address(cd[36])] > !cd[68]:
                            revert with 0, 17
                        balanceOf[address(cd[36])] += cd[68]
                        emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                    else:
                        if stor17[address(cd[36])]:
                            if not address(cd[4]):
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not address(cd[36]):
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(cd[4])] < cd[68]:
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(cd[4])] -= cd[68]
                            if balanceOf[address(cd[36])] > !cd[68]:
                                revert with 0, 17
                            balanceOf[address(cd[36])] += cd[68]
                            emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                        else:
                            if stor7:
                                if not address(cd[4]):
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not address(cd[36]):
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(cd[4])] < cd[68]:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(cd[4])] -= cd[68]
                                if balanceOf[address(cd[36])] > !cd[68]:
                                    revert with 0, 17
                                balanceOf[address(cd[36])] += cd[68]
                                emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                            else:
                                if cd[68] and totalFees > -1 / cd[68]:
                                    revert with 0, 17
                                if not stor18[address(cd[36])]:
                                    if cd[68] < cd[68] * totalFees / 100:
                                        revert with 0, 17
                                    if not address(cd[4]):
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(cd[4])] < cd[68] * totalFees / 100:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(cd[4])] -= cd[68] * totalFees / 100
                                    if balanceOf[this.address] > !(cd[68] * totalFees / 100):
                                        revert with 0, 17
                                    balanceOf[this.address] += cd[68] * totalFees / 100
                                    emit Transfer((cd[68] * totalFees / 100), address(cd[4]), this.address);
                                    if not address(cd[4]):
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not address(cd[36]):
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(cd[4])] < cd[68] - (cd[68] * totalFees / 100):
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * totalFees / 100)
                                    if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * totalFees / 100)):
                                        revert with 0, 17
                                    balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * totalFees / 100)
                                    emit Transfer((cd[68] - (cd[68] * totalFees / 100)), address(cd[4]), address(cd[36]));
                                else:
                                    if cd[68] and 1 > -1 / cd[68]:
                                        revert with 0, 17
                                    if cd[68] * totalFees / 100 > !(cd[68] / 100):
                                        revert with 0, 17
                                    if cd[68] < (cd[68] * totalFees / 100) + (cd[68] / 100):
                                        revert with 0, 17
                                    if not address(cd[4]):
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(cd[4])] < (cd[68] * totalFees / 100) + (cd[68] / 100):
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - (cd[68] * totalFees / 100) - (cd[68] / 100)
                                    if balanceOf[this.address] > !((cd[68] * totalFees / 100) + (cd[68] / 100)):
                                        revert with 0, 17
                                    balanceOf[this.address] = balanceOf[this.address] + (cd[68] * totalFees / 100) + (cd[68] / 100)
                                    emit Transfer(((cd[68] * totalFees / 100) + (cd[68] / 100)), address(cd[4]), this.address);
                                    if not address(cd[4]):
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not address(cd[36]):
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(cd[4])] < cd[68] - (cd[68] * totalFees / 100) - (cd[68] / 100):
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * totalFees / 100) + (cd[68] / 100)
                                    if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * totalFees / 100) - (cd[68] / 100)):
                                        revert with 0, 17
                                    balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * totalFees / 100) - (cd[68] / 100)
                                    emit Transfer((cd[68] - (cd[68] * totalFees / 100) - (cd[68] / 100)), address(cd[4]), address(cd[36]));
                    require ext_code.size(dividendTrackerAddress)
                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[4]), balanceOf[address(cd[4])]
                    require ext_code.size(dividendTrackerAddress)
                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[36]), balanceOf[address(cd[36])]
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
                        if stor17[address(cd[4])]:
                            if not address(cd[4]):
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not address(cd[36]):
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(cd[4])] < cd[68]:
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(cd[4])] -= cd[68]
                            if balanceOf[address(cd[36])] > !cd[68]:
                                revert with 0, 17
                            balanceOf[address(cd[36])] += cd[68]
                            emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                        else:
                            if stor17[address(cd[36])]:
                                if not address(cd[4]):
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not address(cd[36]):
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(cd[4])] < cd[68]:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(cd[4])] -= cd[68]
                                if balanceOf[address(cd[36])] > !cd[68]:
                                    revert with 0, 17
                                balanceOf[address(cd[36])] += cd[68]
                                emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                            else:
                                if stor7:
                                    if not address(cd[4]):
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not address(cd[36]):
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(cd[4])] < cd[68]:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(cd[4])] -= cd[68]
                                    if balanceOf[address(cd[36])] > !cd[68]:
                                        revert with 0, 17
                                    balanceOf[address(cd[36])] += cd[68]
                                    emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                else:
                                    if cd[68] and totalFees > -1 / cd[68]:
                                        revert with 0, 17
                                    if not stor18[address(cd[36])]:
                                        if cd[68] < cd[68] * totalFees / 100:
                                            revert with 0, 17
                                        if not address(cd[4]):
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(cd[4])] < cd[68] * totalFees / 100:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(cd[4])] -= cd[68] * totalFees / 100
                                        if balanceOf[this.address] > !(cd[68] * totalFees / 100):
                                            revert with 0, 17
                                        balanceOf[this.address] += cd[68] * totalFees / 100
                                        emit Transfer((cd[68] * totalFees / 100), address(cd[4]), this.address);
                                        if not address(cd[4]):
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not address(cd[36]):
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(cd[4])] < cd[68] - (cd[68] * totalFees / 100):
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * totalFees / 100)
                                        if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * totalFees / 100)):
                                            revert with 0, 17
                                        balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * totalFees / 100)
                                        emit Transfer((cd[68] - (cd[68] * totalFees / 100)), address(cd[4]), address(cd[36]));
                                    else:
                                        if cd[68] and 1 > -1 / cd[68]:
                                            revert with 0, 17
                                        if cd[68] * totalFees / 100 > !(cd[68] / 100):
                                            revert with 0, 17
                                        if cd[68] < (cd[68] * totalFees / 100) + (cd[68] / 100):
                                            revert with 0, 17
                                        if not address(cd[4]):
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(cd[4])] < (cd[68] * totalFees / 100) + (cd[68] / 100):
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - (cd[68] * totalFees / 100) - (cd[68] / 100)
                                        if balanceOf[this.address] > !((cd[68] * totalFees / 100) + (cd[68] / 100)):
                                            revert with 0, 17
                                        balanceOf[this.address] = balanceOf[this.address] + (cd[68] * totalFees / 100) + (cd[68] / 100)
                                        emit Transfer(((cd[68] * totalFees / 100) + (cd[68] / 100)), address(cd[4]), this.address);
                                        if not address(cd[4]):
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not address(cd[36]):
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(cd[4])] < cd[68] - (cd[68] * totalFees / 100) - (cd[68] / 100):
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * totalFees / 100) + (cd[68] / 100)
                                        if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * totalFees / 100) - (cd[68] / 100)):
                                            revert with 0, 17
                                        balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * totalFees / 100) - (cd[68] / 100)
                                        emit Transfer((cd[68] - (cd[68] * totalFees / 100) - (cd[68] / 100)), address(cd[4]), address(cd[36]));
                        require ext_code.size(dividendTrackerAddress)
                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(cd[4]), balanceOf[address(cd[4])]
                        require ext_code.size(dividendTrackerAddress)
                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(cd[36]), balanceOf[address(cd[36])]
                        if not stor7:
                            require ext_code.size(dividendTrackerAddress)
                            call dividendTrackerAddress.process(uint256 arg1) with:
                                 gas gas_remaining wei
                                args gasForProcessing
                            if ext_call.success:
                                require return_data.size >= 96
                                emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                    else:
                        if stor18[address(cd[4])]:
                            if stor17[address(cd[4])]:
                                if not address(cd[4]):
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not address(cd[36]):
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(cd[4])] < cd[68]:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(cd[4])] -= cd[68]
                                if balanceOf[address(cd[36])] > !cd[68]:
                                    revert with 0, 17
                                balanceOf[address(cd[36])] += cd[68]
                                emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                            else:
                                if stor17[address(cd[36])]:
                                    if not address(cd[4]):
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not address(cd[36]):
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(cd[4])] < cd[68]:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(cd[4])] -= cd[68]
                                    if balanceOf[address(cd[36])] > !cd[68]:
                                        revert with 0, 17
                                    balanceOf[address(cd[36])] += cd[68]
                                    emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                else:
                                    if stor7:
                                        if not address(cd[4]):
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not address(cd[36]):
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(cd[4])] < cd[68]:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(cd[4])] -= cd[68]
                                        if balanceOf[address(cd[36])] > !cd[68]:
                                            revert with 0, 17
                                        balanceOf[address(cd[36])] += cd[68]
                                        emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                    else:
                                        if cd[68] and totalFees > -1 / cd[68]:
                                            revert with 0, 17
                                        if not stor18[address(cd[36])]:
                                            if cd[68] < cd[68] * totalFees / 100:
                                                revert with 0, 17
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(cd[4])] < cd[68] * totalFees / 100:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(cd[4])] -= cd[68] * totalFees / 100
                                            if balanceOf[this.address] > !(cd[68] * totalFees / 100):
                                                revert with 0, 17
                                            balanceOf[this.address] += cd[68] * totalFees / 100
                                            emit Transfer((cd[68] * totalFees / 100), address(cd[4]), this.address);
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[36]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(cd[4])] < cd[68] - (cd[68] * totalFees / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * totalFees / 100)
                                            if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * totalFees / 100)):
                                                revert with 0, 17
                                            balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * totalFees / 100)
                                            emit Transfer((cd[68] - (cd[68] * totalFees / 100)), address(cd[4]), address(cd[36]));
                                        else:
                                            if cd[68] and 1 > -1 / cd[68]:
                                                revert with 0, 17
                                            if cd[68] * totalFees / 100 > !(cd[68] / 100):
                                                revert with 0, 17
                                            if cd[68] < (cd[68] * totalFees / 100) + (cd[68] / 100):
                                                revert with 0, 17
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(cd[4])] < (cd[68] * totalFees / 100) + (cd[68] / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - (cd[68] * totalFees / 100) - (cd[68] / 100)
                                            if balanceOf[this.address] > !((cd[68] * totalFees / 100) + (cd[68] / 100)):
                                                revert with 0, 17
                                            balanceOf[this.address] = balanceOf[this.address] + (cd[68] * totalFees / 100) + (cd[68] / 100)
                                            emit Transfer(((cd[68] * totalFees / 100) + (cd[68] / 100)), address(cd[4]), this.address);
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[36]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(cd[4])] < cd[68] - (cd[68] * totalFees / 100) - (cd[68] / 100):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * totalFees / 100) + (cd[68] / 100)
                                            if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * totalFees / 100) - (cd[68] / 100)):
                                                revert with 0, 17
                                            balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * totalFees / 100) - (cd[68] / 100)
                                            emit Transfer((cd[68] - (cd[68] * totalFees / 100) - (cd[68] / 100)), address(cd[4]), address(cd[36]));
                            require ext_code.size(dividendTrackerAddress)
                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(cd[4]), balanceOf[address(cd[4])]
                            require ext_code.size(dividendTrackerAddress)
                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(cd[36]), balanceOf[address(cd[36])]
                            if not stor7:
                                require ext_code.size(dividendTrackerAddress)
                                call dividendTrackerAddress.process(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args gasForProcessing
                                if ext_call.success:
                                    require return_data.size >= 96
                                    emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                        else:
                            if owner == address(cd[4]):
                                if stor17[address(cd[4])]:
                                    if not address(cd[4]):
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not address(cd[36]):
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(cd[4])] < cd[68]:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(cd[4])] -= cd[68]
                                    if balanceOf[address(cd[36])] > !cd[68]:
                                        revert with 0, 17
                                    balanceOf[address(cd[36])] += cd[68]
                                    emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                else:
                                    if stor17[address(cd[36])]:
                                        if not address(cd[4]):
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not address(cd[36]):
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(cd[4])] < cd[68]:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(cd[4])] -= cd[68]
                                        if balanceOf[address(cd[36])] > !cd[68]:
                                            revert with 0, 17
                                        balanceOf[address(cd[36])] += cd[68]
                                        emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                    else:
                                        if stor7:
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[36]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(cd[4])] < cd[68]:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(cd[4])] -= cd[68]
                                            if balanceOf[address(cd[36])] > !cd[68]:
                                                revert with 0, 17
                                            balanceOf[address(cd[36])] += cd[68]
                                            emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                        else:
                                            if cd[68] and totalFees > -1 / cd[68]:
                                                revert with 0, 17
                                            if not stor18[address(cd[36])]:
                                                if cd[68] < cd[68] * totalFees / 100:
                                                    revert with 0, 17
                                                if not address(cd[4]):
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not this.address:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(cd[4])] < cd[68] * totalFees / 100:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(cd[4])] -= cd[68] * totalFees / 100
                                                if balanceOf[this.address] > !(cd[68] * totalFees / 100):
                                                    revert with 0, 17
                                                balanceOf[this.address] += cd[68] * totalFees / 100
                                                emit Transfer((cd[68] * totalFees / 100), address(cd[4]), this.address);
                                                if not address(cd[4]):
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not address(cd[36]):
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(cd[4])] < cd[68] - (cd[68] * totalFees / 100):
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * totalFees / 100)
                                                if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * totalFees / 100)):
                                                    revert with 0, 17
                                                balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * totalFees / 100)
                                                emit Transfer((cd[68] - (cd[68] * totalFees / 100)), address(cd[4]), address(cd[36]));
                                            else:
                                                if cd[68] and 1 > -1 / cd[68]:
                                                    revert with 0, 17
                                                if cd[68] * totalFees / 100 > !(cd[68] / 100):
                                                    revert with 0, 17
                                                if cd[68] < (cd[68] * totalFees / 100) + (cd[68] / 100):
                                                    revert with 0, 17
                                                if not address(cd[4]):
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not this.address:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(cd[4])] < (cd[68] * totalFees / 100) + (cd[68] / 100):
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - (cd[68] * totalFees / 100) - (cd[68] / 100)
                                                if balanceOf[this.address] > !((cd[68] * totalFees / 100) + (cd[68] / 100)):
                                                    revert with 0, 17
                                                balanceOf[this.address] = balanceOf[this.address] + (cd[68] * totalFees / 100) + (cd[68] / 100)
                                                emit Transfer(((cd[68] * totalFees / 100) + (cd[68] / 100)), address(cd[4]), this.address);
                                                if not address(cd[4]):
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not address(cd[36]):
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(cd[4])] < cd[68] - (cd[68] * totalFees / 100) - (cd[68] / 100):
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * totalFees / 100) + (cd[68] / 100)
                                                if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * totalFees / 100) - (cd[68] / 100)):
                                                    revert with 0, 17
                                                balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * totalFees / 100) - (cd[68] / 100)
                                                emit Transfer((cd[68] - (cd[68] * totalFees / 100) - (cd[68] / 100)), address(cd[4]), address(cd[36]));
                                require ext_code.size(dividendTrackerAddress)
                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(cd[4]), balanceOf[address(cd[4])]
                                require ext_code.size(dividendTrackerAddress)
                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(cd[36]), balanceOf[address(cd[36])]
                                if not stor7:
                                    require ext_code.size(dividendTrackerAddress)
                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args gasForProcessing
                                    if ext_call.success:
                                        require return_data.size >= 96
                                        emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                            else:
                                if owner == address(cd[36]):
                                    if stor17[address(cd[4])]:
                                        if not address(cd[4]):
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not address(cd[36]):
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(cd[4])] < cd[68]:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(cd[4])] -= cd[68]
                                        if balanceOf[address(cd[36])] > !cd[68]:
                                            revert with 0, 17
                                        balanceOf[address(cd[36])] += cd[68]
                                        emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                    else:
                                        if stor17[address(cd[36])]:
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[36]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(cd[4])] < cd[68]:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(cd[4])] -= cd[68]
                                            if balanceOf[address(cd[36])] > !cd[68]:
                                                revert with 0, 17
                                            balanceOf[address(cd[36])] += cd[68]
                                            emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                        else:
                                            if stor7:
                                                if not address(cd[4]):
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not address(cd[36]):
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(cd[4])] < cd[68]:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(cd[4])] -= cd[68]
                                                if balanceOf[address(cd[36])] > !cd[68]:
                                                    revert with 0, 17
                                                balanceOf[address(cd[36])] += cd[68]
                                                emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                            else:
                                                if cd[68] and totalFees > -1 / cd[68]:
                                                    revert with 0, 17
                                                if not stor18[address(cd[36])]:
                                                    if cd[68] < cd[68] * totalFees / 100:
                                                        revert with 0, 17
                                                    if not address(cd[4]):
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(cd[4])] < cd[68] * totalFees / 100:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(cd[4])] -= cd[68] * totalFees / 100
                                                    if balanceOf[this.address] > !(cd[68] * totalFees / 100):
                                                        revert with 0, 17
                                                    balanceOf[this.address] += cd[68] * totalFees / 100
                                                    emit Transfer((cd[68] * totalFees / 100), address(cd[4]), this.address);
                                                    if not address(cd[4]):
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not address(cd[36]):
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(cd[4])] < cd[68] - (cd[68] * totalFees / 100):
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * totalFees / 100)
                                                    if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * totalFees / 100)):
                                                        revert with 0, 17
                                                    balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * totalFees / 100)
                                                    emit Transfer((cd[68] - (cd[68] * totalFees / 100)), address(cd[4]), address(cd[36]));
                                                else:
                                                    if cd[68] and 1 > -1 / cd[68]:
                                                        revert with 0, 17
                                                    if cd[68] * totalFees / 100 > !(cd[68] / 100):
                                                        revert with 0, 17
                                                    if cd[68] < (cd[68] * totalFees / 100) + (cd[68] / 100):
                                                        revert with 0, 17
                                                    if not address(cd[4]):
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(cd[4])] < (cd[68] * totalFees / 100) + (cd[68] / 100):
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - (cd[68] * totalFees / 100) - (cd[68] / 100)
                                                    if balanceOf[this.address] > !((cd[68] * totalFees / 100) + (cd[68] / 100)):
                                                        revert with 0, 17
                                                    balanceOf[this.address] = balanceOf[this.address] + (cd[68] * totalFees / 100) + (cd[68] / 100)
                                                    emit Transfer(((cd[68] * totalFees / 100) + (cd[68] / 100)), address(cd[4]), this.address);
                                                    if not address(cd[4]):
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not address(cd[36]):
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(cd[4])] < cd[68] - (cd[68] * totalFees / 100) - (cd[68] / 100):
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * totalFees / 100) + (cd[68] / 100)
                                                    if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * totalFees / 100) - (cd[68] / 100)):
                                                        revert with 0, 17
                                                    balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * totalFees / 100) - (cd[68] / 100)
                                                    emit Transfer((cd[68] - (cd[68] * totalFees / 100) - (cd[68] / 100)), address(cd[4]), address(cd[36]));
                                    require ext_code.size(dividendTrackerAddress)
                                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(cd[4]), balanceOf[address(cd[4])]
                                    require ext_code.size(dividendTrackerAddress)
                                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(cd[36]), balanceOf[address(cd[36])]
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
                                    mem[132] = this.address
                                    require ext_code.size(rewardTokenAddress)
                                    staticcall rewardTokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[ceil32(return_data.size) + 128] = 3
                                    mem[ceil32(return_data.size) + 160] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 256
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 224] = rewardTokenAddress
                                    if not this.address:
                                        mem[(2 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 260] = 32
                                        mem[(2 * ceil32(return_data.size)) + 292] = 36
                                        mem[(2 * ceil32(return_data.size)) + 324] = 'ERC20: approve from the zero add'
                                        mem[(2 * ceil32(return_data.size)) + 356] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                        revert with memory
                                          from (2 * ceil32(return_data.size)) + 256
                                           len ceil32(return_data.size) + 132
                                    if not uniswapV2RouterAddress:
                                        mem[(2 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 260] = 32
                                        mem[(2 * ceil32(return_data.size)) + 292] = 34
                                        mem[(2 * ceil32(return_data.size)) + 324] = 'ERC20: approve to the zero addre'
                                        mem[(2 * ceil32(return_data.size)) + 356] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                        revert with memory
                                          from (2 * ceil32(return_data.size)) + 256
                                           len ceil32(return_data.size) + 132
                                    mem[0] = uniswapV2RouterAddress
                                    mem[32] = sha3(address(this.address), 1)
                                    allowance[address(this.address)][stor6].field_0 = balanceOf[this.address] * marketingFee / totalFees
                                    mem[(2 * ceil32(return_data.size)) + 256] = balanceOf[this.address] * marketingFee / totalFees
                                    emit Approval(mem[(2 * ceil32(return_data.size)) + 256 len ceil32(return_data.size) + 32], this.address, uniswapV2RouterAddress);
                                    mem[(2 * ceil32(return_data.size)) + 256] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 260] = balanceOf[this.address] * marketingFee / totalFees
                                    mem[(2 * ceil32(return_data.size)) + 292] = 0
                                    mem[(2 * ceil32(return_data.size)) + 324] = 160
                                    mem[(2 * ceil32(return_data.size)) + 420] = 3
                                    idx = 0
                                    s = (2 * ceil32(return_data.size)) + 452
                                    t = ceil32(return_data.size) + 160
                                    while idx < mem[ceil32(return_data.size) + 128]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(2 * ceil32(return_data.size)) + 356] = this.address
                                    mem[(2 * ceil32(return_data.size)) + 388] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 544]
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
                                    _8510 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8525 = mem[_8510]
                                    if mem[_8510] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    mem[mem[64] + 4] = _marketingWalletAddress
                                    mem[mem[64] + 36] = _8525 - ext_call.return_data[0]
                                    require ext_code.size(rewardTokenAddress)
                                    call rewardTokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args _marketingWalletAddress, _8525 - ext_call.return_data[0]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8535 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_8535] == bool(mem[_8535])
                                    if balanceOf[this.address] and liquidityFee > -1 / balanceOf[this.address]:
                                        revert with 0, 17
                                    if not totalFees:
                                        revert with 0, 18
                                    if balanceOf[this.address] * liquidityFee / totalFees < balanceOf[this.address] * liquidityFee / totalFees / 2:
                                        revert with 0, 17
                                    _8539 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    mem[_8539 + 32 len 64] = call.data[calldata.size len 64]
                                    if 0 >= mem[_8539]:
                                        revert with 0, 50
                                    mem[_8539 + 32] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    mem[_8539 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _8539 + ceil32(return_data.size) + 96
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 1 >= mem[_8539]:
                                        revert with 0, 50
                                    mem[_8539 + 64] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    mem[0] = uniswapV2RouterAddress
                                    mem[32] = sha3(address(this.address), 1)
                                    allowance[address(this.address)][stor6].field_0 = balanceOf[this.address] * liquidityFee / totalFees / 2
                                    allowance[address(this.address)][stor6].field_255 = 0
                                    emit Approval((balanceOf[this.address] * liquidityFee / totalFees / 2), this.address, uniswapV2RouterAddress);
                                    mem[_8539 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[_8539 + ceil32(return_data.size) + 100] = balanceOf[this.address] * liquidityFee / totalFees / 2
                                    mem[_8539 + ceil32(return_data.size) + 132] = 0
                                    mem[_8539 + ceil32(return_data.size) + 164] = 160
                                    mem[_8539 + ceil32(return_data.size) + 260] = mem[_8539]
                                    idx = 0
                                    s = _8539 + ceil32(return_data.size) + 292
                                    t = _8539 + 32
                                    while idx < mem[_8539]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_8539 + ceil32(return_data.size) + 196] = this.address
                                    mem[_8539 + ceil32(return_data.size) + 228] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _8539 + ceil32(return_data.size) + (32 * mem[_8539]) + -mem[64] + 288]
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
                                    _11725 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    mem[_11725 + 32 len 96] = call.data[calldata.size len 96]
                                    if 0 >= mem[_11725]:
                                        revert with 0, 50
                                    mem[_11725 + 32] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    mem[_11725 + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _11725 + ceil32(return_data.size) + 128
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 1 >= mem[_11725]:
                                        revert with 0, 50
                                    mem[_11725 + 64] = ext_call.return_data[12 len 20]
                                    if 2 >= mem[_11725]:
                                        revert with 0, 50
                                    mem[_11725 + 96] = rewardTokenAddress
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    mem[0] = uniswapV2RouterAddress
                                    mem[32] = sha3(address(this.address), 1)
                                    allowance[address(this.address)][stor6].field_0 = balanceOf[this.address]
                                    emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                    mem[_11725 + ceil32(return_data.size) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[_11725 + ceil32(return_data.size) + 132] = balanceOf[this.address]
                                    mem[_11725 + ceil32(return_data.size) + 164] = 0
                                    mem[_11725 + ceil32(return_data.size) + 196] = 160
                                    mem[_11725 + ceil32(return_data.size) + 292] = mem[_11725]
                                    idx = 0
                                    s = _11725 + ceil32(return_data.size) + 324
                                    t = _11725 + 32
                                    while idx < mem[_11725]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_11725 + ceil32(return_data.size) + 228] = this.address
                                    mem[_11725 + ceil32(return_data.size) + 260] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _11725 + ceil32(return_data.size) + (32 * mem[_11725]) + -mem[64] + 320]
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
                                    _14857 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _14859 = mem[_14857]
                                    mem[mem[64] + 4] = dividendTrackerAddress
                                    mem[mem[64] + 36] = _14859
                                    require ext_code.size(rewardTokenAddress)
                                    call rewardTokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args dividendTrackerAddress, _14859
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _14865 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_14865] == bool(mem[_14865])
                                    if not mem[_14865]:
                                        stor7 = 0
                                        if stor17[address(cd[4])]:
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[36]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(cd[4])] < cd[68]:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(cd[4])] -= cd[68]
                                            if balanceOf[address(cd[36])] > !cd[68]:
                                                revert with 0, 17
                                            balanceOf[address(cd[36])] += cd[68]
                                            emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                            require ext_code.size(dividendTrackerAddress)
                                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(cd[4]), balanceOf[address(cd[4])]
                                            mem[0] = address(cd[36])
                                            mem[32] = 0
                                            require ext_code.size(dividendTrackerAddress)
                                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(cd[36]), balanceOf[address(cd[36])]
                                            if not ext_call.success:
                                                if not ext_call.success:
                                                    if not stor7:
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args gasForProcessing
                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                        if ext_call.success:
                                                            _15158 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 96
                                                            _15247 = mem[_15158 + 32]
                                                            _15248 = mem[_15158 + 64]
                                                            mem[mem[64]] = mem[_15158]
                                                            mem[mem[64] + 64] = _15248
                                                            mem[mem[64] + 96] = gasForProcessing
                                                            emit ProcessedDividendTracker(mem[mem[64]], _15247, _15248, gasForProcessing, 1, tx.origin);
                                                else:
                                                    if not stor7:
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args gasForProcessing
                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                        if ext_call.success:
                                                            _15199 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 96
                                                            _15327 = mem[_15199 + 32]
                                                            _15328 = mem[_15199 + 64]
                                                            mem[mem[64]] = mem[_15199]
                                                            mem[mem[64] + 64] = _15328
                                                            mem[mem[64] + 96] = gasForProcessing
                                                            emit ProcessedDividendTracker(mem[mem[64]], _15327, _15328, gasForProcessing, 1, tx.origin);
                                            else:
                                                if not ext_call.success:
                                                    if not stor7:
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args gasForProcessing
                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                        if ext_call.success:
                                                            _15201 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 96
                                                            _15331 = mem[_15201 + 32]
                                                            _15332 = mem[_15201 + 64]
                                                            mem[mem[64]] = mem[_15201]
                                                            mem[mem[64] + 64] = _15332
                                                            mem[mem[64] + 96] = gasForProcessing
                                                            emit ProcessedDividendTracker(mem[mem[64]], _15331, _15332, gasForProcessing, 1, tx.origin);
                                                else:
                                                    if not stor7:
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args gasForProcessing
                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                        if ext_call.success:
                                                            _15252 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 96
                                                            _15435 = mem[_15252 + 32]
                                                            _15436 = mem[_15252 + 64]
                                                            mem[mem[64]] = mem[_15252]
                                                            mem[mem[64] + 64] = _15436
                                                            mem[mem[64] + 96] = gasForProcessing
                                                            emit ProcessedDividendTracker(mem[mem[64]], _15435, _15436, gasForProcessing, 1, tx.origin);
                                        else:
                                            if stor17[address(cd[36])]:
                                                if not address(cd[4]):
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not address(cd[36]):
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(cd[4])] < cd[68]:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(cd[4])] -= cd[68]
                                                if balanceOf[address(cd[36])] > !cd[68]:
                                                    revert with 0, 17
                                                balanceOf[address(cd[36])] += cd[68]
                                                emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(cd[4]), balanceOf[address(cd[4])]
                                                mem[0] = address(cd[36])
                                                mem[32] = 0
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(cd[36]), balanceOf[address(cd[36])]
                                                if not ext_call.success:
                                                    if not ext_call.success:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _15214 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _15353 = mem[_15214 + 32]
                                                                _15354 = mem[_15214 + 64]
                                                                mem[mem[64]] = mem[_15214]
                                                                mem[mem[64] + 64] = _15354
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _15353, _15354, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _15267 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _15464 = mem[_15267 + 32]
                                                                _15465 = mem[_15267 + 64]
                                                                mem[mem[64]] = mem[_15267]
                                                                mem[mem[64] + 64] = _15465
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _15464, _15465, gasForProcessing, 1, tx.origin);
                                                else:
                                                    if not ext_call.success:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _15269 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _15468 = mem[_15269 + 32]
                                                                _15469 = mem[_15269 + 64]
                                                                mem[mem[64]] = mem[_15269]
                                                                mem[mem[64] + 64] = _15469
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _15468, _15469, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _15358 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _15574 = mem[_15358 + 32]
                                                                _15575 = mem[_15358 + 64]
                                                                mem[mem[64]] = mem[_15358]
                                                                mem[mem[64] + 64] = _15575
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _15574, _15575, gasForProcessing, 1, tx.origin);
                                            else:
                                                if stor7:
                                                    if not address(cd[4]):
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not address(cd[36]):
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(cd[4])] < cd[68]:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(cd[4])] -= cd[68]
                                                    if balanceOf[address(cd[36])] > !cd[68]:
                                                        revert with 0, 17
                                                    balanceOf[address(cd[36])] += cd[68]
                                                    emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(cd[4]), balanceOf[address(cd[4])]
                                                    mem[0] = address(cd[36])
                                                    mem[32] = 0
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(cd[36]), balanceOf[address(cd[36])]
                                                    if not ext_call.success:
                                                        if not ext_call.success:
                                                            if not stor7:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _15166 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _15255 = mem[_15166 + 32]
                                                                    _15256 = mem[_15166 + 64]
                                                                    mem[mem[64]] = mem[_15166]
                                                                    mem[mem[64] + 64] = _15256
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _15255, _15256, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not stor7:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _15206 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _15342 = mem[_15206 + 32]
                                                                    _15343 = mem[_15206 + 64]
                                                                    mem[mem[64]] = mem[_15206]
                                                                    mem[mem[64] + 64] = _15343
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _15342, _15343, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not ext_call.success:
                                                            if not stor7:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _15208 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _15346 = mem[_15208 + 32]
                                                                    _15347 = mem[_15208 + 64]
                                                                    mem[mem[64]] = mem[_15208]
                                                                    mem[mem[64] + 64] = _15347
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _15346, _15347, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not stor7:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _15260 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _15454 = mem[_15260 + 32]
                                                                    _15455 = mem[_15260 + 64]
                                                                    mem[mem[64]] = mem[_15260]
                                                                    mem[mem[64] + 64] = _15455
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _15454, _15455, gasForProcessing, 1, tx.origin);
                                                else:
                                                    if cd[68] and totalFees > -1 / cd[68]:
                                                        revert with 0, 17
                                                    if not stor18[address(cd[36])]:
                                                        if cd[68] < cd[68] * totalFees / 100:
                                                            revert with 0, 17
                                                        if not address(cd[4]):
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(cd[4])] < cd[68] * totalFees / 100:
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(cd[4])] -= cd[68] * totalFees / 100
                                                        if balanceOf[this.address] > !(cd[68] * totalFees / 100):
                                                            revert with 0, 17
                                                        balanceOf[this.address] += cd[68] * totalFees / 100
                                                        emit Transfer((cd[68] * totalFees / 100), address(cd[4]), this.address);
                                                        if not address(cd[4]):
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not address(cd[36]):
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(cd[4])] < cd[68] - (cd[68] * totalFees / 100):
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * totalFees / 100)
                                                        if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * totalFees / 100)):
                                                            revert with 0, 17
                                                        balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * totalFees / 100)
                                                        emit Transfer((cd[68] - (cd[68] * totalFees / 100)), address(cd[4]), address(cd[36]));
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(cd[4]), balanceOf[address(cd[4])]
                                                        mem[0] = address(cd[36])
                                                        mem[32] = 0
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(cd[36]), balanceOf[address(cd[36])]
                                                        if not ext_call.success:
                                                            if not ext_call.success:
                                                                if not stor7:
                                                                    require ext_code.size(dividendTrackerAddress)
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _16854 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _16897 = mem[_16854 + 32]
                                                                        _16898 = mem[_16854 + 64]
                                                                        mem[mem[64]] = mem[_16854]
                                                                        mem[mem[64] + 64] = _16898
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _16897, _16898, gasForProcessing, 1, tx.origin);
                                                            else:
                                                                if not stor7:
                                                                    require ext_code.size(dividendTrackerAddress)
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _16875 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _16932 = mem[_16875 + 32]
                                                                        _16933 = mem[_16875 + 64]
                                                                        mem[mem[64]] = mem[_16875]
                                                                        mem[mem[64] + 64] = _16933
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _16932, _16933, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not ext_call.success:
                                                                if not stor7:
                                                                    require ext_code.size(dividendTrackerAddress)
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _16877 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _16936 = mem[_16877 + 32]
                                                                        _16937 = mem[_16877 + 64]
                                                                        mem[mem[64]] = mem[_16877]
                                                                        mem[mem[64] + 64] = _16937
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _16936, _16937, gasForProcessing, 1, tx.origin);
                                                            else:
                                                                if not stor7:
                                                                    require ext_code.size(dividendTrackerAddress)
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _16902 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _16985 = mem[_16902 + 32]
                                                                        _16986 = mem[_16902 + 64]
                                                                        mem[mem[64]] = mem[_16902]
                                                                        mem[mem[64] + 64] = _16986
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _16985, _16986, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if cd[68] and 1 > -1 / cd[68]:
                                                            revert with 0, 17
                                                        if cd[68] * totalFees / 100 > !(cd[68] / 100):
                                                            revert with 0, 17
                                                        if cd[68] < (cd[68] * totalFees / 100) + (cd[68] / 100):
                                                            revert with 0, 17
                                                        if not address(cd[4]):
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(cd[4])] < (cd[68] * totalFees / 100) + (cd[68] / 100):
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - (cd[68] * totalFees / 100) - (cd[68] / 100)
                                                        if balanceOf[this.address] > !((cd[68] * totalFees / 100) + (cd[68] / 100)):
                                                            revert with 0, 17
                                                        balanceOf[this.address] = balanceOf[this.address] + (cd[68] * totalFees / 100) + (cd[68] / 100)
                                                        emit Transfer(((cd[68] * totalFees / 100) + (cd[68] / 100)), address(cd[4]), this.address);
                                                        if not address(cd[4]):
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not address(cd[36]):
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(cd[4])] < cd[68] - (cd[68] * totalFees / 100) - (cd[68] / 100):
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * totalFees / 100) + (cd[68] / 100)
                                                        if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * totalFees / 100) - (cd[68] / 100)):
                                                            revert with 0, 17
                                                        balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * totalFees / 100) - (cd[68] / 100)
                                                        emit Transfer((cd[68] - (cd[68] * totalFees / 100) - (cd[68] / 100)), address(cd[4]), address(cd[36]));
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(cd[4]), balanceOf[address(cd[4])]
                                                        mem[0] = address(cd[36])
                                                        mem[32] = 0
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(cd[36]), balanceOf[address(cd[36])]
                                                        if not ext_call.success:
                                                            if not ext_call.success:
                                                                if not stor7:
                                                                    require ext_code.size(dividendTrackerAddress)
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _17376 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _17436 = mem[_17376 + 32]
                                                                        _17437 = mem[_17376 + 64]
                                                                        mem[mem[64]] = mem[_17376]
                                                                        mem[mem[64] + 64] = _17437
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _17436, _17437, gasForProcessing, 1, tx.origin);
                                                            else:
                                                                if not stor7:
                                                                    require ext_code.size(dividendTrackerAddress)
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _17404 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _17483 = mem[_17404 + 32]
                                                                        _17484 = mem[_17404 + 64]
                                                                        mem[mem[64]] = mem[_17404]
                                                                        mem[mem[64] + 64] = _17484
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _17483, _17484, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not ext_call.success:
                                                                if not stor7:
                                                                    require ext_code.size(dividendTrackerAddress)
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _17406 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _17487 = mem[_17406 + 32]
                                                                        _17488 = mem[_17406 + 64]
                                                                        mem[mem[64]] = mem[_17406]
                                                                        mem[mem[64] + 64] = _17488
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _17487, _17488, gasForProcessing, 1, tx.origin);
                                                            else:
                                                                if not stor7:
                                                                    require ext_code.size(dividendTrackerAddress)
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _17441 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _17535 = mem[_17441 + 32]
                                                                        _17536 = mem[_17441 + 64]
                                                                        mem[mem[64]] = mem[_17441]
                                                                        mem[mem[64] + 64] = _17536
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _17535, _17536, gasForProcessing, 1, tx.origin);
                                    else:
                                        require ext_code.size(dividendTrackerAddress)
                                        call dividendTrackerAddress.distributeCAKEDividends(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args _14859
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit SendDividends(balanceOf[this.address], _14859);
                                        stor7 = 0
                                        if stor17[address(cd[4])]:
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[36]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(cd[4])] < cd[68]:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(cd[4])] -= cd[68]
                                            if balanceOf[address(cd[36])] > !cd[68]:
                                                revert with 0, 17
                                            balanceOf[address(cd[36])] += cd[68]
                                            emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                            require ext_code.size(dividendTrackerAddress)
                                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(cd[4]), balanceOf[address(cd[4])]
                                            mem[0] = address(cd[36])
                                            mem[32] = 0
                                            require ext_code.size(dividendTrackerAddress)
                                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(cd[36]), balanceOf[address(cd[36])]
                                            if not ext_call.success:
                                                if not ext_call.success:
                                                    if not stor7:
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args gasForProcessing
                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                        if ext_call.success:
                                                            _15360 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 96
                                                            _15578 = mem[_15360 + 32]
                                                            _15579 = mem[_15360 + 64]
                                                            mem[mem[64]] = mem[_15360]
                                                            mem[mem[64] + 64] = _15579
                                                            mem[mem[64] + 96] = gasForProcessing
                                                            emit ProcessedDividendTracker(mem[mem[64]], _15578, _15579, gasForProcessing, 1, tx.origin);
                                                else:
                                                    if not stor7:
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args gasForProcessing
                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                        if ext_call.success:
                                                            _15473 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 96
                                                            _15687 = mem[_15473 + 32]
                                                            _15688 = mem[_15473 + 64]
                                                            mem[mem[64]] = mem[_15473]
                                                            mem[mem[64] + 64] = _15688
                                                            mem[mem[64] + 96] = gasForProcessing
                                                            emit ProcessedDividendTracker(mem[mem[64]], _15687, _15688, gasForProcessing, 1, tx.origin);
                                            else:
                                                if not ext_call.success:
                                                    if not stor7:
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args gasForProcessing
                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                        if ext_call.success:
                                                            _15475 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 96
                                                            _15691 = mem[_15475 + 32]
                                                            _15692 = mem[_15475 + 64]
                                                            mem[mem[64]] = mem[_15475]
                                                            mem[mem[64] + 64] = _15692
                                                            mem[mem[64] + 96] = gasForProcessing
                                                            emit ProcessedDividendTracker(mem[mem[64]], _15691, _15692, gasForProcessing, 1, tx.origin);
                                                else:
                                                    if not stor7:
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args gasForProcessing
                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                        if ext_call.success:
                                                            _15583 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 96
                                                            _15808 = mem[_15583 + 32]
                                                            _15809 = mem[_15583 + 64]
                                                            mem[mem[64]] = mem[_15583]
                                                            mem[mem[64] + 64] = _15809
                                                            mem[mem[64] + 96] = gasForProcessing
                                                            emit ProcessedDividendTracker(mem[mem[64]], _15808, _15809, gasForProcessing, 1, tx.origin);
                                        else:
                                            if stor17[address(cd[36])]:
                                                if not address(cd[4]):
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not address(cd[36]):
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(cd[4])] < cd[68]:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(cd[4])] -= cd[68]
                                                if balanceOf[address(cd[36])] > !cd[68]:
                                                    revert with 0, 17
                                                balanceOf[address(cd[36])] += cd[68]
                                                emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(cd[4]), balanceOf[address(cd[4])]
                                                mem[0] = address(cd[36])
                                                mem[32] = 0
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(cd[36]), balanceOf[address(cd[36])]
                                                if not ext_call.success:
                                                    if not ext_call.success:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _15488 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _15713 = mem[_15488 + 32]
                                                                _15714 = mem[_15488 + 64]
                                                                mem[mem[64]] = mem[_15488]
                                                                mem[mem[64] + 64] = _15714
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _15713, _15714, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _15598 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _15837 = mem[_15598 + 32]
                                                                _15838 = mem[_15598 + 64]
                                                                mem[mem[64]] = mem[_15598]
                                                                mem[mem[64] + 64] = _15838
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _15837, _15838, gasForProcessing, 1, tx.origin);
                                                else:
                                                    if not ext_call.success:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _15600 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _15841 = mem[_15600 + 32]
                                                                _15842 = mem[_15600 + 64]
                                                                mem[mem[64]] = mem[_15600]
                                                                mem[mem[64] + 64] = _15842
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _15841, _15842, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _15718 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _15957 = mem[_15718 + 32]
                                                                _15958 = mem[_15718 + 64]
                                                                mem[mem[64]] = mem[_15718]
                                                                mem[mem[64] + 64] = _15958
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _15957, _15958, gasForProcessing, 1, tx.origin);
                                            else:
                                                if stor7:
                                                    if not address(cd[4]):
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not address(cd[36]):
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(cd[4])] < cd[68]:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(cd[4])] -= cd[68]
                                                    if balanceOf[address(cd[36])] > !cd[68]:
                                                        revert with 0, 17
                                                    balanceOf[address(cd[36])] += cd[68]
                                                    emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(cd[4]), balanceOf[address(cd[4])]
                                                    mem[0] = address(cd[36])
                                                    mem[32] = 0
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(cd[36]), balanceOf[address(cd[36])]
                                                    if not ext_call.success:
                                                        if not ext_call.success:
                                                            if not stor7:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _15368 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _15586 = mem[_15368 + 32]
                                                                    _15587 = mem[_15368 + 64]
                                                                    mem[mem[64]] = mem[_15368]
                                                                    mem[mem[64] + 64] = _15587
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _15586, _15587, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not stor7:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _15480 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _15702 = mem[_15480 + 32]
                                                                    _15703 = mem[_15480 + 64]
                                                                    mem[mem[64]] = mem[_15480]
                                                                    mem[mem[64] + 64] = _15703
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _15702, _15703, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not ext_call.success:
                                                            if not stor7:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _15482 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _15706 = mem[_15482 + 32]
                                                                    _15707 = mem[_15482 + 64]
                                                                    mem[mem[64]] = mem[_15482]
                                                                    mem[mem[64] + 64] = _15707
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _15706, _15707, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not stor7:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _15591 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _15827 = mem[_15591 + 32]
                                                                    _15828 = mem[_15591 + 64]
                                                                    mem[mem[64]] = mem[_15591]
                                                                    mem[mem[64] + 64] = _15828
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _15827, _15828, gasForProcessing, 1, tx.origin);
                                                else:
                                                    if cd[68] and totalFees > -1 / cd[68]:
                                                        revert with 0, 17
                                                    if not stor18[address(cd[36])]:
                                                        if cd[68] < cd[68] * totalFees / 100:
                                                            revert with 0, 17
                                                        if not address(cd[4]):
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(cd[4])] < cd[68] * totalFees / 100:
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(cd[4])] -= cd[68] * totalFees / 100
                                                        if balanceOf[this.address] > !(cd[68] * totalFees / 100):
                                                            revert with 0, 17
                                                        balanceOf[this.address] += cd[68] * totalFees / 100
                                                        emit Transfer((cd[68] * totalFees / 100), address(cd[4]), this.address);
                                                        if not address(cd[4]):
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not address(cd[36]):
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(cd[4])] < cd[68] - (cd[68] * totalFees / 100):
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * totalFees / 100)
                                                        if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * totalFees / 100)):
                                                            revert with 0, 17
                                                        balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * totalFees / 100)
                                                        emit Transfer((cd[68] - (cd[68] * totalFees / 100)), address(cd[4]), address(cd[36]));
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(cd[4]), balanceOf[address(cd[4])]
                                                        mem[0] = address(cd[36])
                                                        mem[32] = 0
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(cd[36]), balanceOf[address(cd[36])]
                                                        if not ext_call.success:
                                                            if not ext_call.success:
                                                                if not stor7:
                                                                    require ext_code.size(dividendTrackerAddress)
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _16941 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _17027 = mem[_16941 + 32]
                                                                        _17028 = mem[_16941 + 64]
                                                                        mem[mem[64]] = mem[_16941]
                                                                        mem[mem[64] + 64] = _17028
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _17027, _17028, gasForProcessing, 1, tx.origin);
                                                            else:
                                                                if not stor7:
                                                                    require ext_code.size(dividendTrackerAddress)
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _16990 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _17067 = mem[_16990 + 32]
                                                                        _17068 = mem[_16990 + 64]
                                                                        mem[mem[64]] = mem[_16990]
                                                                        mem[mem[64] + 64] = _17068
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _17067, _17068, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not ext_call.success:
                                                                if not stor7:
                                                                    require ext_code.size(dividendTrackerAddress)
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _16992 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _17071 = mem[_16992 + 32]
                                                                        _17072 = mem[_16992 + 64]
                                                                        mem[mem[64]] = mem[_16992]
                                                                        mem[mem[64] + 64] = _17072
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _17071, _17072, gasForProcessing, 1, tx.origin);
                                                            else:
                                                                if not stor7:
                                                                    require ext_code.size(dividendTrackerAddress)
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _17032 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _17118 = mem[_17032 + 32]
                                                                        _17119 = mem[_17032 + 64]
                                                                        mem[mem[64]] = mem[_17032]
                                                                        mem[mem[64] + 64] = _17119
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _17118, _17119, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if cd[68] and 1 > -1 / cd[68]:
                                                            revert with 0, 17
                                                        if cd[68] * totalFees / 100 > !(cd[68] / 100):
                                                            revert with 0, 17
                                                        if cd[68] < (cd[68] * totalFees / 100) + (cd[68] / 100):
                                                            revert with 0, 17
                                                        if not address(cd[4]):
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(cd[4])] < (cd[68] * totalFees / 100) + (cd[68] / 100):
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - (cd[68] * totalFees / 100) - (cd[68] / 100)
                                                        if balanceOf[this.address] > !((cd[68] * totalFees / 100) + (cd[68] / 100)):
                                                            revert with 0, 17
                                                        balanceOf[this.address] = balanceOf[this.address] + (cd[68] * totalFees / 100) + (cd[68] / 100)
                                                        emit Transfer(((cd[68] * totalFees / 100) + (cd[68] / 100)), address(cd[4]), this.address);
                                                        if not address(cd[4]):
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not address(cd[36]):
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(cd[4])] < cd[68] - (cd[68] * totalFees / 100) - (cd[68] / 100):
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * totalFees / 100) + (cd[68] / 100)
                                                        if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * totalFees / 100) - (cd[68] / 100)):
                                                            revert with 0, 17
                                                        balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * totalFees / 100) - (cd[68] / 100)
                                                        emit Transfer((cd[68] - (cd[68] * totalFees / 100) - (cd[68] / 100)), address(cd[4]), address(cd[36]));
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(cd[4]), balanceOf[address(cd[4])]
                                                        mem[0] = address(cd[36])
                                                        mem[32] = 0
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(cd[36]), balanceOf[address(cd[36])]
                                                        if not ext_call.success:
                                                            if not ext_call.success:
                                                                if not stor7:
                                                                    require ext_code.size(dividendTrackerAddress)
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _17500 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _17577 = mem[_17500 + 32]
                                                                        _17578 = mem[_17500 + 64]
                                                                        mem[mem[64]] = mem[_17500]
                                                                        mem[mem[64] + 64] = _17578
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _17577, _17578, gasForProcessing, 1, tx.origin);
                                                            else:
                                                                if not stor7:
                                                                    require ext_code.size(dividendTrackerAddress)
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _17543 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _17615 = mem[_17543 + 32]
                                                                        _17616 = mem[_17543 + 64]
                                                                        mem[mem[64]] = mem[_17543]
                                                                        mem[mem[64] + 64] = _17616
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _17615, _17616, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not ext_call.success:
                                                                if not stor7:
                                                                    require ext_code.size(dividendTrackerAddress)
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _17545 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _17619 = mem[_17545 + 32]
                                                                        _17620 = mem[_17545 + 64]
                                                                        mem[mem[64]] = mem[_17545]
                                                                        mem[mem[64] + 64] = _17620
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _17619, _17620, gasForProcessing, 1, tx.origin);
                                                            else:
                                                                if not stor7:
                                                                    require ext_code.size(dividendTrackerAddress)
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _17582 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _17662 = mem[_17582 + 32]
                                                                        _17663 = mem[_17582 + 64]
                                                                        mem[mem[64]] = mem[_17582]
                                                                        mem[mem[64] + 64] = _17663
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _17662, _17663, gasForProcessing, 1, tx.origin);
            if allowance[address(cd[4])][msg.sender].field_0 < cd[68]:
                revert with 0, 'ERC20: transfer amount exceeds allowance'
            if not address(cd[4]):
                revert with 0, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(cd[4])][address(msg.sender)].field_0 = allowance[address(cd[4])][msg.sender].field_0 - cd[68]
            emit Approval((allowance[address(cd[4])][msg.sender].field_0 - cd[68]), address(cd[4]), msg.sender);
    return 1
}



}
