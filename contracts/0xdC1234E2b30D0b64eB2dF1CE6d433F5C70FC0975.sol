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
    staticcall dividendTrackerAddress.0x6f2789ec with:
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
    staticcall dividendTrackerAddress.0x85a6b3ae with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getMinimumTokenBalanceForDividends() {
    require ext_code.size(dividendTrackerAddress)
    staticcall dividendTrackerAddress.0xbe10b614 with:
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

function claim() {
    require ext_code.size(dividendTrackerAddress)
    call dividendTrackerAddress.0xbc4c4b37 with:
         gas gas_remaining wei
        args msg.sender, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
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
    call dividendTrackerAddress.0xffb2c479 with:
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
    staticcall dividendTrackerAddress.0x5183d6fd with:
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
    staticcall dividendTrackerAddress.0xfbcbc0f1 with:
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
            call dividendTrackerAddress.0xe30443bc with:
                 gas gas_remaining wei
                args msg.sender, balanceOf[address(msg.sender)]
            require ext_code.size(dividendTrackerAddress)
            call dividendTrackerAddress.0xe30443bc with:
                 gas gas_remaining wei
                args address(arg1), balanceOf[address(arg1)]
            if not stor7:
                require ext_code.size(dividendTrackerAddress)
                call dividendTrackerAddress.0xffb2c479 with:
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
                call dividendTrackerAddress.0xe30443bc with:
                     gas gas_remaining wei
                    args msg.sender, balanceOf[address(msg.sender)]
                require ext_code.size(dividendTrackerAddress)
                call dividendTrackerAddress.0xe30443bc with:
                     gas gas_remaining wei
                    args address(arg1), balanceOf[address(arg1)]
                if not stor7:
                    require ext_code.size(dividendTrackerAddress)
                    call dividendTrackerAddress.0xffb2c479 with:
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
                    call dividendTrackerAddress.0xe30443bc with:
                         gas gas_remaining wei
                        args msg.sender, balanceOf[address(msg.sender)]
                    require ext_code.size(dividendTrackerAddress)
                    call dividendTrackerAddress.0xe30443bc with:
                         gas gas_remaining wei
                        args address(arg1), balanceOf[address(arg1)]
                    if not stor7:
                        require ext_code.size(dividendTrackerAddress)
                        call dividendTrackerAddress.0xffb2c479 with:
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
                        call dividendTrackerAddress.0xe30443bc with:
                             gas gas_remaining wei
                            args msg.sender, balanceOf[address(msg.sender)]
                        require ext_code.size(dividendTrackerAddress)
                        call dividendTrackerAddress.0xe30443bc with:
                             gas gas_remaining wei
                            args address(arg1), balanceOf[address(arg1)]
                        if not stor7:
                            require ext_code.size(dividendTrackerAddress)
                            call dividendTrackerAddress.0xffb2c479 with:
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
                            call dividendTrackerAddress.0xe30443bc with:
                                 gas gas_remaining wei
                                args msg.sender, balanceOf[address(msg.sender)]
                            require ext_code.size(dividendTrackerAddress)
                            call dividendTrackerAddress.0xe30443bc with:
                                 gas gas_remaining wei
                                args address(arg1), balanceOf[address(arg1)]
                            if not stor7:
                                require ext_code.size(dividendTrackerAddress)
                                call dividendTrackerAddress.0xffb2c479 with:
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
                                call dividendTrackerAddress.0xba72a955 with:
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
                            call dividendTrackerAddress.0xe30443bc with:
                                 gas gas_remaining wei
                                args mem[_2276 + (8 * ceil32(return_data.size)) + 228 len (13 * ceil32(return_data.size)) + 64]
                            mem[_2276 + (8 * ceil32(return_data.size)) + 228] = arg1
                            mem[_2276 + (8 * ceil32(return_data.size)) + 260] = balanceOf[address(arg1)]
                            require ext_code.size(dividendTrackerAddress)
                            call dividendTrackerAddress.0xe30443bc with:
                                 gas gas_remaining wei
                                args mem[_2276 + (8 * ceil32(return_data.size)) + 228 len (13 * ceil32(return_data.size)) + 64]
                            if not stor7:
                                require ext_code.size(dividendTrackerAddress)
                                call dividendTrackerAddress.0xffb2c479 with:
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
            call dividendTrackerAddress.0xe30443bc with:
                 gas gas_remaining wei
                args address(arg1), balanceOf[address(arg1)]
            require ext_code.size(dividendTrackerAddress)
            call dividendTrackerAddress.0xe30443bc with:
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
                call dividendTrackerAddress.0xffb2c479 with:
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
                call dividendTrackerAddress.0xe30443bc with:
                     gas gas_remaining wei
                    args address(arg1), balanceOf[address(arg1)]
                require ext_code.size(dividendTrackerAddress)
                call dividendTrackerAddress.0xe30443bc with:
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
                    call dividendTrackerAddress.0xffb2c479 with:
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
                    call dividendTrackerAddress.0xe30443bc with:
                         gas gas_remaining wei
                        args address(arg1), balanceOf[address(arg1)]
                    require ext_code.size(dividendTrackerAddress)
                    call dividendTrackerAddress.0xe30443bc with:
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
                        call dividendTrackerAddress.0xffb2c479 with:
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
                        call dividendTrackerAddress.0xe30443bc with:
                             gas gas_remaining wei
                            args address(arg1), balanceOf[address(arg1)]
                        require ext_code.size(dividendTrackerAddress)
                        call dividendTrackerAddress.0xe30443bc with:
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
                            call dividendTrackerAddress.0xffb2c479 with:
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
                            call dividendTrackerAddress.0xe30443bc with:
                                 gas gas_remaining wei
                                args address(arg1), balanceOf[address(arg1)]
                            require ext_code.size(dividendTrackerAddress)
                            call dividendTrackerAddress.0xe30443bc with:
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
                                call dividendTrackerAddress.0xffb2c479 with:
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
                            call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _5864 + (4 * ceil32(return_data.size)) + (32 * mem[_5864 + (2 * ceil32(return_data.size)) + 96]) + -mem[64] + 416]
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
                            _10418 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _10419 = mem[_10418]
                            mem[mem[64] + 4] = dividendTrackerAddress
                            mem[mem[64] + 36] = _10419
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args dividendTrackerAddress, _10419
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10422 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10422] == bool(mem[_10422])
                            if not mem[_10422]:
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
                                    require ext_code.size(dividendTrackerAddress)
                                    call dividendTrackerAddress.0xe30443bc with:
                                         gas gas_remaining wei
                                        args address(arg1), balanceOf[address(arg1)]
                                    mem[0] = arg2
                                    mem[32] = 0
                                    require ext_code.size(dividendTrackerAddress)
                                    call dividendTrackerAddress.0xe30443bc with:
                                         gas gas_remaining wei
                                        args address(arg2), balanceOf[address(arg2)]
                                    if not ext_call.success:
                                        if not ext_call.success:
                                            if not stor7:
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.0xffb2c479 with:
                                                     gas gas_remaining wei
                                                    args gasForProcessing
                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                if ext_call.success:
                                                    _10571 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 96
                                                    _10625 = mem[_10571 + 32]
                                                    _10626 = mem[_10571 + 64]
                                                    mem[mem[64]] = mem[_10571]
                                                    mem[mem[64] + 64] = _10626
                                                    mem[mem[64] + 96] = gasForProcessing
                                                    emit ProcessedDividendTracker(mem[mem[64]], _10625, _10626, gasForProcessing, 1, tx.origin);
                                        else:
                                            if not stor7:
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.0xffb2c479 with:
                                                     gas gas_remaining wei
                                                    args gasForProcessing
                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                if ext_call.success:
                                                    _10597 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 96
                                                    _10672 = mem[_10597 + 32]
                                                    _10673 = mem[_10597 + 64]
                                                    mem[mem[64]] = mem[_10597]
                                                    mem[mem[64] + 64] = _10673
                                                    mem[mem[64] + 96] = gasForProcessing
                                                    emit ProcessedDividendTracker(mem[mem[64]], _10672, _10673, gasForProcessing, 1, tx.origin);
                                    else:
                                        if not ext_call.success:
                                            if not stor7:
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.0xffb2c479 with:
                                                     gas gas_remaining wei
                                                    args gasForProcessing
                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                if ext_call.success:
                                                    _10599 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 96
                                                    _10676 = mem[_10599 + 32]
                                                    _10677 = mem[_10599 + 64]
                                                    mem[mem[64]] = mem[_10599]
                                                    mem[mem[64] + 64] = _10677
                                                    mem[mem[64] + 96] = gasForProcessing
                                                    emit ProcessedDividendTracker(mem[mem[64]], _10676, _10677, gasForProcessing, 1, tx.origin);
                                        else:
                                            if not stor7:
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.0xffb2c479 with:
                                                     gas gas_remaining wei
                                                    args gasForProcessing
                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                if ext_call.success:
                                                    _10630 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 96
                                                    _10744 = mem[_10630 + 32]
                                                    _10745 = mem[_10630 + 64]
                                                    mem[mem[64]] = mem[_10630]
                                                    mem[mem[64] + 64] = _10745
                                                    mem[mem[64] + 96] = gasForProcessing
                                                    emit ProcessedDividendTracker(mem[mem[64]], _10744, _10745, gasForProcessing, 1, tx.origin);
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
                                        require ext_code.size(dividendTrackerAddress)
                                        call dividendTrackerAddress.0xe30443bc with:
                                             gas gas_remaining wei
                                            args address(arg1), balanceOf[address(arg1)]
                                        mem[0] = arg2
                                        mem[32] = 0
                                        require ext_code.size(dividendTrackerAddress)
                                        call dividendTrackerAddress.0xe30443bc with:
                                             gas gas_remaining wei
                                            args address(arg2), balanceOf[address(arg2)]
                                        if not ext_call.success:
                                            if not ext_call.success:
                                                if not stor7:
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.0xffb2c479 with:
                                                         gas gas_remaining wei
                                                        args gasForProcessing
                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                    if ext_call.success:
                                                        _10612 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 96
                                                        _10698 = mem[_10612 + 32]
                                                        _10699 = mem[_10612 + 64]
                                                        mem[mem[64]] = mem[_10612]
                                                        mem[mem[64] + 64] = _10699
                                                        mem[mem[64] + 96] = gasForProcessing
                                                        emit ProcessedDividendTracker(mem[mem[64]], _10698, _10699, gasForProcessing, 1, tx.origin);
                                            else:
                                                if not stor7:
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.0xffb2c479 with:
                                                         gas gas_remaining wei
                                                        args gasForProcessing
                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                    if ext_call.success:
                                                        _10645 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 96
                                                        _10773 = mem[_10645 + 32]
                                                        _10774 = mem[_10645 + 64]
                                                        mem[mem[64]] = mem[_10645]
                                                        mem[mem[64] + 64] = _10774
                                                        mem[mem[64] + 96] = gasForProcessing
                                                        emit ProcessedDividendTracker(mem[mem[64]], _10773, _10774, gasForProcessing, 1, tx.origin);
                                        else:
                                            if not ext_call.success:
                                                if not stor7:
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.0xffb2c479 with:
                                                         gas gas_remaining wei
                                                        args gasForProcessing
                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                    if ext_call.success:
                                                        _10647 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 96
                                                        _10777 = mem[_10647 + 32]
                                                        _10778 = mem[_10647 + 64]
                                                        mem[mem[64]] = mem[_10647]
                                                        mem[mem[64] + 64] = _10778
                                                        mem[mem[64] + 96] = gasForProcessing
                                                        emit ProcessedDividendTracker(mem[mem[64]], _10777, _10778, gasForProcessing, 1, tx.origin);
                                            else:
                                                if not stor7:
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.0xffb2c479 with:
                                                         gas gas_remaining wei
                                                        args gasForProcessing
                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                    if ext_call.success:
                                                        _10703 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 96
                                                        _10854 = mem[_10703 + 32]
                                                        _10855 = mem[_10703 + 64]
                                                        mem[mem[64]] = mem[_10703]
                                                        mem[mem[64] + 64] = _10855
                                                        mem[mem[64] + 96] = gasForProcessing
                                                        emit ProcessedDividendTracker(mem[mem[64]], _10854, _10855, gasForProcessing, 1, tx.origin);
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
                                            require ext_code.size(dividendTrackerAddress)
                                            call dividendTrackerAddress.0xe30443bc with:
                                                 gas gas_remaining wei
                                                args address(arg1), balanceOf[address(arg1)]
                                            mem[0] = arg2
                                            mem[32] = 0
                                            require ext_code.size(dividendTrackerAddress)
                                            call dividendTrackerAddress.0xe30443bc with:
                                                 gas gas_remaining wei
                                                args address(arg2), balanceOf[address(arg2)]
                                            if not ext_call.success:
                                                if not ext_call.success:
                                                    if not stor7:
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.0xffb2c479 with:
                                                             gas gas_remaining wei
                                                            args gasForProcessing
                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                        if ext_call.success:
                                                            _10579 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 96
                                                            _10633 = mem[_10579 + 32]
                                                            _10634 = mem[_10579 + 64]
                                                            mem[mem[64]] = mem[_10579]
                                                            mem[mem[64] + 64] = _10634
                                                            mem[mem[64] + 96] = gasForProcessing
                                                            emit ProcessedDividendTracker(mem[mem[64]], _10633, _10634, gasForProcessing, 1, tx.origin);
                                                else:
                                                    if not stor7:
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.0xffb2c479 with:
                                                             gas gas_remaining wei
                                                            args gasForProcessing
                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                        if ext_call.success:
                                                            _10604 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 96
                                                            _10687 = mem[_10604 + 32]
                                                            _10688 = mem[_10604 + 64]
                                                            mem[mem[64]] = mem[_10604]
                                                            mem[mem[64] + 64] = _10688
                                                            mem[mem[64] + 96] = gasForProcessing
                                                            emit ProcessedDividendTracker(mem[mem[64]], _10687, _10688, gasForProcessing, 1, tx.origin);
                                            else:
                                                if not ext_call.success:
                                                    if not stor7:
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.0xffb2c479 with:
                                                             gas gas_remaining wei
                                                            args gasForProcessing
                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                        if ext_call.success:
                                                            _10606 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 96
                                                            _10691 = mem[_10606 + 32]
                                                            _10692 = mem[_10606 + 64]
                                                            mem[mem[64]] = mem[_10606]
                                                            mem[mem[64] + 64] = _10692
                                                            mem[mem[64] + 96] = gasForProcessing
                                                            emit ProcessedDividendTracker(mem[mem[64]], _10691, _10692, gasForProcessing, 1, tx.origin);
                                                else:
                                                    if not stor7:
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.0xffb2c479 with:
                                                             gas gas_remaining wei
                                                            args gasForProcessing
                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                        if ext_call.success:
                                                            _10638 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 96
                                                            _10763 = mem[_10638 + 32]
                                                            _10764 = mem[_10638 + 64]
                                                            mem[mem[64]] = mem[_10638]
                                                            mem[mem[64] + 64] = _10764
                                                            mem[mem[64] + 96] = gasForProcessing
                                                            emit ProcessedDividendTracker(mem[mem[64]], _10763, _10764, gasForProcessing, 1, tx.origin);
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
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.0xe30443bc with:
                                                     gas gas_remaining wei
                                                    args address(arg1), balanceOf[address(arg1)]
                                                mem[0] = arg2
                                                mem[32] = 0
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.0xe30443bc with:
                                                     gas gas_remaining wei
                                                    args address(arg2), balanceOf[address(arg2)]
                                                if not ext_call.success:
                                                    if not ext_call.success:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.0xffb2c479 with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _11850 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _11875 = mem[_11850 + 32]
                                                                _11876 = mem[_11850 + 64]
                                                                mem[mem[64]] = mem[_11850]
                                                                mem[mem[64] + 64] = _11876
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _11875, _11876, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.0xffb2c479 with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _11863 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _11897 = mem[_11863 + 32]
                                                                _11898 = mem[_11863 + 64]
                                                                mem[mem[64]] = mem[_11863]
                                                                mem[mem[64] + 64] = _11898
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _11897, _11898, gasForProcessing, 1, tx.origin);
                                                else:
                                                    if not ext_call.success:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.0xffb2c479 with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _11865 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _11901 = mem[_11865 + 32]
                                                                _11902 = mem[_11865 + 64]
                                                                mem[mem[64]] = mem[_11865]
                                                                mem[mem[64] + 64] = _11902
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _11901, _11902, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.0xffb2c479 with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _11880 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _11934 = mem[_11880 + 32]
                                                                _11935 = mem[_11880 + 64]
                                                                mem[mem[64]] = mem[_11880]
                                                                mem[mem[64] + 64] = _11935
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _11934, _11935, gasForProcessing, 1, tx.origin);
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
                                                call dividendTrackerAddress.0xe30443bc with:
                                                     gas gas_remaining wei
                                                    args address(arg1), balanceOf[address(arg1)]
                                                mem[0] = arg2
                                                mem[32] = 0
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.0xe30443bc with:
                                                     gas gas_remaining wei
                                                    args address(arg2), balanceOf[address(arg2)]
                                                if not ext_call.success:
                                                    if not ext_call.success:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.0xffb2c479 with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _12227 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _12272 = mem[_12227 + 32]
                                                                _12273 = mem[_12227 + 64]
                                                                mem[mem[64]] = mem[_12227]
                                                                mem[mem[64] + 64] = _12273
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _12272, _12273, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.0xffb2c479 with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _12248 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _12308 = mem[_12248 + 32]
                                                                _12309 = mem[_12248 + 64]
                                                                mem[mem[64]] = mem[_12248]
                                                                mem[mem[64] + 64] = _12309
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _12308, _12309, gasForProcessing, 1, tx.origin);
                                                else:
                                                    if not ext_call.success:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.0xffb2c479 with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _12250 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _12312 = mem[_12250 + 32]
                                                                _12313 = mem[_12250 + 64]
                                                                mem[mem[64]] = mem[_12250]
                                                                mem[mem[64] + 64] = _12313
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _12312, _12313, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.0xffb2c479 with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _12277 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _12349 = mem[_12277 + 32]
                                                                _12350 = mem[_12277 + 64]
                                                                mem[mem[64]] = mem[_12277]
                                                                mem[mem[64] + 64] = _12350
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _12349, _12350, gasForProcessing, 1, tx.origin);
                            else:
                                require ext_code.size(dividendTrackerAddress)
                                call dividendTrackerAddress.0xba72a955 with:
                                     gas gas_remaining wei
                                    args _10419
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit SendDividends(balanceOf[this.address], _10419);
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
                                    require ext_code.size(dividendTrackerAddress)
                                    call dividendTrackerAddress.0xe30443bc with:
                                         gas gas_remaining wei
                                        args address(arg1), balanceOf[address(arg1)]
                                    mem[0] = arg2
                                    mem[32] = 0
                                    require ext_code.size(dividendTrackerAddress)
                                    call dividendTrackerAddress.0xe30443bc with:
                                         gas gas_remaining wei
                                        args address(arg2), balanceOf[address(arg2)]
                                    if not ext_call.success:
                                        if not ext_call.success:
                                            if not stor7:
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.0xffb2c479 with:
                                                     gas gas_remaining wei
                                                    args gasForProcessing
                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                if ext_call.success:
                                                    _10705 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 96
                                                    _10858 = mem[_10705 + 32]
                                                    _10859 = mem[_10705 + 64]
                                                    mem[mem[64]] = mem[_10705]
                                                    mem[mem[64] + 64] = _10859
                                                    mem[mem[64] + 96] = gasForProcessing
                                                    emit ProcessedDividendTracker(mem[mem[64]], _10858, _10859, gasForProcessing, 1, tx.origin);
                                        else:
                                            if not stor7:
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.0xffb2c479 with:
                                                     gas gas_remaining wei
                                                    args gasForProcessing
                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                if ext_call.success:
                                                    _10782 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 96
                                                    _10934 = mem[_10782 + 32]
                                                    _10935 = mem[_10782 + 64]
                                                    mem[mem[64]] = mem[_10782]
                                                    mem[mem[64] + 64] = _10935
                                                    mem[mem[64] + 96] = gasForProcessing
                                                    emit ProcessedDividendTracker(mem[mem[64]], _10934, _10935, gasForProcessing, 1, tx.origin);
                                    else:
                                        if not ext_call.success:
                                            if not stor7:
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.0xffb2c479 with:
                                                     gas gas_remaining wei
                                                    args gasForProcessing
                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                if ext_call.success:
                                                    _10784 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 96
                                                    _10938 = mem[_10784 + 32]
                                                    _10939 = mem[_10784 + 64]
                                                    mem[mem[64]] = mem[_10784]
                                                    mem[mem[64] + 64] = _10939
                                                    mem[mem[64] + 96] = gasForProcessing
                                                    emit ProcessedDividendTracker(mem[mem[64]], _10938, _10939, gasForProcessing, 1, tx.origin);
                                        else:
                                            if not stor7:
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.0xffb2c479 with:
                                                     gas gas_remaining wei
                                                    args gasForProcessing
                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                if ext_call.success:
                                                    _10863 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 96
                                                    _11014 = mem[_10863 + 32]
                                                    _11015 = mem[_10863 + 64]
                                                    mem[mem[64]] = mem[_10863]
                                                    mem[mem[64] + 64] = _11015
                                                    mem[mem[64] + 96] = gasForProcessing
                                                    emit ProcessedDividendTracker(mem[mem[64]], _11014, _11015, gasForProcessing, 1, tx.origin);
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
                                        require ext_code.size(dividendTrackerAddress)
                                        call dividendTrackerAddress.0xe30443bc with:
                                             gas gas_remaining wei
                                            args address(arg1), balanceOf[address(arg1)]
                                        mem[0] = arg2
                                        mem[32] = 0
                                        require ext_code.size(dividendTrackerAddress)
                                        call dividendTrackerAddress.0xe30443bc with:
                                             gas gas_remaining wei
                                            args address(arg2), balanceOf[address(arg2)]
                                        if not ext_call.success:
                                            if not ext_call.success:
                                                if not stor7:
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.0xffb2c479 with:
                                                         gas gas_remaining wei
                                                        args gasForProcessing
                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                    if ext_call.success:
                                                        _10797 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 96
                                                        _10960 = mem[_10797 + 32]
                                                        _10961 = mem[_10797 + 64]
                                                        mem[mem[64]] = mem[_10797]
                                                        mem[mem[64] + 64] = _10961
                                                        mem[mem[64] + 96] = gasForProcessing
                                                        emit ProcessedDividendTracker(mem[mem[64]], _10960, _10961, gasForProcessing, 1, tx.origin);
                                            else:
                                                if not stor7:
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.0xffb2c479 with:
                                                         gas gas_remaining wei
                                                        args gasForProcessing
                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                    if ext_call.success:
                                                        _10878 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 96
                                                        _11043 = mem[_10878 + 32]
                                                        _11044 = mem[_10878 + 64]
                                                        mem[mem[64]] = mem[_10878]
                                                        mem[mem[64] + 64] = _11044
                                                        mem[mem[64] + 96] = gasForProcessing
                                                        emit ProcessedDividendTracker(mem[mem[64]], _11043, _11044, gasForProcessing, 1, tx.origin);
                                        else:
                                            if not ext_call.success:
                                                if not stor7:
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.0xffb2c479 with:
                                                         gas gas_remaining wei
                                                        args gasForProcessing
                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                    if ext_call.success:
                                                        _10880 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 96
                                                        _11047 = mem[_10880 + 32]
                                                        _11048 = mem[_10880 + 64]
                                                        mem[mem[64]] = mem[_10880]
                                                        mem[mem[64] + 64] = _11048
                                                        mem[mem[64] + 96] = gasForProcessing
                                                        emit ProcessedDividendTracker(mem[mem[64]], _11047, _11048, gasForProcessing, 1, tx.origin);
                                            else:
                                                if not stor7:
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.0xffb2c479 with:
                                                         gas gas_remaining wei
                                                        args gasForProcessing
                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                    if ext_call.success:
                                                        _10965 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 96
                                                        _11133 = mem[_10965 + 32]
                                                        _11134 = mem[_10965 + 64]
                                                        mem[mem[64]] = mem[_10965]
                                                        mem[mem[64] + 64] = _11134
                                                        mem[mem[64] + 96] = gasForProcessing
                                                        emit ProcessedDividendTracker(mem[mem[64]], _11133, _11134, gasForProcessing, 1, tx.origin);
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
                                            require ext_code.size(dividendTrackerAddress)
                                            call dividendTrackerAddress.0xe30443bc with:
                                                 gas gas_remaining wei
                                                args address(arg1), balanceOf[address(arg1)]
                                            mem[0] = arg2
                                            mem[32] = 0
                                            require ext_code.size(dividendTrackerAddress)
                                            call dividendTrackerAddress.0xe30443bc with:
                                                 gas gas_remaining wei
                                                args address(arg2), balanceOf[address(arg2)]
                                            if not ext_call.success:
                                                if not ext_call.success:
                                                    if not stor7:
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.0xffb2c479 with:
                                                             gas gas_remaining wei
                                                            args gasForProcessing
                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                        if ext_call.success:
                                                            _10713 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 96
                                                            _10866 = mem[_10713 + 32]
                                                            _10867 = mem[_10713 + 64]
                                                            mem[mem[64]] = mem[_10713]
                                                            mem[mem[64] + 64] = _10867
                                                            mem[mem[64] + 96] = gasForProcessing
                                                            emit ProcessedDividendTracker(mem[mem[64]], _10866, _10867, gasForProcessing, 1, tx.origin);
                                                else:
                                                    if not stor7:
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.0xffb2c479 with:
                                                             gas gas_remaining wei
                                                            args gasForProcessing
                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                        if ext_call.success:
                                                            _10789 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 96
                                                            _10949 = mem[_10789 + 32]
                                                            _10950 = mem[_10789 + 64]
                                                            mem[mem[64]] = mem[_10789]
                                                            mem[mem[64] + 64] = _10950
                                                            mem[mem[64] + 96] = gasForProcessing
                                                            emit ProcessedDividendTracker(mem[mem[64]], _10949, _10950, gasForProcessing, 1, tx.origin);
                                            else:
                                                if not ext_call.success:
                                                    if not stor7:
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.0xffb2c479 with:
                                                             gas gas_remaining wei
                                                            args gasForProcessing
                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                        if ext_call.success:
                                                            _10791 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 96
                                                            _10953 = mem[_10791 + 32]
                                                            _10954 = mem[_10791 + 64]
                                                            mem[mem[64]] = mem[_10791]
                                                            mem[mem[64] + 64] = _10954
                                                            mem[mem[64] + 96] = gasForProcessing
                                                            emit ProcessedDividendTracker(mem[mem[64]], _10953, _10954, gasForProcessing, 1, tx.origin);
                                                else:
                                                    if not stor7:
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.0xffb2c479 with:
                                                             gas gas_remaining wei
                                                            args gasForProcessing
                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                        if ext_call.success:
                                                            _10871 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 96
                                                            _11033 = mem[_10871 + 32]
                                                            _11034 = mem[_10871 + 64]
                                                            mem[mem[64]] = mem[_10871]
                                                            mem[mem[64] + 64] = _11034
                                                            mem[mem[64] + 96] = gasForProcessing
                                                            emit ProcessedDividendTracker(mem[mem[64]], _11033, _11034, gasForProcessing, 1, tx.origin);
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
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.0xe30443bc with:
                                                     gas gas_remaining wei
                                                    args address(arg1), balanceOf[address(arg1)]
                                                mem[0] = arg2
                                                mem[32] = 0
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.0xe30443bc with:
                                                     gas gas_remaining wei
                                                    args address(arg2), balanceOf[address(arg2)]
                                                if not ext_call.success:
                                                    if not ext_call.success:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.0xffb2c479 with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _11906 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _11965 = mem[_11906 + 32]
                                                                _11966 = mem[_11906 + 64]
                                                                mem[mem[64]] = mem[_11906]
                                                                mem[mem[64] + 64] = _11966
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _11965, _11966, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.0xffb2c479 with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _11939 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _11994 = mem[_11939 + 32]
                                                                _11995 = mem[_11939 + 64]
                                                                mem[mem[64]] = mem[_11939]
                                                                mem[mem[64] + 64] = _11995
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _11994, _11995, gasForProcessing, 1, tx.origin);
                                                else:
                                                    if not ext_call.success:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.0xffb2c479 with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _11941 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _11998 = mem[_11941 + 32]
                                                                _11999 = mem[_11941 + 64]
                                                                mem[mem[64]] = mem[_11941]
                                                                mem[mem[64] + 64] = _11999
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _11998, _11999, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.0xffb2c479 with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _11970 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _12028 = mem[_11970 + 32]
                                                                _12029 = mem[_11970 + 64]
                                                                mem[mem[64]] = mem[_11970]
                                                                mem[mem[64] + 64] = _12029
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _12028, _12029, gasForProcessing, 1, tx.origin);
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
                                                call dividendTrackerAddress.0xe30443bc with:
                                                     gas gas_remaining wei
                                                    args address(arg1), balanceOf[address(arg1)]
                                                mem[0] = arg2
                                                mem[32] = 0
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.0xe30443bc with:
                                                     gas gas_remaining wei
                                                    args address(arg2), balanceOf[address(arg2)]
                                                if not ext_call.success:
                                                    if not ext_call.success:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.0xffb2c479 with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _12325 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _12383 = mem[_12325 + 32]
                                                                _12384 = mem[_12325 + 64]
                                                                mem[mem[64]] = mem[_12325]
                                                                mem[mem[64] + 64] = _12384
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _12383, _12384, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.0xffb2c479 with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _12357 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _12411 = mem[_12357 + 32]
                                                                _12412 = mem[_12357 + 64]
                                                                mem[mem[64]] = mem[_12357]
                                                                mem[mem[64] + 64] = _12412
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _12411, _12412, gasForProcessing, 1, tx.origin);
                                                else:
                                                    if not ext_call.success:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.0xffb2c479 with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _12359 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _12415 = mem[_12359 + 32]
                                                                _12416 = mem[_12359 + 64]
                                                                mem[mem[64]] = mem[_12359]
                                                                mem[mem[64] + 64] = _12416
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _12415, _12416, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.0xffb2c479 with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _12388 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _12444 = mem[_12388 + 32]
                                                                _12445 = mem[_12388 + 64]
                                                                mem[mem[64]] = mem[_12388]
                                                                mem[mem[64] + 64] = _12445
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _12444, _12445, gasForProcessing, 1, tx.origin);
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



}
