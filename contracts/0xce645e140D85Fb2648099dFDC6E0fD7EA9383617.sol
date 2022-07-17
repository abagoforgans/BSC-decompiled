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
uint8 enableAntiBot; offset 160
uint128 stor19; offset 160
address pinkAntiBotAddress;

function totalFees() {
    return totalFees
}

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function totalSupply() {
    return totalSupply
}

function enableAntiBot() {
    return bool(enableAntiBot)
}

function dividendTracker() {
    return dividendTrackerAddress
}

function pinkAntiBot() {
    return pinkAntiBotAddress
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

function setEnableAntiBot(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor19 = Mask(96, 0, arg1)
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
    if not enableAntiBot:
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
                                _4489 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4491 = mem[_4489]
                                if mem[_4489] < ext_call.return_data[0]:
                                    revert with 0, 17
                                mem[mem[64] + 4] = _marketingWalletAddress
                                mem[mem[64] + 36] = _4491 - ext_call.return_data[0]
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args _marketingWalletAddress, _4491 - ext_call.return_data[0]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4497 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4497] == bool(mem[_4497])
                                if balanceOf[this.address] and liquidityFee > -1 / balanceOf[this.address]:
                                    revert with 0, 17
                                if not totalFees:
                                    revert with 0, 18
                                if balanceOf[this.address] * liquidityFee / totalFees < balanceOf[this.address] * liquidityFee / totalFees / 2:
                                    revert with 0, 17
                                _4501 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                mem[_4501 + 32 len 64] = call.data[calldata.size len 64]
                                if 0 >= mem[_4501]:
                                    revert with 0, 50
                                mem[_4501 + 32] = this.address
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WETH() with:
                                        gas gas_remaining wei
                                mem[_4501 + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _4501 + ceil32(return_data.size) + 96
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if 1 >= mem[_4501]:
                                    revert with 0, 50
                                mem[_4501 + 64] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                mem[0] = uniswapV2RouterAddress
                                mem[32] = sha3(address(this.address), 1)
                                allowance[address(this.address)][stor6].field_0 = balanceOf[this.address] * liquidityFee / totalFees / 2
                                allowance[address(this.address)][stor6].field_255 = 0
                                emit Approval((balanceOf[this.address] * liquidityFee / totalFees / 2), this.address, uniswapV2RouterAddress);
                                mem[_4501 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                mem[_4501 + ceil32(return_data.size) + 100] = balanceOf[this.address] * liquidityFee / totalFees / 2
                                mem[_4501 + ceil32(return_data.size) + 132] = 0
                                mem[_4501 + ceil32(return_data.size) + 164] = 160
                                mem[_4501 + ceil32(return_data.size) + 260] = mem[_4501]
                                idx = 0
                                s = _4501 + ceil32(return_data.size) + 292
                                t = _4501 + 32
                                while idx < mem[_4501]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_4501 + ceil32(return_data.size) + 196] = this.address
                                mem[_4501 + ceil32(return_data.size) + 228] = block.timestamp
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _4501 + ceil32(return_data.size) + (32 * mem[_4501]) + -mem[64] + 288]
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
                                _6287 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                mem[_6287 + 32 len 96] = call.data[calldata.size len 96]
                                if 0 >= mem[_6287]:
                                    revert with 0, 50
                                mem[_6287 + 32] = this.address
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WETH() with:
                                        gas gas_remaining wei
                                mem[_6287 + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _6287 + ceil32(return_data.size) + 128
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if 1 >= mem[_6287]:
                                    revert with 0, 50
                                mem[_6287 + 64] = ext_call.return_data[12 len 20]
                                if 2 >= mem[_6287]:
                                    revert with 0, 50
                                mem[_6287 + 96] = rewardTokenAddress
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                mem[0] = uniswapV2RouterAddress
                                mem[32] = sha3(address(this.address), 1)
                                allowance[address(this.address)][stor6].field_0 = balanceOf[this.address]
                                emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                mem[_6287 + ceil32(return_data.size) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[_6287 + ceil32(return_data.size) + 132] = balanceOf[this.address]
                                mem[_6287 + ceil32(return_data.size) + 164] = 0
                                mem[_6287 + ceil32(return_data.size) + 196] = 160
                                mem[_6287 + ceil32(return_data.size) + 292] = mem[_6287]
                                idx = 0
                                s = _6287 + ceil32(return_data.size) + 324
                                t = _6287 + 32
                                while idx < mem[_6287]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[_6287 + ceil32(return_data.size) + 292 len (32 * mem[_6287]) + 32]
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
    else:
        mem[132] = arg1
        mem[164] = arg2
        require ext_code.size(pinkAntiBotAddress)
        call pinkAntiBotAddress.onPreTransferCheck(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
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
                                _4490 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4492 = mem[_4490]
                                if mem[_4490] < ext_call.return_data[0]:
                                    revert with 0, 17
                                mem[mem[64] + 4] = _marketingWalletAddress
                                mem[mem[64] + 36] = _4492 - ext_call.return_data[0]
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args _marketingWalletAddress, _4492 - ext_call.return_data[0]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4498 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4498] == bool(mem[_4498])
                                if balanceOf[this.address] and liquidityFee > -1 / balanceOf[this.address]:
                                    revert with 0, 17
                                if not totalFees:
                                    revert with 0, 18
                                if balanceOf[this.address] * liquidityFee / totalFees < balanceOf[this.address] * liquidityFee / totalFees / 2:
                                    revert with 0, 17
                                _4503 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                mem[_4503 + 32 len 64] = call.data[calldata.size len 64]
                                if 0 >= mem[_4503]:
                                    revert with 0, 50
                                mem[_4503 + 32] = this.address
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WETH() with:
                                        gas gas_remaining wei
                                mem[_4503 + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _4503 + ceil32(return_data.size) + 96
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if 1 >= mem[_4503]:
                                    revert with 0, 50
                                mem[_4503 + 64] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                mem[0] = uniswapV2RouterAddress
                                mem[32] = sha3(address(this.address), 1)
                                allowance[address(this.address)][stor6].field_0 = balanceOf[this.address] * liquidityFee / totalFees / 2
                                allowance[address(this.address)][stor6].field_255 = 0
                                emit Approval((balanceOf[this.address] * liquidityFee / totalFees / 2), this.address, uniswapV2RouterAddress);
                                mem[_4503 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                mem[_4503 + ceil32(return_data.size) + 100] = balanceOf[this.address] * liquidityFee / totalFees / 2
                                mem[_4503 + ceil32(return_data.size) + 132] = 0
                                mem[_4503 + ceil32(return_data.size) + 164] = 160
                                mem[_4503 + ceil32(return_data.size) + 260] = mem[_4503]
                                idx = 0
                                s = _4503 + ceil32(return_data.size) + 292
                                t = _4503 + 32
                                while idx < mem[_4503]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, balanceOf[this.address] * liquidityFee / totalFees), 0, 160, address(this.address), block.timestamp, mem[_4503 + ceil32(return_data.size) + 260 len (32 * mem[_4503]) + 32]
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
                                mem[_4503 + ceil32(return_data.size) + 164] = 0
                                mem[_4503 + ceil32(return_data.size) + 196] = 0
                                mem[_4503 + ceil32(return_data.size) + 228] = 0
                                mem[_4503 + ceil32(return_data.size) + 260] = block.timestamp
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                     gas gas_remaining wei
                                    args this.address, (balanceOf[this.address] * liquidityFee / totalFees) - (balanceOf[this.address] * liquidityFee / totalFees / 2), 0, 0, 0, block.timestamp
                                mem[_4503 + ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                emit SwapAndLiquify(Mask(255, 1, balanceOf[this.address] * liquidityFee / totalFees), 0, (balanceOf[this.address] * liquidityFee / totalFees) - (balanceOf[this.address] * liquidityFee / totalFees / 2));
                                mem[_4503 + (2 * ceil32(return_data.size)) + 96] = 3
                                mem[_4503 + (2 * ceil32(return_data.size)) + 128] = this.address
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WETH() with:
                                        gas gas_remaining wei
                                mem[_4503 + (2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _4503 + (4 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[_4503 + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                                mem[_4503 + (2 * ceil32(return_data.size)) + 192] = rewardTokenAddress
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                mem[0] = uniswapV2RouterAddress
                                mem[32] = sha3(address(this.address), 1)
                                allowance[address(this.address)][stor6].field_0 = balanceOf[this.address]
                                emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                mem[_4503 + (4 * ceil32(return_data.size)) + 224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[_4503 + (4 * ceil32(return_data.size)) + 228] = balanceOf[this.address]
                                mem[_4503 + (4 * ceil32(return_data.size)) + 260] = 0
                                mem[_4503 + (4 * ceil32(return_data.size)) + 292] = 160
                                mem[_4503 + (4 * ceil32(return_data.size)) + 388] = 3
                                idx = 0
                                s = _4503 + (4 * ceil32(return_data.size)) + 420
                                t = _4503 + (2 * ceil32(return_data.size)) + 128
                                while idx < mem[_4503 + (2 * ceil32(return_data.size)) + 96]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_4503 + (4 * ceil32(return_data.size)) + 324] = this.address
                                mem[_4503 + (4 * ceil32(return_data.size)) + 356] = block.timestamp
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[_4503 + (4 * ceil32(return_data.size)) + 388 len (32 * mem[_4503 + (2 * ceil32(return_data.size)) + 96]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(rewardTokenAddress)
                                staticcall rewardTokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_4503 + (4 * ceil32(return_data.size)) + 228] = dividendTrackerAddress
                                mem[_4503 + (4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                                require ext_code.size(rewardTokenAddress)
                                call rewardTokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[_4503 + (4 * ceil32(return_data.size)) + 228 len (7 * ceil32(return_data.size)) + 64]
                                mem[_4503 + (4 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
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
                                        mem[_4503 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_4503 + (8 * ceil32(return_data.size)) + 228] = 32
                                        mem[_4503 + (8 * ceil32(return_data.size)) + 260] = 37
                                        mem[_4503 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer from the zero ad'
                                        mem[_4503 + (8 * ceil32(return_data.size)) + 324] = 0x6472657373000000000000000000000000000000000000000000000000000000
                                        revert with memory
                                          from _4503 + (8 * ceil32(return_data.size)) + 224
                                           len (13 * ceil32(return_data.size)) + 132
                                    if not arg1:
                                        mem[_4503 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_4503 + (8 * ceil32(return_data.size)) + 228] = 32
                                        mem[_4503 + (8 * ceil32(return_data.size)) + 260] = 35
                                        mem[_4503 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer to the zero addr'
                                        mem[_4503 + (8 * ceil32(return_data.size)) + 324] = 0x6573730000000000000000000000000000000000000000000000000000000000
                                        revert with memory
                                          from _4503 + (8 * ceil32(return_data.size)) + 224
                                           len (13 * ceil32(return_data.size)) + 132
                                    if balanceOf[address(msg.sender)] < arg2:
                                        mem[_4503 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_4503 + (8 * ceil32(return_data.size)) + 228] = 32
                                        mem[_4503 + (8 * ceil32(return_data.size)) + 260] = 38
                                        mem[_4503 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer amount exceeds b'
                                        mem[_4503 + (8 * ceil32(return_data.size)) + 324] = 0x616c616e63650000000000000000000000000000000000000000000000000000
                                        revert with memory
                                          from _4503 + (8 * ceil32(return_data.size)) + 224
                                           len (13 * ceil32(return_data.size)) + 132
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    balanceOf[arg1] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor17[address(arg1)]:
                                        if not msg.sender:
                                            mem[_4503 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_4503 + (8 * ceil32(return_data.size)) + 228] = 32
                                            mem[_4503 + (8 * ceil32(return_data.size)) + 260] = 37
                                            mem[_4503 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer from the zero ad'
                                            mem[_4503 + (8 * ceil32(return_data.size)) + 324] = 0x6472657373000000000000000000000000000000000000000000000000000000
                                            revert with memory
                                              from _4503 + (8 * ceil32(return_data.size)) + 224
                                               len (13 * ceil32(return_data.size)) + 132
                                        if not arg1:
                                            mem[_4503 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_4503 + (8 * ceil32(return_data.size)) + 228] = 32
                                            mem[_4503 + (8 * ceil32(return_data.size)) + 260] = 35
                                            mem[_4503 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer to the zero addr'
                                            mem[_4503 + (8 * ceil32(return_data.size)) + 324] = 0x6573730000000000000000000000000000000000000000000000000000000000
                                            revert with memory
                                              from _4503 + (8 * ceil32(return_data.size)) + 224
                                               len (13 * ceil32(return_data.size)) + 132
                                        if balanceOf[address(msg.sender)] < arg2:
                                            mem[_4503 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_4503 + (8 * ceil32(return_data.size)) + 228] = 32
                                            mem[_4503 + (8 * ceil32(return_data.size)) + 260] = 38
                                            mem[_4503 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer amount exceeds b'
                                            mem[_4503 + (8 * ceil32(return_data.size)) + 324] = 0x616c616e63650000000000000000000000000000000000000000000000000000
                                            revert with memory
                                              from _4503 + (8 * ceil32(return_data.size)) + 224
                                               len (13 * ceil32(return_data.size)) + 132
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        balanceOf[arg1] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor7:
                                            if not msg.sender:
                                                mem[_4503 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_4503 + (8 * ceil32(return_data.size)) + 228] = 32
                                                mem[_4503 + (8 * ceil32(return_data.size)) + 260] = 37
                                                mem[_4503 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer from the zero ad'
                                                mem[_4503 + (8 * ceil32(return_data.size)) + 324] = 0x6472657373000000000000000000000000000000000000000000000000000000
                                                revert with memory
                                                  from _4503 + (8 * ceil32(return_data.size)) + 224
                                                   len (13 * ceil32(return_data.size)) + 132
                                            if not arg1:
                                                mem[_4503 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_4503 + (8 * ceil32(return_data.size)) + 228] = 32
                                                mem[_4503 + (8 * ceil32(return_data.size)) + 260] = 35
                                                mem[_4503 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer to the zero addr'
                                                mem[_4503 + (8 * ceil32(return_data.size)) + 324] = 0x6573730000000000000000000000000000000000000000000000000000000000
                                                revert with memory
                                                  from _4503 + (8 * ceil32(return_data.size)) + 224
                                                   len (13 * ceil32(return_data.size)) + 132
                                            if balanceOf[address(msg.sender)] < arg2:
                                                mem[_4503 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_4503 + (8 * ceil32(return_data.size)) + 228] = 32
                                                mem[_4503 + (8 * ceil32(return_data.size)) + 260] = 38
                                                mem[_4503 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer amount exceeds b'
                                                mem[_4503 + (8 * ceil32(return_data.size)) + 324] = 0x616c616e63650000000000000000000000000000000000000000000000000000
                                                revert with memory
                                                  from _4503 + (8 * ceil32(return_data.size)) + 224
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
                                                    mem[_4503 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_4503 + (8 * ceil32(return_data.size)) + 228] = 32
                                                    mem[_4503 + (8 * ceil32(return_data.size)) + 260] = 37
                                                    mem[_4503 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer from the zero ad'
                                                    mem[_4503 + (8 * ceil32(return_data.size)) + 324] = 0x6472657373000000000000000000000000000000000000000000000000000000
                                                    revert with memory
                                                      from _4503 + (8 * ceil32(return_data.size)) + 224
                                                       len (13 * ceil32(return_data.size)) + 132
                                                if not this.address:
                                                    mem[_4503 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_4503 + (8 * ceil32(return_data.size)) + 228] = 32
                                                    mem[_4503 + (8 * ceil32(return_data.size)) + 260] = 35
                                                    mem[_4503 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer to the zero addr'
                                                    mem[_4503 + (8 * ceil32(return_data.size)) + 324] = 0x6573730000000000000000000000000000000000000000000000000000000000
                                                    revert with memory
                                                      from _4503 + (8 * ceil32(return_data.size)) + 224
                                                       len (13 * ceil32(return_data.size)) + 132
                                                if balanceOf[address(msg.sender)] < arg2 * totalFees / 100:
                                                    mem[_4503 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_4503 + (8 * ceil32(return_data.size)) + 228] = 32
                                                    mem[_4503 + (8 * ceil32(return_data.size)) + 260] = 38
                                                    mem[_4503 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer amount exceeds b'
                                                    mem[_4503 + (8 * ceil32(return_data.size)) + 324] = 0x616c616e63650000000000000000000000000000000000000000000000000000
                                                    revert with memory
                                                      from _4503 + (8 * ceil32(return_data.size)) + 224
                                                       len (13 * ceil32(return_data.size)) + 132
                                                balanceOf[address(msg.sender)] -= arg2 * totalFees / 100
                                                if balanceOf[this.address] > !(arg2 * totalFees / 100):
                                                    revert with 0, 17
                                                balanceOf[this.address] += arg2 * totalFees / 100
                                                emit Transfer((arg2 * totalFees / 100), msg.sender, this.address);
                                                if not msg.sender:
                                                    mem[_4503 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_4503 + (8 * ceil32(return_data.size)) + 228] = 32
                                                    mem[_4503 + (8 * ceil32(return_data.size)) + 260] = 37
                                                    mem[_4503 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer from the zero ad'
                                                    mem[_4503 + (8 * ceil32(return_data.size)) + 324] = 0x6472657373000000000000000000000000000000000000000000000000000000
                                                    revert with memory
                                                      from _4503 + (8 * ceil32(return_data.size)) + 224
                                                       len (13 * ceil32(return_data.size)) + 132
                                                if not arg1:
                                                    mem[_4503 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_4503 + (8 * ceil32(return_data.size)) + 228] = 32
                                                    mem[_4503 + (8 * ceil32(return_data.size)) + 260] = 35
                                                    mem[_4503 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer to the zero addr'
                                                    mem[_4503 + (8 * ceil32(return_data.size)) + 324] = 0x6573730000000000000000000000000000000000000000000000000000000000
                                                    revert with memory
                                                      from _4503 + (8 * ceil32(return_data.size)) + 224
                                                       len (13 * ceil32(return_data.size)) + 132
                                                if balanceOf[address(msg.sender)] < arg2 - (arg2 * totalFees / 100):
                                                    mem[_4503 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_4503 + (8 * ceil32(return_data.size)) + 228] = 32
                                                    mem[_4503 + (8 * ceil32(return_data.size)) + 260] = 38
                                                    mem[_4503 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer amount exceeds b'
                                                    mem[_4503 + (8 * ceil32(return_data.size)) + 324] = 0x616c616e63650000000000000000000000000000000000000000000000000000
                                                    revert with memory
                                                      from _4503 + (8 * ceil32(return_data.size)) + 224
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
                                                    mem[_4503 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_4503 + (8 * ceil32(return_data.size)) + 228] = 32
                                                    mem[_4503 + (8 * ceil32(return_data.size)) + 260] = 37
                                                    mem[_4503 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer from the zero ad'
                                                    mem[_4503 + (8 * ceil32(return_data.size)) + 324] = 0x6472657373000000000000000000000000000000000000000000000000000000
                                                    revert with memory
                                                      from _4503 + (8 * ceil32(return_data.size)) + 224
                                                       len (13 * ceil32(return_data.size)) + 132
                                                if not this.address:
                                                    mem[_4503 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_4503 + (8 * ceil32(return_data.size)) + 228] = 32
                                                    mem[_4503 + (8 * ceil32(return_data.size)) + 260] = 35
                                                    mem[_4503 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer to the zero addr'
                                                    mem[_4503 + (8 * ceil32(return_data.size)) + 324] = 0x6573730000000000000000000000000000000000000000000000000000000000
                                                    revert with memory
                                                      from _4503 + (8 * ceil32(return_data.size)) + 224
                                                       len (13 * ceil32(return_data.size)) + 132
                                                if balanceOf[address(msg.sender)] < (arg2 * totalFees / 100) + (arg2 / 100):
                                                    mem[_4503 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_4503 + (8 * ceil32(return_data.size)) + 228] = 32
                                                    mem[_4503 + (8 * ceil32(return_data.size)) + 260] = 38
                                                    mem[_4503 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer amount exceeds b'
                                                    mem[_4503 + (8 * ceil32(return_data.size)) + 324] = 0x616c616e63650000000000000000000000000000000000000000000000000000
                                                    revert with memory
                                                      from _4503 + (8 * ceil32(return_data.size)) + 224
                                                       len (13 * ceil32(return_data.size)) + 132
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 * totalFees / 100) - (arg2 / 100)
                                                if balanceOf[this.address] > !((arg2 * totalFees / 100) + (arg2 / 100)):
                                                    revert with 0, 17
                                                balanceOf[this.address] = balanceOf[this.address] + (arg2 * totalFees / 100) + (arg2 / 100)
                                                emit Transfer(((arg2 * totalFees / 100) + (arg2 / 100)), msg.sender, this.address);
                                                if not msg.sender:
                                                    mem[_4503 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_4503 + (8 * ceil32(return_data.size)) + 228] = 32
                                                    mem[_4503 + (8 * ceil32(return_data.size)) + 260] = 37
                                                    mem[_4503 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer from the zero ad'
                                                    mem[_4503 + (8 * ceil32(return_data.size)) + 324] = 0x6472657373000000000000000000000000000000000000000000000000000000
                                                    revert with memory
                                                      from _4503 + (8 * ceil32(return_data.size)) + 224
                                                       len (13 * ceil32(return_data.size)) + 132
                                                if not arg1:
                                                    mem[_4503 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_4503 + (8 * ceil32(return_data.size)) + 228] = 32
                                                    mem[_4503 + (8 * ceil32(return_data.size)) + 260] = 35
                                                    mem[_4503 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer to the zero addr'
                                                    mem[_4503 + (8 * ceil32(return_data.size)) + 324] = 0x6573730000000000000000000000000000000000000000000000000000000000
                                                    revert with memory
                                                      from _4503 + (8 * ceil32(return_data.size)) + 224
                                                       len (13 * ceil32(return_data.size)) + 132
                                                if balanceOf[address(msg.sender)] < arg2 - (arg2 * totalFees / 100) - (arg2 / 100):
                                                    mem[_4503 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_4503 + (8 * ceil32(return_data.size)) + 228] = 32
                                                    mem[_4503 + (8 * ceil32(return_data.size)) + 260] = 38
                                                    mem[_4503 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer amount exceeds b'
                                                    mem[_4503 + (8 * ceil32(return_data.size)) + 324] = 0x616c616e63650000000000000000000000000000000000000000000000000000
                                                    revert with memory
                                                      from _4503 + (8 * ceil32(return_data.size)) + 224
                                                       len (13 * ceil32(return_data.size)) + 132
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * totalFees / 100) + (arg2 / 100)
                                                if balanceOf[arg1] > !(arg2 - (arg2 * totalFees / 100) - (arg2 / 100)):
                                                    revert with 0, 17
                                                balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * totalFees / 100) - (arg2 / 100)
                                                emit Transfer((arg2 - (arg2 * totalFees / 100) - (arg2 / 100)), msg.sender, arg1);
                                mem[_4503 + (8 * ceil32(return_data.size)) + 228] = msg.sender
                                mem[_4503 + (8 * ceil32(return_data.size)) + 260] = balanceOf[address(msg.sender)]
                                require ext_code.size(dividendTrackerAddress)
                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args mem[_4503 + (8 * ceil32(return_data.size)) + 228 len (13 * ceil32(return_data.size)) + 64]
                                mem[_4503 + (8 * ceil32(return_data.size)) + 228] = arg1
                                mem[_4503 + (8 * ceil32(return_data.size)) + 260] = balanceOf[address(arg1)]
                                require ext_code.size(dividendTrackerAddress)
                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args mem[_4503 + (8 * ceil32(return_data.size)) + 228 len (13 * ceil32(return_data.size)) + 64]
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
                                                                      mem[_4503 + (9 * ceil32(return_data.size)) + 352 len 5 * ceil32(return_data.size)],
                                                                      1,
                                                                      tx.origin,
    return 1
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if unknown_0x715018a6(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0xafa4f3b2(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xe2f45605(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xf27fd254(?????) <= uint32(call.func_hash) >> 224:
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
                    if unknown_0xe2f45605(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return swapTokensAtAmount
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
                if unknown_0xc0246668(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0xafa4f3b2(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        swapTokensAtAmount = cd[4]
                    if unknown_0xb62496f5(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        return bool(stor18[cd[4]])
                    require unknown_0xbdd4f29f(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require ext_code.size(dividendTrackerAddress)
                    staticcall dividendTrackerAddress.minimumTokenBalanceForDividends() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                if unknown_0xc0246668(?????) == uint32(call.func_hash) >> 224:
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
                            require unknown_0xdd62ed3e(?????) == uint32(call.func_hash) >> 224
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
        if unknown_0x9c1b8af5(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x8da5cb5b(?????) <= uint32(call.func_hash) >> 224:
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
                require unknown_0x9a7a23d6(?????) == uint32(call.func_hash) >> 224
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
                if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    owner = 0
                    emit OwnershipTransferred(owner, 0);
                else:
                    if unknown_0x871c128d(?????) == uint32(call.func_hash) >> 224:
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
                        require unknown_0x88bdd9be(?????) == uint32(call.func_hash) >> 224
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
        if unknown_0xa8b9d240(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x9c1b8af5(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return gasForProcessing
            if unknown_0xa26579ad(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require ext_code.size(dividendTrackerAddress)
                staticcall dividendTrackerAddress.claimWait() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                return ext_call.return_data[0]
            require unknown_0xa457c2d7(?????) == uint32(call.func_hash) >> 224
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
        else:
            if unknown_0xa8b9d240(?????) == uint32(call.func_hash) >> 224:
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
                require unknown_0xadefd90c(?????) == uint32(call.func_hash) >> 224
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
            if not enableAntiBot:
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
                                        _16439 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _16460 = mem[_16439]
                                        if mem[_16439] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        mem[mem[64] + 4] = _marketingWalletAddress
                                        mem[mem[64] + 36] = _16460 - ext_call.return_data[0]
                                        require ext_code.size(rewardTokenAddress)
                                        call rewardTokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args _marketingWalletAddress, _16460 - ext_call.return_data[0]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _16472 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_16472] == bool(mem[_16472])
                                        if balanceOf[this.address] and liquidityFee > -1 / balanceOf[this.address]:
                                            revert with 0, 17
                                        if not totalFees:
                                            revert with 0, 18
                                        if balanceOf[this.address] * liquidityFee / totalFees < balanceOf[this.address] * liquidityFee / totalFees / 2:
                                            revert with 0, 17
                                        _16482 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        mem[_16482 + 32 len 64] = call.data[calldata.size len 64]
                                        if 0 >= mem[_16482]:
                                            revert with 0, 50
                                        mem[_16482 + 32] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        mem[_16482 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _16482 + ceil32(return_data.size) + 96
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if 1 >= mem[_16482]:
                                            revert with 0, 50
                                        mem[_16482 + 64] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        mem[0] = uniswapV2RouterAddress
                                        mem[32] = sha3(address(this.address), 1)
                                        allowance[address(this.address)][stor6].field_0 = balanceOf[this.address] * liquidityFee / totalFees / 2
                                        allowance[address(this.address)][stor6].field_255 = 0
                                        emit Approval((balanceOf[this.address] * liquidityFee / totalFees / 2), this.address, uniswapV2RouterAddress);
                                        mem[_16482 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                        mem[_16482 + ceil32(return_data.size) + 100] = balanceOf[this.address] * liquidityFee / totalFees / 2
                                        mem[_16482 + ceil32(return_data.size) + 132] = 0
                                        mem[_16482 + ceil32(return_data.size) + 164] = 160
                                        mem[_16482 + ceil32(return_data.size) + 260] = mem[_16482]
                                        idx = 0
                                        s = _16482 + ceil32(return_data.size) + 292
                                        t = _16482 + 32
                                        while idx < mem[_16482]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args Mask(255, 1, balanceOf[this.address] * liquidityFee / totalFees), 0, 160, address(this.address), block.timestamp, mem[_16482 + ceil32(return_data.size) + 260 len (32 * mem[_16482]) + 32]
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
                                        mem[_16482 + ceil32(return_data.size) + 164] = 0
                                        mem[_16482 + ceil32(return_data.size) + 196] = 0
                                        mem[_16482 + ceil32(return_data.size) + 228] = 0
                                        mem[_16482 + ceil32(return_data.size) + 260] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                             gas gas_remaining wei
                                            args this.address, (balanceOf[this.address] * liquidityFee / totalFees) - (balanceOf[this.address] * liquidityFee / totalFees / 2), 0, 0, 0, block.timestamp
                                        mem[_16482 + ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        emit SwapAndLiquify(Mask(255, 1, balanceOf[this.address] * liquidityFee / totalFees), 0, (balanceOf[this.address] * liquidityFee / totalFees) - (balanceOf[this.address] * liquidityFee / totalFees / 2));
                                        mem[_16482 + (2 * ceil32(return_data.size)) + 96] = 3
                                        mem[_16482 + (2 * ceil32(return_data.size)) + 128] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        mem[_16482 + (2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _16482 + (4 * ceil32(return_data.size)) + 224
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[_16482 + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                                        mem[_16482 + (2 * ceil32(return_data.size)) + 192] = rewardTokenAddress
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        mem[0] = uniswapV2RouterAddress
                                        mem[32] = sha3(address(this.address), 1)
                                        allowance[address(this.address)][stor6].field_0 = balanceOf[this.address]
                                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                        mem[_16482 + (4 * ceil32(return_data.size)) + 224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                        mem[_16482 + (4 * ceil32(return_data.size)) + 228] = balanceOf[this.address]
                                        mem[_16482 + (4 * ceil32(return_data.size)) + 260] = 0
                                        mem[_16482 + (4 * ceil32(return_data.size)) + 292] = 160
                                        mem[_16482 + (4 * ceil32(return_data.size)) + 388] = 3
                                        idx = 0
                                        s = _16482 + (4 * ceil32(return_data.size)) + 420
                                        t = _16482 + (2 * ceil32(return_data.size)) + 128
                                        while idx < mem[_16482 + (2 * ceil32(return_data.size)) + 96]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_16482 + (4 * ceil32(return_data.size)) + 324] = this.address
                                        mem[_16482 + (4 * ceil32(return_data.size)) + 356] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _16482 + (4 * ceil32(return_data.size)) + (32 * mem[_16482 + (2 * ceil32(return_data.size)) + 96]) + -mem[64] + 416]
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
                                        _29091 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _29095 = mem[_29091]
                                        mem[mem[64] + 4] = dividendTrackerAddress
                                        mem[mem[64] + 36] = _29095
                                        require ext_code.size(rewardTokenAddress)
                                        call rewardTokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args dividendTrackerAddress, _29095
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _29107 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_29107] == bool(mem[_29107])
                                        if not mem[_29107]:
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
                                                                _29740 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _29948 = mem[_29740 + 32]
                                                                _29949 = mem[_29740 + 64]
                                                                mem[mem[64]] = mem[_29740]
                                                                mem[mem[64] + 64] = _29949
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _29948, _29949, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _29827 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _30140 = mem[_29827 + 32]
                                                                _30141 = mem[_29827 + 64]
                                                                mem[mem[64]] = mem[_29827]
                                                                mem[mem[64] + 64] = _30141
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _30140, _30141, gasForProcessing, 1, tx.origin);
                                                else:
                                                    if not ext_call.success:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _29829 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _30143 = mem[_29829 + 32]
                                                                _30144 = mem[_29829 + 64]
                                                                mem[mem[64]] = mem[_29829]
                                                                mem[mem[64] + 64] = _30144
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _30143, _30144, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _29953 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _30366 = mem[_29953 + 32]
                                                                _30367 = mem[_29953 + 64]
                                                                mem[mem[64]] = mem[_29953]
                                                                mem[mem[64] + 64] = _30367
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _30366, _30367, gasForProcessing, 1, tx.origin);
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
                                                                    _29838 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _30156 = mem[_29838 + 32]
                                                                    _30157 = mem[_29838 + 64]
                                                                    mem[mem[64]] = mem[_29838]
                                                                    mem[mem[64] + 64] = _30157
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _30156, _30157, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not stor7:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _29967 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _30372 = mem[_29967 + 32]
                                                                    _30373 = mem[_29967 + 64]
                                                                    mem[mem[64]] = mem[_29967]
                                                                    mem[mem[64] + 64] = _30373
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _30372, _30373, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not ext_call.success:
                                                            if not stor7:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _29969 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _30375 = mem[_29969 + 32]
                                                                    _30376 = mem[_29969 + 64]
                                                                    mem[mem[64]] = mem[_29969]
                                                                    mem[mem[64] + 64] = _30376
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _30375, _30376, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not stor7:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _30161 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _30589 = mem[_30161 + 32]
                                                                    _30590 = mem[_30161 + 64]
                                                                    mem[mem[64]] = mem[_30161]
                                                                    mem[mem[64] + 64] = _30590
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _30589, _30590, gasForProcessing, 1, tx.origin);
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
                                                                        _29744 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _29955 = mem[_29744 + 32]
                                                                        _29956 = mem[_29744 + 64]
                                                                        mem[mem[64]] = mem[_29744]
                                                                        mem[mem[64] + 64] = _29956
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _29955, _29956, gasForProcessing, 1, tx.origin);
                                                            else:
                                                                if not stor7:
                                                                    require ext_code.size(dividendTrackerAddress)
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _29832 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _30147 = mem[_29832 + 32]
                                                                        _30148 = mem[_29832 + 64]
                                                                        mem[mem[64]] = mem[_29832]
                                                                        mem[mem[64] + 64] = _30148
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _30147, _30148, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not ext_call.success:
                                                                if not stor7:
                                                                    require ext_code.size(dividendTrackerAddress)
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _29834 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _30150 = mem[_29834 + 32]
                                                                        _30151 = mem[_29834 + 64]
                                                                        mem[mem[64]] = mem[_29834]
                                                                        mem[mem[64] + 64] = _30151
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _30150, _30151, gasForProcessing, 1, tx.origin);
                                                            else:
                                                                if not stor7:
                                                                    require ext_code.size(dividendTrackerAddress)
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _29960 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _30369 = mem[_29960 + 32]
                                                                        _30370 = mem[_29960 + 64]
                                                                        mem[mem[64]] = mem[_29960]
                                                                        mem[mem[64] + 64] = _30370
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _30369, _30370, gasForProcessing, 1, tx.origin);
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
                                                                            _33106 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _33198 = mem[_33106 + 32]
                                                                            _33199 = mem[_33106 + 64]
                                                                            mem[mem[64]] = mem[_33106]
                                                                            mem[mem[64] + 64] = _33199
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _33198, _33199, gasForProcessing, 1, tx.origin);
                                                                else:
                                                                    if not stor7:
                                                                        require ext_code.size(dividendTrackerAddress)
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _33147 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _33280 = mem[_33147 + 32]
                                                                            _33281 = mem[_33147 + 64]
                                                                            mem[mem[64]] = mem[_33147]
                                                                            mem[mem[64] + 64] = _33281
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _33280, _33281, gasForProcessing, 1, tx.origin);
                                                            else:
                                                                if not ext_call.success:
                                                                    if not stor7:
                                                                        require ext_code.size(dividendTrackerAddress)
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _33149 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _33283 = mem[_33149 + 32]
                                                                            _33284 = mem[_33149 + 64]
                                                                            mem[mem[64]] = mem[_33149]
                                                                            mem[mem[64] + 64] = _33284
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _33283, _33284, gasForProcessing, 1, tx.origin);
                                                                else:
                                                                    if not stor7:
                                                                        require ext_code.size(dividendTrackerAddress)
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _33203 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _33370 = mem[_33203 + 32]
                                                                            _33371 = mem[_33203 + 64]
                                                                            mem[mem[64]] = mem[_33203]
                                                                            mem[mem[64] + 64] = _33371
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _33370, _33371, gasForProcessing, 1, tx.origin);
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
                                                                            _34158 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _34302 = mem[_34158 + 32]
                                                                            _34303 = mem[_34158 + 64]
                                                                            mem[mem[64]] = mem[_34158]
                                                                            mem[mem[64] + 64] = _34303
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _34302, _34303, gasForProcessing, 1, tx.origin);
                                                                else:
                                                                    if not stor7:
                                                                        require ext_code.size(dividendTrackerAddress)
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _34223 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _34390 = mem[_34223 + 32]
                                                                            _34391 = mem[_34223 + 64]
                                                                            mem[mem[64]] = mem[_34223]
                                                                            mem[mem[64] + 64] = _34391
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _34390, _34391, gasForProcessing, 1, tx.origin);
                                                            else:
                                                                if not ext_call.success:
                                                                    if not stor7:
                                                                        require ext_code.size(dividendTrackerAddress)
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _34225 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _34393 = mem[_34225 + 32]
                                                                            _34394 = mem[_34225 + 64]
                                                                            mem[mem[64]] = mem[_34225]
                                                                            mem[mem[64] + 64] = _34394
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _34393, _34394, gasForProcessing, 1, tx.origin);
                                                                else:
                                                                    if not stor7:
                                                                        require ext_code.size(dividendTrackerAddress)
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _34307 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _34472 = mem[_34307 + 32]
                                                                            _34473 = mem[_34307 + 64]
                                                                            mem[mem[64]] = mem[_34307]
                                                                            mem[mem[64] + 64] = _34473
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _34472, _34473, gasForProcessing, 1, tx.origin);
                                        else:
                                            require ext_code.size(dividendTrackerAddress)
                                            call dividendTrackerAddress.distributeCAKEDividends(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _29095
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit SendDividends(balanceOf[this.address], _29095);
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
                                                                _30163 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _30592 = mem[_30163 + 32]
                                                                _30593 = mem[_30163 + 64]
                                                                mem[mem[64]] = mem[_30163]
                                                                mem[mem[64] + 64] = _30593
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _30592, _30593, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _30380 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _30832 = mem[_30380 + 32]
                                                                _30833 = mem[_30380 + 64]
                                                                mem[mem[64]] = mem[_30380]
                                                                mem[mem[64] + 64] = _30833
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _30832, _30833, gasForProcessing, 1, tx.origin);
                                                else:
                                                    if not ext_call.success:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _30382 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _30835 = mem[_30382 + 32]
                                                                _30836 = mem[_30382 + 64]
                                                                mem[mem[64]] = mem[_30382]
                                                                mem[mem[64] + 64] = _30836
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _30835, _30836, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _30597 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _31081 = mem[_30597 + 32]
                                                                _31082 = mem[_30597 + 64]
                                                                mem[mem[64]] = mem[_30597]
                                                                mem[mem[64] + 64] = _31082
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _31081, _31082, gasForProcessing, 1, tx.origin);
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
                                                                    _30391 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _30848 = mem[_30391 + 32]
                                                                    _30849 = mem[_30391 + 64]
                                                                    mem[mem[64]] = mem[_30391]
                                                                    mem[mem[64] + 64] = _30849
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _30848, _30849, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not stor7:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _30611 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _31087 = mem[_30611 + 32]
                                                                    _31088 = mem[_30611 + 64]
                                                                    mem[mem[64]] = mem[_30611]
                                                                    mem[mem[64] + 64] = _31088
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _31087, _31088, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not ext_call.success:
                                                            if not stor7:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _30613 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _31090 = mem[_30613 + 32]
                                                                    _31091 = mem[_30613 + 64]
                                                                    mem[mem[64]] = mem[_30613]
                                                                    mem[mem[64] + 64] = _31091
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _31090, _31091, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not stor7:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _30853 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _31308 = mem[_30853 + 32]
                                                                    _31309 = mem[_30853 + 64]
                                                                    mem[mem[64]] = mem[_30853]
                                                                    mem[mem[64] + 64] = _31309
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _31308, _31309, gasForProcessing, 1, tx.origin);
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
                                                                        _30167 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _30599 = mem[_30167 + 32]
                                                                        _30600 = mem[_30167 + 64]
                                                                        mem[mem[64]] = mem[_30167]
                                                                        mem[mem[64] + 64] = _30600
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _30599, _30600, gasForProcessing, 1, tx.origin);
                                                            else:
                                                                if not stor7:
                                                                    require ext_code.size(dividendTrackerAddress)
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _30385 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _30839 = mem[_30385 + 32]
                                                                        _30840 = mem[_30385 + 64]
                                                                        mem[mem[64]] = mem[_30385]
                                                                        mem[mem[64] + 64] = _30840
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _30839, _30840, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not ext_call.success:
                                                                if not stor7:
                                                                    require ext_code.size(dividendTrackerAddress)
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _30387 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _30842 = mem[_30387 + 32]
                                                                        _30843 = mem[_30387 + 64]
                                                                        mem[mem[64]] = mem[_30387]
                                                                        mem[mem[64] + 64] = _30843
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _30842, _30843, gasForProcessing, 1, tx.origin);
                                                            else:
                                                                if not stor7:
                                                                    require ext_code.size(dividendTrackerAddress)
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _30604 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _31084 = mem[_30604 + 32]
                                                                        _31085 = mem[_30604 + 64]
                                                                        mem[mem[64]] = mem[_30604]
                                                                        mem[mem[64] + 64] = _31085
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _31084, _31085, gasForProcessing, 1, tx.origin);
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
                                                                            _33288 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _33446 = mem[_33288 + 32]
                                                                            _33447 = mem[_33288 + 64]
                                                                            mem[mem[64]] = mem[_33288]
                                                                            mem[mem[64] + 64] = _33447
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _33446, _33447, gasForProcessing, 1, tx.origin);
                                                                else:
                                                                    if not stor7:
                                                                        require ext_code.size(dividendTrackerAddress)
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _33375 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _33535 = mem[_33375 + 32]
                                                                            _33536 = mem[_33375 + 64]
                                                                            mem[mem[64]] = mem[_33375]
                                                                            mem[mem[64] + 64] = _33536
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _33535, _33536, gasForProcessing, 1, tx.origin);
                                                            else:
                                                                if not ext_call.success:
                                                                    if not stor7:
                                                                        require ext_code.size(dividendTrackerAddress)
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _33377 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _33538 = mem[_33377 + 32]
                                                                            _33539 = mem[_33377 + 64]
                                                                            mem[mem[64]] = mem[_33377]
                                                                            mem[mem[64] + 64] = _33539
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _33538, _33539, gasForProcessing, 1, tx.origin);
                                                                else:
                                                                    if not stor7:
                                                                        require ext_code.size(dividendTrackerAddress)
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _33451 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _33623 = mem[_33451 + 32]
                                                                            _33624 = mem[_33451 + 64]
                                                                            mem[mem[64]] = mem[_33451]
                                                                            mem[mem[64] + 64] = _33624
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _33623, _33624, gasForProcessing, 1, tx.origin);
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
                                                                            _34397 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _34545 = mem[_34397 + 32]
                                                                            _34546 = mem[_34397 + 64]
                                                                            mem[mem[64]] = mem[_34397]
                                                                            mem[mem[64] + 64] = _34546
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _34545, _34546, gasForProcessing, 1, tx.origin);
                                                                else:
                                                                    if not stor7:
                                                                        require ext_code.size(dividendTrackerAddress)
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _34476 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _34627 = mem[_34476 + 32]
                                                                            _34628 = mem[_34476 + 64]
                                                                            mem[mem[64]] = mem[_34476]
                                                                            mem[mem[64] + 64] = _34628
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _34627, _34628, gasForProcessing, 1, tx.origin);
                                                            else:
                                                                if not ext_call.success:
                                                                    if not stor7:
                                                                        require ext_code.size(dividendTrackerAddress)
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _34478 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _34630 = mem[_34478 + 32]
                                                                            _34631 = mem[_34478 + 64]
                                                                            mem[mem[64]] = mem[_34478]
                                                                            mem[mem[64] + 64] = _34631
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _34630, _34631, gasForProcessing, 1, tx.origin);
                                                                else:
                                                                    if not stor7:
                                                                        require ext_code.size(dividendTrackerAddress)
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _34550 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _34709 = mem[_34550 + 32]
                                                                            _34710 = mem[_34550 + 64]
                                                                            mem[mem[64]] = mem[_34550]
                                                                            mem[mem[64] + 64] = _34710
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _34709, _34710, gasForProcessing, 1, tx.origin);
            else:
                mem[164] = address(cd[4])
                mem[196] = cd[36]
                require ext_code.size(pinkAntiBotAddress)
                call pinkAntiBotAddress.onPreTransferCheck(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, address(cd[4]), cd[36]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
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
                                        _16440 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _16461 = mem[_16440]
                                        if mem[_16440] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        mem[mem[64] + 4] = _marketingWalletAddress
                                        mem[mem[64] + 36] = _16461 - ext_call.return_data[0]
                                        require ext_code.size(rewardTokenAddress)
                                        call rewardTokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args _marketingWalletAddress, _16461 - ext_call.return_data[0]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _16473 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_16473] == bool(mem[_16473])
                                        if balanceOf[this.address] and liquidityFee > -1 / balanceOf[this.address]:
                                            revert with 0, 17
                                        if not totalFees:
                                            revert with 0, 18
                                        if balanceOf[this.address] * liquidityFee / totalFees < balanceOf[this.address] * liquidityFee / totalFees / 2:
                                            revert with 0, 17
                                        _16484 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        mem[_16484 + 32 len 64] = call.data[calldata.size len 64]
                                        if 0 >= mem[_16484]:
                                            revert with 0, 50
                                        mem[_16484 + 32] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        mem[_16484 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _16484 + ceil32(return_data.size) + 96
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if 1 >= mem[_16484]:
                                            revert with 0, 50
                                        mem[_16484 + 64] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        mem[0] = uniswapV2RouterAddress
                                        mem[32] = sha3(address(this.address), 1)
                                        allowance[address(this.address)][stor6].field_0 = balanceOf[this.address] * liquidityFee / totalFees / 2
                                        allowance[address(this.address)][stor6].field_255 = 0
                                        emit Approval((balanceOf[this.address] * liquidityFee / totalFees / 2), this.address, uniswapV2RouterAddress);
                                        mem[_16484 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                        mem[_16484 + ceil32(return_data.size) + 100] = balanceOf[this.address] * liquidityFee / totalFees / 2
                                        mem[_16484 + ceil32(return_data.size) + 132] = 0
                                        mem[_16484 + ceil32(return_data.size) + 164] = 160
                                        mem[_16484 + ceil32(return_data.size) + 260] = mem[_16484]
                                        idx = 0
                                        s = _16484 + ceil32(return_data.size) + 292
                                        t = _16484 + 32
                                        while idx < mem[_16484]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args Mask(255, 1, balanceOf[this.address] * liquidityFee / totalFees), 0, 160, address(this.address), block.timestamp, mem[_16484 + ceil32(return_data.size) + 260 len (32 * mem[_16484]) + 32]
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
                                        mem[_16484 + ceil32(return_data.size) + 164] = 0
                                        mem[_16484 + ceil32(return_data.size) + 196] = 0
                                        mem[_16484 + ceil32(return_data.size) + 228] = 0
                                        mem[_16484 + ceil32(return_data.size) + 260] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                             gas gas_remaining wei
                                            args this.address, (balanceOf[this.address] * liquidityFee / totalFees) - (balanceOf[this.address] * liquidityFee / totalFees / 2), 0, 0, 0, block.timestamp
                                        mem[_16484 + ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        emit SwapAndLiquify(Mask(255, 1, balanceOf[this.address] * liquidityFee / totalFees), 0, (balanceOf[this.address] * liquidityFee / totalFees) - (balanceOf[this.address] * liquidityFee / totalFees / 2));
                                        mem[_16484 + (2 * ceil32(return_data.size)) + 96] = 3
                                        mem[_16484 + (2 * ceil32(return_data.size)) + 128] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        mem[_16484 + (2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _16484 + (4 * ceil32(return_data.size)) + 224
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[_16484 + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                                        mem[_16484 + (2 * ceil32(return_data.size)) + 192] = rewardTokenAddress
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        mem[0] = uniswapV2RouterAddress
                                        mem[32] = sha3(address(this.address), 1)
                                        allowance[address(this.address)][stor6].field_0 = balanceOf[this.address]
                                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                        mem[_16484 + (4 * ceil32(return_data.size)) + 224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                        mem[_16484 + (4 * ceil32(return_data.size)) + 228] = balanceOf[this.address]
                                        mem[_16484 + (4 * ceil32(return_data.size)) + 260] = 0
                                        mem[_16484 + (4 * ceil32(return_data.size)) + 292] = 160
                                        mem[_16484 + (4 * ceil32(return_data.size)) + 388] = 3
                                        idx = 0
                                        s = _16484 + (4 * ceil32(return_data.size)) + 420
                                        t = _16484 + (2 * ceil32(return_data.size)) + 128
                                        while idx < mem[_16484 + (2 * ceil32(return_data.size)) + 96]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_16484 + (4 * ceil32(return_data.size)) + 324] = this.address
                                        mem[_16484 + (4 * ceil32(return_data.size)) + 356] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _16484 + (4 * ceil32(return_data.size)) + (32 * mem[_16484 + (2 * ceil32(return_data.size)) + 96]) + -mem[64] + 416]
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
                                        _29092 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _29096 = mem[_29092]
                                        mem[mem[64] + 4] = dividendTrackerAddress
                                        mem[mem[64] + 36] = _29096
                                        require ext_code.size(rewardTokenAddress)
                                        call rewardTokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args dividendTrackerAddress, _29096
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _29108 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_29108] == bool(mem[_29108])
                                        if not mem[_29108]:
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
                                                                _29755 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _29981 = mem[_29755 + 32]
                                                                _29982 = mem[_29755 + 64]
                                                                mem[mem[64]] = mem[_29755]
                                                                mem[mem[64] + 64] = _29982
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _29981, _29982, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _29847 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _30176 = mem[_29847 + 32]
                                                                _30177 = mem[_29847 + 64]
                                                                mem[mem[64]] = mem[_29847]
                                                                mem[mem[64] + 64] = _30177
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _30176, _30177, gasForProcessing, 1, tx.origin);
                                                else:
                                                    if not ext_call.success:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _29849 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _30179 = mem[_29849 + 32]
                                                                _30180 = mem[_29849 + 64]
                                                                mem[mem[64]] = mem[_29849]
                                                                mem[mem[64] + 64] = _30180
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _30179, _30180, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _29986 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _30395 = mem[_29986 + 32]
                                                                _30396 = mem[_29986 + 64]
                                                                mem[mem[64]] = mem[_29986]
                                                                mem[mem[64] + 64] = _30396
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _30395, _30396, gasForProcessing, 1, tx.origin);
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
                                                                    _29858 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _30192 = mem[_29858 + 32]
                                                                    _30193 = mem[_29858 + 64]
                                                                    mem[mem[64]] = mem[_29858]
                                                                    mem[mem[64] + 64] = _30193
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _30192, _30193, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not stor7:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _30000 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _30401 = mem[_30000 + 32]
                                                                    _30402 = mem[_30000 + 64]
                                                                    mem[mem[64]] = mem[_30000]
                                                                    mem[mem[64] + 64] = _30402
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _30401, _30402, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not ext_call.success:
                                                            if not stor7:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _30002 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _30404 = mem[_30002 + 32]
                                                                    _30405 = mem[_30002 + 64]
                                                                    mem[mem[64]] = mem[_30002]
                                                                    mem[mem[64] + 64] = _30405
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _30404, _30405, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not stor7:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _30197 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _30622 = mem[_30197 + 32]
                                                                    _30623 = mem[_30197 + 64]
                                                                    mem[mem[64]] = mem[_30197]
                                                                    mem[mem[64] + 64] = _30623
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _30622, _30623, gasForProcessing, 1, tx.origin);
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
                                                                        _29759 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _29988 = mem[_29759 + 32]
                                                                        _29989 = mem[_29759 + 64]
                                                                        mem[mem[64]] = mem[_29759]
                                                                        mem[mem[64] + 64] = _29989
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _29988, _29989, gasForProcessing, 1, tx.origin);
                                                            else:
                                                                if not stor7:
                                                                    require ext_code.size(dividendTrackerAddress)
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _29852 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _30183 = mem[_29852 + 32]
                                                                        _30184 = mem[_29852 + 64]
                                                                        mem[mem[64]] = mem[_29852]
                                                                        mem[mem[64] + 64] = _30184
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _30183, _30184, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not ext_call.success:
                                                                if not stor7:
                                                                    require ext_code.size(dividendTrackerAddress)
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _29854 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _30186 = mem[_29854 + 32]
                                                                        _30187 = mem[_29854 + 64]
                                                                        mem[mem[64]] = mem[_29854]
                                                                        mem[mem[64] + 64] = _30187
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _30186, _30187, gasForProcessing, 1, tx.origin);
                                                            else:
                                                                if not stor7:
                                                                    require ext_code.size(dividendTrackerAddress)
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _29993 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _30398 = mem[_29993 + 32]
                                                                        _30399 = mem[_29993 + 64]
                                                                        mem[mem[64]] = mem[_29993]
                                                                        mem[mem[64] + 64] = _30399
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _30398, _30399, gasForProcessing, 1, tx.origin);
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
                                                                            _33114 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _33211 = mem[_33114 + 32]
                                                                            _33212 = mem[_33114 + 64]
                                                                            mem[mem[64]] = mem[_33114]
                                                                            mem[mem[64] + 64] = _33212
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _33211, _33212, gasForProcessing, 1, tx.origin);
                                                                else:
                                                                    if not stor7:
                                                                        require ext_code.size(dividendTrackerAddress)
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _33157 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _33296 = mem[_33157 + 32]
                                                                            _33297 = mem[_33157 + 64]
                                                                            mem[mem[64]] = mem[_33157]
                                                                            mem[mem[64] + 64] = _33297
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _33296, _33297, gasForProcessing, 1, tx.origin);
                                                            else:
                                                                if not ext_call.success:
                                                                    if not stor7:
                                                                        require ext_code.size(dividendTrackerAddress)
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _33159 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _33299 = mem[_33159 + 32]
                                                                            _33300 = mem[_33159 + 64]
                                                                            mem[mem[64]] = mem[_33159]
                                                                            mem[mem[64] + 64] = _33300
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _33299, _33300, gasForProcessing, 1, tx.origin);
                                                                else:
                                                                    if not stor7:
                                                                        require ext_code.size(dividendTrackerAddress)
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _33216 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _33381 = mem[_33216 + 32]
                                                                            _33382 = mem[_33216 + 64]
                                                                            mem[mem[64]] = mem[_33216]
                                                                            mem[mem[64] + 64] = _33382
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _33381, _33382, gasForProcessing, 1, tx.origin);
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
                                                                            _34165 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _34313 = mem[_34165 + 32]
                                                                            _34314 = mem[_34165 + 64]
                                                                            mem[mem[64]] = mem[_34165]
                                                                            mem[mem[64] + 64] = _34314
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _34313, _34314, gasForProcessing, 1, tx.origin);
                                                                else:
                                                                    if not stor7:
                                                                        require ext_code.size(dividendTrackerAddress)
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _34231 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _34401 = mem[_34231 + 32]
                                                                            _34402 = mem[_34231 + 64]
                                                                            mem[mem[64]] = mem[_34231]
                                                                            mem[mem[64] + 64] = _34402
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _34401, _34402, gasForProcessing, 1, tx.origin);
                                                            else:
                                                                if not ext_call.success:
                                                                    if not stor7:
                                                                        require ext_code.size(dividendTrackerAddress)
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _34233 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _34404 = mem[_34233 + 32]
                                                                            _34405 = mem[_34233 + 64]
                                                                            mem[mem[64]] = mem[_34233]
                                                                            mem[mem[64] + 64] = _34405
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _34404, _34405, gasForProcessing, 1, tx.origin);
                                                                else:
                                                                    if not stor7:
                                                                        require ext_code.size(dividendTrackerAddress)
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _34318 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _34480 = mem[_34318 + 32]
                                                                            _34481 = mem[_34318 + 64]
                                                                            mem[mem[64]] = mem[_34318]
                                                                            mem[mem[64] + 64] = _34481
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _34480, _34481, gasForProcessing, 1, tx.origin);
                                        else:
                                            require ext_code.size(dividendTrackerAddress)
                                            call dividendTrackerAddress.distributeCAKEDividends(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _29096
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit SendDividends(balanceOf[this.address], _29096);
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
                                                                _30199 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _30625 = mem[_30199 + 32]
                                                                _30626 = mem[_30199 + 64]
                                                                mem[mem[64]] = mem[_30199]
                                                                mem[mem[64] + 64] = _30626
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _30625, _30626, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _30409 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _30873 = mem[_30409 + 32]
                                                                _30874 = mem[_30409 + 64]
                                                                mem[mem[64]] = mem[_30409]
                                                                mem[mem[64] + 64] = _30874
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _30873, _30874, gasForProcessing, 1, tx.origin);
                                                else:
                                                    if not ext_call.success:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _30411 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _30876 = mem[_30411 + 32]
                                                                _30877 = mem[_30411 + 64]
                                                                mem[mem[64]] = mem[_30411]
                                                                mem[mem[64] + 64] = _30877
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _30876, _30877, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _30630 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _31111 = mem[_30630 + 32]
                                                                _31112 = mem[_30630 + 64]
                                                                mem[mem[64]] = mem[_30630]
                                                                mem[mem[64] + 64] = _31112
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _31111, _31112, gasForProcessing, 1, tx.origin);
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
                                                                    _30420 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _30889 = mem[_30420 + 32]
                                                                    _30890 = mem[_30420 + 64]
                                                                    mem[mem[64]] = mem[_30420]
                                                                    mem[mem[64] + 64] = _30890
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _30889, _30890, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not stor7:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _30644 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _31117 = mem[_30644 + 32]
                                                                    _31118 = mem[_30644 + 64]
                                                                    mem[mem[64]] = mem[_30644]
                                                                    mem[mem[64] + 64] = _31118
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _31117, _31118, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not ext_call.success:
                                                            if not stor7:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _30646 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _31120 = mem[_30646 + 32]
                                                                    _31121 = mem[_30646 + 64]
                                                                    mem[mem[64]] = mem[_30646]
                                                                    mem[mem[64] + 64] = _31121
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _31120, _31121, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not stor7:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _30894 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _31325 = mem[_30894 + 32]
                                                                    _31326 = mem[_30894 + 64]
                                                                    mem[mem[64]] = mem[_30894]
                                                                    mem[mem[64] + 64] = _31326
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _31325, _31326, gasForProcessing, 1, tx.origin);
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
                                                                        _30203 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _30632 = mem[_30203 + 32]
                                                                        _30633 = mem[_30203 + 64]
                                                                        mem[mem[64]] = mem[_30203]
                                                                        mem[mem[64] + 64] = _30633
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _30632, _30633, gasForProcessing, 1, tx.origin);
                                                            else:
                                                                if not stor7:
                                                                    require ext_code.size(dividendTrackerAddress)
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _30414 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _30880 = mem[_30414 + 32]
                                                                        _30881 = mem[_30414 + 64]
                                                                        mem[mem[64]] = mem[_30414]
                                                                        mem[mem[64] + 64] = _30881
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _30880, _30881, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not ext_call.success:
                                                                if not stor7:
                                                                    require ext_code.size(dividendTrackerAddress)
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _30416 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _30883 = mem[_30416 + 32]
                                                                        _30884 = mem[_30416 + 64]
                                                                        mem[mem[64]] = mem[_30416]
                                                                        mem[mem[64] + 64] = _30884
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _30883, _30884, gasForProcessing, 1, tx.origin);
                                                            else:
                                                                if not stor7:
                                                                    require ext_code.size(dividendTrackerAddress)
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _30637 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _31114 = mem[_30637 + 32]
                                                                        _31115 = mem[_30637 + 64]
                                                                        mem[mem[64]] = mem[_30637]
                                                                        mem[mem[64] + 64] = _31115
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _31114, _31115, gasForProcessing, 1, tx.origin);
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
                                                                            _33304 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _33457 = mem[_33304 + 32]
                                                                            _33458 = mem[_33304 + 64]
                                                                            mem[mem[64]] = mem[_33304]
                                                                            mem[mem[64] + 64] = _33458
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _33457, _33458, gasForProcessing, 1, tx.origin);
                                                                else:
                                                                    if not stor7:
                                                                        require ext_code.size(dividendTrackerAddress)
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _33386 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _33552 = mem[_33386 + 32]
                                                                            _33553 = mem[_33386 + 64]
                                                                            mem[mem[64]] = mem[_33386]
                                                                            mem[mem[64] + 64] = _33553
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _33552, _33553, gasForProcessing, 1, tx.origin);
                                                            else:
                                                                if not ext_call.success:
                                                                    if not stor7:
                                                                        require ext_code.size(dividendTrackerAddress)
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _33388 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _33555 = mem[_33388 + 32]
                                                                            _33556 = mem[_33388 + 64]
                                                                            mem[mem[64]] = mem[_33388]
                                                                            mem[mem[64] + 64] = _33556
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _33555, _33556, gasForProcessing, 1, tx.origin);
                                                                else:
                                                                    if not stor7:
                                                                        require ext_code.size(dividendTrackerAddress)
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _33462 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _33632 = mem[_33462 + 32]
                                                                            _33633 = mem[_33462 + 64]
                                                                            mem[mem[64]] = mem[_33462]
                                                                            mem[mem[64] + 64] = _33633
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _33632, _33633, gasForProcessing, 1, tx.origin);
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
                                                                            _34408 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _34555 = mem[_34408 + 32]
                                                                            _34556 = mem[_34408 + 64]
                                                                            mem[mem[64]] = mem[_34408]
                                                                            mem[mem[64] + 64] = _34556
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _34555, _34556, gasForProcessing, 1, tx.origin);
                                                                else:
                                                                    if not stor7:
                                                                        require ext_code.size(dividendTrackerAddress)
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _34484 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _34641 = mem[_34484 + 32]
                                                                            _34642 = mem[_34484 + 64]
                                                                            mem[mem[64]] = mem[_34484]
                                                                            mem[mem[64] + 64] = _34642
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _34641, _34642, gasForProcessing, 1, tx.origin);
                                                            else:
                                                                if not ext_call.success:
                                                                    if not stor7:
                                                                        require ext_code.size(dividendTrackerAddress)
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _34486 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _34644 = mem[_34486 + 32]
                                                                            _34645 = mem[_34486 + 64]
                                                                            mem[mem[64]] = mem[_34486]
                                                                            mem[mem[64] + 64] = _34645
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _34644, _34645, gasForProcessing, 1, tx.origin);
                                                                else:
                                                                    if not stor7:
                                                                        require ext_code.size(dividendTrackerAddress)
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _34560 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _34717 = mem[_34560 + 32]
                                                                            _34718 = mem[_34560 + 64]
                                                                            mem[mem[64]] = mem[_34560]
                                                                            mem[mem[64] + 64] = _34718
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _34717, _34718, gasForProcessing, 1, tx.origin);
    else:
        if unknown_0x407133d2(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x625e764c(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x4e71d92d(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0x407133d2(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return pinkAntiBotAddress
                    if unknown_0x4144d9e4(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return _marketingWalletAddress
                    require unknown_0x49bd5a5e(?????) == uint32(call.func_hash) >> 224
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
                    if uint32(call.func_hash) >> 224 != unknown_0x4ed080c7(?????):
                        if unknown_0x4fbee193(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == address(cd[4])
                            return bool(stor17[address(cd[4])])
                        require unknown_0x5d098b38(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        _marketingWalletAddress = address(cd[4])
                    else:
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
                if unknown_0x6843cd84(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0x6843cd84(?????) == uint32(call.func_hash) >> 224:
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
                    if unknown_0x6b67c4df(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return marketingFee
                    if uint32(call.func_hash) >> 224 != unknown_0x700bb191(?????):
                        require unknown_0x70a08231(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        return balanceOf[address(cd[4])]
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
                    if unknown_0x625e764c(?????) == uint32(call.func_hash) >> 224:
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
                        if unknown_0x64b0f653(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require ext_code.size(dividendTrackerAddress)
                            staticcall dividendTrackerAddress.getNumberOfTokenHolders() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            return ext_call.return_data[0]
                        require unknown_0x65b8dbc0(?????) == uint32(call.func_hash) >> 224
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
            if unknown_0x13114a9d(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x13114a9d(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return totalFees
                if unknown_0x1694505e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return uniswapV2RouterAddress
                if unknown_0x18160ddd(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return totalSupply
                require unknown_0x1f46b1c6(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == bool(cd[4])
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                stor19 = Mask(96, 0, bool(cd[4]))
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
                require updateMinimumTokenBalanceForDividends(uint256 arg1) == uint32(call.func_hash) >> 224
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
        if unknown_0x30bb4cff(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x30bb4cff(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require ext_code.size(dividendTrackerAddress)
                staticcall dividendTrackerAddress.totalDividendsDistributed() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                return ext_call.return_data[0]
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
            require unknown_0x39509351(?????) == uint32(call.func_hash) >> 224
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
                if unknown_0x241ec3be(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return bool(enableAntiBot)
                require unknown_0x2c1f5216(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return dividendTrackerAddress
            require not msg.value
            require calldata.size - 4 >= 96
            require cd[4] == address(cd[4])
            require cd[36] == address(cd[36])
            if not address(cd[4]):
                revert with 0, 'ERC20: transfer from the zero address'
            if not address(cd[36]):
                revert with 0, 'ERC20: transfer to the zero address'
            if not enableAntiBot:
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
                                        _16437 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _16454 = mem[_16437]
                                        if mem[_16437] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        mem[mem[64] + 4] = _marketingWalletAddress
                                        mem[mem[64] + 36] = _16454 - ext_call.return_data[0]
                                        require ext_code.size(rewardTokenAddress)
                                        call rewardTokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args _marketingWalletAddress, _16454 - ext_call.return_data[0]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _16470 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_16470] == bool(mem[_16470])
                                        if balanceOf[this.address] and liquidityFee > -1 / balanceOf[this.address]:
                                            revert with 0, 17
                                        if not totalFees:
                                            revert with 0, 18
                                        if balanceOf[this.address] * liquidityFee / totalFees < balanceOf[this.address] * liquidityFee / totalFees / 2:
                                            revert with 0, 17
                                        _16478 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        mem[_16478 + 32 len 64] = call.data[calldata.size len 64]
                                        if 0 >= mem[_16478]:
                                            revert with 0, 50
                                        mem[_16478 + 32] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        mem[_16478 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _16478 + ceil32(return_data.size) + 96
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if 1 >= mem[_16478]:
                                            revert with 0, 50
                                        mem[_16478 + 64] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        mem[0] = uniswapV2RouterAddress
                                        mem[32] = sha3(address(this.address), 1)
                                        allowance[address(this.address)][stor6].field_0 = balanceOf[this.address] * liquidityFee / totalFees / 2
                                        allowance[address(this.address)][stor6].field_255 = 0
                                        emit Approval((balanceOf[this.address] * liquidityFee / totalFees / 2), this.address, uniswapV2RouterAddress);
                                        mem[_16478 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                        mem[_16478 + ceil32(return_data.size) + 100] = balanceOf[this.address] * liquidityFee / totalFees / 2
                                        mem[_16478 + ceil32(return_data.size) + 132] = 0
                                        mem[_16478 + ceil32(return_data.size) + 164] = 160
                                        mem[_16478 + ceil32(return_data.size) + 260] = mem[_16478]
                                        idx = 0
                                        s = _16478 + ceil32(return_data.size) + 292
                                        t = _16478 + 32
                                        while idx < mem[_16478]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args Mask(255, 1, balanceOf[this.address] * liquidityFee / totalFees), 0, 160, address(this.address), block.timestamp, mem[_16478 + ceil32(return_data.size) + 260 len (32 * mem[_16478]) + 32]
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
                                        mem[_16478 + ceil32(return_data.size) + 164] = 0
                                        mem[_16478 + ceil32(return_data.size) + 196] = 0
                                        mem[_16478 + ceil32(return_data.size) + 228] = 0
                                        mem[_16478 + ceil32(return_data.size) + 260] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                             gas gas_remaining wei
                                            args this.address, (balanceOf[this.address] * liquidityFee / totalFees) - (balanceOf[this.address] * liquidityFee / totalFees / 2), 0, 0, 0, block.timestamp
                                        mem[_16478 + ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        emit SwapAndLiquify(Mask(255, 1, balanceOf[this.address] * liquidityFee / totalFees), 0, (balanceOf[this.address] * liquidityFee / totalFees) - (balanceOf[this.address] * liquidityFee / totalFees / 2));
                                        mem[_16478 + (2 * ceil32(return_data.size)) + 96] = 3
                                        mem[_16478 + (2 * ceil32(return_data.size)) + 128] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        mem[_16478 + (2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _16478 + (4 * ceil32(return_data.size)) + 224
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[_16478 + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                                        mem[_16478 + (2 * ceil32(return_data.size)) + 192] = rewardTokenAddress
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        mem[0] = uniswapV2RouterAddress
                                        mem[32] = sha3(address(this.address), 1)
                                        allowance[address(this.address)][stor6].field_0 = balanceOf[this.address]
                                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                        mem[_16478 + (4 * ceil32(return_data.size)) + 224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                        mem[_16478 + (4 * ceil32(return_data.size)) + 228] = balanceOf[this.address]
                                        mem[_16478 + (4 * ceil32(return_data.size)) + 260] = 0
                                        mem[_16478 + (4 * ceil32(return_data.size)) + 292] = 160
                                        mem[_16478 + (4 * ceil32(return_data.size)) + 388] = 3
                                        idx = 0
                                        s = _16478 + (4 * ceil32(return_data.size)) + 420
                                        t = _16478 + (2 * ceil32(return_data.size)) + 128
                                        while idx < mem[_16478 + (2 * ceil32(return_data.size)) + 96]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_16478 + (4 * ceil32(return_data.size)) + 324] = this.address
                                        mem[_16478 + (4 * ceil32(return_data.size)) + 356] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _16478 + (4 * ceil32(return_data.size)) + (32 * mem[_16478 + (2 * ceil32(return_data.size)) + 96]) + -mem[64] + 416]
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
                                        _29089 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _29093 = mem[_29089]
                                        mem[mem[64] + 4] = dividendTrackerAddress
                                        mem[mem[64] + 36] = _29093
                                        require ext_code.size(rewardTokenAddress)
                                        call rewardTokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args dividendTrackerAddress, _29093
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _29105 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_29105] == bool(mem[_29105])
                                        if not mem[_29105]:
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
                                                                _29690 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _29867 = mem[_29690 + 32]
                                                                _29868 = mem[_29690 + 64]
                                                                mem[mem[64]] = mem[_29690]
                                                                mem[mem[64] + 64] = _29868
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _29867, _29868, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _29771 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _30021 = mem[_29771 + 32]
                                                                _30022 = mem[_29771 + 64]
                                                                mem[mem[64]] = mem[_29771]
                                                                mem[mem[64] + 64] = _30022
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _30021, _30022, gasForProcessing, 1, tx.origin);
                                                else:
                                                    if not ext_call.success:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _29773 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _30025 = mem[_29773 + 32]
                                                                _30026 = mem[_29773 + 64]
                                                                mem[mem[64]] = mem[_29773]
                                                                mem[mem[64] + 64] = _30026
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _30025, _30026, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _29872 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _30228 = mem[_29872 + 32]
                                                                _30229 = mem[_29872 + 64]
                                                                mem[mem[64]] = mem[_29872]
                                                                mem[mem[64] + 64] = _30229
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _30228, _30229, gasForProcessing, 1, tx.origin);
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
                                                                    _29786 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _30047 = mem[_29786 + 32]
                                                                    _30048 = mem[_29786 + 64]
                                                                    mem[mem[64]] = mem[_29786]
                                                                    mem[mem[64] + 64] = _30048
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _30047, _30048, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not stor7:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _29887 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _30257 = mem[_29887 + 32]
                                                                    _30258 = mem[_29887 + 64]
                                                                    mem[mem[64]] = mem[_29887]
                                                                    mem[mem[64] + 64] = _30258
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _30257, _30258, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not ext_call.success:
                                                            if not stor7:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _29889 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _30261 = mem[_29889 + 32]
                                                                    _30262 = mem[_29889 + 64]
                                                                    mem[mem[64]] = mem[_29889]
                                                                    mem[mem[64] + 64] = _30262
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _30261, _30262, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not stor7:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _30052 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _30473 = mem[_30052 + 32]
                                                                    _30474 = mem[_30052 + 64]
                                                                    mem[mem[64]] = mem[_30052]
                                                                    mem[mem[64] + 64] = _30474
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _30473, _30474, gasForProcessing, 1, tx.origin);
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
                                                                        _29698 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _29875 = mem[_29698 + 32]
                                                                        _29876 = mem[_29698 + 64]
                                                                        mem[mem[64]] = mem[_29698]
                                                                        mem[mem[64] + 64] = _29876
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _29875, _29876, gasForProcessing, 1, tx.origin);
                                                            else:
                                                                if not stor7:
                                                                    require ext_code.size(dividendTrackerAddress)
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _29778 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _30036 = mem[_29778 + 32]
                                                                        _30037 = mem[_29778 + 64]
                                                                        mem[mem[64]] = mem[_29778]
                                                                        mem[mem[64] + 64] = _30037
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _30036, _30037, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not ext_call.success:
                                                                if not stor7:
                                                                    require ext_code.size(dividendTrackerAddress)
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _29780 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _30040 = mem[_29780 + 32]
                                                                        _30041 = mem[_29780 + 64]
                                                                        mem[mem[64]] = mem[_29780]
                                                                        mem[mem[64] + 64] = _30041
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _30040, _30041, gasForProcessing, 1, tx.origin);
                                                            else:
                                                                if not stor7:
                                                                    require ext_code.size(dividendTrackerAddress)
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _29880 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _30247 = mem[_29880 + 32]
                                                                        _30248 = mem[_29880 + 64]
                                                                        mem[mem[64]] = mem[_29880]
                                                                        mem[mem[64] + 64] = _30248
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _30247, _30248, gasForProcessing, 1, tx.origin);
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
                                                                            _33082 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _33167 = mem[_33082 + 32]
                                                                            _33168 = mem[_33082 + 64]
                                                                            mem[mem[64]] = mem[_33082]
                                                                            mem[mem[64] + 64] = _33168
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _33167, _33168, gasForProcessing, 1, tx.origin);
                                                                else:
                                                                    if not stor7:
                                                                        require ext_code.size(dividendTrackerAddress)
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _33123 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _33231 = mem[_33123 + 32]
                                                                            _33232 = mem[_33123 + 64]
                                                                            mem[mem[64]] = mem[_33123]
                                                                            mem[mem[64] + 64] = _33232
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _33231, _33232, gasForProcessing, 1, tx.origin);
                                                            else:
                                                                if not ext_call.success:
                                                                    if not stor7:
                                                                        require ext_code.size(dividendTrackerAddress)
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _33125 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _33235 = mem[_33125 + 32]
                                                                            _33236 = mem[_33125 + 64]
                                                                            mem[mem[64]] = mem[_33125]
                                                                            mem[mem[64] + 64] = _33236
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _33235, _33236, gasForProcessing, 1, tx.origin);
                                                                else:
                                                                    if not stor7:
                                                                        require ext_code.size(dividendTrackerAddress)
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _33172 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _33328 = mem[_33172 + 32]
                                                                            _33329 = mem[_33172 + 64]
                                                                            mem[mem[64]] = mem[_33172]
                                                                            mem[mem[64] + 64] = _33329
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _33328, _33329, gasForProcessing, 1, tx.origin);
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
                                                                            _34117 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _34242 = mem[_34117 + 32]
                                                                            _34243 = mem[_34117 + 64]
                                                                            mem[mem[64]] = mem[_34117]
                                                                            mem[mem[64] + 64] = _34243
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _34242, _34243, gasForProcessing, 1, tx.origin);
                                                                else:
                                                                    if not stor7:
                                                                        require ext_code.size(dividendTrackerAddress)
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _34177 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _34332 = mem[_34177 + 32]
                                                                            _34333 = mem[_34177 + 64]
                                                                            mem[mem[64]] = mem[_34177]
                                                                            mem[mem[64] + 64] = _34333
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _34332, _34333, gasForProcessing, 1, tx.origin);
                                                            else:
                                                                if not ext_call.success:
                                                                    if not stor7:
                                                                        require ext_code.size(dividendTrackerAddress)
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _34179 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _34336 = mem[_34179 + 32]
                                                                            _34337 = mem[_34179 + 64]
                                                                            mem[mem[64]] = mem[_34179]
                                                                            mem[mem[64] + 64] = _34337
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _34336, _34337, gasForProcessing, 1, tx.origin);
                                                                else:
                                                                    if not stor7:
                                                                        require ext_code.size(dividendTrackerAddress)
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _34247 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _34428 = mem[_34247 + 32]
                                                                            _34429 = mem[_34247 + 64]
                                                                            mem[mem[64]] = mem[_34247]
                                                                            mem[mem[64] + 64] = _34429
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _34428, _34429, gasForProcessing, 1, tx.origin);
                                        else:
                                            require ext_code.size(dividendTrackerAddress)
                                            call dividendTrackerAddress.distributeCAKEDividends(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _29093
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit SendDividends(balanceOf[this.address], _29093);
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
                                                                _30054 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _30477 = mem[_30054 + 32]
                                                                _30478 = mem[_30054 + 64]
                                                                mem[mem[64]] = mem[_30054]
                                                                mem[mem[64] + 64] = _30478
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _30477, _30478, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _30266 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _30698 = mem[_30266 + 32]
                                                                _30699 = mem[_30266 + 64]
                                                                mem[mem[64]] = mem[_30266]
                                                                mem[mem[64] + 64] = _30699
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _30698, _30699, gasForProcessing, 1, tx.origin);
                                                else:
                                                    if not ext_call.success:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _30268 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _30702 = mem[_30268 + 32]
                                                                _30703 = mem[_30268 + 64]
                                                                mem[mem[64]] = mem[_30268]
                                                                mem[mem[64] + 64] = _30703
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _30702, _30703, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _30482 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _30943 = mem[_30482 + 32]
                                                                _30944 = mem[_30482 + 64]
                                                                mem[mem[64]] = mem[_30482]
                                                                mem[mem[64] + 64] = _30944
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _30943, _30944, gasForProcessing, 1, tx.origin);
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
                                                                    _30281 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _30724 = mem[_30281 + 32]
                                                                    _30725 = mem[_30281 + 64]
                                                                    mem[mem[64]] = mem[_30281]
                                                                    mem[mem[64] + 64] = _30725
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _30724, _30725, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not stor7:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _30497 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _30972 = mem[_30497 + 32]
                                                                    _30973 = mem[_30497 + 64]
                                                                    mem[mem[64]] = mem[_30497]
                                                                    mem[mem[64] + 64] = _30973
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _30972, _30973, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not ext_call.success:
                                                            if not stor7:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _30499 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _30976 = mem[_30499 + 32]
                                                                    _30977 = mem[_30499 + 64]
                                                                    mem[mem[64]] = mem[_30499]
                                                                    mem[mem[64] + 64] = _30977
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _30976, _30977, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not stor7:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _30729 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _31206 = mem[_30729 + 32]
                                                                    _31207 = mem[_30729 + 64]
                                                                    mem[mem[64]] = mem[_30729]
                                                                    mem[mem[64] + 64] = _31207
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _31206, _31207, gasForProcessing, 1, tx.origin);
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
                                                                        _30062 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _30485 = mem[_30062 + 32]
                                                                        _30486 = mem[_30062 + 64]
                                                                        mem[mem[64]] = mem[_30062]
                                                                        mem[mem[64] + 64] = _30486
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _30485, _30486, gasForProcessing, 1, tx.origin);
                                                            else:
                                                                if not stor7:
                                                                    require ext_code.size(dividendTrackerAddress)
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _30273 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _30713 = mem[_30273 + 32]
                                                                        _30714 = mem[_30273 + 64]
                                                                        mem[mem[64]] = mem[_30273]
                                                                        mem[mem[64] + 64] = _30714
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _30713, _30714, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not ext_call.success:
                                                                if not stor7:
                                                                    require ext_code.size(dividendTrackerAddress)
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _30275 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _30717 = mem[_30275 + 32]
                                                                        _30718 = mem[_30275 + 64]
                                                                        mem[mem[64]] = mem[_30275]
                                                                        mem[mem[64] + 64] = _30718
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _30717, _30718, gasForProcessing, 1, tx.origin);
                                                            else:
                                                                if not stor7:
                                                                    require ext_code.size(dividendTrackerAddress)
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _30490 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _30962 = mem[_30490 + 32]
                                                                        _30963 = mem[_30490 + 64]
                                                                        mem[mem[64]] = mem[_30490]
                                                                        mem[mem[64] + 64] = _30963
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _30962, _30963, gasForProcessing, 1, tx.origin);
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
                                                                            _33240 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _33410 = mem[_33240 + 32]
                                                                            _33411 = mem[_33240 + 64]
                                                                            mem[mem[64]] = mem[_33240]
                                                                            mem[mem[64] + 64] = _33411
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _33410, _33411, gasForProcessing, 1, tx.origin);
                                                                else:
                                                                    if not stor7:
                                                                        require ext_code.size(dividendTrackerAddress)
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _33333 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _33486 = mem[_33333 + 32]
                                                                            _33487 = mem[_33333 + 64]
                                                                            mem[mem[64]] = mem[_33333]
                                                                            mem[mem[64] + 64] = _33487
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _33486, _33487, gasForProcessing, 1, tx.origin);
                                                            else:
                                                                if not ext_call.success:
                                                                    if not stor7:
                                                                        require ext_code.size(dividendTrackerAddress)
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _33335 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _33490 = mem[_33335 + 32]
                                                                            _33491 = mem[_33335 + 64]
                                                                            mem[mem[64]] = mem[_33335]
                                                                            mem[mem[64] + 64] = _33491
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _33490, _33491, gasForProcessing, 1, tx.origin);
                                                                else:
                                                                    if not stor7:
                                                                        require ext_code.size(dividendTrackerAddress)
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _33415 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _33585 = mem[_33415 + 32]
                                                                            _33586 = mem[_33415 + 64]
                                                                            mem[mem[64]] = mem[_33415]
                                                                            mem[mem[64] + 64] = _33586
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _33585, _33586, gasForProcessing, 1, tx.origin);
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
                                                                            _34349 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _34508 = mem[_34349 + 32]
                                                                            _34509 = mem[_34349 + 64]
                                                                            mem[mem[64]] = mem[_34349]
                                                                            mem[mem[64] + 64] = _34509
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _34508, _34509, gasForProcessing, 1, tx.origin);
                                                                else:
                                                                    if not stor7:
                                                                        require ext_code.size(dividendTrackerAddress)
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _34436 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _34583 = mem[_34436 + 32]
                                                                            _34584 = mem[_34436 + 64]
                                                                            mem[mem[64]] = mem[_34436]
                                                                            mem[mem[64] + 64] = _34584
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _34583, _34584, gasForProcessing, 1, tx.origin);
                                                            else:
                                                                if not ext_call.success:
                                                                    if not stor7:
                                                                        require ext_code.size(dividendTrackerAddress)
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _34438 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _34587 = mem[_34438 + 32]
                                                                            _34588 = mem[_34438 + 64]
                                                                            mem[mem[64]] = mem[_34438]
                                                                            mem[mem[64] + 64] = _34588
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _34587, _34588, gasForProcessing, 1, tx.origin);
                                                                else:
                                                                    if not stor7:
                                                                        require ext_code.size(dividendTrackerAddress)
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _34513 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _34673 = mem[_34513 + 32]
                                                                            _34674 = mem[_34513 + 64]
                                                                            mem[mem[64]] = mem[_34513]
                                                                            mem[mem[64] + 64] = _34674
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _34673, _34674, gasForProcessing, 1, tx.origin);
            else:
                mem[164] = address(cd[36])
                mem[196] = cd[68]
                require ext_code.size(pinkAntiBotAddress)
                call pinkAntiBotAddress.onPreTransferCheck(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(cd[4]), address(cd[36]), cd[68]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
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
                                        _16438 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _16455 = mem[_16438]
                                        if mem[_16438] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        mem[mem[64] + 4] = _marketingWalletAddress
                                        mem[mem[64] + 36] = _16455 - ext_call.return_data[0]
                                        require ext_code.size(rewardTokenAddress)
                                        call rewardTokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args _marketingWalletAddress, _16455 - ext_call.return_data[0]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _16471 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_16471] == bool(mem[_16471])
                                        if balanceOf[this.address] and liquidityFee > -1 / balanceOf[this.address]:
                                            revert with 0, 17
                                        if not totalFees:
                                            revert with 0, 18
                                        if balanceOf[this.address] * liquidityFee / totalFees < balanceOf[this.address] * liquidityFee / totalFees / 2:
                                            revert with 0, 17
                                        _16480 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        mem[_16480 + 32 len 64] = call.data[calldata.size len 64]
                                        if 0 >= mem[_16480]:
                                            revert with 0, 50
                                        mem[_16480 + 32] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        mem[_16480 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _16480 + ceil32(return_data.size) + 96
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if 1 >= mem[_16480]:
                                            revert with 0, 50
                                        mem[_16480 + 64] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        mem[0] = uniswapV2RouterAddress
                                        mem[32] = sha3(address(this.address), 1)
                                        allowance[address(this.address)][stor6].field_0 = balanceOf[this.address] * liquidityFee / totalFees / 2
                                        allowance[address(this.address)][stor6].field_255 = 0
                                        emit Approval((balanceOf[this.address] * liquidityFee / totalFees / 2), this.address, uniswapV2RouterAddress);
                                        mem[_16480 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                        mem[_16480 + ceil32(return_data.size) + 100] = balanceOf[this.address] * liquidityFee / totalFees / 2
                                        mem[_16480 + ceil32(return_data.size) + 132] = 0
                                        mem[_16480 + ceil32(return_data.size) + 164] = 160
                                        mem[_16480 + ceil32(return_data.size) + 260] = mem[_16480]
                                        idx = 0
                                        s = _16480 + ceil32(return_data.size) + 292
                                        t = _16480 + 32
                                        while idx < mem[_16480]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_16480 + ceil32(return_data.size) + 196] = this.address
                                        mem[_16480 + ceil32(return_data.size) + 228] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _16480 + ceil32(return_data.size) + (32 * mem[_16480]) + -mem[64] + 288]
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
                                        _22827 = mem[64]
                                        mem[mem[64]] = 3
                                        mem[64] = mem[64] + 128
                                        mem[_22827 + 32 len 96] = call.data[calldata.size len 96]
                                        if 0 >= mem[_22827]:
                                            revert with 0, 50
                                        mem[_22827 + 32] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        mem[_22827 + 128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _22827 + ceil32(return_data.size) + 128
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if 1 >= mem[_22827]:
                                            revert with 0, 50
                                        mem[_22827 + 64] = ext_call.return_data[12 len 20]
                                        if 2 >= mem[_22827]:
                                            revert with 0, 50
                                        mem[_22827 + 96] = rewardTokenAddress
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        mem[0] = uniswapV2RouterAddress
                                        mem[32] = sha3(address(this.address), 1)
                                        allowance[address(this.address)][stor6].field_0 = balanceOf[this.address]
                                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                        mem[_22827 + ceil32(return_data.size) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                        mem[_22827 + ceil32(return_data.size) + 132] = balanceOf[this.address]
                                        mem[_22827 + ceil32(return_data.size) + 164] = 0
                                        mem[_22827 + ceil32(return_data.size) + 196] = 160
                                        mem[_22827 + ceil32(return_data.size) + 292] = mem[_22827]
                                        idx = 0
                                        s = _22827 + ceil32(return_data.size) + 324
                                        t = _22827 + 32
                                        while idx < mem[_22827]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_22827 + ceil32(return_data.size) + 228] = this.address
                                        mem[_22827 + ceil32(return_data.size) + 260] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _22827 + ceil32(return_data.size) + (32 * mem[_22827]) + -mem[64] + 320]
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
                                        _29090 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _29094 = mem[_29090]
                                        mem[mem[64] + 4] = dividendTrackerAddress
                                        mem[mem[64] + 36] = _29094
                                        require ext_code.size(rewardTokenAddress)
                                        call rewardTokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args dividendTrackerAddress, _29094
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _29106 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_29106] == bool(mem[_29106])
                                        if not mem[_29106]:
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
                                                                _29715 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _29908 = mem[_29715 + 32]
                                                                _29909 = mem[_29715 + 64]
                                                                mem[mem[64]] = mem[_29715]
                                                                mem[mem[64] + 64] = _29909
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _29908, _29909, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _29799 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _30084 = mem[_29799 + 32]
                                                                _30085 = mem[_29799 + 64]
                                                                mem[mem[64]] = mem[_29799]
                                                                mem[mem[64] + 64] = _30085
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _30084, _30085, gasForProcessing, 1, tx.origin);
                                                else:
                                                    if not ext_call.success:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _29801 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _30088 = mem[_29801 + 32]
                                                                _30089 = mem[_29801 + 64]
                                                                mem[mem[64]] = mem[_29801]
                                                                mem[mem[64] + 64] = _30089
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _30088, _30089, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _29913 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _30305 = mem[_29913 + 32]
                                                                _30306 = mem[_29913 + 64]
                                                                mem[mem[64]] = mem[_29913]
                                                                mem[mem[64] + 64] = _30306
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _30305, _30306, gasForProcessing, 1, tx.origin);
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
                                                                    _29814 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _30110 = mem[_29814 + 32]
                                                                    _30111 = mem[_29814 + 64]
                                                                    mem[mem[64]] = mem[_29814]
                                                                    mem[mem[64] + 64] = _30111
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _30110, _30111, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not stor7:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _29928 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _30334 = mem[_29928 + 32]
                                                                    _30335 = mem[_29928 + 64]
                                                                    mem[mem[64]] = mem[_29928]
                                                                    mem[mem[64] + 64] = _30335
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _30334, _30335, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not ext_call.success:
                                                            if not stor7:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _29930 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _30338 = mem[_29930 + 32]
                                                                    _30339 = mem[_29930 + 64]
                                                                    mem[mem[64]] = mem[_29930]
                                                                    mem[mem[64] + 64] = _30339
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _30338, _30339, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not stor7:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _30115 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _30552 = mem[_30115 + 32]
                                                                    _30553 = mem[_30115 + 64]
                                                                    mem[mem[64]] = mem[_30115]
                                                                    mem[mem[64] + 64] = _30553
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _30552, _30553, gasForProcessing, 1, tx.origin);
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
                                                                        _29723 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _29916 = mem[_29723 + 32]
                                                                        _29917 = mem[_29723 + 64]
                                                                        mem[mem[64]] = mem[_29723]
                                                                        mem[mem[64] + 64] = _29917
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _29916, _29917, gasForProcessing, 1, tx.origin);
                                                            else:
                                                                if not stor7:
                                                                    require ext_code.size(dividendTrackerAddress)
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _29806 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _30099 = mem[_29806 + 32]
                                                                        _30100 = mem[_29806 + 64]
                                                                        mem[mem[64]] = mem[_29806]
                                                                        mem[mem[64] + 64] = _30100
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _30099, _30100, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not ext_call.success:
                                                                if not stor7:
                                                                    require ext_code.size(dividendTrackerAddress)
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _29808 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _30103 = mem[_29808 + 32]
                                                                        _30104 = mem[_29808 + 64]
                                                                        mem[mem[64]] = mem[_29808]
                                                                        mem[mem[64] + 64] = _30104
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _30103, _30104, gasForProcessing, 1, tx.origin);
                                                            else:
                                                                if not stor7:
                                                                    require ext_code.size(dividendTrackerAddress)
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _29921 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _30324 = mem[_29921 + 32]
                                                                        _30325 = mem[_29921 + 64]
                                                                        mem[mem[64]] = mem[_29921]
                                                                        mem[mem[64] + 64] = _30325
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _30324, _30325, gasForProcessing, 1, tx.origin);
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
                                                                            _33094 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _33183 = mem[_33094 + 32]
                                                                            _33184 = mem[_33094 + 64]
                                                                            mem[mem[64]] = mem[_33094]
                                                                            mem[mem[64] + 64] = _33184
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _33183, _33184, gasForProcessing, 1, tx.origin);
                                                                else:
                                                                    if not stor7:
                                                                        require ext_code.size(dividendTrackerAddress)
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _33135 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _33259 = mem[_33135 + 32]
                                                                            _33260 = mem[_33135 + 64]
                                                                            mem[mem[64]] = mem[_33135]
                                                                            mem[mem[64] + 64] = _33260
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _33259, _33260, gasForProcessing, 1, tx.origin);
                                                            else:
                                                                if not ext_call.success:
                                                                    if not stor7:
                                                                        require ext_code.size(dividendTrackerAddress)
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _33137 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _33263 = mem[_33137 + 32]
                                                                            _33264 = mem[_33137 + 64]
                                                                            mem[mem[64]] = mem[_33137]
                                                                            mem[mem[64] + 64] = _33264
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _33263, _33264, gasForProcessing, 1, tx.origin);
                                                                else:
                                                                    if not stor7:
                                                                        require ext_code.size(dividendTrackerAddress)
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _33188 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _33357 = mem[_33188 + 32]
                                                                            _33358 = mem[_33188 + 64]
                                                                            mem[mem[64]] = mem[_33188]
                                                                            mem[mem[64] + 64] = _33358
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _33357, _33358, gasForProcessing, 1, tx.origin);
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
                                                                            _34142 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _34274 = mem[_34142 + 32]
                                                                            _34275 = mem[_34142 + 64]
                                                                            mem[mem[64]] = mem[_34142]
                                                                            mem[mem[64] + 64] = _34275
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _34274, _34275, gasForProcessing, 1, tx.origin);
                                                                else:
                                                                    if not stor7:
                                                                        require ext_code.size(dividendTrackerAddress)
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _34202 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _34365 = mem[_34202 + 32]
                                                                            _34366 = mem[_34202 + 64]
                                                                            mem[mem[64]] = mem[_34202]
                                                                            mem[mem[64] + 64] = _34366
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _34365, _34366, gasForProcessing, 1, tx.origin);
                                                            else:
                                                                if not ext_call.success:
                                                                    if not stor7:
                                                                        require ext_code.size(dividendTrackerAddress)
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _34204 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _34369 = mem[_34204 + 32]
                                                                            _34370 = mem[_34204 + 64]
                                                                            mem[mem[64]] = mem[_34204]
                                                                            mem[mem[64] + 64] = _34370
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _34369, _34370, gasForProcessing, 1, tx.origin);
                                                                else:
                                                                    if not stor7:
                                                                        require ext_code.size(dividendTrackerAddress)
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _34279 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _34458 = mem[_34279 + 32]
                                                                            _34459 = mem[_34279 + 64]
                                                                            mem[mem[64]] = mem[_34279]
                                                                            mem[mem[64] + 64] = _34459
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _34458, _34459, gasForProcessing, 1, tx.origin);
                                        else:
                                            require ext_code.size(dividendTrackerAddress)
                                            call dividendTrackerAddress.distributeCAKEDividends(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _29094
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit SendDividends(balanceOf[this.address], _29094);
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
                                                                _30117 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _30556 = mem[_30117 + 32]
                                                                _30557 = mem[_30117 + 64]
                                                                mem[mem[64]] = mem[_30117]
                                                                mem[mem[64] + 64] = _30557
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _30556, _30557, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _30343 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _30781 = mem[_30343 + 32]
                                                                _30782 = mem[_30343 + 64]
                                                                mem[mem[64]] = mem[_30343]
                                                                mem[mem[64] + 64] = _30782
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _30781, _30782, gasForProcessing, 1, tx.origin);
                                                else:
                                                    if not ext_call.success:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _30345 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _30785 = mem[_30345 + 32]
                                                                _30786 = mem[_30345 + 64]
                                                                mem[mem[64]] = mem[_30345]
                                                                mem[mem[64] + 64] = _30786
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _30785, _30786, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _30561 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _31027 = mem[_30561 + 32]
                                                                _31028 = mem[_30561 + 64]
                                                                mem[mem[64]] = mem[_30561]
                                                                mem[mem[64] + 64] = _31028
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _31027, _31028, gasForProcessing, 1, tx.origin);
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
                                                                    _30358 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _30807 = mem[_30358 + 32]
                                                                    _30808 = mem[_30358 + 64]
                                                                    mem[mem[64]] = mem[_30358]
                                                                    mem[mem[64] + 64] = _30808
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _30807, _30808, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not stor7:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _30576 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _31056 = mem[_30576 + 32]
                                                                    _31057 = mem[_30576 + 64]
                                                                    mem[mem[64]] = mem[_30576]
                                                                    mem[mem[64] + 64] = _31057
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _31056, _31057, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not ext_call.success:
                                                            if not stor7:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _30578 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _31060 = mem[_30578 + 32]
                                                                    _31061 = mem[_30578 + 64]
                                                                    mem[mem[64]] = mem[_30578]
                                                                    mem[mem[64] + 64] = _31061
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _31060, _31061, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not stor7:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _30812 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _31291 = mem[_30812 + 32]
                                                                    _31292 = mem[_30812 + 64]
                                                                    mem[mem[64]] = mem[_30812]
                                                                    mem[mem[64] + 64] = _31292
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _31291, _31292, gasForProcessing, 1, tx.origin);
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
                                                                        _30125 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _30564 = mem[_30125 + 32]
                                                                        _30565 = mem[_30125 + 64]
                                                                        mem[mem[64]] = mem[_30125]
                                                                        mem[mem[64] + 64] = _30565
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _30564, _30565, gasForProcessing, 1, tx.origin);
                                                            else:
                                                                if not stor7:
                                                                    require ext_code.size(dividendTrackerAddress)
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _30350 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _30796 = mem[_30350 + 32]
                                                                        _30797 = mem[_30350 + 64]
                                                                        mem[mem[64]] = mem[_30350]
                                                                        mem[mem[64] + 64] = _30797
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _30796, _30797, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not ext_call.success:
                                                                if not stor7:
                                                                    require ext_code.size(dividendTrackerAddress)
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _30352 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _30800 = mem[_30352 + 32]
                                                                        _30801 = mem[_30352 + 64]
                                                                        mem[mem[64]] = mem[_30352]
                                                                        mem[mem[64] + 64] = _30801
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _30800, _30801, gasForProcessing, 1, tx.origin);
                                                            else:
                                                                if not stor7:
                                                                    require ext_code.size(dividendTrackerAddress)
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _30569 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _31046 = mem[_30569 + 32]
                                                                        _31047 = mem[_30569 + 64]
                                                                        mem[mem[64]] = mem[_30569]
                                                                        mem[mem[64] + 64] = _31047
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _31046, _31047, gasForProcessing, 1, tx.origin);
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
                                                                            _33268 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _33435 = mem[_33268 + 32]
                                                                            _33436 = mem[_33268 + 64]
                                                                            mem[mem[64]] = mem[_33268]
                                                                            mem[mem[64] + 64] = _33436
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _33435, _33436, gasForProcessing, 1, tx.origin);
                                                                else:
                                                                    if not stor7:
                                                                        require ext_code.size(dividendTrackerAddress)
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _33362 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _33517 = mem[_33362 + 32]
                                                                            _33518 = mem[_33362 + 64]
                                                                            mem[mem[64]] = mem[_33362]
                                                                            mem[mem[64] + 64] = _33518
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _33517, _33518, gasForProcessing, 1, tx.origin);
                                                            else:
                                                                if not ext_call.success:
                                                                    if not stor7:
                                                                        require ext_code.size(dividendTrackerAddress)
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _33364 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _33521 = mem[_33364 + 32]
                                                                            _33522 = mem[_33364 + 64]
                                                                            mem[mem[64]] = mem[_33364]
                                                                            mem[mem[64] + 64] = _33522
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _33521, _33522, gasForProcessing, 1, tx.origin);
                                                                else:
                                                                    if not stor7:
                                                                        require ext_code.size(dividendTrackerAddress)
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _33440 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _33614 = mem[_33440 + 32]
                                                                            _33615 = mem[_33440 + 64]
                                                                            mem[mem[64]] = mem[_33440]
                                                                            mem[mem[64] + 64] = _33615
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _33614, _33615, gasForProcessing, 1, tx.origin);
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
                                                                            _34382 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _34535 = mem[_34382 + 32]
                                                                            _34536 = mem[_34382 + 64]
                                                                            mem[mem[64]] = mem[_34382]
                                                                            mem[mem[64] + 64] = _34536
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _34535, _34536, gasForProcessing, 1, tx.origin);
                                                                else:
                                                                    if not stor7:
                                                                        require ext_code.size(dividendTrackerAddress)
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _34466 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _34612 = mem[_34466 + 32]
                                                                            _34613 = mem[_34466 + 64]
                                                                            mem[mem[64]] = mem[_34466]
                                                                            mem[mem[64] + 64] = _34613
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _34612, _34613, gasForProcessing, 1, tx.origin);
                                                            else:
                                                                if not ext_call.success:
                                                                    if not stor7:
                                                                        require ext_code.size(dividendTrackerAddress)
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _34468 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _34616 = mem[_34468 + 32]
                                                                            _34617 = mem[_34468 + 64]
                                                                            mem[mem[64]] = mem[_34468]
                                                                            mem[mem[64] + 64] = _34617
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _34616, _34617, gasForProcessing, 1, tx.origin);
                                                                else:
                                                                    if not stor7:
                                                                        require ext_code.size(dividendTrackerAddress)
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _34540 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _34701 = mem[_34540 + 32]
                                                                            _34702 = mem[_34540 + 64]
                                                                            mem[mem[64]] = mem[_34540]
                                                                            mem[mem[64] + 64] = _34702
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _34701, _34702, gasForProcessing, 1, tx.origin);
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
