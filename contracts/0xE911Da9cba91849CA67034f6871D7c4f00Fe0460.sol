contract main {




// =====================  Runtime code  =====================


#
#  - transfer(address arg1, uint256 arg2)
#
const decimals = 18

const VERSION = 1


mapping of uint256 balanceOf;
mapping of struct allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
uint16 stor5;
address stor5; offset 16
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

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint16(stor5.field_0) = 57005
    Mask(144, 0, stor5.field_16) = 0
    emit OwnershipTransferred(owner, 57005);
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
    staticcall arg1.0xc45a0155 with:
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
                            mem[(7 * ceil32(return_data.size)) + 388] = 0
                            mem[(7 * ceil32(return_data.size)) + 420] = 0
                            mem[(7 * ceil32(return_data.size)) + 452] = 0
                            mem[(7 * ceil32(return_data.size)) + 484] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                 gas gas_remaining wei
                                args this.address, (balanceOf[this.address] * liquidityFee / totalFees) - (balanceOf[this.address] * liquidityFee / totalFees / 2), 0, 0, 0, block.timestamp
                            mem[(7 * ceil32(return_data.size)) + 320 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                Mask(255, 1, balanceOf[this.address] * liquidityFee / totalFees),
                                                0,
                                                (balanceOf[this.address] * liquidityFee / totalFees) - (balanceOf[this.address] * liquidityFee / totalFees / 2),
                                                mem[(9 * ceil32(return_data.size)) + 416 len 5 * ceil32(return_data.size)],
                            mem[(9 * ceil32(return_data.size)) + 352] = this.address
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[(9 * ceil32(return_data.size)) + 448] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(9 * ceil32(return_data.size)) + 384] = ext_call.return_data[12 len 20]
                            mem[(9 * ceil32(return_data.size)) + 416] = rewardTokenAddress
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor6].field_0 = balanceOf[this.address]
                            emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                            mem[(10 * ceil32(return_data.size)) + 448] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[(10 * ceil32(return_data.size)) + 452] = balanceOf[this.address]
                            mem[(10 * ceil32(return_data.size)) + 516] = 160
                            mem[(10 * ceil32(return_data.size)) + 612] = 3
                            idx = 0
                            s = (10 * ceil32(return_data.size)) + 644
                            t = (9 * ceil32(return_data.size)) + 352
                            while idx < 3:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(10 * ceil32(return_data.size)) + 548] = this.address
                            mem[(10 * ceil32(return_data.size)) + 580] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 3, mem[(10 * ceil32(return_data.size)) + 644 len 96]
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
                                args dividendTrackerAddress, ext_call.return_data[0], mem[(12 * ceil32(return_data.size)) + 516 len 5 * ceil32(return_data.size)]
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
                            if stor17[address(arg1)]:
                                if not arg1:
                                    revert with 0, 'ERC20: transfer from the zero address', mem[(14 * ceil32(return_data.size)) + 580 len 9 * ceil32(return_data.size)]
                                if not arg2:
                                    revert with 0, 'ERC20: transfer to the zero address', mem[(14 * ceil32(return_data.size)) + 580 len 9 * ceil32(return_data.size)]
                                if balanceOf[address(arg1)] < arg3:
                                    revert with 0, 
                                                'ERC20: transfer amount exceeds balance',
                                                mem[(14 * ceil32(return_data.size)) + 580 len 9 * ceil32(return_data.size)]
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[arg2] > !arg3:
                                    revert with 0, 17
                                balanceOf[arg2] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if stor17[address(arg2)]:
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address', mem[(14 * ceil32(return_data.size)) + 580 len 9 * ceil32(return_data.size)]
                                    if not arg2:
                                        revert with 0, 'ERC20: transfer to the zero address', mem[(14 * ceil32(return_data.size)) + 580 len 9 * ceil32(return_data.size)]
                                    if balanceOf[address(arg1)] < arg3:
                                        revert with 0, 
                                                    'ERC20: transfer amount exceeds balance',
                                                    mem[(14 * ceil32(return_data.size)) + 580 len 9 * ceil32(return_data.size)]
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[arg2] > !arg3:
                                        revert with 0, 17
                                    balanceOf[arg2] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if stor7:
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address', mem[(14 * ceil32(return_data.size)) + 580 len 9 * ceil32(return_data.size)]
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address', mem[(14 * ceil32(return_data.size)) + 580 len 9 * ceil32(return_data.size)]
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 0, 
                                                        'ERC20: transfer amount exceeds balance',
                                                        mem[(14 * ceil32(return_data.size)) + 580 len 9 * ceil32(return_data.size)]
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
                                                revert with 0, 'ERC20: transfer from the zero address', mem[(14 * ceil32(return_data.size)) + 580 len 9 * ceil32(return_data.size)]
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer to the zero address', mem[(14 * ceil32(return_data.size)) + 580 len 9 * ceil32(return_data.size)]
                                            if balanceOf[address(arg1)] < arg3 * totalFees / 100:
                                                revert with 0, 
                                                            'ERC20: transfer amount exceeds balance',
                                                            mem[(14 * ceil32(return_data.size)) + 580 len 9 * ceil32(return_data.size)]
                                            balanceOf[address(arg1)] -= arg3 * totalFees / 100
                                            if balanceOf[this.address] > !(arg3 * totalFees / 100):
                                                revert with 0, 17
                                            balanceOf[this.address] += arg3 * totalFees / 100
                                            emit Transfer((arg3 * totalFees / 100), arg1, this.address);
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer from the zero address', mem[(14 * ceil32(return_data.size)) + 580 len 9 * ceil32(return_data.size)]
                                            if not arg2:
                                                revert with 0, 'ERC20: transfer to the zero address', mem[(14 * ceil32(return_data.size)) + 580 len 9 * ceil32(return_data.size)]
                                            if balanceOf[address(arg1)] < arg3 - (arg3 * totalFees / 100):
                                                revert with 0, 
                                                            'ERC20: transfer amount exceeds balance',
                                                            mem[(14 * ceil32(return_data.size)) + 580 len 9 * ceil32(return_data.size)]
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
                                                revert with 0, 'ERC20: transfer from the zero address', mem[(14 * ceil32(return_data.size)) + 580 len 9 * ceil32(return_data.size)]
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer to the zero address', mem[(14 * ceil32(return_data.size)) + 580 len 9 * ceil32(return_data.size)]
                                            if balanceOf[address(arg1)] < (arg3 * totalFees / 100) + (arg3 / 100):
                                                revert with 0, 
                                                            'ERC20: transfer amount exceeds balance',
                                                            mem[(14 * ceil32(return_data.size)) + 580 len 9 * ceil32(return_data.size)]
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - (arg3 * totalFees / 100) - (arg3 / 100)
                                            if balanceOf[this.address] > !((arg3 * totalFees / 100) + (arg3 / 100)):
                                                revert with 0, 17
                                            balanceOf[this.address] = balanceOf[this.address] + (arg3 * totalFees / 100) + (arg3 / 100)
                                            emit Transfer(((arg3 * totalFees / 100) + (arg3 / 100)), arg1, this.address);
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer from the zero address', mem[(14 * ceil32(return_data.size)) + 580 len 9 * ceil32(return_data.size)]
                                            if not arg2:
                                                revert with 0, 'ERC20: transfer to the zero address', mem[(14 * ceil32(return_data.size)) + 580 len 9 * ceil32(return_data.size)]
                                            if balanceOf[address(arg1)] < arg3 - (arg3 * totalFees / 100) - (arg3 / 100):
                                                revert with 0, 
                                                            'ERC20: transfer amount exceeds balance',
                                                            mem[(14 * ceil32(return_data.size)) + 580 len 9 * ceil32(return_data.size)]
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * totalFees / 100) + (arg3 / 100)
                                            if balanceOf[arg2] > !(arg3 - (arg3 * totalFees / 100) - (arg3 / 100)):
                                                revert with 0, 17
                                            balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * totalFees / 100) - (arg3 / 100)
                                            emit Transfer((arg3 - (arg3 * totalFees / 100) - (arg3 / 100)), arg1, arg2);
                            require ext_code.size(dividendTrackerAddress)
                            call dividendTrackerAddress.0xe30443bc with:
                                 gas gas_remaining wei
                                args address(arg1), balanceOf[address(arg1)], mem[(14 * ceil32(return_data.size)) + 516 len 9 * ceil32(return_data.size)]
                            require ext_code.size(dividendTrackerAddress)
                            call dividendTrackerAddress.0xe30443bc with:
                                 gas gas_remaining wei
                                args address(arg2), balanceOf[address(arg2)], mem[(14 * ceil32(return_data.size)) + 516 len 9 * ceil32(return_data.size)]
                            if stor7:
                                if allowance[address(arg1)][msg.sender].field_0 < arg3:
                                    revert with 0, 
                                                'ERC20: transfer amount exceeds allowance',
                                                mem[(14 * ceil32(return_data.size)) + 580 len 9 * ceil32(return_data.size)]
                                if not arg1:
                                    revert with 0, 'ERC20: approve from the zero address', mem[(14 * ceil32(return_data.size)) + 580 len 9 * ceil32(return_data.size)]
                                if not msg.sender:
                                    revert with 0, 'ERC20: approve to the zero address', mem[(14 * ceil32(return_data.size)) + 580 len 9 * ceil32(return_data.size)]
                            else:
                                require ext_code.size(dividendTrackerAddress)
                                call dividendTrackerAddress.0xffb2c479 with:
                                     gas gas_remaining wei
                                    args gasForProcessing
                                if not ext_call.success:
                                    if allowance[address(arg1)][msg.sender].field_0 < arg3:
                                        revert with 0, 
                                                    'ERC20: transfer amount exceeds allowance',
                                                    mem[(14 * ceil32(return_data.size)) + 580 len 9 * ceil32(return_data.size)]
                                    if not arg1:
                                        revert with 0, 'ERC20: approve from the zero address', mem[(14 * ceil32(return_data.size)) + 580 len 9 * ceil32(return_data.size)]
                                    if not msg.sender:
                                        revert with 0, 'ERC20: approve to the zero address', mem[(14 * ceil32(return_data.size)) + 580 len 9 * ceil32(return_data.size)]
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
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if unknown_0x88bdd9be(?????) > uint32(call.func_hash) >> 224:
        if unknown_0x49bd5a5e(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x65b8dbc0(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x4fbee193(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0x49bd5a5e(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return uniswapV2PairAddress
                    if unknown_0x4e71d92d(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require ext_code.size(dividendTrackerAddress)
                        call dividendTrackerAddress.0xbc4c4b37 with:
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
            else:
                if unknown_0x700bb191(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0x700bb191(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require ext_code.size(dividendTrackerAddress)
                        call dividendTrackerAddress.0xffb2c479 with:
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
                            uint16(stor5.field_0) = 57005
                            Mask(144, 0, stor5.field_16) = 0
                            emit OwnershipTransferred(owner, 57005);
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
                    staticcall address(cd[4]).0xc45a0155 with:
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
            return 1
        if uint32(call.func_hash) >> 224 != unknown_0x23b872dd(?????):
            if unknown_0x2c1f5216(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return dividendTrackerAddress
            require unknown_0x30bb4cff(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require ext_code.size(dividendTrackerAddress)
            staticcall dividendTrackerAddress.0x85a6b3ae with:
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
            if allowance[address(cd[4])][msg.sender].field_0 < cd[68]:
                revert with 0, 'ERC20: transfer amount exceeds allowance'
            if not address(cd[4]):
                revert with 0, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(cd[4])][address(msg.sender)].field_0 = allowance[address(cd[4])][msg.sender].field_0 - cd[68]
            emit Approval((allowance[address(cd[4])][msg.sender].field_0 - cd[68]), address(cd[4]), msg.sender);
            return 1
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
            call dividendTrackerAddress.0xe30443bc with:
                 gas gas_remaining wei
                args address(cd[4]), balanceOf[address(cd[4])]
            require ext_code.size(dividendTrackerAddress)
            call dividendTrackerAddress.0xe30443bc with:
                 gas gas_remaining wei
                args address(cd[36]), balanceOf[address(cd[36])]
            if not stor7:
                require ext_code.size(dividendTrackerAddress)
                call dividendTrackerAddress.0xffb2c479 with:
                     gas gas_remaining wei
                    args gasForProcessing
                if ext_call.success:
                    require return_data.size >= 96
                    emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
            if allowance[address(cd[4])][msg.sender].field_0 < cd[68]:
                revert with 0, 'ERC20: transfer amount exceeds allowance'
            if not address(cd[4]):
                revert with 0, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(cd[4])][address(msg.sender)].field_0 = allowance[address(cd[4])][msg.sender].field_0 - cd[68]
            emit Approval((allowance[address(cd[4])][msg.sender].field_0 - cd[68]), address(cd[4]), msg.sender);
            return 1
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
            call dividendTrackerAddress.0xe30443bc with:
                 gas gas_remaining wei
                args address(cd[4]), balanceOf[address(cd[4])]
            require ext_code.size(dividendTrackerAddress)
            call dividendTrackerAddress.0xe30443bc with:
                 gas gas_remaining wei
                args address(cd[36]), balanceOf[address(cd[36])]
            if not stor7:
                require ext_code.size(dividendTrackerAddress)
                call dividendTrackerAddress.0xffb2c479 with:
                     gas gas_remaining wei
                    args gasForProcessing
                if ext_call.success:
                    require return_data.size >= 96
                    emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
            if allowance[address(cd[4])][msg.sender].field_0 < cd[68]:
                revert with 0, 'ERC20: transfer amount exceeds allowance'
            if not address(cd[4]):
                revert with 0, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(cd[4])][address(msg.sender)].field_0 = allowance[address(cd[4])][msg.sender].field_0 - cd[68]
            emit Approval((allowance[address(cd[4])][msg.sender].field_0 - cd[68]), address(cd[4]), msg.sender);
            return 1
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
            call dividendTrackerAddress.0xe30443bc with:
                 gas gas_remaining wei
                args address(cd[4]), balanceOf[address(cd[4])]
            require ext_code.size(dividendTrackerAddress)
            call dividendTrackerAddress.0xe30443bc with:
                 gas gas_remaining wei
                args address(cd[36]), balanceOf[address(cd[36])]
            if not stor7:
                require ext_code.size(dividendTrackerAddress)
                call dividendTrackerAddress.0xffb2c479 with:
                     gas gas_remaining wei
                    args gasForProcessing
                if ext_call.success:
                    require return_data.size >= 96
                    emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
            if allowance[address(cd[4])][msg.sender].field_0 < cd[68]:
                revert with 0, 'ERC20: transfer amount exceeds allowance'
            if not address(cd[4]):
                revert with 0, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(cd[4])][address(msg.sender)].field_0 = allowance[address(cd[4])][msg.sender].field_0 - cd[68]
            emit Approval((allowance[address(cd[4])][msg.sender].field_0 - cd[68]), address(cd[4]), msg.sender);
            return 1
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
            call dividendTrackerAddress.0xe30443bc with:
                 gas gas_remaining wei
                args address(cd[4]), balanceOf[address(cd[4])]
            require ext_code.size(dividendTrackerAddress)
            call dividendTrackerAddress.0xe30443bc with:
                 gas gas_remaining wei
                args address(cd[36]), balanceOf[address(cd[36])]
            if not stor7:
                require ext_code.size(dividendTrackerAddress)
                call dividendTrackerAddress.0xffb2c479 with:
                     gas gas_remaining wei
                    args gasForProcessing
                if ext_call.success:
                    require return_data.size >= 96
                    emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
            if allowance[address(cd[4])][msg.sender].field_0 < cd[68]:
                revert with 0, 'ERC20: transfer amount exceeds allowance'
            if not address(cd[4]):
                revert with 0, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(cd[4])][address(msg.sender)].field_0 = allowance[address(cd[4])][msg.sender].field_0 - cd[68]
            emit Approval((allowance[address(cd[4])][msg.sender].field_0 - cd[68]), address(cd[4]), msg.sender);
            return 1
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
            call dividendTrackerAddress.0xe30443bc with:
                 gas gas_remaining wei
                args address(cd[4]), balanceOf[address(cd[4])]
            require ext_code.size(dividendTrackerAddress)
            call dividendTrackerAddress.0xe30443bc with:
                 gas gas_remaining wei
                args address(cd[36]), balanceOf[address(cd[36])]
            if not stor7:
                require ext_code.size(dividendTrackerAddress)
                call dividendTrackerAddress.0xffb2c479 with:
                     gas gas_remaining wei
                    args gasForProcessing
                if ext_call.success:
                    require return_data.size >= 96
                    emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
            if allowance[address(cd[4])][msg.sender].field_0 < cd[68]:
                revert with 0, 'ERC20: transfer amount exceeds allowance'
            if not address(cd[4]):
                revert with 0, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(cd[4])][address(msg.sender)].field_0 = allowance[address(cd[4])][msg.sender].field_0 - cd[68]
            emit Approval((allowance[address(cd[4])][msg.sender].field_0 - cd[68]), address(cd[4]), msg.sender);
            return 1
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
        _8504 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _8519 = mem[_8504]
        if mem[_8504] < ext_call.return_data[0]:
            revert with 0, 17
        mem[mem[64] + 4] = _marketingWalletAddress
        mem[mem[64] + 36] = _8519 - ext_call.return_data[0]
        require ext_code.size(rewardTokenAddress)
        call rewardTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args _marketingWalletAddress, _8519 - ext_call.return_data[0]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _8529 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_8529] == bool(mem[_8529])
        if balanceOf[this.address] and liquidityFee > -1 / balanceOf[this.address]:
            revert with 0, 17
        if not totalFees:
            revert with 0, 18
        if balanceOf[this.address] * liquidityFee / totalFees < balanceOf[this.address] * liquidityFee / totalFees / 2:
            revert with 0, 17
        _8533 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_8533 + 32 len 64] = call.data[calldata.size len 64]
        if 0 >= mem[_8533]:
            revert with 0, 50
        mem[_8533 + 32] = this.address
        require ext_code.size(uniswapV2RouterAddress)
        staticcall uniswapV2RouterAddress.WETH() with:
                gas gas_remaining wei
        mem[_8533 + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _8533 + ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if 1 >= mem[_8533]:
            revert with 0, 50
        mem[_8533 + 64] = ext_call.return_data[12 len 20]
        if not this.address:
            revert with 0, 'ERC20: approve from the zero address'
        if not uniswapV2RouterAddress:
            revert with 0, 'ERC20: approve to the zero address'
        mem[0] = uniswapV2RouterAddress
        mem[32] = sha3(address(this.address), 1)
        allowance[address(this.address)][stor6].field_0 = balanceOf[this.address] * liquidityFee / totalFees / 2
        allowance[address(this.address)][stor6].field_255 = 0
        emit Approval((balanceOf[this.address] * liquidityFee / totalFees / 2), this.address, uniswapV2RouterAddress);
        mem[_8533 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
        mem[_8533 + ceil32(return_data.size) + 100] = balanceOf[this.address] * liquidityFee / totalFees / 2
        mem[_8533 + ceil32(return_data.size) + 132] = 0
        mem[_8533 + ceil32(return_data.size) + 164] = 160
        mem[_8533 + ceil32(return_data.size) + 260] = mem[_8533]
        idx = 0
        s = _8533 + ceil32(return_data.size) + 292
        t = _8533 + 32
        while idx < mem[_8533]:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(uniswapV2RouterAddress)
        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args Mask(255, 1, balanceOf[this.address] * liquidityFee / totalFees), 0, 160, address(this.address), block.timestamp, mem[_8533 + ceil32(return_data.size) + 260 len (32 * mem[_8533]) + 32]
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
        mem[_8533 + ceil32(return_data.size) + 164] = 0
        mem[_8533 + ceil32(return_data.size) + 196] = 0
        mem[_8533 + ceil32(return_data.size) + 228] = 0
        mem[_8533 + ceil32(return_data.size) + 260] = block.timestamp
        require ext_code.size(uniswapV2RouterAddress)
        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
             gas gas_remaining wei
            args this.address, (balanceOf[this.address] * liquidityFee / totalFees) - (balanceOf[this.address] * liquidityFee / totalFees / 2), 0, 0, 0, block.timestamp
        mem[_8533 + ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        emit SwapAndLiquify(Mask(255, 1, balanceOf[this.address] * liquidityFee / totalFees), 0, (balanceOf[this.address] * liquidityFee / totalFees) - (balanceOf[this.address] * liquidityFee / totalFees / 2));
        mem[_8533 + (2 * ceil32(return_data.size)) + 96] = 3
        mem[_8533 + (2 * ceil32(return_data.size)) + 128] = this.address
        require ext_code.size(uniswapV2RouterAddress)
        staticcall uniswapV2RouterAddress.WETH() with:
                gas gas_remaining wei
        mem[_8533 + (2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _8533 + (4 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[_8533 + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
        mem[_8533 + (2 * ceil32(return_data.size)) + 192] = rewardTokenAddress
        if not this.address:
            revert with 0, 'ERC20: approve from the zero address'
        if not uniswapV2RouterAddress:
            revert with 0, 'ERC20: approve to the zero address'
        mem[0] = uniswapV2RouterAddress
        mem[32] = sha3(address(this.address), 1)
        allowance[address(this.address)][stor6].field_0 = balanceOf[this.address]
        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
        mem[_8533 + (4 * ceil32(return_data.size)) + 224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[_8533 + (4 * ceil32(return_data.size)) + 228] = balanceOf[this.address]
        mem[_8533 + (4 * ceil32(return_data.size)) + 260] = 0
        mem[_8533 + (4 * ceil32(return_data.size)) + 292] = 160
        mem[_8533 + (4 * ceil32(return_data.size)) + 388] = 3
        idx = 0
        s = _8533 + (4 * ceil32(return_data.size)) + 420
        t = _8533 + (2 * ceil32(return_data.size)) + 128
        while idx < mem[_8533 + (2 * ceil32(return_data.size)) + 96]:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_8533 + (4 * ceil32(return_data.size)) + 324] = this.address
        mem[_8533 + (4 * ceil32(return_data.size)) + 356] = block.timestamp
        require ext_code.size(uniswapV2RouterAddress)
        call uniswapV2RouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[_8533 + (4 * ceil32(return_data.size)) + 388 len (32 * mem[_8533 + (2 * ceil32(return_data.size)) + 96]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(rewardTokenAddress)
        staticcall rewardTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[_8533 + (4 * ceil32(return_data.size)) + 228] = dividendTrackerAddress
        mem[_8533 + (4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
        require ext_code.size(rewardTokenAddress)
        call rewardTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args mem[_8533 + (4 * ceil32(return_data.size)) + 228 len (7 * ceil32(return_data.size)) + 64]
        mem[_8533 + (4 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
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
        if stor17[address(cd[4])]:
            if not address(cd[4]):
                mem[_8533 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_8533 + (8 * ceil32(return_data.size)) + 228] = 32
                mem[_8533 + (8 * ceil32(return_data.size)) + 260] = 37
                mem[_8533 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer from the zero ad'
                mem[_8533 + (8 * ceil32(return_data.size)) + 324] = 0x6472657373000000000000000000000000000000000000000000000000000000
            else:
                if not address(cd[36]):
                    mem[_8533 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_8533 + (8 * ceil32(return_data.size)) + 228] = 32
                    mem[_8533 + (8 * ceil32(return_data.size)) + 260] = 35
                    mem[_8533 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer to the zero addr'
                    mem[_8533 + (8 * ceil32(return_data.size)) + 324] = 0x6573730000000000000000000000000000000000000000000000000000000000
                else:
                    if balanceOf[address(cd[4])] < cd[68]:
                        mem[_8533 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_8533 + (8 * ceil32(return_data.size)) + 228] = 32
                        mem[_8533 + (8 * ceil32(return_data.size)) + 260] = 38
                        mem[_8533 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer amount exceeds b'
                        mem[_8533 + (8 * ceil32(return_data.size)) + 324] = 0x616c616e63650000000000000000000000000000000000000000000000000000
                    else:
                        balanceOf[address(cd[4])] -= cd[68]
                        if balanceOf[address(cd[36])] > !cd[68]:
                            revert with 0, 17
                        balanceOf[address(cd[36])] += cd[68]
                        emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                        mem[_8533 + (8 * ceil32(return_data.size)) + 228] = address(cd[4])
                        mem[_8533 + (8 * ceil32(return_data.size)) + 260] = balanceOf[address(cd[4])]
                        require ext_code.size(dividendTrackerAddress)
                        call dividendTrackerAddress.0xe30443bc with:
                             gas gas_remaining wei
                            args mem[_8533 + (8 * ceil32(return_data.size)) + 228 len (13 * ceil32(return_data.size)) + 64]
                        mem[_8533 + (8 * ceil32(return_data.size)) + 228] = address(cd[36])
                        mem[_8533 + (8 * ceil32(return_data.size)) + 260] = balanceOf[address(cd[36])]
                        require ext_code.size(dividendTrackerAddress)
                        call dividendTrackerAddress.0xe30443bc with:
                             gas gas_remaining wei
                            args mem[_8533 + (8 * ceil32(return_data.size)) + 228 len (13 * ceil32(return_data.size)) + 64]
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
                                                              mem[_8533 + (9 * ceil32(return_data.size)) + 352 len 5 * ceil32(return_data.size)],
                                                              1,
                                                              tx.origin,
                                if allowance[address(cd[4])][msg.sender].field_0 < cd[68]:
                                    revert with 0, 
                                                'ERC20: transfer amount exceeds allowance',
                                                mem[_8533 + (9 * ceil32(return_data.size)) + 356 len 5 * ceil32(return_data.size)]
                                if not address(cd[4]):
                                    revert with 0, 
                                                'ERC20: approve from the zero address',
                                                mem[_8533 + (9 * ceil32(return_data.size)) + 356 len 5 * ceil32(return_data.size)]
                                if not msg.sender:
                                    revert with 0, 
                                                'ERC20: approve to the zero address',
                                                mem[_8533 + (9 * ceil32(return_data.size)) + 356 len 5 * ceil32(return_data.size)]
                                allowance[address(cd[4])][address(msg.sender)].field_0 = allowance[address(cd[4])][msg.sender].field_0 - cd[68]
                                emit Approval((allowance[address(cd[4])][msg.sender].field_0 - cd[68]), address(cd[4]), msg.sender);
                                return 1
                        if allowance[address(cd[4])][msg.sender].field_0 < cd[68]:
                            mem[_8533 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_8533 + (8 * ceil32(return_data.size)) + 228] = 32
                            mem[_8533 + (8 * ceil32(return_data.size)) + 260] = 40
                            mem[_8533 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer amount exceeds a'
                            mem[_8533 + (8 * ceil32(return_data.size)) + 324] = 'llowance' << 192
                        else:
                            if not address(cd[4]):
                                mem[_8533 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_8533 + (8 * ceil32(return_data.size)) + 228] = 32
                                mem[_8533 + (8 * ceil32(return_data.size)) + 260] = 36
                                mem[_8533 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: approve from the zero add'
                                mem[_8533 + (8 * ceil32(return_data.size)) + 324] = 0x7265737300000000000000000000000000000000000000000000000000000000
                            else:
                                if msg.sender:
                                    allowance[address(cd[4])][address(msg.sender)].field_0 = allowance[address(cd[4])][msg.sender].field_0 - cd[68]
                                    emit Approval((allowance[address(cd[4])][msg.sender].field_0 - cd[68]), address(cd[4]), msg.sender);
                                    return 1
                                mem[_8533 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_8533 + (8 * ceil32(return_data.size)) + 228] = 32
                                mem[_8533 + (8 * ceil32(return_data.size)) + 260] = 34
                                mem[_8533 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: approve to the zero addre'
                                mem[_8533 + (8 * ceil32(return_data.size)) + 324] = 0x7373000000000000000000000000000000000000000000000000000000000000
        else:
            if stor17[address(cd[36])]:
                if not address(cd[4]):
                    mem[_8533 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_8533 + (8 * ceil32(return_data.size)) + 228] = 32
                    mem[_8533 + (8 * ceil32(return_data.size)) + 260] = 37
                    mem[_8533 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer from the zero ad'
                    mem[_8533 + (8 * ceil32(return_data.size)) + 324] = 0x6472657373000000000000000000000000000000000000000000000000000000
                else:
                    if not address(cd[36]):
                        mem[_8533 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_8533 + (8 * ceil32(return_data.size)) + 228] = 32
                        mem[_8533 + (8 * ceil32(return_data.size)) + 260] = 35
                        mem[_8533 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer to the zero addr'
                        mem[_8533 + (8 * ceil32(return_data.size)) + 324] = 0x6573730000000000000000000000000000000000000000000000000000000000
                    else:
                        if balanceOf[address(cd[4])] < cd[68]:
                            mem[_8533 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_8533 + (8 * ceil32(return_data.size)) + 228] = 32
                            mem[_8533 + (8 * ceil32(return_data.size)) + 260] = 38
                            mem[_8533 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer amount exceeds b'
                            mem[_8533 + (8 * ceil32(return_data.size)) + 324] = 0x616c616e63650000000000000000000000000000000000000000000000000000
                        else:
                            balanceOf[address(cd[4])] -= cd[68]
                            if balanceOf[address(cd[36])] > !cd[68]:
                                revert with 0, 17
                            balanceOf[address(cd[36])] += cd[68]
                            emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                            mem[_8533 + (8 * ceil32(return_data.size)) + 228] = address(cd[4])
                            mem[_8533 + (8 * ceil32(return_data.size)) + 260] = balanceOf[address(cd[4])]
                            require ext_code.size(dividendTrackerAddress)
                            call dividendTrackerAddress.0xe30443bc with:
                                 gas gas_remaining wei
                                args mem[_8533 + (8 * ceil32(return_data.size)) + 228 len (13 * ceil32(return_data.size)) + 64]
                            mem[_8533 + (8 * ceil32(return_data.size)) + 228] = address(cd[36])
                            mem[_8533 + (8 * ceil32(return_data.size)) + 260] = balanceOf[address(cd[36])]
                            require ext_code.size(dividendTrackerAddress)
                            call dividendTrackerAddress.0xe30443bc with:
                                 gas gas_remaining wei
                                args mem[_8533 + (8 * ceil32(return_data.size)) + 228 len (13 * ceil32(return_data.size)) + 64]
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
                                                                  mem[_8533 + (9 * ceil32(return_data.size)) + 352 len 5 * ceil32(return_data.size)],
                                                                  1,
                                                                  tx.origin,
                                    if allowance[address(cd[4])][msg.sender].field_0 < cd[68]:
                                        revert with 0, 
                                                    'ERC20: transfer amount exceeds allowance',
                                                    mem[_8533 + (9 * ceil32(return_data.size)) + 356 len 5 * ceil32(return_data.size)]
                                    if not address(cd[4]):
                                        revert with 0, 
                                                    'ERC20: approve from the zero address',
                                                    mem[_8533 + (9 * ceil32(return_data.size)) + 356 len 5 * ceil32(return_data.size)]
                                    if not msg.sender:
                                        revert with 0, 
                                                    'ERC20: approve to the zero address',
                                                    mem[_8533 + (9 * ceil32(return_data.size)) + 356 len 5 * ceil32(return_data.size)]
                                    allowance[address(cd[4])][address(msg.sender)].field_0 = allowance[address(cd[4])][msg.sender].field_0 - cd[68]
                                    emit Approval((allowance[address(cd[4])][msg.sender].field_0 - cd[68]), address(cd[4]), msg.sender);
                                    return 1
                            if allowance[address(cd[4])][msg.sender].field_0 < cd[68]:
                                mem[_8533 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_8533 + (8 * ceil32(return_data.size)) + 228] = 32
                                mem[_8533 + (8 * ceil32(return_data.size)) + 260] = 40
                                mem[_8533 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer amount exceeds a'
                                mem[_8533 + (8 * ceil32(return_data.size)) + 324] = 'llowance' << 192
                            else:
                                if not address(cd[4]):
                                    mem[_8533 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_8533 + (8 * ceil32(return_data.size)) + 228] = 32
                                    mem[_8533 + (8 * ceil32(return_data.size)) + 260] = 36
                                    mem[_8533 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: approve from the zero add'
                                    mem[_8533 + (8 * ceil32(return_data.size)) + 324] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                else:
                                    if msg.sender:
                                        allowance[address(cd[4])][address(msg.sender)].field_0 = allowance[address(cd[4])][msg.sender].field_0 - cd[68]
                                        emit Approval((allowance[address(cd[4])][msg.sender].field_0 - cd[68]), address(cd[4]), msg.sender);
                                        return 1
                                    mem[_8533 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_8533 + (8 * ceil32(return_data.size)) + 228] = 32
                                    mem[_8533 + (8 * ceil32(return_data.size)) + 260] = 34
                                    mem[_8533 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: approve to the zero addre'
                                    mem[_8533 + (8 * ceil32(return_data.size)) + 324] = 0x7373000000000000000000000000000000000000000000000000000000000000
            else:
                if stor7:
                    if not address(cd[4]):
                        mem[_8533 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_8533 + (8 * ceil32(return_data.size)) + 228] = 32
                        mem[_8533 + (8 * ceil32(return_data.size)) + 260] = 37
                        mem[_8533 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer from the zero ad'
                        mem[_8533 + (8 * ceil32(return_data.size)) + 324] = 0x6472657373000000000000000000000000000000000000000000000000000000
                    else:
                        if not address(cd[36]):
                            mem[_8533 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_8533 + (8 * ceil32(return_data.size)) + 228] = 32
                            mem[_8533 + (8 * ceil32(return_data.size)) + 260] = 35
                            mem[_8533 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer to the zero addr'
                            mem[_8533 + (8 * ceil32(return_data.size)) + 324] = 0x6573730000000000000000000000000000000000000000000000000000000000
                        else:
                            if balanceOf[address(cd[4])] < cd[68]:
                                mem[_8533 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_8533 + (8 * ceil32(return_data.size)) + 228] = 32
                                mem[_8533 + (8 * ceil32(return_data.size)) + 260] = 38
                                mem[_8533 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer amount exceeds b'
                                mem[_8533 + (8 * ceil32(return_data.size)) + 324] = 0x616c616e63650000000000000000000000000000000000000000000000000000
                            else:
                                balanceOf[address(cd[4])] -= cd[68]
                                if balanceOf[address(cd[36])] > !cd[68]:
                                    revert with 0, 17
                                balanceOf[address(cd[36])] += cd[68]
                                emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                mem[_8533 + (8 * ceil32(return_data.size)) + 228] = address(cd[4])
                                mem[_8533 + (8 * ceil32(return_data.size)) + 260] = balanceOf[address(cd[4])]
                                require ext_code.size(dividendTrackerAddress)
                                call dividendTrackerAddress.0xe30443bc with:
                                     gas gas_remaining wei
                                    args mem[_8533 + (8 * ceil32(return_data.size)) + 228 len (13 * ceil32(return_data.size)) + 64]
                                mem[_8533 + (8 * ceil32(return_data.size)) + 228] = address(cd[36])
                                mem[_8533 + (8 * ceil32(return_data.size)) + 260] = balanceOf[address(cd[36])]
                                require ext_code.size(dividendTrackerAddress)
                                call dividendTrackerAddress.0xe30443bc with:
                                     gas gas_remaining wei
                                    args mem[_8533 + (8 * ceil32(return_data.size)) + 228 len (13 * ceil32(return_data.size)) + 64]
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
                                                                      mem[_8533 + (9 * ceil32(return_data.size)) + 352 len 5 * ceil32(return_data.size)],
                                                                      1,
                                                                      tx.origin,
                                        if allowance[address(cd[4])][msg.sender].field_0 < cd[68]:
                                            revert with 0, 
                                                        'ERC20: transfer amount exceeds allowance',
                                                        mem[_8533 + (9 * ceil32(return_data.size)) + 356 len 5 * ceil32(return_data.size)]
                                        if not address(cd[4]):
                                            revert with 0, 
                                                        'ERC20: approve from the zero address',
                                                        mem[_8533 + (9 * ceil32(return_data.size)) + 356 len 5 * ceil32(return_data.size)]
                                        if not msg.sender:
                                            revert with 0, 
                                                        'ERC20: approve to the zero address',
                                                        mem[_8533 + (9 * ceil32(return_data.size)) + 356 len 5 * ceil32(return_data.size)]
                                        allowance[address(cd[4])][address(msg.sender)].field_0 = allowance[address(cd[4])][msg.sender].field_0 - cd[68]
                                        emit Approval((allowance[address(cd[4])][msg.sender].field_0 - cd[68]), address(cd[4]), msg.sender);
                                        return 1
                                if allowance[address(cd[4])][msg.sender].field_0 < cd[68]:
                                    mem[_8533 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_8533 + (8 * ceil32(return_data.size)) + 228] = 32
                                    mem[_8533 + (8 * ceil32(return_data.size)) + 260] = 40
                                    mem[_8533 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer amount exceeds a'
                                    mem[_8533 + (8 * ceil32(return_data.size)) + 324] = 'llowance' << 192
                                else:
                                    if not address(cd[4]):
                                        mem[_8533 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_8533 + (8 * ceil32(return_data.size)) + 228] = 32
                                        mem[_8533 + (8 * ceil32(return_data.size)) + 260] = 36
                                        mem[_8533 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: approve from the zero add'
                                        mem[_8533 + (8 * ceil32(return_data.size)) + 324] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                    else:
                                        if msg.sender:
                                            allowance[address(cd[4])][address(msg.sender)].field_0 = allowance[address(cd[4])][msg.sender].field_0 - cd[68]
                                            emit Approval((allowance[address(cd[4])][msg.sender].field_0 - cd[68]), address(cd[4]), msg.sender);
                                            return 1
                                        mem[_8533 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_8533 + (8 * ceil32(return_data.size)) + 228] = 32
                                        mem[_8533 + (8 * ceil32(return_data.size)) + 260] = 34
                                        mem[_8533 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: approve to the zero addre'
                                        mem[_8533 + (8 * ceil32(return_data.size)) + 324] = 0x7373000000000000000000000000000000000000000000000000000000000000
                else:
                    if cd[68] and totalFees > -1 / cd[68]:
                        revert with 0, 17
                    if not stor18[address(cd[36])]:
                        if cd[68] < cd[68] * totalFees / 100:
                            revert with 0, 17
                        if not address(cd[4]):
                            mem[_8533 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_8533 + (8 * ceil32(return_data.size)) + 228] = 32
                            mem[_8533 + (8 * ceil32(return_data.size)) + 260] = 37
                            mem[_8533 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer from the zero ad'
                            mem[_8533 + (8 * ceil32(return_data.size)) + 324] = 0x6472657373000000000000000000000000000000000000000000000000000000
                        else:
                            if not this.address:
                                mem[_8533 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_8533 + (8 * ceil32(return_data.size)) + 228] = 32
                                mem[_8533 + (8 * ceil32(return_data.size)) + 260] = 35
                                mem[_8533 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer to the zero addr'
                                mem[_8533 + (8 * ceil32(return_data.size)) + 324] = 0x6573730000000000000000000000000000000000000000000000000000000000
                            else:
                                if balanceOf[address(cd[4])] < cd[68] * totalFees / 100:
                                    mem[_8533 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_8533 + (8 * ceil32(return_data.size)) + 228] = 32
                                    mem[_8533 + (8 * ceil32(return_data.size)) + 260] = 38
                                    mem[_8533 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer amount exceeds b'
                                    mem[_8533 + (8 * ceil32(return_data.size)) + 324] = 0x616c616e63650000000000000000000000000000000000000000000000000000
                                else:
                                    balanceOf[address(cd[4])] -= cd[68] * totalFees / 100
                                    if balanceOf[this.address] > !(cd[68] * totalFees / 100):
                                        revert with 0, 17
                                    balanceOf[this.address] += cd[68] * totalFees / 100
                                    emit Transfer((cd[68] * totalFees / 100), address(cd[4]), this.address);
                                    if not address(cd[4]):
                                        mem[_8533 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_8533 + (8 * ceil32(return_data.size)) + 228] = 32
                                        mem[_8533 + (8 * ceil32(return_data.size)) + 260] = 37
                                        mem[_8533 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer from the zero ad'
                                        mem[_8533 + (8 * ceil32(return_data.size)) + 324] = 0x6472657373000000000000000000000000000000000000000000000000000000
                                    else:
                                        if not address(cd[36]):
                                            mem[_8533 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_8533 + (8 * ceil32(return_data.size)) + 228] = 32
                                            mem[_8533 + (8 * ceil32(return_data.size)) + 260] = 35
                                            mem[_8533 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer to the zero addr'
                                            mem[_8533 + (8 * ceil32(return_data.size)) + 324] = 0x6573730000000000000000000000000000000000000000000000000000000000
                                        else:
                                            if balanceOf[address(cd[4])] < cd[68] - (cd[68] * totalFees / 100):
                                                mem[_8533 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_8533 + (8 * ceil32(return_data.size)) + 228] = 32
                                                mem[_8533 + (8 * ceil32(return_data.size)) + 260] = 38
                                                mem[_8533 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer amount exceeds b'
                                                mem[_8533 + (8 * ceil32(return_data.size)) + 324] = 0x616c616e63650000000000000000000000000000000000000000000000000000
                                            else:
                                                balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * totalFees / 100)
                                                if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * totalFees / 100)):
                                                    revert with 0, 17
                                                balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * totalFees / 100)
                                                emit Transfer((cd[68] - (cd[68] * totalFees / 100)), address(cd[4]), address(cd[36]));
                                                mem[_8533 + (8 * ceil32(return_data.size)) + 228] = address(cd[4])
                                                mem[_8533 + (8 * ceil32(return_data.size)) + 260] = balanceOf[address(cd[4])]
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.0xe30443bc with:
                                                     gas gas_remaining wei
                                                    args mem[_8533 + (8 * ceil32(return_data.size)) + 228 len (13 * ceil32(return_data.size)) + 64]
                                                mem[_8533 + (8 * ceil32(return_data.size)) + 228] = address(cd[36])
                                                mem[_8533 + (8 * ceil32(return_data.size)) + 260] = balanceOf[address(cd[36])]
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.0xe30443bc with:
                                                     gas gas_remaining wei
                                                    args mem[_8533 + (8 * ceil32(return_data.size)) + 228 len (13 * ceil32(return_data.size)) + 64]
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
                                                                                      mem[_8533 + (9 * ceil32(return_data.size)) + 352 len 5 * ceil32(return_data.size)],
                                                                                      1,
                                                                                      tx.origin,
                                                        if allowance[address(cd[4])][msg.sender].field_0 < cd[68]:
                                                            revert with 0, 
                                                                        'ERC20: transfer amount exceeds allowance',
                                                                        mem[_8533 + (9 * ceil32(return_data.size)) + 356 len 5 * ceil32(return_data.size)]
                                                        if not address(cd[4]):
                                                            revert with 0, 
                                                                        'ERC20: approve from the zero address',
                                                                        mem[_8533 + (9 * ceil32(return_data.size)) + 356 len 5 * ceil32(return_data.size)]
                                                        if not msg.sender:
                                                            revert with 0, 
                                                                        'ERC20: approve to the zero address',
                                                                        mem[_8533 + (9 * ceil32(return_data.size)) + 356 len 5 * ceil32(return_data.size)]
                                                        allowance[address(cd[4])][address(msg.sender)].field_0 = allowance[address(cd[4])][msg.sender].field_0 - cd[68]
                                                        emit Approval((allowance[address(cd[4])][msg.sender].field_0 - cd[68]), address(cd[4]), msg.sender);
                                                        return 1
                                                if allowance[address(cd[4])][msg.sender].field_0 < cd[68]:
                                                    mem[_8533 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_8533 + (8 * ceil32(return_data.size)) + 228] = 32
                                                    mem[_8533 + (8 * ceil32(return_data.size)) + 260] = 40
                                                    mem[_8533 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer amount exceeds a'
                                                    mem[_8533 + (8 * ceil32(return_data.size)) + 324] = 'llowance' << 192
                                                else:
                                                    if not address(cd[4]):
                                                        mem[_8533 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[_8533 + (8 * ceil32(return_data.size)) + 228] = 32
                                                        mem[_8533 + (8 * ceil32(return_data.size)) + 260] = 36
                                                        mem[_8533 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: approve from the zero add'
                                                        mem[_8533 + (8 * ceil32(return_data.size)) + 324] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                                    else:
                                                        if msg.sender:
                                                            allowance[address(cd[4])][address(msg.sender)].field_0 = allowance[address(cd[4])][msg.sender].field_0 - cd[68]
                                                            emit Approval((allowance[address(cd[4])][msg.sender].field_0 - cd[68]), address(cd[4]), msg.sender);
                                                            return 1
                                                        mem[_8533 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[_8533 + (8 * ceil32(return_data.size)) + 228] = 32
                                                        mem[_8533 + (8 * ceil32(return_data.size)) + 260] = 34
                                                        mem[_8533 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: approve to the zero addre'
                                                        mem[_8533 + (8 * ceil32(return_data.size)) + 324] = 0x7373000000000000000000000000000000000000000000000000000000000000
                    else:
                        if cd[68] and 1 > -1 / cd[68]:
                            revert with 0, 17
                        if cd[68] * totalFees / 100 > !(cd[68] / 100):
                            revert with 0, 17
                        if cd[68] < (cd[68] * totalFees / 100) + (cd[68] / 100):
                            revert with 0, 17
                        if not address(cd[4]):
                            mem[_8533 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_8533 + (8 * ceil32(return_data.size)) + 228] = 32
                            mem[_8533 + (8 * ceil32(return_data.size)) + 260] = 37
                            mem[_8533 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer from the zero ad'
                            mem[_8533 + (8 * ceil32(return_data.size)) + 324] = 0x6472657373000000000000000000000000000000000000000000000000000000
                        else:
                            if not this.address:
                                mem[_8533 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_8533 + (8 * ceil32(return_data.size)) + 228] = 32
                                mem[_8533 + (8 * ceil32(return_data.size)) + 260] = 35
                                mem[_8533 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer to the zero addr'
                                mem[_8533 + (8 * ceil32(return_data.size)) + 324] = 0x6573730000000000000000000000000000000000000000000000000000000000
                            else:
                                if balanceOf[address(cd[4])] < (cd[68] * totalFees / 100) + (cd[68] / 100):
                                    mem[_8533 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_8533 + (8 * ceil32(return_data.size)) + 228] = 32
                                    mem[_8533 + (8 * ceil32(return_data.size)) + 260] = 38
                                    mem[_8533 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer amount exceeds b'
                                    mem[_8533 + (8 * ceil32(return_data.size)) + 324] = 0x616c616e63650000000000000000000000000000000000000000000000000000
                                else:
                                    balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - (cd[68] * totalFees / 100) - (cd[68] / 100)
                                    if balanceOf[this.address] > !((cd[68] * totalFees / 100) + (cd[68] / 100)):
                                        revert with 0, 17
                                    balanceOf[this.address] = balanceOf[this.address] + (cd[68] * totalFees / 100) + (cd[68] / 100)
                                    emit Transfer(((cd[68] * totalFees / 100) + (cd[68] / 100)), address(cd[4]), this.address);
                                    if not address(cd[4]):
                                        mem[_8533 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_8533 + (8 * ceil32(return_data.size)) + 228] = 32
                                        mem[_8533 + (8 * ceil32(return_data.size)) + 260] = 37
                                        mem[_8533 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer from the zero ad'
                                        mem[_8533 + (8 * ceil32(return_data.size)) + 324] = 0x6472657373000000000000000000000000000000000000000000000000000000
                                    else:
                                        if not address(cd[36]):
                                            mem[_8533 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_8533 + (8 * ceil32(return_data.size)) + 228] = 32
                                            mem[_8533 + (8 * ceil32(return_data.size)) + 260] = 35
                                            mem[_8533 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer to the zero addr'
                                            mem[_8533 + (8 * ceil32(return_data.size)) + 324] = 0x6573730000000000000000000000000000000000000000000000000000000000
                                        else:
                                            if balanceOf[address(cd[4])] < cd[68] - (cd[68] * totalFees / 100) - (cd[68] / 100):
                                                mem[_8533 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_8533 + (8 * ceil32(return_data.size)) + 228] = 32
                                                mem[_8533 + (8 * ceil32(return_data.size)) + 260] = 38
                                                mem[_8533 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer amount exceeds b'
                                                mem[_8533 + (8 * ceil32(return_data.size)) + 324] = 0x616c616e63650000000000000000000000000000000000000000000000000000
                                            else:
                                                balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * totalFees / 100) + (cd[68] / 100)
                                                if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * totalFees / 100) - (cd[68] / 100)):
                                                    revert with 0, 17
                                                balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * totalFees / 100) - (cd[68] / 100)
                                                emit Transfer((cd[68] - (cd[68] * totalFees / 100) - (cd[68] / 100)), address(cd[4]), address(cd[36]));
                                                mem[_8533 + (8 * ceil32(return_data.size)) + 228] = address(cd[4])
                                                mem[_8533 + (8 * ceil32(return_data.size)) + 260] = balanceOf[address(cd[4])]
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.0xe30443bc with:
                                                     gas gas_remaining wei
                                                    args mem[_8533 + (8 * ceil32(return_data.size)) + 228 len (13 * ceil32(return_data.size)) + 64]
                                                mem[_8533 + (8 * ceil32(return_data.size)) + 228] = address(cd[36])
                                                mem[_8533 + (8 * ceil32(return_data.size)) + 260] = balanceOf[address(cd[36])]
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.0xe30443bc with:
                                                     gas gas_remaining wei
                                                    args mem[_8533 + (8 * ceil32(return_data.size)) + 228 len (13 * ceil32(return_data.size)) + 64]
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
                                                                                      mem[_8533 + (9 * ceil32(return_data.size)) + 352 len 5 * ceil32(return_data.size)],
                                                                                      1,
                                                                                      tx.origin,
                                                        if allowance[address(cd[4])][msg.sender].field_0 < cd[68]:
                                                            revert with 0, 
                                                                        'ERC20: transfer amount exceeds allowance',
                                                                        mem[_8533 + (9 * ceil32(return_data.size)) + 356 len 5 * ceil32(return_data.size)]
                                                        if not address(cd[4]):
                                                            revert with 0, 
                                                                        'ERC20: approve from the zero address',
                                                                        mem[_8533 + (9 * ceil32(return_data.size)) + 356 len 5 * ceil32(return_data.size)]
                                                        if not msg.sender:
                                                            revert with 0, 
                                                                        'ERC20: approve to the zero address',
                                                                        mem[_8533 + (9 * ceil32(return_data.size)) + 356 len 5 * ceil32(return_data.size)]
                                                        allowance[address(cd[4])][address(msg.sender)].field_0 = allowance[address(cd[4])][msg.sender].field_0 - cd[68]
                                                        emit Approval((allowance[address(cd[4])][msg.sender].field_0 - cd[68]), address(cd[4]), msg.sender);
                                                        return 1
                                                if allowance[address(cd[4])][msg.sender].field_0 < cd[68]:
                                                    mem[_8533 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_8533 + (8 * ceil32(return_data.size)) + 228] = 32
                                                    mem[_8533 + (8 * ceil32(return_data.size)) + 260] = 40
                                                    mem[_8533 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: transfer amount exceeds a'
                                                    mem[_8533 + (8 * ceil32(return_data.size)) + 324] = 'llowance' << 192
                                                else:
                                                    if not address(cd[4]):
                                                        mem[_8533 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[_8533 + (8 * ceil32(return_data.size)) + 228] = 32
                                                        mem[_8533 + (8 * ceil32(return_data.size)) + 260] = 36
                                                        mem[_8533 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: approve from the zero add'
                                                        mem[_8533 + (8 * ceil32(return_data.size)) + 324] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                                    else:
                                                        if msg.sender:
                                                            allowance[address(cd[4])][address(msg.sender)].field_0 = allowance[address(cd[4])][msg.sender].field_0 - cd[68]
                                                            emit Approval((allowance[address(cd[4])][msg.sender].field_0 - cd[68]), address(cd[4]), msg.sender);
                                                            return 1
                                                        mem[_8533 + (8 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[_8533 + (8 * ceil32(return_data.size)) + 228] = 32
                                                        mem[_8533 + (8 * ceil32(return_data.size)) + 260] = 34
                                                        mem[_8533 + (8 * ceil32(return_data.size)) + 292] = 'ERC20: approve to the zero addre'
                                                        mem[_8533 + (8 * ceil32(return_data.size)) + 324] = 0x7373000000000000000000000000000000000000000000000000000000000000
        revert with memory
          from _8533 + (8 * ceil32(return_data.size)) + 224
           len (13 * ceil32(return_data.size)) + 132
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
                    staticcall dividendTrackerAddress.0x5183d6fd with:
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
                    staticcall dividendTrackerAddress.0xbe10b614 with:
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
            staticcall dividendTrackerAddress.0x6f2789ec with:
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
            staticcall dividendTrackerAddress.0xfbcbc0f1 with:
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
            call dividendTrackerAddress.0xe30443bc with:
                 gas gas_remaining wei
                args msg.sender, balanceOf[address(msg.sender)]
            require ext_code.size(dividendTrackerAddress)
            call dividendTrackerAddress.0xe30443bc with:
                 gas gas_remaining wei
                args address(cd[4]), balanceOf[address(cd[4])]
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
                call dividendTrackerAddress.0xe30443bc with:
                     gas gas_remaining wei
                    args msg.sender, balanceOf[address(msg.sender)]
                require ext_code.size(dividendTrackerAddress)
                call dividendTrackerAddress.0xe30443bc with:
                     gas gas_remaining wei
                    args address(cd[4]), balanceOf[address(cd[4])]
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
                    call dividendTrackerAddress.0xe30443bc with:
                         gas gas_remaining wei
                        args msg.sender, balanceOf[address(msg.sender)]
                    require ext_code.size(dividendTrackerAddress)
                    call dividendTrackerAddress.0xe30443bc with:
                         gas gas_remaining wei
                        args address(cd[4]), balanceOf[address(cd[4])]
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
                        call dividendTrackerAddress.0xe30443bc with:
                             gas gas_remaining wei
                            args msg.sender, balanceOf[address(msg.sender)]
                        require ext_code.size(dividendTrackerAddress)
                        call dividendTrackerAddress.0xe30443bc with:
                             gas gas_remaining wei
                            args address(cd[4]), balanceOf[address(cd[4])]
                        if not stor7:
                            require ext_code.size(dividendTrackerAddress)
                            call dividendTrackerAddress.0xffb2c479 with:
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
                            call dividendTrackerAddress.0xe30443bc with:
                                 gas gas_remaining wei
                                args msg.sender, balanceOf[address(msg.sender)]
                            require ext_code.size(dividendTrackerAddress)
                            call dividendTrackerAddress.0xe30443bc with:
                                 gas gas_remaining wei
                                args address(cd[4]), balanceOf[address(cd[4])]
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
                            _8505 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _8524 = mem[_8505]
                            if mem[_8505] < ext_call.return_data[0]:
                                revert with 0, 17
                            mem[mem[64] + 4] = _marketingWalletAddress
                            mem[mem[64] + 36] = _8524 - ext_call.return_data[0]
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args _marketingWalletAddress, _8524 - ext_call.return_data[0]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8530 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8530] == bool(mem[_8530])
                            if balanceOf[this.address] and liquidityFee > -1 / balanceOf[this.address]:
                                revert with 0, 17
                            if not totalFees:
                                revert with 0, 18
                            if balanceOf[this.address] * liquidityFee / totalFees < balanceOf[this.address] * liquidityFee / totalFees / 2:
                                revert with 0, 17
                            _8535 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            mem[_8535 + 32 len 64] = call.data[calldata.size len 64]
                            if 0 >= mem[_8535]:
                                revert with 0, 50
                            mem[_8535 + 32] = this.address
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[_8535 + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _8535 + ceil32(return_data.size) + 96
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if 1 >= mem[_8535]:
                                revert with 0, 50
                            mem[_8535 + 64] = ext_call.return_data[12 len 20]
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            mem[0] = uniswapV2RouterAddress
                            mem[32] = sha3(address(this.address), 1)
                            allowance[address(this.address)][stor6].field_0 = balanceOf[this.address] * liquidityFee / totalFees / 2
                            allowance[address(this.address)][stor6].field_255 = 0
                            emit Approval((balanceOf[this.address] * liquidityFee / totalFees / 2), this.address, uniswapV2RouterAddress);
                            mem[_8535 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[_8535 + ceil32(return_data.size) + 100] = balanceOf[this.address] * liquidityFee / totalFees / 2
                            mem[_8535 + ceil32(return_data.size) + 132] = 0
                            mem[_8535 + ceil32(return_data.size) + 164] = 160
                            mem[_8535 + ceil32(return_data.size) + 260] = mem[_8535]
                            idx = 0
                            s = _8535 + ceil32(return_data.size) + 292
                            t = _8535 + 32
                            while idx < mem[_8535]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_8535 + ceil32(return_data.size) + 196] = this.address
                            mem[_8535 + ceil32(return_data.size) + 228] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _8535 + ceil32(return_data.size) + (32 * mem[_8535]) + -mem[64] + 288]
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
                            _11721 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            mem[_11721 + 32 len 96] = call.data[calldata.size len 96]
                            if 0 >= mem[_11721]:
                                revert with 0, 50
                            mem[_11721 + 32] = this.address
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[_11721 + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _11721 + ceil32(return_data.size) + 128
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if 1 >= mem[_11721]:
                                revert with 0, 50
                            mem[_11721 + 64] = ext_call.return_data[12 len 20]
                            if 2 >= mem[_11721]:
                                revert with 0, 50
                            mem[_11721 + 96] = rewardTokenAddress
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            mem[0] = uniswapV2RouterAddress
                            mem[32] = sha3(address(this.address), 1)
                            allowance[address(this.address)][stor6].field_0 = balanceOf[this.address]
                            emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                            mem[_11721 + ceil32(return_data.size) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[_11721 + ceil32(return_data.size) + 132] = balanceOf[this.address]
                            mem[_11721 + ceil32(return_data.size) + 164] = 0
                            mem[_11721 + ceil32(return_data.size) + 196] = 160
                            mem[_11721 + ceil32(return_data.size) + 292] = mem[_11721]
                            idx = 0
                            s = _11721 + ceil32(return_data.size) + 324
                            t = _11721 + 32
                            while idx < mem[_11721]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_11721 + ceil32(return_data.size) + 228] = this.address
                            mem[_11721 + ceil32(return_data.size) + 260] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _11721 + ceil32(return_data.size) + (32 * mem[_11721]) + -mem[64] + 320]
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
                            _14852 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _14854 = mem[_14852]
                            mem[mem[64] + 4] = dividendTrackerAddress
                            mem[mem[64] + 36] = _14854
                            require ext_code.size(rewardTokenAddress)
                            call rewardTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args dividendTrackerAddress, _14854
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14860 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_14860] == bool(mem[_14860])
                            if not mem[_14860]:
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
                                    call dividendTrackerAddress.0xe30443bc with:
                                         gas gas_remaining wei
                                        args msg.sender, balanceOf[address(msg.sender)]
                                    mem[0] = address(cd[4])
                                    mem[32] = 0
                                    require ext_code.size(dividendTrackerAddress)
                                    call dividendTrackerAddress.0xe30443bc with:
                                         gas gas_remaining wei
                                        args address(cd[4]), balanceOf[address(cd[4])]
                                    if not ext_call.success:
                                        if not ext_call.success:
                                            if not stor7:
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.0xffb2c479 with:
                                                     gas gas_remaining wei
                                                    args gasForProcessing
                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                if ext_call.success:
                                                    _15177 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 96
                                                    _15281 = mem[_15177 + 32]
                                                    _15282 = mem[_15177 + 64]
                                                    mem[mem[64]] = mem[_15177]
                                                    mem[mem[64] + 64] = _15282
                                                    mem[mem[64] + 96] = gasForProcessing
                                                    emit ProcessedDividendTracker(mem[mem[64]], _15281, _15282, gasForProcessing, 1, tx.origin);
                                        else:
                                            if not stor7:
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.0xffb2c479 with:
                                                     gas gas_remaining wei
                                                    args gasForProcessing
                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                if ext_call.success:
                                                    _15221 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 96
                                                    _15377 = mem[_15221 + 32]
                                                    _15378 = mem[_15221 + 64]
                                                    mem[mem[64]] = mem[_15221]
                                                    mem[mem[64] + 64] = _15378
                                                    mem[mem[64] + 96] = gasForProcessing
                                                    emit ProcessedDividendTracker(mem[mem[64]], _15377, _15378, gasForProcessing, 1, tx.origin);
                                    else:
                                        if not ext_call.success:
                                            if not stor7:
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.0xffb2c479 with:
                                                     gas gas_remaining wei
                                                    args gasForProcessing
                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                if ext_call.success:
                                                    _15223 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 96
                                                    _15380 = mem[_15223 + 32]
                                                    _15381 = mem[_15223 + 64]
                                                    mem[mem[64]] = mem[_15223]
                                                    mem[mem[64] + 64] = _15381
                                                    mem[mem[64] + 96] = gasForProcessing
                                                    emit ProcessedDividendTracker(mem[mem[64]], _15380, _15381, gasForProcessing, 1, tx.origin);
                                        else:
                                            if not stor7:
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.0xffb2c479 with:
                                                     gas gas_remaining wei
                                                    args gasForProcessing
                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                if ext_call.success:
                                                    _15286 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 96
                                                    _15490 = mem[_15286 + 32]
                                                    _15491 = mem[_15286 + 64]
                                                    mem[mem[64]] = mem[_15286]
                                                    mem[mem[64] + 64] = _15491
                                                    mem[mem[64] + 96] = gasForProcessing
                                                    emit ProcessedDividendTracker(mem[mem[64]], _15490, _15491, gasForProcessing, 1, tx.origin);
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
                                        call dividendTrackerAddress.0xe30443bc with:
                                             gas gas_remaining wei
                                            args msg.sender, balanceOf[address(msg.sender)]
                                        mem[0] = address(cd[4])
                                        mem[32] = 0
                                        require ext_code.size(dividendTrackerAddress)
                                        call dividendTrackerAddress.0xe30443bc with:
                                             gas gas_remaining wei
                                            args address(cd[4]), balanceOf[address(cd[4])]
                                        if not ext_call.success:
                                            if not ext_call.success:
                                                if not stor7:
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.0xffb2c479 with:
                                                         gas gas_remaining wei
                                                        args gasForProcessing
                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                    if ext_call.success:
                                                        _15232 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 96
                                                        _15393 = mem[_15232 + 32]
                                                        _15394 = mem[_15232 + 64]
                                                        mem[mem[64]] = mem[_15232]
                                                        mem[mem[64] + 64] = _15394
                                                        mem[mem[64] + 96] = gasForProcessing
                                                        emit ProcessedDividendTracker(mem[mem[64]], _15393, _15394, gasForProcessing, 1, tx.origin);
                                            else:
                                                if not stor7:
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.0xffb2c479 with:
                                                         gas gas_remaining wei
                                                        args gasForProcessing
                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                    if ext_call.success:
                                                        _15300 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 96
                                                        _15496 = mem[_15300 + 32]
                                                        _15497 = mem[_15300 + 64]
                                                        mem[mem[64]] = mem[_15300]
                                                        mem[mem[64] + 64] = _15497
                                                        mem[mem[64] + 96] = gasForProcessing
                                                        emit ProcessedDividendTracker(mem[mem[64]], _15496, _15497, gasForProcessing, 1, tx.origin);
                                        else:
                                            if not ext_call.success:
                                                if not stor7:
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.0xffb2c479 with:
                                                         gas gas_remaining wei
                                                        args gasForProcessing
                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                    if ext_call.success:
                                                        _15302 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 96
                                                        _15499 = mem[_15302 + 32]
                                                        _15500 = mem[_15302 + 64]
                                                        mem[mem[64]] = mem[_15302]
                                                        mem[mem[64] + 64] = _15500
                                                        mem[mem[64] + 96] = gasForProcessing
                                                        emit ProcessedDividendTracker(mem[mem[64]], _15499, _15500, gasForProcessing, 1, tx.origin);
                                            else:
                                                if not stor7:
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.0xffb2c479 with:
                                                         gas gas_remaining wei
                                                        args gasForProcessing
                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                    if ext_call.success:
                                                        _15398 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 96
                                                        _15605 = mem[_15398 + 32]
                                                        _15606 = mem[_15398 + 64]
                                                        mem[mem[64]] = mem[_15398]
                                                        mem[mem[64] + 64] = _15606
                                                        mem[mem[64] + 96] = gasForProcessing
                                                        emit ProcessedDividendTracker(mem[mem[64]], _15605, _15606, gasForProcessing, 1, tx.origin);
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
                                            call dividendTrackerAddress.0xe30443bc with:
                                                 gas gas_remaining wei
                                                args msg.sender, balanceOf[address(msg.sender)]
                                            mem[0] = address(cd[4])
                                            mem[32] = 0
                                            require ext_code.size(dividendTrackerAddress)
                                            call dividendTrackerAddress.0xe30443bc with:
                                                 gas gas_remaining wei
                                                args address(cd[4]), balanceOf[address(cd[4])]
                                            if not ext_call.success:
                                                if not ext_call.success:
                                                    if not stor7:
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.0xffb2c479 with:
                                                             gas gas_remaining wei
                                                            args gasForProcessing
                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                        if ext_call.success:
                                                            _15181 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 96
                                                            _15288 = mem[_15181 + 32]
                                                            _15289 = mem[_15181 + 64]
                                                            mem[mem[64]] = mem[_15181]
                                                            mem[mem[64] + 64] = _15289
                                                            mem[mem[64] + 96] = gasForProcessing
                                                            emit ProcessedDividendTracker(mem[mem[64]], _15288, _15289, gasForProcessing, 1, tx.origin);
                                                else:
                                                    if not stor7:
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.0xffb2c479 with:
                                                             gas gas_remaining wei
                                                            args gasForProcessing
                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                        if ext_call.success:
                                                            _15226 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 96
                                                            _15384 = mem[_15226 + 32]
                                                            _15385 = mem[_15226 + 64]
                                                            mem[mem[64]] = mem[_15226]
                                                            mem[mem[64] + 64] = _15385
                                                            mem[mem[64] + 96] = gasForProcessing
                                                            emit ProcessedDividendTracker(mem[mem[64]], _15384, _15385, gasForProcessing, 1, tx.origin);
                                            else:
                                                if not ext_call.success:
                                                    if not stor7:
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.0xffb2c479 with:
                                                             gas gas_remaining wei
                                                            args gasForProcessing
                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                        if ext_call.success:
                                                            _15228 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 96
                                                            _15387 = mem[_15228 + 32]
                                                            _15388 = mem[_15228 + 64]
                                                            mem[mem[64]] = mem[_15228]
                                                            mem[mem[64] + 64] = _15388
                                                            mem[mem[64] + 96] = gasForProcessing
                                                            emit ProcessedDividendTracker(mem[mem[64]], _15387, _15388, gasForProcessing, 1, tx.origin);
                                                else:
                                                    if not stor7:
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.0xffb2c479 with:
                                                             gas gas_remaining wei
                                                            args gasForProcessing
                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                        if ext_call.success:
                                                            _15293 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 96
                                                            _15493 = mem[_15293 + 32]
                                                            _15494 = mem[_15293 + 64]
                                                            mem[mem[64]] = mem[_15293]
                                                            mem[mem[64] + 64] = _15494
                                                            mem[mem[64] + 96] = gasForProcessing
                                                            emit ProcessedDividendTracker(mem[mem[64]], _15493, _15494, gasForProcessing, 1, tx.origin);
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
                                                call dividendTrackerAddress.0xe30443bc with:
                                                     gas gas_remaining wei
                                                    args msg.sender, balanceOf[address(msg.sender)]
                                                mem[0] = address(cd[4])
                                                mem[32] = 0
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.0xe30443bc with:
                                                     gas gas_remaining wei
                                                    args address(cd[4]), balanceOf[address(cd[4])]
                                                if not ext_call.success:
                                                    if not ext_call.success:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.0xffb2c479 with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _16860 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _16906 = mem[_16860 + 32]
                                                                _16907 = mem[_16860 + 64]
                                                                mem[mem[64]] = mem[_16860]
                                                                mem[mem[64] + 64] = _16907
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _16906, _16907, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.0xffb2c479 with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _16881 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _16947 = mem[_16881 + 32]
                                                                _16948 = mem[_16881 + 64]
                                                                mem[mem[64]] = mem[_16881]
                                                                mem[mem[64] + 64] = _16948
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _16947, _16948, gasForProcessing, 1, tx.origin);
                                                else:
                                                    if not ext_call.success:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.0xffb2c479 with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _16883 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _16950 = mem[_16883 + 32]
                                                                _16951 = mem[_16883 + 64]
                                                                mem[mem[64]] = mem[_16883]
                                                                mem[mem[64] + 64] = _16951
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _16950, _16951, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.0xffb2c479 with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _16911 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _16992 = mem[_16911 + 32]
                                                                _16993 = mem[_16911 + 64]
                                                                mem[mem[64]] = mem[_16911]
                                                                mem[mem[64] + 64] = _16993
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _16992, _16993, gasForProcessing, 1, tx.origin);
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
                                                call dividendTrackerAddress.0xe30443bc with:
                                                     gas gas_remaining wei
                                                    args msg.sender, balanceOf[address(msg.sender)]
                                                mem[0] = address(cd[4])
                                                mem[32] = 0
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.0xe30443bc with:
                                                     gas gas_remaining wei
                                                    args address(cd[4]), balanceOf[address(cd[4])]
                                                if not ext_call.success:
                                                    if not ext_call.success:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.0xffb2c479 with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _17386 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _17458 = mem[_17386 + 32]
                                                                _17459 = mem[_17386 + 64]
                                                                mem[mem[64]] = mem[_17386]
                                                                mem[mem[64] + 64] = _17459
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _17458, _17459, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.0xffb2c479 with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _17419 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _17502 = mem[_17419 + 32]
                                                                _17503 = mem[_17419 + 64]
                                                                mem[mem[64]] = mem[_17419]
                                                                mem[mem[64] + 64] = _17503
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _17502, _17503, gasForProcessing, 1, tx.origin);
                                                else:
                                                    if not ext_call.success:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.0xffb2c479 with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _17421 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _17505 = mem[_17421 + 32]
                                                                _17506 = mem[_17421 + 64]
                                                                mem[mem[64]] = mem[_17421]
                                                                mem[mem[64] + 64] = _17506
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _17505, _17506, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.0xffb2c479 with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _17463 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _17543 = mem[_17463 + 32]
                                                                _17544 = mem[_17463 + 64]
                                                                mem[mem[64]] = mem[_17463]
                                                                mem[mem[64] + 64] = _17544
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _17543, _17544, gasForProcessing, 1, tx.origin);
                            else:
                                require ext_code.size(dividendTrackerAddress)
                                call dividendTrackerAddress.0xba72a955 with:
                                     gas gas_remaining wei
                                    args _14854
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit SendDividends(balanceOf[this.address], _14854);
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
                                    call dividendTrackerAddress.0xe30443bc with:
                                         gas gas_remaining wei
                                        args msg.sender, balanceOf[address(msg.sender)]
                                    mem[0] = address(cd[4])
                                    mem[32] = 0
                                    require ext_code.size(dividendTrackerAddress)
                                    call dividendTrackerAddress.0xe30443bc with:
                                         gas gas_remaining wei
                                        args address(cd[4]), balanceOf[address(cd[4])]
                                    if not ext_call.success:
                                        if not ext_call.success:
                                            if not stor7:
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.0xffb2c479 with:
                                                     gas gas_remaining wei
                                                    args gasForProcessing
                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                if ext_call.success:
                                                    _15400 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 96
                                                    _15608 = mem[_15400 + 32]
                                                    _15609 = mem[_15400 + 64]
                                                    mem[mem[64]] = mem[_15400]
                                                    mem[mem[64] + 64] = _15609
                                                    mem[mem[64] + 96] = gasForProcessing
                                                    emit ProcessedDividendTracker(mem[mem[64]], _15608, _15609, gasForProcessing, 1, tx.origin);
                                        else:
                                            if not stor7:
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.0xffb2c479 with:
                                                     gas gas_remaining wei
                                                    args gasForProcessing
                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                if ext_call.success:
                                                    _15504 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 96
                                                    _15732 = mem[_15504 + 32]
                                                    _15733 = mem[_15504 + 64]
                                                    mem[mem[64]] = mem[_15504]
                                                    mem[mem[64] + 64] = _15733
                                                    mem[mem[64] + 96] = gasForProcessing
                                                    emit ProcessedDividendTracker(mem[mem[64]], _15732, _15733, gasForProcessing, 1, tx.origin);
                                    else:
                                        if not ext_call.success:
                                            if not stor7:
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.0xffb2c479 with:
                                                     gas gas_remaining wei
                                                    args gasForProcessing
                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                if ext_call.success:
                                                    _15506 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 96
                                                    _15735 = mem[_15506 + 32]
                                                    _15736 = mem[_15506 + 64]
                                                    mem[mem[64]] = mem[_15506]
                                                    mem[mem[64] + 64] = _15736
                                                    mem[mem[64] + 96] = gasForProcessing
                                                    emit ProcessedDividendTracker(mem[mem[64]], _15735, _15736, gasForProcessing, 1, tx.origin);
                                        else:
                                            if not stor7:
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.0xffb2c479 with:
                                                     gas gas_remaining wei
                                                    args gasForProcessing
                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                if ext_call.success:
                                                    _15613 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 96
                                                    _15856 = mem[_15613 + 32]
                                                    _15857 = mem[_15613 + 64]
                                                    mem[mem[64]] = mem[_15613]
                                                    mem[mem[64] + 64] = _15857
                                                    mem[mem[64] + 96] = gasForProcessing
                                                    emit ProcessedDividendTracker(mem[mem[64]], _15856, _15857, gasForProcessing, 1, tx.origin);
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
                                        call dividendTrackerAddress.0xe30443bc with:
                                             gas gas_remaining wei
                                            args msg.sender, balanceOf[address(msg.sender)]
                                        mem[0] = address(cd[4])
                                        mem[32] = 0
                                        require ext_code.size(dividendTrackerAddress)
                                        call dividendTrackerAddress.0xe30443bc with:
                                             gas gas_remaining wei
                                            args address(cd[4]), balanceOf[address(cd[4])]
                                        if not ext_call.success:
                                            if not ext_call.success:
                                                if not stor7:
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.0xffb2c479 with:
                                                         gas gas_remaining wei
                                                        args gasForProcessing
                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                    if ext_call.success:
                                                        _15515 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 96
                                                        _15748 = mem[_15515 + 32]
                                                        _15749 = mem[_15515 + 64]
                                                        mem[mem[64]] = mem[_15515]
                                                        mem[mem[64] + 64] = _15749
                                                        mem[mem[64] + 96] = gasForProcessing
                                                        emit ProcessedDividendTracker(mem[mem[64]], _15748, _15749, gasForProcessing, 1, tx.origin);
                                            else:
                                                if not stor7:
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.0xffb2c479 with:
                                                         gas gas_remaining wei
                                                        args gasForProcessing
                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                    if ext_call.success:
                                                        _15627 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 96
                                                        _15862 = mem[_15627 + 32]
                                                        _15863 = mem[_15627 + 64]
                                                        mem[mem[64]] = mem[_15627]
                                                        mem[mem[64] + 64] = _15863
                                                        mem[mem[64] + 96] = gasForProcessing
                                                        emit ProcessedDividendTracker(mem[mem[64]], _15862, _15863, gasForProcessing, 1, tx.origin);
                                        else:
                                            if not ext_call.success:
                                                if not stor7:
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.0xffb2c479 with:
                                                         gas gas_remaining wei
                                                        args gasForProcessing
                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                    if ext_call.success:
                                                        _15629 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 96
                                                        _15865 = mem[_15629 + 32]
                                                        _15866 = mem[_15629 + 64]
                                                        mem[mem[64]] = mem[_15629]
                                                        mem[mem[64] + 64] = _15866
                                                        mem[mem[64] + 96] = gasForProcessing
                                                        emit ProcessedDividendTracker(mem[mem[64]], _15865, _15866, gasForProcessing, 1, tx.origin);
                                            else:
                                                if not stor7:
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.0xffb2c479 with:
                                                         gas gas_remaining wei
                                                        args gasForProcessing
                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                    if ext_call.success:
                                                        _15753 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 96
                                                        _15968 = mem[_15753 + 32]
                                                        _15969 = mem[_15753 + 64]
                                                        mem[mem[64]] = mem[_15753]
                                                        mem[mem[64] + 64] = _15969
                                                        mem[mem[64] + 96] = gasForProcessing
                                                        emit ProcessedDividendTracker(mem[mem[64]], _15968, _15969, gasForProcessing, 1, tx.origin);
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
                                            call dividendTrackerAddress.0xe30443bc with:
                                                 gas gas_remaining wei
                                                args msg.sender, balanceOf[address(msg.sender)]
                                            mem[0] = address(cd[4])
                                            mem[32] = 0
                                            require ext_code.size(dividendTrackerAddress)
                                            call dividendTrackerAddress.0xe30443bc with:
                                                 gas gas_remaining wei
                                                args address(cd[4]), balanceOf[address(cd[4])]
                                            if not ext_call.success:
                                                if not ext_call.success:
                                                    if not stor7:
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.0xffb2c479 with:
                                                             gas gas_remaining wei
                                                            args gasForProcessing
                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                        if ext_call.success:
                                                            _15404 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 96
                                                            _15615 = mem[_15404 + 32]
                                                            _15616 = mem[_15404 + 64]
                                                            mem[mem[64]] = mem[_15404]
                                                            mem[mem[64] + 64] = _15616
                                                            mem[mem[64] + 96] = gasForProcessing
                                                            emit ProcessedDividendTracker(mem[mem[64]], _15615, _15616, gasForProcessing, 1, tx.origin);
                                                else:
                                                    if not stor7:
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.0xffb2c479 with:
                                                             gas gas_remaining wei
                                                            args gasForProcessing
                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                        if ext_call.success:
                                                            _15509 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 96
                                                            _15739 = mem[_15509 + 32]
                                                            _15740 = mem[_15509 + 64]
                                                            mem[mem[64]] = mem[_15509]
                                                            mem[mem[64] + 64] = _15740
                                                            mem[mem[64] + 96] = gasForProcessing
                                                            emit ProcessedDividendTracker(mem[mem[64]], _15739, _15740, gasForProcessing, 1, tx.origin);
                                            else:
                                                if not ext_call.success:
                                                    if not stor7:
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.0xffb2c479 with:
                                                             gas gas_remaining wei
                                                            args gasForProcessing
                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                        if ext_call.success:
                                                            _15511 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 96
                                                            _15742 = mem[_15511 + 32]
                                                            _15743 = mem[_15511 + 64]
                                                            mem[mem[64]] = mem[_15511]
                                                            mem[mem[64] + 64] = _15743
                                                            mem[mem[64] + 96] = gasForProcessing
                                                            emit ProcessedDividendTracker(mem[mem[64]], _15742, _15743, gasForProcessing, 1, tx.origin);
                                                else:
                                                    if not stor7:
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.0xffb2c479 with:
                                                             gas gas_remaining wei
                                                            args gasForProcessing
                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                        if ext_call.success:
                                                            _15620 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 96
                                                            _15859 = mem[_15620 + 32]
                                                            _15860 = mem[_15620 + 64]
                                                            mem[mem[64]] = mem[_15620]
                                                            mem[mem[64] + 64] = _15860
                                                            mem[mem[64] + 96] = gasForProcessing
                                                            emit ProcessedDividendTracker(mem[mem[64]], _15859, _15860, gasForProcessing, 1, tx.origin);
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
                                                call dividendTrackerAddress.0xe30443bc with:
                                                     gas gas_remaining wei
                                                    args msg.sender, balanceOf[address(msg.sender)]
                                                mem[0] = address(cd[4])
                                                mem[32] = 0
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.0xe30443bc with:
                                                     gas gas_remaining wei
                                                    args address(cd[4]), balanceOf[address(cd[4])]
                                                if not ext_call.success:
                                                    if not ext_call.success:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.0xffb2c479 with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _16955 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _17032 = mem[_16955 + 32]
                                                                _17033 = mem[_16955 + 64]
                                                                mem[mem[64]] = mem[_16955]
                                                                mem[mem[64] + 64] = _17033
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _17032, _17033, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.0xffb2c479 with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _16997 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _17079 = mem[_16997 + 32]
                                                                _17080 = mem[_16997 + 64]
                                                                mem[mem[64]] = mem[_16997]
                                                                mem[mem[64] + 64] = _17080
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _17079, _17080, gasForProcessing, 1, tx.origin);
                                                else:
                                                    if not ext_call.success:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.0xffb2c479 with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _16999 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _17082 = mem[_16999 + 32]
                                                                _17083 = mem[_16999 + 64]
                                                                mem[mem[64]] = mem[_16999]
                                                                mem[mem[64] + 64] = _17083
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _17082, _17083, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.0xffb2c479 with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _17037 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _17121 = mem[_17037 + 32]
                                                                _17122 = mem[_17037 + 64]
                                                                mem[mem[64]] = mem[_17037]
                                                                mem[mem[64] + 64] = _17122
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _17121, _17122, gasForProcessing, 1, tx.origin);
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
                                                call dividendTrackerAddress.0xe30443bc with:
                                                     gas gas_remaining wei
                                                    args msg.sender, balanceOf[address(msg.sender)]
                                                mem[0] = address(cd[4])
                                                mem[32] = 0
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.0xe30443bc with:
                                                     gas gas_remaining wei
                                                    args address(cd[4]), balanceOf[address(cd[4])]
                                                if not ext_call.success:
                                                    if not ext_call.success:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.0xffb2c479 with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _17509 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _17581 = mem[_17509 + 32]
                                                                _17582 = mem[_17509 + 64]
                                                                mem[mem[64]] = mem[_17509]
                                                                mem[mem[64] + 64] = _17582
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _17581, _17582, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.0xffb2c479 with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _17547 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _17624 = mem[_17547 + 32]
                                                                _17625 = mem[_17547 + 64]
                                                                mem[mem[64]] = mem[_17547]
                                                                mem[mem[64] + 64] = _17625
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _17624, _17625, gasForProcessing, 1, tx.origin);
                                                else:
                                                    if not ext_call.success:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.0xffb2c479 with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _17549 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _17627 = mem[_17549 + 32]
                                                                _17628 = mem[_17549 + 64]
                                                                mem[mem[64]] = mem[_17549]
                                                                mem[mem[64] + 64] = _17628
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _17627, _17628, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not stor7:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.0xffb2c479 with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _17586 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _17664 = mem[_17586 + 32]
                                                                _17665 = mem[_17586 + 64]
                                                                mem[mem[64]] = mem[_17586]
                                                                mem[mem[64] + 64] = _17665
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _17664, _17665, gasForProcessing, 1, tx.origin);
    return 1
}



}
