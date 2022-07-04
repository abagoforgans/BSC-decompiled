contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#
const decimals = 18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
address owner;
address operatorAddress;
address uniswapV2RouterAddress;
uint8 stor8; offset 160
uint8 swapEnabled; offset 168
uint128 stor8; offset 168
address uniswapV2PairAddress;
address dividendTrackerAddress;
address deadWalletAddress;
uint256 swapTokensAtAmount;
mapping of uint8 stor12;
uint256 dividendFee;
uint256 stor14; offset 1
uint256 liquidityFee;
uint256 sub_b1fb0e97;
uint256 totalFees;
address sub_1915c307Address;
uint256 gasForProcessing;
mapping of uint8 stor19;
mapping of uint8 stor20;

function totalFees() {
    return totalFees
}

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function totalSupply() {
    return totalSupply
}

function sub_1915c307(?) {
    return sub_1915c307Address
}

function dividendTracker() {
    return dividendTrackerAddress
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function isExcludedFromFees(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor19[address(arg1)])
}

function operator() {
    return operatorAddress
}

function swapEnabled() {
    return bool(swapEnabled)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function deadWallet() {
    return deadWalletAddress
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

function sub_b1fb0e97(?) {
    return sub_b1fb0e97
}

function automatedMarketMakerPairs(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor20[arg1])
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function swapTokensAtAmount() {
    return swapTokensAtAmount
}

function dividendFee() {
    return dividendFee
}

function isBlacklisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor12[arg1])
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

function sub_f3ff43da(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_1915c307Address = address(arg1)
}

function setSwapEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(88, 0, stor8.field_168) = Mask(88, 0, arg1)
}

function blacklistAddress(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor12[address(arg1)] = uint8(arg2)
}

function getClaimWait() {
    staticcall dividendTrackerAddress.claimWait() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getLastProcessedIndex() {
    staticcall dividendTrackerAddress.0xe7841ec0 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getTotalDividendsDistributed() {
    staticcall dividendTrackerAddress.totalDividendsDistributed() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getNumberOfDividendTokenHolders() {
    staticcall dividendTrackerAddress.getNumberOfTokenHolders() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function claim() {
    call dividendTrackerAddress.processAccount(address arg1, bool arg2) with:
         gas gas_remaining wei
        args msg.sender, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_595d82b1(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_b1fb0e97 = arg1
    if dividendFee > !liquidityFee:
        revert with 0, 17
    if dividendFee + liquidityFee > !arg1:
        revert with 0, 17
    totalFees = dividendFee + liquidityFee + arg1
}

function updateRewardToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(dividendTrackerAddress)
    call dividendTrackerAddress.0xd4640c20 with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setLiquidityFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    liquidityFee = arg1
    if dividendFee > !arg1:
        revert with 0, 17
    if dividendFee + arg1 > !sub_b1fb0e97:
        revert with 0, 17
    totalFees = dividendFee + arg1 + sub_b1fb0e97
}

function setDividendRewardsFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    dividendFee = arg1
    if arg1 > !liquidityFee:
        revert with 0, 17
    if arg1 + liquidityFee > !sub_b1fb0e97:
        revert with 0, 17
    totalFees = arg1 + liquidityFee + sub_b1fb0e97
}

function dividendTokenBalanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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
    staticcall dividendTrackerAddress.0xa8b9d240 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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

function tokenOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall dividendTrackerAddress.0x42ec38e2 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function tokenAvailable(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall dividendTrackerAddress.0x60e0e2b4 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function processDividendTracker(uint256 arg1) {
    require calldata.size - 4 >= 32
    call dividendTrackerAddress.process(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], arg1, 0, tx.origin);
}

function transferOperator(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if operatorAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: caller is not the operator'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new operator is the zero address'
    operatorAddress = arg1
}

function excludeFromFees(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 == bool(stor19[address(arg1)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Account is already the value of 'excluded''
    stor19[address(arg1)] = uint8(arg2)
    emit ExcludeFromFees(arg2, arg1);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if operatorAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: caller is not the operator'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
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

function sub_8e3a176a(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(dividendTrackerAddress)
    call dividendTrackerAddress.0x8e3a176a with:
         gas gas_remaining wei
        args address(arg1), bool(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xdc592def: address(arg1), bool(arg2)
}

function getAccountDividendsInfoAtIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
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

function getAccountDividendsInfo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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

function setAutomatedMarketMakerPair(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uniswapV2PairAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'The PancakeSwap pair cannot be removed from automatedMarketMakerPairs'
    if arg2 == bool(stor20[address(arg1)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Automated market maker pair is already set to that value'
    stor20[address(arg1)] = uint8(arg2)
    emit SetAutomatedMarketMakerPair(arg1, arg2);
}

function updateGasForProcessing(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 100000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'gasForProcessing must be between 200,000 and 500,000'
    if arg1 > 500000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'gasForProcessing must be between 200,000 and 500,000'
    if arg1 == gasForProcessing:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot update gasForProcessing to same value'
    emit GasForProcessingUpdated(arg1, gasForProcessing);
    gasForProcessing = arg1
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
        mem[32] = 19
        stor19[address(cd[((32 * idx) + arg1 + 36)])] = uint8(arg2)
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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The router already has that address'
    emit UpdateUniswapV2Router(arg1, uniswapV2RouterAddress);
    uniswapV2RouterAddress = arg1
    require ext_code.size(dividendTrackerAddress)
    call dividendTrackerAddress.0x7e17a349 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall uniswapV2RouterAddress.factory() with:
            gas gas_remaining wei
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall uniswapV2RouterAddress.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(this.address), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    uniswapV2PairAddress = ext_call.return_data[12 len 20]
    if 1 == bool(stor20[ext_call.return_data[12 len 20]]):
        revert with 0, 'Automated market maker pair is already set to that value'
    stor20[address(ext_call.return_data[0])] = 1
    emit SetAutomatedMarketMakerPair(ext_call.return_data[12 len 20], 1);
}

function updateDividendTracker(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if dividendTrackerAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The dividend tracker already has that address'
    staticcall arg1.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'The new dividend tracker must be owned by the main token contract'
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
    require ext_code.size(arg1)
    call arg1.0x31e79db0 with:
         gas gas_remaining wei
        args uniswapV2PairAddress
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
    if stor12[address(msg.sender)]:
        revert with 0, 'Blacklisted address'
    if stor12[address(arg1)]:
        revert with 0, 'Blacklisted address'
    if not arg2:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
        if 0 > balanceOf[address(msg.sender)]:
            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
        if balanceOf[address(msg.sender)] < 0:
            revert with 0, 17
        if balanceOf[arg1] > -1:
            revert with 0, 17
        if balanceOf[arg1] < balanceOf[arg1]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] = balanceOf[arg1]
        emit Transfer(0, msg.sender, arg1);
    else:
        if not swapEnabled:
            if stor19[address(msg.sender)]:
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 0, 17
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[arg1] > !arg2:
                    revert with 0, 17
                if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if stor19[address(arg1)]:
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if uint8(stor8.field_160):
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !arg2:
                            revert with 0, 17
                        if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if arg2 and totalFees > -1 / arg2:
                            revert with 0, 17
                        if arg2 < arg2 * totalFees / 100:
                            revert with 0, 17
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not this.address:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if arg2 * totalFees / 100 > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        if balanceOf[address(msg.sender)] < arg2 * totalFees / 100:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2 * totalFees / 100
                        if balanceOf[this.address] > !(arg2 * totalFees / 100):
                            revert with 0, 17
                        if balanceOf[this.address] + (arg2 * totalFees / 100) < balanceOf[this.address]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(this.address)] = balanceOf[this.address] + (arg2 * totalFees / 100)
                        emit Transfer((arg2 * totalFees / 100), msg.sender, this.address);
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if arg2 - (arg2 * totalFees / 100) > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * totalFees / 100):
                            revert with 0, 17
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * totalFees / 100)
                        if balanceOf[arg1] > !(arg2 - (arg2 * totalFees / 100)):
                            revert with 0, 17
                        if balanceOf[arg1] + arg2 - (arg2 * totalFees / 100) < balanceOf[arg1]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] = balanceOf[arg1] + arg2 - (arg2 * totalFees / 100)
                        emit Transfer((arg2 - (arg2 * totalFees / 100)), msg.sender, arg1);
        else:
            if balanceOf[this.address] < swapTokensAtAmount:
                if stor19[address(msg.sender)]:
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if stor19[address(arg1)]:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !arg2:
                            revert with 0, 17
                        if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if uint8(stor8.field_160):
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if arg2 and totalFees > -1 / arg2:
                                revert with 0, 17
                            if arg2 < arg2 * totalFees / 100:
                                revert with 0, 17
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not this.address:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if arg2 * totalFees / 100 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                            if balanceOf[address(msg.sender)] < arg2 * totalFees / 100:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2 * totalFees / 100
                            if balanceOf[this.address] > !(arg2 * totalFees / 100):
                                revert with 0, 17
                            if balanceOf[this.address] + (arg2 * totalFees / 100) < balanceOf[this.address]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(this.address)] = balanceOf[this.address] + (arg2 * totalFees / 100)
                            emit Transfer((arg2 * totalFees / 100), msg.sender, this.address);
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if arg2 - (arg2 * totalFees / 100) > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * totalFees / 100):
                                revert with 0, 17
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * totalFees / 100)
                            if balanceOf[arg1] > !(arg2 - (arg2 * totalFees / 100)):
                                revert with 0, 17
                            if balanceOf[arg1] + arg2 - (arg2 * totalFees / 100) < balanceOf[arg1]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = balanceOf[arg1] + arg2 - (arg2 * totalFees / 100)
                            emit Transfer((arg2 - (arg2 * totalFees / 100)), msg.sender, arg1);
            else:
                if uint8(stor8.field_160):
                    if stor19[address(msg.sender)]:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !arg2:
                            revert with 0, 17
                        if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if stor19[address(arg1)]:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if uint8(stor8.field_160):
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if arg2 and totalFees > -1 / arg2:
                                    revert with 0, 17
                                if arg2 < arg2 * totalFees / 100:
                                    revert with 0, 17
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if arg2 * totalFees / 100 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2 * totalFees / 100:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2 * totalFees / 100
                                if balanceOf[this.address] > !(arg2 * totalFees / 100):
                                    revert with 0, 17
                                if balanceOf[this.address] + (arg2 * totalFees / 100) < balanceOf[this.address]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(this.address)] = balanceOf[this.address] + (arg2 * totalFees / 100)
                                emit Transfer((arg2 * totalFees / 100), msg.sender, this.address);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg2 - (arg2 * totalFees / 100) > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2 - (arg2 * totalFees / 100):
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * totalFees / 100)
                                if balanceOf[arg1] > !(arg2 - (arg2 * totalFees / 100)):
                                    revert with 0, 17
                                if balanceOf[arg1] + arg2 - (arg2 * totalFees / 100) < balanceOf[arg1]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = balanceOf[arg1] + arg2 - (arg2 * totalFees / 100)
                                emit Transfer((arg2 - (arg2 * totalFees / 100)), msg.sender, arg1);
                else:
                    if stor20[address(msg.sender)]:
                        if stor19[address(msg.sender)]:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if stor19[address(arg1)]:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if uint8(stor8.field_160):
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg2 and totalFees > -1 / arg2:
                                        revert with 0, 17
                                    if arg2 < arg2 * totalFees / 100:
                                        revert with 0, 17
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if arg2 * totalFees / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2 * totalFees / 100:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2 * totalFees / 100
                                    if balanceOf[this.address] > !(arg2 * totalFees / 100):
                                        revert with 0, 17
                                    if balanceOf[this.address] + (arg2 * totalFees / 100) < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] = balanceOf[this.address] + (arg2 * totalFees / 100)
                                    emit Transfer((arg2 * totalFees / 100), msg.sender, this.address);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 - (arg2 * totalFees / 100) > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * totalFees / 100):
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * totalFees / 100)
                                    if balanceOf[arg1] > !(arg2 - (arg2 * totalFees / 100)):
                                        revert with 0, 17
                                    if balanceOf[arg1] + arg2 - (arg2 * totalFees / 100) < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2 - (arg2 * totalFees / 100)
                                    emit Transfer((arg2 - (arg2 * totalFees / 100)), msg.sender, arg1);
                    else:
                        if owner == msg.sender:
                            if stor19[address(msg.sender)]:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[arg1] > !arg2:
                                    revert with 0, 17
                                if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if stor19[address(arg1)]:
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if uint8(stor8.field_160):
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg2 and totalFees > -1 / arg2:
                                            revert with 0, 17
                                        if arg2 < arg2 * totalFees / 100:
                                            revert with 0, 17
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if arg2 * totalFees / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 * totalFees / 100:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= arg2 * totalFees / 100
                                        if balanceOf[this.address] > !(arg2 * totalFees / 100):
                                            revert with 0, 17
                                        if balanceOf[this.address] + (arg2 * totalFees / 100) < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] = balanceOf[this.address] + (arg2 * totalFees / 100)
                                        emit Transfer((arg2 * totalFees / 100), msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 - (arg2 * totalFees / 100) > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * totalFees / 100):
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * totalFees / 100)
                                        if balanceOf[arg1] > !(arg2 - (arg2 * totalFees / 100)):
                                            revert with 0, 17
                                        if balanceOf[arg1] + arg2 - (arg2 * totalFees / 100) < balanceOf[arg1]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[arg1] + arg2 - (arg2 * totalFees / 100)
                                        emit Transfer((arg2 - (arg2 * totalFees / 100)), msg.sender, arg1);
                        else:
                            if owner == arg1:
                                if stor19[address(msg.sender)]:
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[arg1] > !arg2:
                                        revert with 0, 17
                                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor19[address(arg1)]:
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if uint8(stor8.field_160):
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[arg1] > !arg2:
                                                revert with 0, 17
                                            if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if arg2 and totalFees > -1 / arg2:
                                                revert with 0, 17
                                            if arg2 < arg2 * totalFees / 100:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                            if arg2 * totalFees / 100 > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                                            if balanceOf[address(msg.sender)] < arg2 * totalFees / 100:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] -= arg2 * totalFees / 100
                                            if balanceOf[this.address] > !(arg2 * totalFees / 100):
                                                revert with 0, 17
                                            if balanceOf[this.address] + (arg2 * totalFees / 100) < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = balanceOf[this.address] + (arg2 * totalFees / 100)
                                            emit Transfer((arg2 * totalFees / 100), msg.sender, this.address);
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg2 - (arg2 * totalFees / 100) > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * totalFees / 100):
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * totalFees / 100)
                                            if balanceOf[arg1] > !(arg2 - (arg2 * totalFees / 100)):
                                                revert with 0, 17
                                            if balanceOf[arg1] + arg2 - (arg2 * totalFees / 100) < balanceOf[arg1]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = balanceOf[arg1] + arg2 - (arg2 * totalFees / 100)
                                            emit Transfer((arg2 - (arg2 * totalFees / 100)), msg.sender, arg1);
                            else:
                                uint8(stor8.field_160) = 1
                                if balanceOf[this.address] and liquidityFee > -1 / balanceOf[this.address]:
                                    revert with 0, 17
                                if not totalFees:
                                    revert with 0, 18
                                if balanceOf[this.address] < balanceOf[this.address] * liquidityFee / 2 / totalFees:
                                    revert with 0, 17
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
                                allowance[address(this.address)][stor7] = balanceOf[this.address] - (balanceOf[this.address] * liquidityFee / 2 / totalFees)
                                emit Approval((balanceOf[this.address] - (balanceOf[this.address] * liquidityFee / 2 / totalFees)), this.address, uniswapV2RouterAddress);
                                mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 196] = balanceOf[this.address] - (balanceOf[this.address] * liquidityFee / 2 / totalFees)
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
                                    args balanceOf[this.address] - (balanceOf[this.address] * liquidityFee / 2 / totalFees), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                if totalFees < stor14:
                                    revert with 0, 17
                                if False and liquidityFee > 0:
                                    revert with 0, 17
                                if not totalFees - stor14:
                                    revert with 0, 18
                                if False and dividendFee > 0:
                                    revert with 0, 17
                                if not totalFees - stor14:
                                    revert with 0, 18
                                if 0 < 0 / totalFees - stor14:
                                    revert with 0, 17
                                if -0 / totalFees - stor14 < 0 / totalFees - stor14:
                                    revert with 0, 17
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                allowance[address(this.address)][stor7] = balanceOf[this.address] * liquidityFee / 2 / totalFees
                                emit Approval((balanceOf[this.address] * liquidityFee / 2 / totalFees), this.address, uniswapV2RouterAddress);
                                mem[ceil32(return_data.size) + 260] = 0
                                mem[ceil32(return_data.size) + 292] = 0
                                mem[ceil32(return_data.size) + 324] = 0
                                mem[ceil32(return_data.size) + 356] = block.timestamp
                                call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                   value 0 / totalFees - stor14 wei
                                     gas gas_remaining wei
                                    args this.address, balanceOf[this.address] * liquidityFee / 2 / totalFees, 0, 0, 0, block.timestamp
                                mem[ceil32(return_data.size) + 192 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                emit SwapAndLiquify(balanceOf[this.address] * liquidityFee / 2 / totalFees, 0 / totalFees - stor14);
                                call dividendTrackerAddress with:
                                   value 0 / totalFees - stor14 wei
                                     gas gas_remaining wei
                                if ext_call.success:
                                    require ext_code.size(dividendTrackerAddress)
                                    call dividendTrackerAddress.distributeDividends(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (0 / totalFees - stor14)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit SendDividends((0 / totalFees - stor14));
                                call sub_1915c307Address with:
                                   value -2 * 0 / totalFees - stor14 wei
                                     gas gas_remaining wei
                                if ext_call.success:
                                    emit 0xb158a2a5: sub_1915c307Address, -2 * 0 / totalFees - stor14
                                uint8(stor8.field_160) = 0
                                if not return_data.size:
                                    if not return_data.size:
                                        if stor19[address(msg.sender)]:
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 262 len 26] >> 48,
                                                            0
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[arg1] > !arg2:
                                                revert with 0, 17
                                            if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor19[address(arg1)]:
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 262 len 26] >> 48,
                                                                0
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[arg1] > !arg2:
                                                    revert with 0, 17
                                                if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if uint8(stor8.field_160):
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 262 len 26] >> 48,
                                                                    0
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !arg2:
                                                        revert with 0, 17
                                                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if arg2 and totalFees > -1 / arg2:
                                                        revert with 0, 17
                                                    if arg2 < arg2 * totalFees / 100:
                                                        revert with 0, 17
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if arg2 * totalFees / 100 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 262 len 26] >> 48,
                                                                    0
                                                    if balanceOf[address(msg.sender)] < arg2 * totalFees / 100:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= arg2 * totalFees / 100
                                                    if balanceOf[this.address] > !(arg2 * totalFees / 100):
                                                        revert with 0, 17
                                                    if balanceOf[this.address] + (arg2 * totalFees / 100) < balanceOf[this.address]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(this.address)] = balanceOf[this.address] + (arg2 * totalFees / 100)
                                                    emit Transfer((arg2 * totalFees / 100), msg.sender, this.address);
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if arg2 - (arg2 * totalFees / 100) > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 358 len 26] >> 48,
                                                                    0
                                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * totalFees / 100):
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * totalFees / 100)
                                                    if balanceOf[arg1] > !(arg2 - (arg2 * totalFees / 100)):
                                                        revert with 0, 17
                                                    if balanceOf[arg1] + arg2 - (arg2 * totalFees / 100) < balanceOf[arg1]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2 - (arg2 * totalFees / 100)
                                                    emit Transfer((arg2 - (arg2 * totalFees / 100)), msg.sender, arg1);
                                    else:
                                        if stor19[address(msg.sender)]:
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 263 len 26] >> 48,
                                                            0
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[arg1] > !arg2:
                                                revert with 0, 17
                                            if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor19[address(arg1)]:
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 263 len 26] >> 48,
                                                                0
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[arg1] > !arg2:
                                                    revert with 0, 17
                                                if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if uint8(stor8.field_160):
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 263 len 26] >> 48,
                                                                    0
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !arg2:
                                                        revert with 0, 17
                                                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if arg2 and totalFees > -1 / arg2:
                                                        revert with 0, 17
                                                    if arg2 < arg2 * totalFees / 100:
                                                        revert with 0, 17
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if arg2 * totalFees / 100 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 263 len 26] >> 48,
                                                                    0
                                                    if balanceOf[address(msg.sender)] < arg2 * totalFees / 100:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= arg2 * totalFees / 100
                                                    if balanceOf[this.address] > !(arg2 * totalFees / 100):
                                                        revert with 0, 17
                                                    if balanceOf[this.address] + (arg2 * totalFees / 100) < balanceOf[this.address]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(this.address)] = balanceOf[this.address] + (arg2 * totalFees / 100)
                                                    emit Transfer((arg2 * totalFees / 100), msg.sender, this.address);
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if arg2 - (arg2 * totalFees / 100) > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 359 len 26] >> 48,
                                                                    0
                                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * totalFees / 100):
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * totalFees / 100)
                                                    if balanceOf[arg1] > !(arg2 - (arg2 * totalFees / 100)):
                                                        revert with 0, 17
                                                    if balanceOf[arg1] + arg2 - (arg2 * totalFees / 100) < balanceOf[arg1]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2 - (arg2 * totalFees / 100)
                                                    emit Transfer((arg2 - (arg2 * totalFees / 100)), msg.sender, arg1);
                                else:
                                    if not return_data.size:
                                        if stor19[address(msg.sender)]:
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 263 len 26] >> 48,
                                                            0
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[arg1] > !arg2:
                                                revert with 0, 17
                                            if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor19[address(arg1)]:
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 263 len 26] >> 48,
                                                                0
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[arg1] > !arg2:
                                                    revert with 0, 17
                                                if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if uint8(stor8.field_160):
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 263 len 26] >> 48,
                                                                    0
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !arg2:
                                                        revert with 0, 17
                                                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if arg2 and totalFees > -1 / arg2:
                                                        revert with 0, 17
                                                    if arg2 < arg2 * totalFees / 100:
                                                        revert with 0, 17
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if arg2 * totalFees / 100 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 263 len 26] >> 48,
                                                                    0
                                                    if balanceOf[address(msg.sender)] < arg2 * totalFees / 100:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= arg2 * totalFees / 100
                                                    if balanceOf[this.address] > !(arg2 * totalFees / 100):
                                                        revert with 0, 17
                                                    if balanceOf[this.address] + (arg2 * totalFees / 100) < balanceOf[this.address]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(this.address)] = balanceOf[this.address] + (arg2 * totalFees / 100)
                                                    emit Transfer((arg2 * totalFees / 100), msg.sender, this.address);
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if arg2 - (arg2 * totalFees / 100) > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 359 len 26] >> 48,
                                                                    0
                                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * totalFees / 100):
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * totalFees / 100)
                                                    if balanceOf[arg1] > !(arg2 - (arg2 * totalFees / 100)):
                                                        revert with 0, 17
                                                    if balanceOf[arg1] + arg2 - (arg2 * totalFees / 100) < balanceOf[arg1]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2 - (arg2 * totalFees / 100)
                                                    emit Transfer((arg2 - (arg2 * totalFees / 100)), msg.sender, arg1);
                                    else:
                                        if stor19[address(msg.sender)]:
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + 264 len 26] >> 48,
                                                            0
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[arg1] > !arg2:
                                                revert with 0, 17
                                            if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor19[address(arg1)]:
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + 264 len 26] >> 48,
                                                                0
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[arg1] > !arg2:
                                                    revert with 0, 17
                                                if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if uint8(stor8.field_160):
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + 264 len 26] >> 48,
                                                                    0
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !arg2:
                                                        revert with 0, 17
                                                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if arg2 and totalFees > -1 / arg2:
                                                        revert with 0, 17
                                                    if arg2 < arg2 * totalFees / 100:
                                                        revert with 0, 17
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if arg2 * totalFees / 100 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + 264 len 26] >> 48,
                                                                    0
                                                    if balanceOf[address(msg.sender)] < arg2 * totalFees / 100:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= arg2 * totalFees / 100
                                                    if balanceOf[this.address] > !(arg2 * totalFees / 100):
                                                        revert with 0, 17
                                                    if balanceOf[this.address] + (arg2 * totalFees / 100) < balanceOf[this.address]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(this.address)] = balanceOf[this.address] + (arg2 * totalFees / 100)
                                                    emit Transfer((arg2 * totalFees / 100), msg.sender, this.address);
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if arg2 - (arg2 * totalFees / 100) > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + 360 len 26] >> 48,
                                                                    0
                                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * totalFees / 100):
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * totalFees / 100)
                                                    if balanceOf[arg1] > !(arg2 - (arg2 * totalFees / 100)):
                                                        revert with 0, 17
                                                    if balanceOf[arg1] + arg2 - (arg2 * totalFees / 100) < balanceOf[arg1]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2 - (arg2 * totalFees / 100)
                                                    emit Transfer((arg2 - (arg2 * totalFees / 100)), msg.sender, arg1);
        require ext_code.size(dividendTrackerAddress)
        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, balanceOf[address(msg.sender)]
        if not ext_call.success:
            emit 0x1f4b4287: msg.sender, 64, 4, 0x66726f6d00000000000000000000000000000000000000000000000000000000
        require ext_code.size(dividendTrackerAddress)
        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
        if not ext_call.success:
            emit 0x1f4b4287: address(arg1), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
        if not uint8(stor8.field_160):
            call dividendTrackerAddress.process(uint256 arg1) with:
                 gas gas_remaining wei
                args gasForProcessing
            if ext_call.success:
                require return_data.size >= 96
                emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
    return 1
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if unknown_0x871c128d(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0xb1fb0e97(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xe7841ec0(?????) > uint32(call.func_hash) >> 224:
                if unknown_0xc492f046(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0xb1fb0e97(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_b1fb0e97
                    if unknown_0xb62496f5(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        return bool(stor20[cd[4]])
                    require unknown_0xc0246668(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    require cd[36] == bool(cd[36])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if bool(cd[36]) == bool(stor19[address(cd[4])]):
                        revert with 0, 'Account is already the value of 'excluded''
                    stor19[address(cd[4])] = uint8(bool(cd[36]))
                    emit ExcludeFromFees(bool(cd[36]), address(cd[4]));
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0xc492f046(?????):
                        if unknown_0xdd62ed3e(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 64
                            require cd[4] == address(cd[4])
                            require cd[36] == address(cd[36])
                            return allowance[address(cd[4])][address(cd[36])]
                        if uint32(call.func_hash) >> 224 != unknown_0xe01af92c(?????):
                            require unknown_0xe2f45605(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            return swapTokensAtAmount
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == bool(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        Mask(88, 0, stor8.field_168) = Mask(88, 0, bool(cd[4]))
                    else:
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
                            mem[32] = 19
                            stor19[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(bool(cd[36]))
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
            else:
                if unknown_0xf3ff43da(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0xf3ff43da(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        sub_1915c307Address = address(cd[4])
                    else:
                        if uint32(call.func_hash) >> 224 != unknown_0xf8cf31cb(?????):
                            if unknown_0xfe33b108(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                return dividendFee
                            require unknown_0xfe575a87(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == address(cd[4])
                            return bool(stor12[cd[4]])
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        require ext_code.size(dividendTrackerAddress)
                        call dividendTrackerAddress.0xd4640c20 with:
                             gas gas_remaining wei
                            args msg.sender, address(cd[4])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    if unknown_0xe7841ec0(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        staticcall dividendTrackerAddress.0xe7841ec0 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return ext_call.return_data[0]
                    if unknown_0xe98030c7(?????) == uint32(call.func_hash) >> 224:
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
                        require unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if operatorAddress != msg.sender:
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the operator'
                        if not address(cd[4]):
                            revert with 0, 'Ownable: new owner is the zero address'
                        owner = address(cd[4])
                        emit OwnershipTransferred(owner, address(cd[4]));
        if unknown_0x9a7a23d6(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x8e3a176a(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x8e3a176a(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    require cd[36] == bool(cd[36])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    require ext_code.size(dividendTrackerAddress)
                    call dividendTrackerAddress.0x8e3a176a with:
                         gas gas_remaining wei
                        args address(cd[4]), bool(cd[36])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0xdc592def: address(cd[4]), bool(cd[36])
                if uint32(call.func_hash) >> 224 != unknown_0x95d89b41(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0x97b2544f(?????):
                        require unknown_0x98118cb4(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return liquidityFee
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    staticcall dividendTrackerAddress.0x60e0e2b4 with:
                            gas gas_remaining wei
                           args address(cd[4])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    return bool(ext_call.return_data[0])
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
            if unknown_0x871c128d(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if cd[4] < 100000:
                    revert with 0, 'gasForProcessing must be between 200,000 and 500,000'
                if cd[4] > 500000:
                    revert with 0, 'gasForProcessing must be between 200,000 and 500,000'
                if cd[4] == gasForProcessing:
                    revert with 0, 'Cannot update gasForProcessing to same value'
                emit GasForProcessingUpdated(cd[4], gasForProcessing);
                gasForProcessing = cd[4]
            else:
                if uint32(call.func_hash) >> 224 != unknown_0x88bdd9be(?????):
                    require unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return owner
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if dividendTrackerAddress == address(cd[4]):
                    revert with 0, 'The dividend tracker already has that address'
                staticcall address(cd[4]).0x8da5cb5b with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != this.address:
                    revert with 0, 'The new dividend tracker must be owned by the main token contract'
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
                require ext_code.size(address(cd[4]))
                call address(cd[4]).0x31e79db0 with:
                     gas gas_remaining wei
                    args uniswapV2PairAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit UpdateDividendTracker(address(cd[4]), dividendTrackerAddress);
                dividendTrackerAddress = address(cd[4])
        if unknown_0xa8b9d240(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x9a7a23d6(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                require cd[4] == address(cd[4])
                require cd[36] == bool(cd[36])
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if uniswapV2PairAddress == address(cd[4]):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'The PancakeSwap pair cannot be removed from automatedMarketMakerPairs'
                if bool(cd[36]) == bool(stor20[address(cd[4])]):
                    revert with 0, 'Automated market maker pair is already set to that value'
                stor20[address(cd[4])] = uint8(bool(cd[36]))
                emit SetAutomatedMarketMakerPair(address(cd[4]), bool(cd[36]));
            if unknown_0x9c1b8af5(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return gasForProcessing
            if unknown_0xa26579ad(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
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
            if cd[36] > allowance[msg.sender][address(cd[4])]:
                revert with 0, 32, 37, 0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[197 len 27] >> 40, 0
            if allowance[msg.sender][address(cd[4])] < cd[36]:
                revert with 0, 17
            if not msg.sender:
                revert with 0, 'ERC20: approve from the zero address'
            if not address(cd[4]):
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(msg.sender)][address(cd[4])] = allowance[msg.sender][address(cd[4])] - cd[36]
            emit Approval((allowance[msg.sender][address(cd[4])] - cd[36]), msg.sender, address(cd[4]));
        else:
            if unknown_0xa8b9d240(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                staticcall dividendTrackerAddress.0xa8b9d240 with:
                        gas gas_remaining wei
                       args address(cd[4])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                return ext_call.return_data[0]
            if uint32(call.func_hash) >> 224 != unknown_0xa9059cbb(?????):
                if uint32(call.func_hash) >> 224 != unknown_0xad56c13c(?????):
                    require unknown_0xafa4f3b2(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    swapTokensAtAmount = cd[4]
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
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
            require not msg.value
            require calldata.size - 4 >= 64
            require cd[4] == address(cd[4])
            if not msg.sender:
                revert with 0, 'ERC20: transfer from the zero address'
            if not address(cd[4]):
                revert with 0, 'ERC20: transfer to the zero address'
            if stor12[address(msg.sender)]:
                revert with 0, 'Blacklisted address'
            if stor12[address(cd[4])]:
                revert with 0, 'Blacklisted address'
            if not cd[36]:
                if not msg.sender:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not address(cd[4]):
                    revert with 0, 'ERC20: transfer to the zero address'
                if 0 > balanceOf[address(msg.sender)]:
                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                if balanceOf[address(msg.sender)] < 0:
                    revert with 0, 17
                if balanceOf[address(cd[4])] > -1:
                    revert with 0, 17
                if balanceOf[address(cd[4])] < balanceOf[address(cd[4])]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(cd[4])] = balanceOf[address(cd[4])]
                emit Transfer(0, msg.sender, address(cd[4]));
            else:
                if not swapEnabled:
                    if stor19[address(msg.sender)]:
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not address(cd[4]):
                            revert with 0, 'ERC20: transfer to the zero address'
                        if cd[36] > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                        if balanceOf[address(msg.sender)] < cd[36]:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= cd[36]
                        if balanceOf[address(cd[4])] > !cd[36]:
                            revert with 0, 17
                        if balanceOf[address(cd[4])] + cd[36] < balanceOf[address(cd[4])]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(cd[4])] += cd[36]
                        emit Transfer(cd[36], msg.sender, address(cd[4]));
                    else:
                        if stor19[address(cd[4])]:
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not address(cd[4]):
                                revert with 0, 'ERC20: transfer to the zero address'
                            if cd[36] > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                            if balanceOf[address(msg.sender)] < cd[36]:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= cd[36]
                            if balanceOf[address(cd[4])] > !cd[36]:
                                revert with 0, 17
                            if balanceOf[address(cd[4])] + cd[36] < balanceOf[address(cd[4])]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(cd[4])] += cd[36]
                            emit Transfer(cd[36], msg.sender, address(cd[4]));
                        else:
                            if uint8(stor8.field_160):
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not address(cd[4]):
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if cd[36] > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < cd[36]:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= cd[36]
                                if balanceOf[address(cd[4])] > !cd[36]:
                                    revert with 0, 17
                                if balanceOf[address(cd[4])] + cd[36] < balanceOf[address(cd[4])]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(cd[4])] += cd[36]
                                emit Transfer(cd[36], msg.sender, address(cd[4]));
                            else:
                                if cd[36] and totalFees > -1 / cd[36]:
                                    revert with 0, 17
                                if cd[36] < cd[36] * totalFees / 100:
                                    revert with 0, 17
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if cd[36] * totalFees / 100 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < cd[36] * totalFees / 100:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= cd[36] * totalFees / 100
                                if balanceOf[this.address] > !(cd[36] * totalFees / 100):
                                    revert with 0, 17
                                if balanceOf[this.address] + (cd[36] * totalFees / 100) < balanceOf[this.address]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(this.address)] = balanceOf[this.address] + (cd[36] * totalFees / 100)
                                emit Transfer((cd[36] * totalFees / 100), msg.sender, this.address);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not address(cd[4]):
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if cd[36] - (cd[36] * totalFees / 100) > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < cd[36] - (cd[36] * totalFees / 100):
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] * totalFees / 100)
                                if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] * totalFees / 100)):
                                    revert with 0, 17
                                if balanceOf[address(cd[4])] + cd[36] - (cd[36] * totalFees / 100) < balanceOf[address(cd[4])]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] * totalFees / 100)
                                emit Transfer((cd[36] - (cd[36] * totalFees / 100)), msg.sender, address(cd[4]));
                else:
                    if balanceOf[this.address] < swapTokensAtAmount:
                        if stor19[address(msg.sender)]:
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not address(cd[4]):
                                revert with 0, 'ERC20: transfer to the zero address'
                            if cd[36] > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                            if balanceOf[address(msg.sender)] < cd[36]:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= cd[36]
                            if balanceOf[address(cd[4])] > !cd[36]:
                                revert with 0, 17
                            if balanceOf[address(cd[4])] + cd[36] < balanceOf[address(cd[4])]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(cd[4])] += cd[36]
                            emit Transfer(cd[36], msg.sender, address(cd[4]));
                        else:
                            if stor19[address(cd[4])]:
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not address(cd[4]):
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if cd[36] > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < cd[36]:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= cd[36]
                                if balanceOf[address(cd[4])] > !cd[36]:
                                    revert with 0, 17
                                if balanceOf[address(cd[4])] + cd[36] < balanceOf[address(cd[4])]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(cd[4])] += cd[36]
                                emit Transfer(cd[36], msg.sender, address(cd[4]));
                            else:
                                if uint8(stor8.field_160):
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not address(cd[4]):
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if cd[36] > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < cd[36]:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= cd[36]
                                    if balanceOf[address(cd[4])] > !cd[36]:
                                        revert with 0, 17
                                    if balanceOf[address(cd[4])] + cd[36] < balanceOf[address(cd[4])]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(cd[4])] += cd[36]
                                    emit Transfer(cd[36], msg.sender, address(cd[4]));
                                else:
                                    if cd[36] and totalFees > -1 / cd[36]:
                                        revert with 0, 17
                                    if cd[36] < cd[36] * totalFees / 100:
                                        revert with 0, 17
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if cd[36] * totalFees / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < cd[36] * totalFees / 100:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= cd[36] * totalFees / 100
                                    if balanceOf[this.address] > !(cd[36] * totalFees / 100):
                                        revert with 0, 17
                                    if balanceOf[this.address] + (cd[36] * totalFees / 100) < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] = balanceOf[this.address] + (cd[36] * totalFees / 100)
                                    emit Transfer((cd[36] * totalFees / 100), msg.sender, this.address);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not address(cd[4]):
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if cd[36] - (cd[36] * totalFees / 100) > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < cd[36] - (cd[36] * totalFees / 100):
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] * totalFees / 100)
                                    if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] * totalFees / 100)):
                                        revert with 0, 17
                                    if balanceOf[address(cd[4])] + cd[36] - (cd[36] * totalFees / 100) < balanceOf[address(cd[4])]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] * totalFees / 100)
                                    emit Transfer((cd[36] - (cd[36] * totalFees / 100)), msg.sender, address(cd[4]));
                    else:
                        if uint8(stor8.field_160):
                            if stor19[address(msg.sender)]:
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not address(cd[4]):
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if cd[36] > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < cd[36]:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= cd[36]
                                if balanceOf[address(cd[4])] > !cd[36]:
                                    revert with 0, 17
                                if balanceOf[address(cd[4])] + cd[36] < balanceOf[address(cd[4])]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(cd[4])] += cd[36]
                                emit Transfer(cd[36], msg.sender, address(cd[4]));
                            else:
                                if stor19[address(cd[4])]:
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not address(cd[4]):
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if cd[36] > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < cd[36]:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= cd[36]
                                    if balanceOf[address(cd[4])] > !cd[36]:
                                        revert with 0, 17
                                    if balanceOf[address(cd[4])] + cd[36] < balanceOf[address(cd[4])]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(cd[4])] += cd[36]
                                    emit Transfer(cd[36], msg.sender, address(cd[4]));
                                else:
                                    if uint8(stor8.field_160):
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not address(cd[4]):
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if cd[36] > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < cd[36]:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= cd[36]
                                        if balanceOf[address(cd[4])] > !cd[36]:
                                            revert with 0, 17
                                        if balanceOf[address(cd[4])] + cd[36] < balanceOf[address(cd[4])]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(cd[4])] += cd[36]
                                        emit Transfer(cd[36], msg.sender, address(cd[4]));
                                    else:
                                        if cd[36] and totalFees > -1 / cd[36]:
                                            revert with 0, 17
                                        if cd[36] < cd[36] * totalFees / 100:
                                            revert with 0, 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if cd[36] * totalFees / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < cd[36] * totalFees / 100:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= cd[36] * totalFees / 100
                                        if balanceOf[this.address] > !(cd[36] * totalFees / 100):
                                            revert with 0, 17
                                        if balanceOf[this.address] + (cd[36] * totalFees / 100) < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] = balanceOf[this.address] + (cd[36] * totalFees / 100)
                                        emit Transfer((cd[36] * totalFees / 100), msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not address(cd[4]):
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if cd[36] - (cd[36] * totalFees / 100) > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < cd[36] - (cd[36] * totalFees / 100):
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] * totalFees / 100)
                                        if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] * totalFees / 100)):
                                            revert with 0, 17
                                        if balanceOf[address(cd[4])] + cd[36] - (cd[36] * totalFees / 100) < balanceOf[address(cd[4])]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] * totalFees / 100)
                                        emit Transfer((cd[36] - (cd[36] * totalFees / 100)), msg.sender, address(cd[4]));
                        else:
                            if stor20[address(msg.sender)]:
                                if stor19[address(msg.sender)]:
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not address(cd[4]):
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if cd[36] > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < cd[36]:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= cd[36]
                                    if balanceOf[address(cd[4])] > !cd[36]:
                                        revert with 0, 17
                                    if balanceOf[address(cd[4])] + cd[36] < balanceOf[address(cd[4])]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(cd[4])] += cd[36]
                                    emit Transfer(cd[36], msg.sender, address(cd[4]));
                                else:
                                    if stor19[address(cd[4])]:
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not address(cd[4]):
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if cd[36] > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < cd[36]:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= cd[36]
                                        if balanceOf[address(cd[4])] > !cd[36]:
                                            revert with 0, 17
                                        if balanceOf[address(cd[4])] + cd[36] < balanceOf[address(cd[4])]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(cd[4])] += cd[36]
                                        emit Transfer(cd[36], msg.sender, address(cd[4]));
                                    else:
                                        if uint8(stor8.field_160):
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if cd[36] > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                                            if balanceOf[address(msg.sender)] < cd[36]:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] -= cd[36]
                                            if balanceOf[address(cd[4])] > !cd[36]:
                                                revert with 0, 17
                                            if balanceOf[address(cd[4])] + cd[36] < balanceOf[address(cd[4])]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(cd[4])] += cd[36]
                                            emit Transfer(cd[36], msg.sender, address(cd[4]));
                                        else:
                                            if cd[36] and totalFees > -1 / cd[36]:
                                                revert with 0, 17
                                            if cd[36] < cd[36] * totalFees / 100:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if cd[36] * totalFees / 100 > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                                            if balanceOf[address(msg.sender)] < cd[36] * totalFees / 100:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] -= cd[36] * totalFees / 100
                                            if balanceOf[this.address] > !(cd[36] * totalFees / 100):
                                                revert with 0, 17
                                            if balanceOf[this.address] + (cd[36] * totalFees / 100) < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = balanceOf[this.address] + (cd[36] * totalFees / 100)
                                            emit Transfer((cd[36] * totalFees / 100), msg.sender, this.address);
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if cd[36] - (cd[36] * totalFees / 100) > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                                            if balanceOf[address(msg.sender)] < cd[36] - (cd[36] * totalFees / 100):
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] * totalFees / 100)
                                            if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] * totalFees / 100)):
                                                revert with 0, 17
                                            if balanceOf[address(cd[4])] + cd[36] - (cd[36] * totalFees / 100) < balanceOf[address(cd[4])]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] * totalFees / 100)
                                            emit Transfer((cd[36] - (cd[36] * totalFees / 100)), msg.sender, address(cd[4]));
                            else:
                                if owner == msg.sender:
                                    if stor19[address(msg.sender)]:
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not address(cd[4]):
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if cd[36] > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < cd[36]:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= cd[36]
                                        if balanceOf[address(cd[4])] > !cd[36]:
                                            revert with 0, 17
                                        if balanceOf[address(cd[4])] + cd[36] < balanceOf[address(cd[4])]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(cd[4])] += cd[36]
                                        emit Transfer(cd[36], msg.sender, address(cd[4]));
                                    else:
                                        if stor19[address(cd[4])]:
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if cd[36] > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                                            if balanceOf[address(msg.sender)] < cd[36]:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] -= cd[36]
                                            if balanceOf[address(cd[4])] > !cd[36]:
                                                revert with 0, 17
                                            if balanceOf[address(cd[4])] + cd[36] < balanceOf[address(cd[4])]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(cd[4])] += cd[36]
                                            emit Transfer(cd[36], msg.sender, address(cd[4]));
                                        else:
                                            if uint8(stor8.field_160):
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not address(cd[4]):
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if cd[36] > balanceOf[address(msg.sender)]:
                                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                                                if balanceOf[address(msg.sender)] < cd[36]:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)] -= cd[36]
                                                if balanceOf[address(cd[4])] > !cd[36]:
                                                    revert with 0, 17
                                                if balanceOf[address(cd[4])] + cd[36] < balanceOf[address(cd[4])]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(cd[4])] += cd[36]
                                                emit Transfer(cd[36], msg.sender, address(cd[4]));
                                            else:
                                                if cd[36] and totalFees > -1 / cd[36]:
                                                    revert with 0, 17
                                                if cd[36] < cd[36] * totalFees / 100:
                                                    revert with 0, 17
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not this.address:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if cd[36] * totalFees / 100 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                                                if balanceOf[address(msg.sender)] < cd[36] * totalFees / 100:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)] -= cd[36] * totalFees / 100
                                                if balanceOf[this.address] > !(cd[36] * totalFees / 100):
                                                    revert with 0, 17
                                                if balanceOf[this.address] + (cd[36] * totalFees / 100) < balanceOf[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] = balanceOf[this.address] + (cd[36] * totalFees / 100)
                                                emit Transfer((cd[36] * totalFees / 100), msg.sender, this.address);
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not address(cd[4]):
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if cd[36] - (cd[36] * totalFees / 100) > balanceOf[address(msg.sender)]:
                                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                                                if balanceOf[address(msg.sender)] < cd[36] - (cd[36] * totalFees / 100):
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] * totalFees / 100)
                                                if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] * totalFees / 100)):
                                                    revert with 0, 17
                                                if balanceOf[address(cd[4])] + cd[36] - (cd[36] * totalFees / 100) < balanceOf[address(cd[4])]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] * totalFees / 100)
                                                emit Transfer((cd[36] - (cd[36] * totalFees / 100)), msg.sender, address(cd[4]));
                                else:
                                    if owner == address(cd[4]):
                                        if stor19[address(msg.sender)]:
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if cd[36] > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                                            if balanceOf[address(msg.sender)] < cd[36]:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] -= cd[36]
                                            if balanceOf[address(cd[4])] > !cd[36]:
                                                revert with 0, 17
                                            if balanceOf[address(cd[4])] + cd[36] < balanceOf[address(cd[4])]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(cd[4])] += cd[36]
                                            emit Transfer(cd[36], msg.sender, address(cd[4]));
                                        else:
                                            if stor19[address(cd[4])]:
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not address(cd[4]):
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if cd[36] > balanceOf[address(msg.sender)]:
                                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                                                if balanceOf[address(msg.sender)] < cd[36]:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)] -= cd[36]
                                                if balanceOf[address(cd[4])] > !cd[36]:
                                                    revert with 0, 17
                                                if balanceOf[address(cd[4])] + cd[36] < balanceOf[address(cd[4])]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(cd[4])] += cd[36]
                                                emit Transfer(cd[36], msg.sender, address(cd[4]));
                                            else:
                                                if uint8(stor8.field_160):
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not address(cd[4]):
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if cd[36] > balanceOf[address(msg.sender)]:
                                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                                                    if balanceOf[address(msg.sender)] < cd[36]:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= cd[36]
                                                    if balanceOf[address(cd[4])] > !cd[36]:
                                                        revert with 0, 17
                                                    if balanceOf[address(cd[4])] + cd[36] < balanceOf[address(cd[4])]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(cd[4])] += cd[36]
                                                    emit Transfer(cd[36], msg.sender, address(cd[4]));
                                                else:
                                                    if cd[36] and totalFees > -1 / cd[36]:
                                                        revert with 0, 17
                                                    if cd[36] < cd[36] * totalFees / 100:
                                                        revert with 0, 17
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if cd[36] * totalFees / 100 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                                                    if balanceOf[address(msg.sender)] < cd[36] * totalFees / 100:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= cd[36] * totalFees / 100
                                                    if balanceOf[this.address] > !(cd[36] * totalFees / 100):
                                                        revert with 0, 17
                                                    if balanceOf[this.address] + (cd[36] * totalFees / 100) < balanceOf[this.address]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(this.address)] = balanceOf[this.address] + (cd[36] * totalFees / 100)
                                                    emit Transfer((cd[36] * totalFees / 100), msg.sender, this.address);
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not address(cd[4]):
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if cd[36] - (cd[36] * totalFees / 100) > balanceOf[address(msg.sender)]:
                                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                                                    if balanceOf[address(msg.sender)] < cd[36] - (cd[36] * totalFees / 100):
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] * totalFees / 100)
                                                    if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] * totalFees / 100)):
                                                        revert with 0, 17
                                                    if balanceOf[address(cd[4])] + cd[36] - (cd[36] * totalFees / 100) < balanceOf[address(cd[4])]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] * totalFees / 100)
                                                    emit Transfer((cd[36] - (cd[36] * totalFees / 100)), msg.sender, address(cd[4]));
                                    else:
                                        uint8(stor8.field_160) = 1
                                        if balanceOf[this.address] and liquidityFee > -1 / balanceOf[this.address]:
                                            revert with 0, 17
                                        if not totalFees:
                                            revert with 0, 18
                                        if balanceOf[this.address] < balanceOf[this.address] * liquidityFee / 2 / totalFees:
                                            revert with 0, 17
                                        mem[160] = this.address
                                        staticcall uniswapV2RouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        mem[224] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[192] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor7] = balanceOf[this.address] - (balanceOf[this.address] * liquidityFee / 2 / totalFees)
                                        emit Approval((balanceOf[this.address] - (balanceOf[this.address] * liquidityFee / 2 / totalFees)), this.address, uniswapV2RouterAddress);
                                        mem[ceil32(return_data.size) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 228] = balanceOf[this.address] - (balanceOf[this.address] * liquidityFee / 2 / totalFees)
                                        idx = 0
                                        s = ceil32(return_data.size) + 420
                                        t = 160
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args balanceOf[this.address] - (balanceOf[this.address] * liquidityFee / 2 / totalFees), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        if totalFees < stor14:
                                            revert with 0, 17
                                        if False and liquidityFee > 0:
                                            revert with 0, 17
                                        if not totalFees - stor14:
                                            revert with 0, 18
                                        if False and dividendFee > 0:
                                            revert with 0, 17
                                        if not totalFees - stor14:
                                            revert with 0, 18
                                        if 0 < 0 / totalFees - stor14:
                                            revert with 0, 17
                                        if -0 / totalFees - stor14 < 0 / totalFees - stor14:
                                            revert with 0, 17
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor7] = balanceOf[this.address] * liquidityFee / 2 / totalFees
                                        emit Approval((balanceOf[this.address] * liquidityFee / 2 / totalFees), this.address, uniswapV2RouterAddress);
                                        mem[ceil32(return_data.size) + 292] = 0
                                        mem[ceil32(return_data.size) + 324] = 0
                                        mem[ceil32(return_data.size) + 356] = 0
                                        mem[ceil32(return_data.size) + 388] = block.timestamp
                                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value 0 / totalFees - stor14 wei
                                             gas gas_remaining wei
                                            args this.address, balanceOf[this.address] * liquidityFee / 2 / totalFees, 0, 0, 0, block.timestamp
                                        mem[ceil32(return_data.size) + 224 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        emit SwapAndLiquify(balanceOf[this.address] * liquidityFee / 2 / totalFees, 0 / totalFees - stor14);
                                        call dividendTrackerAddress with:
                                           value 0 / totalFees - stor14 wei
                                             gas gas_remaining wei
                                        if ext_call.success:
                                            require ext_code.size(dividendTrackerAddress)
                                            call dividendTrackerAddress.distributeDividends(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args (0 / totalFees - stor14)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit SendDividends((0 / totalFees - stor14));
                                        call sub_1915c307Address with:
                                           value -2 * 0 / totalFees - stor14 wei
                                             gas gas_remaining wei
                                        if ext_call.success:
                                            emit 0xb158a2a5: sub_1915c307Address, -2 * 0 / totalFees - stor14
                                        uint8(stor8.field_160) = 0
                                        if not return_data.size:
                                            if not return_data.size:
                                                if stor19[address(msg.sender)]:
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not address(cd[4]):
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if cd[36] > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 294 len 26] >> 48,
                                                                    0
                                                    if balanceOf[address(msg.sender)] < cd[36]:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= cd[36]
                                                    if balanceOf[address(cd[4])] > !cd[36]:
                                                        revert with 0, 17
                                                    if balanceOf[address(cd[4])] + cd[36] < balanceOf[address(cd[4])]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(cd[4])] += cd[36]
                                                    emit Transfer(cd[36], msg.sender, address(cd[4]));
                                                else:
                                                    if stor19[address(cd[4])]:
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not address(cd[4]):
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if cd[36] > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 294 len 26] >> 48,
                                                                        0
                                                        if balanceOf[address(msg.sender)] < cd[36]:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)] -= cd[36]
                                                        if balanceOf[address(cd[4])] > !cd[36]:
                                                            revert with 0, 17
                                                        if balanceOf[address(cd[4])] + cd[36] < balanceOf[address(cd[4])]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(cd[4])] += cd[36]
                                                        emit Transfer(cd[36], msg.sender, address(cd[4]));
                                                    else:
                                                        if uint8(stor8.field_160):
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not address(cd[4]):
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if cd[36] > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 294 len 26] >> 48,
                                                                            0
                                                            if balanceOf[address(msg.sender)] < cd[36]:
                                                                revert with 0, 17
                                                            balanceOf[address(msg.sender)] -= cd[36]
                                                            if balanceOf[address(cd[4])] > !cd[36]:
                                                                revert with 0, 17
                                                            if balanceOf[address(cd[4])] + cd[36] < balanceOf[address(cd[4])]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(cd[4])] += cd[36]
                                                            emit Transfer(cd[36], msg.sender, address(cd[4]));
                                                        else:
                                                            if cd[36] and totalFees > -1 / cd[36]:
                                                                revert with 0, 17
                                                            if cd[36] < cd[36] * totalFees / 100:
                                                                revert with 0, 17
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if cd[36] * totalFees / 100 > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 294 len 26] >> 48,
                                                                            0
                                                            if balanceOf[address(msg.sender)] < cd[36] * totalFees / 100:
                                                                revert with 0, 17
                                                            balanceOf[address(msg.sender)] -= cd[36] * totalFees / 100
                                                            if balanceOf[this.address] > !(cd[36] * totalFees / 100):
                                                                revert with 0, 17
                                                            if balanceOf[this.address] + (cd[36] * totalFees / 100) < balanceOf[this.address]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(this.address)] = balanceOf[this.address] + (cd[36] * totalFees / 100)
                                                            emit Transfer((cd[36] * totalFees / 100), msg.sender, this.address);
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not address(cd[4]):
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if cd[36] - (cd[36] * totalFees / 100) > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 390 len 26] >> 48,
                                                                            0
                                                            if balanceOf[address(msg.sender)] < cd[36] - (cd[36] * totalFees / 100):
                                                                revert with 0, 17
                                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] * totalFees / 100)
                                                            if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] * totalFees / 100)):
                                                                revert with 0, 17
                                                            if balanceOf[address(cd[4])] + cd[36] - (cd[36] * totalFees / 100) < balanceOf[address(cd[4])]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] * totalFees / 100)
                                                            emit Transfer((cd[36] - (cd[36] * totalFees / 100)), msg.sender, address(cd[4]));
                                            else:
                                                if stor19[address(msg.sender)]:
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not address(cd[4]):
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if cd[36] > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 295 len 26] >> 48,
                                                                    0
                                                    if balanceOf[address(msg.sender)] < cd[36]:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= cd[36]
                                                    if balanceOf[address(cd[4])] > !cd[36]:
                                                        revert with 0, 17
                                                    if balanceOf[address(cd[4])] + cd[36] < balanceOf[address(cd[4])]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(cd[4])] += cd[36]
                                                    emit Transfer(cd[36], msg.sender, address(cd[4]));
                                                else:
                                                    if stor19[address(cd[4])]:
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not address(cd[4]):
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if cd[36] > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 295 len 26] >> 48,
                                                                        0
                                                        if balanceOf[address(msg.sender)] < cd[36]:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)] -= cd[36]
                                                        if balanceOf[address(cd[4])] > !cd[36]:
                                                            revert with 0, 17
                                                        if balanceOf[address(cd[4])] + cd[36] < balanceOf[address(cd[4])]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(cd[4])] += cd[36]
                                                        emit Transfer(cd[36], msg.sender, address(cd[4]));
                                                    else:
                                                        if uint8(stor8.field_160):
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not address(cd[4]):
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if cd[36] > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 295 len 26] >> 48,
                                                                            0
                                                            if balanceOf[address(msg.sender)] < cd[36]:
                                                                revert with 0, 17
                                                            balanceOf[address(msg.sender)] -= cd[36]
                                                            if balanceOf[address(cd[4])] > !cd[36]:
                                                                revert with 0, 17
                                                            if balanceOf[address(cd[4])] + cd[36] < balanceOf[address(cd[4])]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(cd[4])] += cd[36]
                                                            emit Transfer(cd[36], msg.sender, address(cd[4]));
                                                        else:
                                                            if cd[36] and totalFees > -1 / cd[36]:
                                                                revert with 0, 17
                                                            if cd[36] < cd[36] * totalFees / 100:
                                                                revert with 0, 17
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if cd[36] * totalFees / 100 > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 295 len 26] >> 48,
                                                                            0
                                                            if balanceOf[address(msg.sender)] < cd[36] * totalFees / 100:
                                                                revert with 0, 17
                                                            balanceOf[address(msg.sender)] -= cd[36] * totalFees / 100
                                                            if balanceOf[this.address] > !(cd[36] * totalFees / 100):
                                                                revert with 0, 17
                                                            if balanceOf[this.address] + (cd[36] * totalFees / 100) < balanceOf[this.address]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(this.address)] = balanceOf[this.address] + (cd[36] * totalFees / 100)
                                                            emit Transfer((cd[36] * totalFees / 100), msg.sender, this.address);
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not address(cd[4]):
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if cd[36] - (cd[36] * totalFees / 100) > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 391 len 26] >> 48,
                                                                            0
                                                            if balanceOf[address(msg.sender)] < cd[36] - (cd[36] * totalFees / 100):
                                                                revert with 0, 17
                                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] * totalFees / 100)
                                                            if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] * totalFees / 100)):
                                                                revert with 0, 17
                                                            if balanceOf[address(cd[4])] + cd[36] - (cd[36] * totalFees / 100) < balanceOf[address(cd[4])]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] * totalFees / 100)
                                                            emit Transfer((cd[36] - (cd[36] * totalFees / 100)), msg.sender, address(cd[4]));
                                        else:
                                            if not return_data.size:
                                                if stor19[address(msg.sender)]:
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not address(cd[4]):
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if cd[36] > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 295 len 26] >> 48,
                                                                    0
                                                    if balanceOf[address(msg.sender)] < cd[36]:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= cd[36]
                                                    if balanceOf[address(cd[4])] > !cd[36]:
                                                        revert with 0, 17
                                                    if balanceOf[address(cd[4])] + cd[36] < balanceOf[address(cd[4])]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(cd[4])] += cd[36]
                                                    emit Transfer(cd[36], msg.sender, address(cd[4]));
                                                else:
                                                    if stor19[address(cd[4])]:
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not address(cd[4]):
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if cd[36] > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 295 len 26] >> 48,
                                                                        0
                                                        if balanceOf[address(msg.sender)] < cd[36]:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)] -= cd[36]
                                                        if balanceOf[address(cd[4])] > !cd[36]:
                                                            revert with 0, 17
                                                        if balanceOf[address(cd[4])] + cd[36] < balanceOf[address(cd[4])]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(cd[4])] += cd[36]
                                                        emit Transfer(cd[36], msg.sender, address(cd[4]));
                                                    else:
                                                        if uint8(stor8.field_160):
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not address(cd[4]):
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if cd[36] > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 295 len 26] >> 48,
                                                                            0
                                                            if balanceOf[address(msg.sender)] < cd[36]:
                                                                revert with 0, 17
                                                            balanceOf[address(msg.sender)] -= cd[36]
                                                            if balanceOf[address(cd[4])] > !cd[36]:
                                                                revert with 0, 17
                                                            if balanceOf[address(cd[4])] + cd[36] < balanceOf[address(cd[4])]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(cd[4])] += cd[36]
                                                            emit Transfer(cd[36], msg.sender, address(cd[4]));
                                                        else:
                                                            if cd[36] and totalFees > -1 / cd[36]:
                                                                revert with 0, 17
                                                            if cd[36] < cd[36] * totalFees / 100:
                                                                revert with 0, 17
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if cd[36] * totalFees / 100 > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 295 len 26] >> 48,
                                                                            0
                                                            if balanceOf[address(msg.sender)] < cd[36] * totalFees / 100:
                                                                revert with 0, 17
                                                            balanceOf[address(msg.sender)] -= cd[36] * totalFees / 100
                                                            if balanceOf[this.address] > !(cd[36] * totalFees / 100):
                                                                revert with 0, 17
                                                            if balanceOf[this.address] + (cd[36] * totalFees / 100) < balanceOf[this.address]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(this.address)] = balanceOf[this.address] + (cd[36] * totalFees / 100)
                                                            emit Transfer((cd[36] * totalFees / 100), msg.sender, this.address);
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not address(cd[4]):
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if cd[36] - (cd[36] * totalFees / 100) > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 391 len 26] >> 48,
                                                                            0
                                                            if balanceOf[address(msg.sender)] < cd[36] - (cd[36] * totalFees / 100):
                                                                revert with 0, 17
                                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] * totalFees / 100)
                                                            if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] * totalFees / 100)):
                                                                revert with 0, 17
                                                            if balanceOf[address(cd[4])] + cd[36] - (cd[36] * totalFees / 100) < balanceOf[address(cd[4])]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] * totalFees / 100)
                                                            emit Transfer((cd[36] - (cd[36] * totalFees / 100)), msg.sender, address(cd[4]));
                                            else:
                                                if stor19[address(msg.sender)]:
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not address(cd[4]):
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if cd[36] > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + 296 len 26] >> 48,
                                                                    0
                                                    if balanceOf[address(msg.sender)] < cd[36]:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= cd[36]
                                                    if balanceOf[address(cd[4])] > !cd[36]:
                                                        revert with 0, 17
                                                    if balanceOf[address(cd[4])] + cd[36] < balanceOf[address(cd[4])]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(cd[4])] += cd[36]
                                                    emit Transfer(cd[36], msg.sender, address(cd[4]));
                                                else:
                                                    if stor19[address(cd[4])]:
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not address(cd[4]):
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if cd[36] > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + 296 len 26] >> 48,
                                                                        0
                                                        if balanceOf[address(msg.sender)] < cd[36]:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)] -= cd[36]
                                                        if balanceOf[address(cd[4])] > !cd[36]:
                                                            revert with 0, 17
                                                        if balanceOf[address(cd[4])] + cd[36] < balanceOf[address(cd[4])]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(cd[4])] += cd[36]
                                                        emit Transfer(cd[36], msg.sender, address(cd[4]));
                                                    else:
                                                        if uint8(stor8.field_160):
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not address(cd[4]):
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if cd[36] > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + 296 len 26] >> 48,
                                                                            0
                                                            if balanceOf[address(msg.sender)] < cd[36]:
                                                                revert with 0, 17
                                                            balanceOf[address(msg.sender)] -= cd[36]
                                                            if balanceOf[address(cd[4])] > !cd[36]:
                                                                revert with 0, 17
                                                            if balanceOf[address(cd[4])] + cd[36] < balanceOf[address(cd[4])]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(cd[4])] += cd[36]
                                                            emit Transfer(cd[36], msg.sender, address(cd[4]));
                                                        else:
                                                            if cd[36] and totalFees > -1 / cd[36]:
                                                                revert with 0, 17
                                                            if cd[36] < cd[36] * totalFees / 100:
                                                                revert with 0, 17
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if cd[36] * totalFees / 100 > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + 296 len 26] >> 48,
                                                                            0
                                                            if balanceOf[address(msg.sender)] < cd[36] * totalFees / 100:
                                                                revert with 0, 17
                                                            balanceOf[address(msg.sender)] -= cd[36] * totalFees / 100
                                                            if balanceOf[this.address] > !(cd[36] * totalFees / 100):
                                                                revert with 0, 17
                                                            if balanceOf[this.address] + (cd[36] * totalFees / 100) < balanceOf[this.address]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(this.address)] = balanceOf[this.address] + (cd[36] * totalFees / 100)
                                                            emit Transfer((cd[36] * totalFees / 100), msg.sender, this.address);
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not address(cd[4]):
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if cd[36] - (cd[36] * totalFees / 100) > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + 392 len 26] >> 48,
                                                                            0
                                                            if balanceOf[address(msg.sender)] < cd[36] - (cd[36] * totalFees / 100):
                                                                revert with 0, 17
                                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] * totalFees / 100)
                                                            if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] * totalFees / 100)):
                                                                revert with 0, 17
                                                            if balanceOf[address(cd[4])] + cd[36] - (cd[36] * totalFees / 100) < balanceOf[address(cd[4])]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] * totalFees / 100)
                                                            emit Transfer((cd[36] - (cd[36] * totalFees / 100)), msg.sender, address(cd[4]));
                require ext_code.size(dividendTrackerAddress)
                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, balanceOf[address(msg.sender)]
                if not ext_call.success:
                    emit 0x1f4b4287: msg.sender, 64, 4, 0x66726f6d00000000000000000000000000000000000000000000000000000000
                require ext_code.size(dividendTrackerAddress)
                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[4]), balanceOf[address(cd[4])]
                if not ext_call.success:
                    emit 0x1f4b4287: address(cd[4]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                if not uint8(stor8.field_160):
                    call dividendTrackerAddress.process(uint256 arg1) with:
                         gas gas_remaining wei
                        args gasForProcessing
                    if ext_call.success:
                        require return_data.size >= 96
                        emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
    else:
        if unknown_0x42ec38e2(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x64b0f653(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x4e71d92d(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0x42ec38e2(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        staticcall dividendTrackerAddress.0x42ec38e2 with:
                                gas gas_remaining wei
                               args address(cd[4])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        return ext_call.return_data[12 len 20]
                    if uint32(call.func_hash) >> 224 != unknown_0x455a4396(?????):
                        require unknown_0x49bd5a5e(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return uniswapV2PairAddress
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    require cd[36] == bool(cd[36])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    stor12[address(cd[4])] = uint8(bool(cd[36]))
                else:
                    if unknown_0x4e71d92d(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        call dividendTrackerAddress.processAccount(address arg1, bool arg2) with:
                             gas gas_remaining wei
                            args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if unknown_0x4fbee193(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == address(cd[4])
                            return bool(stor19[address(cd[4])])
                        if unknown_0x570ca735(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return operatorAddress
                        require unknown_0x595d82b1(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        sub_b1fb0e97 = cd[4]
                        if dividendFee > !liquidityFee:
                            revert with 0, 17
                        if dividendFee + liquidityFee > !cd[4]:
                            revert with 0, 17
                        totalFees = dividendFee + liquidityFee + cd[4]
            else:
                if unknown_0x700bb191(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0x700bb191(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
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
                        if uint32(call.func_hash) >> 224 != unknown_0x715018a6(?????):
                            require unknown_0x85141a77(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            return deadWalletAddress
                        require not msg.value
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        owner = 0
                        emit OwnershipTransferred(owner, 0);
                else:
                    if unknown_0x64b0f653(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        staticcall dividendTrackerAddress.getNumberOfTokenHolders() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return ext_call.return_data[0]
                    if uint32(call.func_hash) >> 224 != unknown_0x65b8dbc0(?????):
                        if uint32(call.func_hash) >> 224 != unknown_0x6843cd84(?????):
                            require unknown_0x6ddd1713(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            return bool(swapEnabled)
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
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
                        revert with 0, 'The router already has that address'
                    emit UpdateUniswapV2Router(address(cd[4]), uniswapV2RouterAddress);
                    uniswapV2RouterAddress = address(cd[4])
                    require ext_code.size(dividendTrackerAddress)
                    call dividendTrackerAddress.0x7e17a349 with:
                         gas gas_remaining wei
                        args address(cd[4])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    staticcall uniswapV2RouterAddress.factory() with:
                            gas gas_remaining wei
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    staticcall uniswapV2RouterAddress.WETH() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
                         gas gas_remaining wei
                        args address(this.address), address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    uniswapV2PairAddress = ext_call.return_data[12 len 20]
                    if 1 == bool(stor20[ext_call.return_data[12 len 20]]):
                        revert with 0, 'Automated market maker pair is already set to that value'
                    stor20[address(ext_call.return_data[0])] = 1
                    emit SetAutomatedMarketMakerPair(ext_call.return_data[12 len 20], 1);
        if unknown_0x23b872dd(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x1694505e(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x1694505e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return uniswapV2RouterAddress
                if unknown_0x18160ddd(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return totalSupply
                if unknown_0x1915c307(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_1915c307Address
                require unknown_0x1f0740f3(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                dividendFee = cd[4]
                if cd[4] > !liquidityFee:
                    revert with 0, 17
                if cd[4] + liquidityFee > !sub_b1fb0e97:
                    revert with 0, 17
                totalFees = cd[4] + liquidityFee + sub_b1fb0e97
            if uint32(call.func_hash) >> 224 != name():
                if uint32(call.func_hash) >> 224 != approve(address arg1, uint256 arg2):
                    require unknown_0x13114a9d(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return totalFees
                require not msg.value
                require calldata.size - 4 >= 64
                require cd[4] == address(cd[4])
                if not msg.sender:
                    revert with 0, 'ERC20: approve from the zero address'
                if not address(cd[4]):
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(msg.sender)][address(cd[4])] = cd[36]
                emit Approval(cd[36], msg.sender, address(cd[4]));
                return 1
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
            if unknown_0x357bf15c(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                liquidityFee = cd[4]
                if dividendFee > !cd[4]:
                    revert with 0, 17
                if dividendFee + cd[4] > !sub_b1fb0e97:
                    revert with 0, 17
                totalFees = dividendFee + cd[4] + sub_b1fb0e97
            require unknown_0x39509351(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 64
            require cd[4] == address(cd[4])
            if allowance[msg.sender][address(cd[4])] > !cd[36]:
                revert with 0, 17
            if allowance[msg.sender][address(cd[4])] + cd[36] < allowance[msg.sender][address(cd[4])]:
                revert with 0, 'SafeMath: addition overflow'
            if not msg.sender:
                revert with 0, 'ERC20: approve from the zero address'
            if not address(cd[4]):
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(msg.sender)][address(cd[4])] = allowance[msg.sender][address(cd[4])] + cd[36]
            emit Approval((allowance[msg.sender][address(cd[4])] + cd[36]), msg.sender, address(cd[4]));
        else:
            if uint32(call.func_hash) >> 224 != unknown_0x23b872dd(?????):
                if uint32(call.func_hash) >> 224 != unknown_0x29605e77(?????):
                    if unknown_0x2c1f5216(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return dividendTrackerAddress
                    require unknown_0x30bb4cff(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    staticcall dividendTrackerAddress.totalDividendsDistributed() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                if operatorAddress != msg.sender:
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the operator'
                if not address(cd[4]):
                    revert with 0, 'Ownable: new operator is the zero address'
                operatorAddress = address(cd[4])
            require not msg.value
            require calldata.size - 4 >= 96
            require cd[4] == address(cd[4])
            require cd[36] == address(cd[36])
            if not address(cd[4]):
                revert with 0, 'ERC20: transfer from the zero address'
            if not address(cd[36]):
                revert with 0, 'ERC20: transfer to the zero address'
            if stor12[address(cd[4])]:
                revert with 0, 'Blacklisted address'
            if stor12[address(cd[36])]:
                revert with 0, 'Blacklisted address'
            if not cd[68]:
                if not address(cd[4]):
                    revert with 0, 'ERC20: transfer from the zero address'
                if not address(cd[36]):
                    revert with 0, 'ERC20: transfer to the zero address'
                if 0 > balanceOf[address(cd[4])]:
                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                if balanceOf[address(cd[4])] < 0:
                    revert with 0, 17
                if balanceOf[address(cd[36])] > -1:
                    revert with 0, 17
                if balanceOf[address(cd[36])] < balanceOf[address(cd[36])]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(cd[36])] = balanceOf[address(cd[36])]
                emit Transfer(0, address(cd[4]), address(cd[36]));
                if cd[68] > allowance[address(cd[4])][msg.sender]:
                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[296 len 24] >> 64, 0
            else:
                if not swapEnabled:
                    if stor19[address(cd[4])]:
                        if not address(cd[4]):
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not address(cd[36]):
                            revert with 0, 'ERC20: transfer to the zero address'
                        if cd[68] > balanceOf[address(cd[4])]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                        if balanceOf[address(cd[4])] < cd[68]:
                            revert with 0, 17
                        balanceOf[address(cd[4])] -= cd[68]
                        if balanceOf[address(cd[36])] > !cd[68]:
                            revert with 0, 17
                        if balanceOf[address(cd[36])] + cd[68] < balanceOf[address(cd[36])]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(cd[36])] += cd[68]
                        emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                        require ext_code.size(dividendTrackerAddress)
                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(cd[4]), balanceOf[address(cd[4])]
                        if ext_call.success:
                            require ext_code.size(dividendTrackerAddress)
                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(cd[36]), balanceOf[address(cd[36])]
                            if ext_call.success:
                                if uint8(stor8.field_160):
                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[296 len 24] >> 64, 0
                                else:
                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args gasForProcessing
                                    if not ext_call.success:
                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                        0
                                    else:
                                        require return_data.size >= 96
                                        emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                        0
                            else:
                                emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                if uint8(stor8.field_160):
                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                                else:
                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args gasForProcessing
                                    if not ext_call.success:
                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                        0
                                    else:
                                        require return_data.size >= 96
                                        emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                        0
                        else:
                            emit 0x1f4b4287: address(cd[4]), 64, 4, 0x66726f6d00000000000000000000000000000000000000000000000000000000
                            require ext_code.size(dividendTrackerAddress)
                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(cd[36]), balanceOf[address(cd[36])]
                            if not ext_call.success:
                                emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                            if uint8(stor8.field_160):
                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                            else:
                                call dividendTrackerAddress.process(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args gasForProcessing
                                if not ext_call.success:
                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                    0
                                else:
                                    require return_data.size >= 96
                                    emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                    0
                    else:
                        if stor19[address(cd[36])]:
                            if not address(cd[4]):
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not address(cd[36]):
                                revert with 0, 'ERC20: transfer to the zero address'
                            if cd[68] > balanceOf[address(cd[4])]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                            if balanceOf[address(cd[4])] < cd[68]:
                                revert with 0, 17
                            balanceOf[address(cd[4])] -= cd[68]
                            if balanceOf[address(cd[36])] > !cd[68]:
                                revert with 0, 17
                            if balanceOf[address(cd[36])] + cd[68] < balanceOf[address(cd[36])]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(cd[36])] += cd[68]
                            emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                            require ext_code.size(dividendTrackerAddress)
                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(cd[4]), balanceOf[address(cd[4])]
                            if ext_call.success:
                                require ext_code.size(dividendTrackerAddress)
                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(cd[36]), balanceOf[address(cd[36])]
                                if ext_call.success:
                                    if uint8(stor8.field_160):
                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[296 len 24] >> 64, 0
                                    else:
                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args gasForProcessing
                                        if not ext_call.success:
                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                            0
                                        else:
                                            require return_data.size >= 96
                                            emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                            0
                                else:
                                    emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                    if uint8(stor8.field_160):
                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                                    else:
                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args gasForProcessing
                                        if not ext_call.success:
                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                            0
                                        else:
                                            require return_data.size >= 96
                                            emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                            0
                            else:
                                emit 0x1f4b4287: address(cd[4]), 64, 4, 0x66726f6d00000000000000000000000000000000000000000000000000000000
                                require ext_code.size(dividendTrackerAddress)
                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(cd[36]), balanceOf[address(cd[36])]
                                if not ext_call.success:
                                    emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                if uint8(stor8.field_160):
                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                                else:
                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args gasForProcessing
                                    if not ext_call.success:
                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                        0
                                    else:
                                        require return_data.size >= 96
                                        emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                        0
                        else:
                            if uint8(stor8.field_160):
                                if not address(cd[4]):
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not address(cd[36]):
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if cd[68] > balanceOf[address(cd[4])]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                                if balanceOf[address(cd[4])] < cd[68]:
                                    revert with 0, 17
                                balanceOf[address(cd[4])] -= cd[68]
                                if balanceOf[address(cd[36])] > !cd[68]:
                                    revert with 0, 17
                                if balanceOf[address(cd[36])] + cd[68] < balanceOf[address(cd[36])]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(cd[36])] += cd[68]
                                emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                require ext_code.size(dividendTrackerAddress)
                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(cd[4]), balanceOf[address(cd[4])]
                                if ext_call.success:
                                    require ext_code.size(dividendTrackerAddress)
                                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(cd[36]), balanceOf[address(cd[36])]
                                    if ext_call.success:
                                        if uint8(stor8.field_160):
                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[296 len 24] >> 64, 0
                                        else:
                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args gasForProcessing
                                            if not ext_call.success:
                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                    revert with 0, 
                                                                32,
                                                                40,
                                                                0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                0
                                            else:
                                                require return_data.size >= 96
                                                emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                    revert with 0, 
                                                                32,
                                                                40,
                                                                0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                0
                                    else:
                                        emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                        if uint8(stor8.field_160):
                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                                        else:
                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args gasForProcessing
                                            if not ext_call.success:
                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                    revert with 0, 
                                                                32,
                                                                40,
                                                                0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                0
                                            else:
                                                require return_data.size >= 96
                                                emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                    revert with 0, 
                                                                32,
                                                                40,
                                                                0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                0
                                else:
                                    emit 0x1f4b4287: address(cd[4]), 64, 4, 0x66726f6d00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(dividendTrackerAddress)
                                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(cd[36]), balanceOf[address(cd[36])]
                                    if not ext_call.success:
                                        emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                    if uint8(stor8.field_160):
                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                                    else:
                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args gasForProcessing
                                        if not ext_call.success:
                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                            0
                                        else:
                                            require return_data.size >= 96
                                            emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                            0
                            else:
                                if cd[68] and totalFees > -1 / cd[68]:
                                    revert with 0, 17
                                if cd[68] < cd[68] * totalFees / 100:
                                    revert with 0, 17
                                if not address(cd[4]):
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if cd[68] * totalFees / 100 > balanceOf[address(cd[4])]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                                if balanceOf[address(cd[4])] < cd[68] * totalFees / 100:
                                    revert with 0, 17
                                balanceOf[address(cd[4])] -= cd[68] * totalFees / 100
                                if balanceOf[this.address] > !(cd[68] * totalFees / 100):
                                    revert with 0, 17
                                if balanceOf[this.address] + (cd[68] * totalFees / 100) < balanceOf[this.address]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(this.address)] = balanceOf[this.address] + (cd[68] * totalFees / 100)
                                emit Transfer((cd[68] * totalFees / 100), address(cd[4]), this.address);
                                if not address(cd[4]):
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not address(cd[36]):
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if cd[68] - (cd[68] * totalFees / 100) > balanceOf[address(cd[4])]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                                if balanceOf[address(cd[4])] < cd[68] - (cd[68] * totalFees / 100):
                                    revert with 0, 17
                                balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * totalFees / 100)
                                if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * totalFees / 100)):
                                    revert with 0, 17
                                if balanceOf[address(cd[36])] + cd[68] - (cd[68] * totalFees / 100) < balanceOf[address(cd[36])]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * totalFees / 100)
                                emit Transfer((cd[68] - (cd[68] * totalFees / 100)), address(cd[4]), address(cd[36]));
                                require ext_code.size(dividendTrackerAddress)
                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(cd[4]), balanceOf[address(cd[4])]
                                if ext_call.success:
                                    require ext_code.size(dividendTrackerAddress)
                                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(cd[36]), balanceOf[address(cd[36])]
                                    if ext_call.success:
                                        if uint8(stor8.field_160):
                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[392 len 24] >> 64, 0
                                        else:
                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args gasForProcessing
                                            if not ext_call.success:
                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                    revert with 0, 
                                                                32,
                                                                40,
                                                                0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                0
                                            else:
                                                require return_data.size >= 96
                                                emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                    revert with 0, 
                                                                32,
                                                                40,
                                                                0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                0
                                    else:
                                        emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                        if uint8(stor8.field_160):
                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                                        else:
                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args gasForProcessing
                                            if not ext_call.success:
                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                    revert with 0, 
                                                                32,
                                                                40,
                                                                0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                0
                                            else:
                                                require return_data.size >= 96
                                                emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                    revert with 0, 
                                                                32,
                                                                40,
                                                                0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                0
                                else:
                                    emit 0x1f4b4287: address(cd[4]), 64, 4, 0x66726f6d00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(dividendTrackerAddress)
                                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(cd[36]), balanceOf[address(cd[36])]
                                    if not ext_call.success:
                                        emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                    if uint8(stor8.field_160):
                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                                    else:
                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args gasForProcessing
                                        if not ext_call.success:
                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                            0
                                        else:
                                            require return_data.size >= 96
                                            emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                            0
                else:
                    if balanceOf[this.address] < swapTokensAtAmount:
                        if stor19[address(cd[4])]:
                            if not address(cd[4]):
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not address(cd[36]):
                                revert with 0, 'ERC20: transfer to the zero address'
                            if cd[68] > balanceOf[address(cd[4])]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                            if balanceOf[address(cd[4])] < cd[68]:
                                revert with 0, 17
                            balanceOf[address(cd[4])] -= cd[68]
                            if balanceOf[address(cd[36])] > !cd[68]:
                                revert with 0, 17
                            if balanceOf[address(cd[36])] + cd[68] < balanceOf[address(cd[36])]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(cd[36])] += cd[68]
                            emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                            require ext_code.size(dividendTrackerAddress)
                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(cd[4]), balanceOf[address(cd[4])]
                            if ext_call.success:
                                require ext_code.size(dividendTrackerAddress)
                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(cd[36]), balanceOf[address(cd[36])]
                                if ext_call.success:
                                    if uint8(stor8.field_160):
                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[296 len 24] >> 64, 0
                                    else:
                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args gasForProcessing
                                        if not ext_call.success:
                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                            0
                                        else:
                                            require return_data.size >= 96
                                            emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                            0
                                else:
                                    emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                    if uint8(stor8.field_160):
                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                                    else:
                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args gasForProcessing
                                        if not ext_call.success:
                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                            0
                                        else:
                                            require return_data.size >= 96
                                            emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                            0
                            else:
                                emit 0x1f4b4287: address(cd[4]), 64, 4, 0x66726f6d00000000000000000000000000000000000000000000000000000000
                                require ext_code.size(dividendTrackerAddress)
                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(cd[36]), balanceOf[address(cd[36])]
                                if not ext_call.success:
                                    emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                if uint8(stor8.field_160):
                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                                else:
                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args gasForProcessing
                                    if not ext_call.success:
                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                        0
                                    else:
                                        require return_data.size >= 96
                                        emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                        0
                        else:
                            if stor19[address(cd[36])]:
                                if not address(cd[4]):
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not address(cd[36]):
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if cd[68] > balanceOf[address(cd[4])]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                                if balanceOf[address(cd[4])] < cd[68]:
                                    revert with 0, 17
                                balanceOf[address(cd[4])] -= cd[68]
                                if balanceOf[address(cd[36])] > !cd[68]:
                                    revert with 0, 17
                                if balanceOf[address(cd[36])] + cd[68] < balanceOf[address(cd[36])]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(cd[36])] += cd[68]
                                emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                require ext_code.size(dividendTrackerAddress)
                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(cd[4]), balanceOf[address(cd[4])]
                                if ext_call.success:
                                    require ext_code.size(dividendTrackerAddress)
                                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(cd[36]), balanceOf[address(cd[36])]
                                    if ext_call.success:
                                        if uint8(stor8.field_160):
                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[296 len 24] >> 64, 0
                                        else:
                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args gasForProcessing
                                            if not ext_call.success:
                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                    revert with 0, 
                                                                32,
                                                                40,
                                                                0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                0
                                            else:
                                                require return_data.size >= 96
                                                emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                    revert with 0, 
                                                                32,
                                                                40,
                                                                0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                0
                                    else:
                                        emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                        if uint8(stor8.field_160):
                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                                        else:
                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args gasForProcessing
                                            if not ext_call.success:
                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                    revert with 0, 
                                                                32,
                                                                40,
                                                                0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                0
                                            else:
                                                require return_data.size >= 96
                                                emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                    revert with 0, 
                                                                32,
                                                                40,
                                                                0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                0
                                else:
                                    emit 0x1f4b4287: address(cd[4]), 64, 4, 0x66726f6d00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(dividendTrackerAddress)
                                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(cd[36]), balanceOf[address(cd[36])]
                                    if not ext_call.success:
                                        emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                    if uint8(stor8.field_160):
                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                                    else:
                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args gasForProcessing
                                        if not ext_call.success:
                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                            0
                                        else:
                                            require return_data.size >= 96
                                            emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                            0
                            else:
                                if uint8(stor8.field_160):
                                    if not address(cd[4]):
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not address(cd[36]):
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if cd[68] > balanceOf[address(cd[4])]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                                    if balanceOf[address(cd[4])] < cd[68]:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] -= cd[68]
                                    if balanceOf[address(cd[36])] > !cd[68]:
                                        revert with 0, 17
                                    if balanceOf[address(cd[36])] + cd[68] < balanceOf[address(cd[36])]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(cd[36])] += cd[68]
                                    emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                    require ext_code.size(dividendTrackerAddress)
                                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(cd[4]), balanceOf[address(cd[4])]
                                    if ext_call.success:
                                        require ext_code.size(dividendTrackerAddress)
                                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(cd[36]), balanceOf[address(cd[36])]
                                        if ext_call.success:
                                            if uint8(stor8.field_160):
                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[296 len 24] >> 64, 0
                                            else:
                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args gasForProcessing
                                                if not ext_call.success:
                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                        revert with 0, 
                                                                    32,
                                                                    40,
                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                    0
                                                else:
                                                    require return_data.size >= 96
                                                    emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                        revert with 0, 
                                                                    32,
                                                                    40,
                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                    0
                                        else:
                                            emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                            if uint8(stor8.field_160):
                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                                            else:
                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args gasForProcessing
                                                if not ext_call.success:
                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                        revert with 0, 
                                                                    32,
                                                                    40,
                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                    0
                                                else:
                                                    require return_data.size >= 96
                                                    emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                        revert with 0, 
                                                                    32,
                                                                    40,
                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                    0
                                    else:
                                        emit 0x1f4b4287: address(cd[4]), 64, 4, 0x66726f6d00000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(dividendTrackerAddress)
                                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(cd[36]), balanceOf[address(cd[36])]
                                        if not ext_call.success:
                                            emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                        if uint8(stor8.field_160):
                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                                        else:
                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args gasForProcessing
                                            if not ext_call.success:
                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                    revert with 0, 
                                                                32,
                                                                40,
                                                                0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                0
                                            else:
                                                require return_data.size >= 96
                                                emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                    revert with 0, 
                                                                32,
                                                                40,
                                                                0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                0
                                else:
                                    if cd[68] and totalFees > -1 / cd[68]:
                                        revert with 0, 17
                                    if cd[68] < cd[68] * totalFees / 100:
                                        revert with 0, 17
                                    if not address(cd[4]):
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if cd[68] * totalFees / 100 > balanceOf[address(cd[4])]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                                    if balanceOf[address(cd[4])] < cd[68] * totalFees / 100:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] -= cd[68] * totalFees / 100
                                    if balanceOf[this.address] > !(cd[68] * totalFees / 100):
                                        revert with 0, 17
                                    if balanceOf[this.address] + (cd[68] * totalFees / 100) < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] = balanceOf[this.address] + (cd[68] * totalFees / 100)
                                    emit Transfer((cd[68] * totalFees / 100), address(cd[4]), this.address);
                                    if not address(cd[4]):
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not address(cd[36]):
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if cd[68] - (cd[68] * totalFees / 100) > balanceOf[address(cd[4])]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                                    if balanceOf[address(cd[4])] < cd[68] - (cd[68] * totalFees / 100):
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * totalFees / 100)
                                    if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * totalFees / 100)):
                                        revert with 0, 17
                                    if balanceOf[address(cd[36])] + cd[68] - (cd[68] * totalFees / 100) < balanceOf[address(cd[36])]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * totalFees / 100)
                                    emit Transfer((cd[68] - (cd[68] * totalFees / 100)), address(cd[4]), address(cd[36]));
                                    require ext_code.size(dividendTrackerAddress)
                                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(cd[4]), balanceOf[address(cd[4])]
                                    if ext_call.success:
                                        require ext_code.size(dividendTrackerAddress)
                                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(cd[36]), balanceOf[address(cd[36])]
                                        if ext_call.success:
                                            if uint8(stor8.field_160):
                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[392 len 24] >> 64, 0
                                            else:
                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args gasForProcessing
                                                if not ext_call.success:
                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                        revert with 0, 
                                                                    32,
                                                                    40,
                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                    0
                                                else:
                                                    require return_data.size >= 96
                                                    emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                        revert with 0, 
                                                                    32,
                                                                    40,
                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                    0
                                        else:
                                            emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                            if uint8(stor8.field_160):
                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                                            else:
                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args gasForProcessing
                                                if not ext_call.success:
                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                        revert with 0, 
                                                                    32,
                                                                    40,
                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                    0
                                                else:
                                                    require return_data.size >= 96
                                                    emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                        revert with 0, 
                                                                    32,
                                                                    40,
                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                    0
                                    else:
                                        emit 0x1f4b4287: address(cd[4]), 64, 4, 0x66726f6d00000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(dividendTrackerAddress)
                                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(cd[36]), balanceOf[address(cd[36])]
                                        if not ext_call.success:
                                            emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                        if uint8(stor8.field_160):
                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                                        else:
                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args gasForProcessing
                                            if not ext_call.success:
                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                    revert with 0, 
                                                                32,
                                                                40,
                                                                0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                0
                                            else:
                                                require return_data.size >= 96
                                                emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                    revert with 0, 
                                                                32,
                                                                40,
                                                                0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                0
                    else:
                        if uint8(stor8.field_160):
                            if stor19[address(cd[4])]:
                                if not address(cd[4]):
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not address(cd[36]):
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if cd[68] > balanceOf[address(cd[4])]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                                if balanceOf[address(cd[4])] < cd[68]:
                                    revert with 0, 17
                                balanceOf[address(cd[4])] -= cd[68]
                                if balanceOf[address(cd[36])] > !cd[68]:
                                    revert with 0, 17
                                if balanceOf[address(cd[36])] + cd[68] < balanceOf[address(cd[36])]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(cd[36])] += cd[68]
                                emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                require ext_code.size(dividendTrackerAddress)
                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(cd[4]), balanceOf[address(cd[4])]
                                if ext_call.success:
                                    require ext_code.size(dividendTrackerAddress)
                                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(cd[36]), balanceOf[address(cd[36])]
                                    if ext_call.success:
                                        if uint8(stor8.field_160):
                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[296 len 24] >> 64, 0
                                        else:
                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args gasForProcessing
                                            if not ext_call.success:
                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                    revert with 0, 
                                                                32,
                                                                40,
                                                                0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                0
                                            else:
                                                require return_data.size >= 96
                                                emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                    revert with 0, 
                                                                32,
                                                                40,
                                                                0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                0
                                    else:
                                        emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                        if uint8(stor8.field_160):
                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                                        else:
                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args gasForProcessing
                                            if not ext_call.success:
                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                    revert with 0, 
                                                                32,
                                                                40,
                                                                0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                0
                                            else:
                                                require return_data.size >= 96
                                                emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                    revert with 0, 
                                                                32,
                                                                40,
                                                                0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                0
                                else:
                                    emit 0x1f4b4287: address(cd[4]), 64, 4, 0x66726f6d00000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(dividendTrackerAddress)
                                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(cd[36]), balanceOf[address(cd[36])]
                                    if not ext_call.success:
                                        emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                    if uint8(stor8.field_160):
                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                                    else:
                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args gasForProcessing
                                        if not ext_call.success:
                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                            0
                                        else:
                                            require return_data.size >= 96
                                            emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                            0
                            else:
                                if stor19[address(cd[36])]:
                                    if not address(cd[4]):
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not address(cd[36]):
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if cd[68] > balanceOf[address(cd[4])]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                                    if balanceOf[address(cd[4])] < cd[68]:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] -= cd[68]
                                    if balanceOf[address(cd[36])] > !cd[68]:
                                        revert with 0, 17
                                    if balanceOf[address(cd[36])] + cd[68] < balanceOf[address(cd[36])]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(cd[36])] += cd[68]
                                    emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                    require ext_code.size(dividendTrackerAddress)
                                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(cd[4]), balanceOf[address(cd[4])]
                                    if ext_call.success:
                                        require ext_code.size(dividendTrackerAddress)
                                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(cd[36]), balanceOf[address(cd[36])]
                                        if ext_call.success:
                                            if uint8(stor8.field_160):
                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[296 len 24] >> 64, 0
                                            else:
                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args gasForProcessing
                                                if not ext_call.success:
                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                        revert with 0, 
                                                                    32,
                                                                    40,
                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                    0
                                                else:
                                                    require return_data.size >= 96
                                                    emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                        revert with 0, 
                                                                    32,
                                                                    40,
                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                    0
                                        else:
                                            emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                            if uint8(stor8.field_160):
                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                                            else:
                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args gasForProcessing
                                                if not ext_call.success:
                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                        revert with 0, 
                                                                    32,
                                                                    40,
                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                    0
                                                else:
                                                    require return_data.size >= 96
                                                    emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                        revert with 0, 
                                                                    32,
                                                                    40,
                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                    0
                                    else:
                                        emit 0x1f4b4287: address(cd[4]), 64, 4, 0x66726f6d00000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(dividendTrackerAddress)
                                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(cd[36]), balanceOf[address(cd[36])]
                                        if not ext_call.success:
                                            emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                        if uint8(stor8.field_160):
                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                                        else:
                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args gasForProcessing
                                            if not ext_call.success:
                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                    revert with 0, 
                                                                32,
                                                                40,
                                                                0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                0
                                            else:
                                                require return_data.size >= 96
                                                emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                    revert with 0, 
                                                                32,
                                                                40,
                                                                0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                0
                                else:
                                    if uint8(stor8.field_160):
                                        if not address(cd[4]):
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not address(cd[36]):
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if cd[68] > balanceOf[address(cd[4])]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                                        if balanceOf[address(cd[4])] < cd[68]:
                                            revert with 0, 17
                                        balanceOf[address(cd[4])] -= cd[68]
                                        if balanceOf[address(cd[36])] > !cd[68]:
                                            revert with 0, 17
                                        if balanceOf[address(cd[36])] + cd[68] < balanceOf[address(cd[36])]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(cd[36])] += cd[68]
                                        emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                        require ext_code.size(dividendTrackerAddress)
                                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(cd[4]), balanceOf[address(cd[4])]
                                        if ext_call.success:
                                            require ext_code.size(dividendTrackerAddress)
                                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(cd[36]), balanceOf[address(cd[36])]
                                            if ext_call.success:
                                                if uint8(stor8.field_160):
                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[296 len 24] >> 64, 0
                                                else:
                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args gasForProcessing
                                                    if not ext_call.success:
                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                        0
                                                    else:
                                                        require return_data.size >= 96
                                                        emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                        0
                                            else:
                                                emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                                if uint8(stor8.field_160):
                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                                                else:
                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args gasForProcessing
                                                    if not ext_call.success:
                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                        0
                                                    else:
                                                        require return_data.size >= 96
                                                        emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                        0
                                        else:
                                            emit 0x1f4b4287: address(cd[4]), 64, 4, 0x66726f6d00000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(dividendTrackerAddress)
                                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(cd[36]), balanceOf[address(cd[36])]
                                            if not ext_call.success:
                                                emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                            if uint8(stor8.field_160):
                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                                            else:
                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args gasForProcessing
                                                if not ext_call.success:
                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                        revert with 0, 
                                                                    32,
                                                                    40,
                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                    0
                                                else:
                                                    require return_data.size >= 96
                                                    emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                        revert with 0, 
                                                                    32,
                                                                    40,
                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                    0
                                    else:
                                        if cd[68] and totalFees > -1 / cd[68]:
                                            revert with 0, 17
                                        if cd[68] < cd[68] * totalFees / 100:
                                            revert with 0, 17
                                        if not address(cd[4]):
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if cd[68] * totalFees / 100 > balanceOf[address(cd[4])]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                                        if balanceOf[address(cd[4])] < cd[68] * totalFees / 100:
                                            revert with 0, 17
                                        balanceOf[address(cd[4])] -= cd[68] * totalFees / 100
                                        if balanceOf[this.address] > !(cd[68] * totalFees / 100):
                                            revert with 0, 17
                                        if balanceOf[this.address] + (cd[68] * totalFees / 100) < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] = balanceOf[this.address] + (cd[68] * totalFees / 100)
                                        emit Transfer((cd[68] * totalFees / 100), address(cd[4]), this.address);
                                        if not address(cd[4]):
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not address(cd[36]):
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if cd[68] - (cd[68] * totalFees / 100) > balanceOf[address(cd[4])]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                                        if balanceOf[address(cd[4])] < cd[68] - (cd[68] * totalFees / 100):
                                            revert with 0, 17
                                        balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * totalFees / 100)
                                        if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * totalFees / 100)):
                                            revert with 0, 17
                                        if balanceOf[address(cd[36])] + cd[68] - (cd[68] * totalFees / 100) < balanceOf[address(cd[36])]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * totalFees / 100)
                                        emit Transfer((cd[68] - (cd[68] * totalFees / 100)), address(cd[4]), address(cd[36]));
                                        require ext_code.size(dividendTrackerAddress)
                                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(cd[4]), balanceOf[address(cd[4])]
                                        if ext_call.success:
                                            require ext_code.size(dividendTrackerAddress)
                                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(cd[36]), balanceOf[address(cd[36])]
                                            if ext_call.success:
                                                if uint8(stor8.field_160):
                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[392 len 24] >> 64, 0
                                                else:
                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args gasForProcessing
                                                    if not ext_call.success:
                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                        0
                                                    else:
                                                        require return_data.size >= 96
                                                        emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                        0
                                            else:
                                                emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                                if uint8(stor8.field_160):
                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                                                else:
                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args gasForProcessing
                                                    if not ext_call.success:
                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                        0
                                                    else:
                                                        require return_data.size >= 96
                                                        emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                        0
                                        else:
                                            emit 0x1f4b4287: address(cd[4]), 64, 4, 0x66726f6d00000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(dividendTrackerAddress)
                                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(cd[36]), balanceOf[address(cd[36])]
                                            if not ext_call.success:
                                                emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                            if uint8(stor8.field_160):
                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                                            else:
                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args gasForProcessing
                                                if not ext_call.success:
                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                        revert with 0, 
                                                                    32,
                                                                    40,
                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                    0
                                                else:
                                                    require return_data.size >= 96
                                                    emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                        revert with 0, 
                                                                    32,
                                                                    40,
                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                    0
                        else:
                            if stor20[address(cd[4])]:
                                if stor19[address(cd[4])]:
                                    if not address(cd[4]):
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not address(cd[36]):
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if cd[68] > balanceOf[address(cd[4])]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                                    if balanceOf[address(cd[4])] < cd[68]:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] -= cd[68]
                                    if balanceOf[address(cd[36])] > !cd[68]:
                                        revert with 0, 17
                                    if balanceOf[address(cd[36])] + cd[68] < balanceOf[address(cd[36])]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(cd[36])] += cd[68]
                                    emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                    require ext_code.size(dividendTrackerAddress)
                                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(cd[4]), balanceOf[address(cd[4])]
                                    if ext_call.success:
                                        require ext_code.size(dividendTrackerAddress)
                                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(cd[36]), balanceOf[address(cd[36])]
                                        if ext_call.success:
                                            if uint8(stor8.field_160):
                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[296 len 24] >> 64, 0
                                            else:
                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args gasForProcessing
                                                if not ext_call.success:
                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                        revert with 0, 
                                                                    32,
                                                                    40,
                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                    0
                                                else:
                                                    require return_data.size >= 96
                                                    emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                        revert with 0, 
                                                                    32,
                                                                    40,
                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                    0
                                        else:
                                            emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                            if uint8(stor8.field_160):
                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                                            else:
                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args gasForProcessing
                                                if not ext_call.success:
                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                        revert with 0, 
                                                                    32,
                                                                    40,
                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                    0
                                                else:
                                                    require return_data.size >= 96
                                                    emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                        revert with 0, 
                                                                    32,
                                                                    40,
                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                    0
                                    else:
                                        emit 0x1f4b4287: address(cd[4]), 64, 4, 0x66726f6d00000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(dividendTrackerAddress)
                                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(cd[36]), balanceOf[address(cd[36])]
                                        if not ext_call.success:
                                            emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                        if uint8(stor8.field_160):
                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                                        else:
                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args gasForProcessing
                                            if not ext_call.success:
                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                    revert with 0, 
                                                                32,
                                                                40,
                                                                0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                0
                                            else:
                                                require return_data.size >= 96
                                                emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                    revert with 0, 
                                                                32,
                                                                40,
                                                                0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                0
                                else:
                                    if stor19[address(cd[36])]:
                                        if not address(cd[4]):
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not address(cd[36]):
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if cd[68] > balanceOf[address(cd[4])]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                                        if balanceOf[address(cd[4])] < cd[68]:
                                            revert with 0, 17
                                        balanceOf[address(cd[4])] -= cd[68]
                                        if balanceOf[address(cd[36])] > !cd[68]:
                                            revert with 0, 17
                                        if balanceOf[address(cd[36])] + cd[68] < balanceOf[address(cd[36])]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(cd[36])] += cd[68]
                                        emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                        require ext_code.size(dividendTrackerAddress)
                                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(cd[4]), balanceOf[address(cd[4])]
                                        if ext_call.success:
                                            require ext_code.size(dividendTrackerAddress)
                                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(cd[36]), balanceOf[address(cd[36])]
                                            if ext_call.success:
                                                if uint8(stor8.field_160):
                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[296 len 24] >> 64, 0
                                                else:
                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args gasForProcessing
                                                    if not ext_call.success:
                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                        0
                                                    else:
                                                        require return_data.size >= 96
                                                        emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                        0
                                            else:
                                                emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                                if uint8(stor8.field_160):
                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                                                else:
                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args gasForProcessing
                                                    if not ext_call.success:
                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                        0
                                                    else:
                                                        require return_data.size >= 96
                                                        emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                        0
                                        else:
                                            emit 0x1f4b4287: address(cd[4]), 64, 4, 0x66726f6d00000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(dividendTrackerAddress)
                                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(cd[36]), balanceOf[address(cd[36])]
                                            if not ext_call.success:
                                                emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                            if uint8(stor8.field_160):
                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                                            else:
                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args gasForProcessing
                                                if not ext_call.success:
                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                        revert with 0, 
                                                                    32,
                                                                    40,
                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                    0
                                                else:
                                                    require return_data.size >= 96
                                                    emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                        revert with 0, 
                                                                    32,
                                                                    40,
                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                    0
                                    else:
                                        if uint8(stor8.field_160):
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[36]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if cd[68] > balanceOf[address(cd[4])]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                                            if balanceOf[address(cd[4])] < cd[68]:
                                                revert with 0, 17
                                            balanceOf[address(cd[4])] -= cd[68]
                                            if balanceOf[address(cd[36])] > !cd[68]:
                                                revert with 0, 17
                                            if balanceOf[address(cd[36])] + cd[68] < balanceOf[address(cd[36])]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(cd[36])] += cd[68]
                                            emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                            require ext_code.size(dividendTrackerAddress)
                                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(cd[4]), balanceOf[address(cd[4])]
                                            if ext_call.success:
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(cd[36]), balanceOf[address(cd[36])]
                                                if ext_call.success:
                                                    if uint8(stor8.field_160):
                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[296 len 24] >> 64, 0
                                                    else:
                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args gasForProcessing
                                                        if not ext_call.success:
                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                revert with 0, 
                                                                            32,
                                                                            40,
                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                            0
                                                        else:
                                                            require return_data.size >= 96
                                                            emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                revert with 0, 
                                                                            32,
                                                                            40,
                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                            0
                                                else:
                                                    emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                                    if uint8(stor8.field_160):
                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                                                    else:
                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args gasForProcessing
                                                        if not ext_call.success:
                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                revert with 0, 
                                                                            32,
                                                                            40,
                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                            0
                                                        else:
                                                            require return_data.size >= 96
                                                            emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                revert with 0, 
                                                                            32,
                                                                            40,
                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                            0
                                            else:
                                                emit 0x1f4b4287: address(cd[4]), 64, 4, 0x66726f6d00000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(cd[36]), balanceOf[address(cd[36])]
                                                if not ext_call.success:
                                                    emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                                if uint8(stor8.field_160):
                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                                                else:
                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args gasForProcessing
                                                    if not ext_call.success:
                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                        0
                                                    else:
                                                        require return_data.size >= 96
                                                        emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                        0
                                        else:
                                            if cd[68] and totalFees > -1 / cd[68]:
                                                revert with 0, 17
                                            if cd[68] < cd[68] * totalFees / 100:
                                                revert with 0, 17
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if cd[68] * totalFees / 100 > balanceOf[address(cd[4])]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                                            if balanceOf[address(cd[4])] < cd[68] * totalFees / 100:
                                                revert with 0, 17
                                            balanceOf[address(cd[4])] -= cd[68] * totalFees / 100
                                            if balanceOf[this.address] > !(cd[68] * totalFees / 100):
                                                revert with 0, 17
                                            if balanceOf[this.address] + (cd[68] * totalFees / 100) < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = balanceOf[this.address] + (cd[68] * totalFees / 100)
                                            emit Transfer((cd[68] * totalFees / 100), address(cd[4]), this.address);
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[36]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if cd[68] - (cd[68] * totalFees / 100) > balanceOf[address(cd[4])]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                                            if balanceOf[address(cd[4])] < cd[68] - (cd[68] * totalFees / 100):
                                                revert with 0, 17
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * totalFees / 100)
                                            if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * totalFees / 100)):
                                                revert with 0, 17
                                            if balanceOf[address(cd[36])] + cd[68] - (cd[68] * totalFees / 100) < balanceOf[address(cd[36])]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * totalFees / 100)
                                            emit Transfer((cd[68] - (cd[68] * totalFees / 100)), address(cd[4]), address(cd[36]));
                                            require ext_code.size(dividendTrackerAddress)
                                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(cd[4]), balanceOf[address(cd[4])]
                                            if ext_call.success:
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(cd[36]), balanceOf[address(cd[36])]
                                                if ext_call.success:
                                                    if uint8(stor8.field_160):
                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[392 len 24] >> 64, 0
                                                    else:
                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args gasForProcessing
                                                        if not ext_call.success:
                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                revert with 0, 
                                                                            32,
                                                                            40,
                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                            0
                                                        else:
                                                            require return_data.size >= 96
                                                            emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                revert with 0, 
                                                                            32,
                                                                            40,
                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                            0
                                                else:
                                                    emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                                    if uint8(stor8.field_160):
                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                                                    else:
                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args gasForProcessing
                                                        if not ext_call.success:
                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                revert with 0, 
                                                                            32,
                                                                            40,
                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                            0
                                                        else:
                                                            require return_data.size >= 96
                                                            emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                revert with 0, 
                                                                            32,
                                                                            40,
                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                            0
                                            else:
                                                emit 0x1f4b4287: address(cd[4]), 64, 4, 0x66726f6d00000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(cd[36]), balanceOf[address(cd[36])]
                                                if not ext_call.success:
                                                    emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                                if uint8(stor8.field_160):
                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                                                else:
                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args gasForProcessing
                                                    if not ext_call.success:
                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                        0
                                                    else:
                                                        require return_data.size >= 96
                                                        emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                        0
                            else:
                                if owner == address(cd[4]):
                                    if stor19[address(cd[4])]:
                                        if not address(cd[4]):
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not address(cd[36]):
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if cd[68] > balanceOf[address(cd[4])]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                                        if balanceOf[address(cd[4])] < cd[68]:
                                            revert with 0, 17
                                        balanceOf[address(cd[4])] -= cd[68]
                                        if balanceOf[address(cd[36])] > !cd[68]:
                                            revert with 0, 17
                                        if balanceOf[address(cd[36])] + cd[68] < balanceOf[address(cd[36])]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(cd[36])] += cd[68]
                                        emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                        require ext_code.size(dividendTrackerAddress)
                                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(cd[4]), balanceOf[address(cd[4])]
                                        if ext_call.success:
                                            require ext_code.size(dividendTrackerAddress)
                                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(cd[36]), balanceOf[address(cd[36])]
                                            if ext_call.success:
                                                if uint8(stor8.field_160):
                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[296 len 24] >> 64, 0
                                                else:
                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args gasForProcessing
                                                    if not ext_call.success:
                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                        0
                                                    else:
                                                        require return_data.size >= 96
                                                        emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                        0
                                            else:
                                                emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                                if uint8(stor8.field_160):
                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                                                else:
                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args gasForProcessing
                                                    if not ext_call.success:
                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                        0
                                                    else:
                                                        require return_data.size >= 96
                                                        emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                        0
                                        else:
                                            emit 0x1f4b4287: address(cd[4]), 64, 4, 0x66726f6d00000000000000000000000000000000000000000000000000000000
                                            require ext_code.size(dividendTrackerAddress)
                                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(cd[36]), balanceOf[address(cd[36])]
                                            if not ext_call.success:
                                                emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                            if uint8(stor8.field_160):
                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                                            else:
                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args gasForProcessing
                                                if not ext_call.success:
                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                        revert with 0, 
                                                                    32,
                                                                    40,
                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                    0
                                                else:
                                                    require return_data.size >= 96
                                                    emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                        revert with 0, 
                                                                    32,
                                                                    40,
                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                    0
                                    else:
                                        if stor19[address(cd[36])]:
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[36]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if cd[68] > balanceOf[address(cd[4])]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                                            if balanceOf[address(cd[4])] < cd[68]:
                                                revert with 0, 17
                                            balanceOf[address(cd[4])] -= cd[68]
                                            if balanceOf[address(cd[36])] > !cd[68]:
                                                revert with 0, 17
                                            if balanceOf[address(cd[36])] + cd[68] < balanceOf[address(cd[36])]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(cd[36])] += cd[68]
                                            emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                            require ext_code.size(dividendTrackerAddress)
                                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(cd[4]), balanceOf[address(cd[4])]
                                            if ext_call.success:
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(cd[36]), balanceOf[address(cd[36])]
                                                if ext_call.success:
                                                    if uint8(stor8.field_160):
                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[296 len 24] >> 64, 0
                                                    else:
                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args gasForProcessing
                                                        if not ext_call.success:
                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                revert with 0, 
                                                                            32,
                                                                            40,
                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                            0
                                                        else:
                                                            require return_data.size >= 96
                                                            emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                revert with 0, 
                                                                            32,
                                                                            40,
                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                            0
                                                else:
                                                    emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                                    if uint8(stor8.field_160):
                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                                                    else:
                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args gasForProcessing
                                                        if not ext_call.success:
                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                revert with 0, 
                                                                            32,
                                                                            40,
                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                            0
                                                        else:
                                                            require return_data.size >= 96
                                                            emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                revert with 0, 
                                                                            32,
                                                                            40,
                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                            0
                                            else:
                                                emit 0x1f4b4287: address(cd[4]), 64, 4, 0x66726f6d00000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(cd[36]), balanceOf[address(cd[36])]
                                                if not ext_call.success:
                                                    emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                                if uint8(stor8.field_160):
                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                                                else:
                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args gasForProcessing
                                                    if not ext_call.success:
                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                        0
                                                    else:
                                                        require return_data.size >= 96
                                                        emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                        0
                                        else:
                                            if uint8(stor8.field_160):
                                                if not address(cd[4]):
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not address(cd[36]):
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if cd[68] > balanceOf[address(cd[4])]:
                                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                                                if balanceOf[address(cd[4])] < cd[68]:
                                                    revert with 0, 17
                                                balanceOf[address(cd[4])] -= cd[68]
                                                if balanceOf[address(cd[36])] > !cd[68]:
                                                    revert with 0, 17
                                                if balanceOf[address(cd[36])] + cd[68] < balanceOf[address(cd[36])]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(cd[36])] += cd[68]
                                                emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(cd[4]), balanceOf[address(cd[4])]
                                                if ext_call.success:
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(cd[36]), balanceOf[address(cd[36])]
                                                    if ext_call.success:
                                                        if uint8(stor8.field_160):
                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[296 len 24] >> 64, 0
                                                        else:
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            if not ext_call.success:
                                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                    revert with 0, 
                                                                                32,
                                                                                40,
                                                                                0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                0
                                                            else:
                                                                require return_data.size >= 96
                                                                emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                    revert with 0, 
                                                                                32,
                                                                                40,
                                                                                0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                0
                                                    else:
                                                        emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                                        if uint8(stor8.field_160):
                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                                                        else:
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            if not ext_call.success:
                                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                    revert with 0, 
                                                                                32,
                                                                                40,
                                                                                0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                0
                                                            else:
                                                                require return_data.size >= 96
                                                                emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                    revert with 0, 
                                                                                32,
                                                                                40,
                                                                                0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                0
                                                else:
                                                    emit 0x1f4b4287: address(cd[4]), 64, 4, 0x66726f6d00000000000000000000000000000000000000000000000000000000
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(cd[36]), balanceOf[address(cd[36])]
                                                    if not ext_call.success:
                                                        emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                                    if uint8(stor8.field_160):
                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                                                    else:
                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args gasForProcessing
                                                        if not ext_call.success:
                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                revert with 0, 
                                                                            32,
                                                                            40,
                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                            0
                                                        else:
                                                            require return_data.size >= 96
                                                            emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                revert with 0, 
                                                                            32,
                                                                            40,
                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                            0
                                            else:
                                                if cd[68] and totalFees > -1 / cd[68]:
                                                    revert with 0, 17
                                                if cd[68] < cd[68] * totalFees / 100:
                                                    revert with 0, 17
                                                if not address(cd[4]):
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not this.address:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if cd[68] * totalFees / 100 > balanceOf[address(cd[4])]:
                                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                                                if balanceOf[address(cd[4])] < cd[68] * totalFees / 100:
                                                    revert with 0, 17
                                                balanceOf[address(cd[4])] -= cd[68] * totalFees / 100
                                                if balanceOf[this.address] > !(cd[68] * totalFees / 100):
                                                    revert with 0, 17
                                                if balanceOf[this.address] + (cd[68] * totalFees / 100) < balanceOf[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] = balanceOf[this.address] + (cd[68] * totalFees / 100)
                                                emit Transfer((cd[68] * totalFees / 100), address(cd[4]), this.address);
                                                if not address(cd[4]):
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not address(cd[36]):
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if cd[68] - (cd[68] * totalFees / 100) > balanceOf[address(cd[4])]:
                                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                                                if balanceOf[address(cd[4])] < cd[68] - (cd[68] * totalFees / 100):
                                                    revert with 0, 17
                                                balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * totalFees / 100)
                                                if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * totalFees / 100)):
                                                    revert with 0, 17
                                                if balanceOf[address(cd[36])] + cd[68] - (cd[68] * totalFees / 100) < balanceOf[address(cd[36])]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * totalFees / 100)
                                                emit Transfer((cd[68] - (cd[68] * totalFees / 100)), address(cd[4]), address(cd[36]));
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(cd[4]), balanceOf[address(cd[4])]
                                                if ext_call.success:
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(cd[36]), balanceOf[address(cd[36])]
                                                    if ext_call.success:
                                                        if uint8(stor8.field_160):
                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[392 len 24] >> 64, 0
                                                        else:
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            if not ext_call.success:
                                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                    revert with 0, 
                                                                                32,
                                                                                40,
                                                                                0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                0
                                                            else:
                                                                require return_data.size >= 96
                                                                emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                    revert with 0, 
                                                                                32,
                                                                                40,
                                                                                0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                0
                                                    else:
                                                        emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                                        if uint8(stor8.field_160):
                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                                                        else:
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            if not ext_call.success:
                                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                    revert with 0, 
                                                                                32,
                                                                                40,
                                                                                0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                0
                                                            else:
                                                                require return_data.size >= 96
                                                                emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                    revert with 0, 
                                                                                32,
                                                                                40,
                                                                                0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                0
                                                else:
                                                    emit 0x1f4b4287: address(cd[4]), 64, 4, 0x66726f6d00000000000000000000000000000000000000000000000000000000
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(cd[36]), balanceOf[address(cd[36])]
                                                    if not ext_call.success:
                                                        emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                                    if uint8(stor8.field_160):
                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                                                    else:
                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args gasForProcessing
                                                        if not ext_call.success:
                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                revert with 0, 
                                                                            32,
                                                                            40,
                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                            0
                                                        else:
                                                            require return_data.size >= 96
                                                            emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                revert with 0, 
                                                                            32,
                                                                            40,
                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                            0
                                else:
                                    if owner == address(cd[36]):
                                        if stor19[address(cd[4])]:
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[36]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if cd[68] > balanceOf[address(cd[4])]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                                            if balanceOf[address(cd[4])] < cd[68]:
                                                revert with 0, 17
                                            balanceOf[address(cd[4])] -= cd[68]
                                            if balanceOf[address(cd[36])] > !cd[68]:
                                                revert with 0, 17
                                            if balanceOf[address(cd[36])] + cd[68] < balanceOf[address(cd[36])]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(cd[36])] += cd[68]
                                            emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                            require ext_code.size(dividendTrackerAddress)
                                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(cd[4]), balanceOf[address(cd[4])]
                                            if ext_call.success:
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(cd[36]), balanceOf[address(cd[36])]
                                                if ext_call.success:
                                                    if uint8(stor8.field_160):
                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[296 len 24] >> 64, 0
                                                    else:
                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args gasForProcessing
                                                        if not ext_call.success:
                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                revert with 0, 
                                                                            32,
                                                                            40,
                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                            0
                                                        else:
                                                            require return_data.size >= 96
                                                            emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                revert with 0, 
                                                                            32,
                                                                            40,
                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                            0
                                                else:
                                                    emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                                    if uint8(stor8.field_160):
                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                                                    else:
                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args gasForProcessing
                                                        if not ext_call.success:
                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                revert with 0, 
                                                                            32,
                                                                            40,
                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                            0
                                                        else:
                                                            require return_data.size >= 96
                                                            emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                revert with 0, 
                                                                            32,
                                                                            40,
                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                            0
                                            else:
                                                emit 0x1f4b4287: address(cd[4]), 64, 4, 0x66726f6d00000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(cd[36]), balanceOf[address(cd[36])]
                                                if not ext_call.success:
                                                    emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                                if uint8(stor8.field_160):
                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                                                else:
                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args gasForProcessing
                                                    if not ext_call.success:
                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                        0
                                                    else:
                                                        require return_data.size >= 96
                                                        emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                            revert with 0, 
                                                                        32,
                                                                        40,
                                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                        0
                                        else:
                                            if stor19[address(cd[36])]:
                                                if not address(cd[4]):
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not address(cd[36]):
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if cd[68] > balanceOf[address(cd[4])]:
                                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                                                if balanceOf[address(cd[4])] < cd[68]:
                                                    revert with 0, 17
                                                balanceOf[address(cd[4])] -= cd[68]
                                                if balanceOf[address(cd[36])] > !cd[68]:
                                                    revert with 0, 17
                                                if balanceOf[address(cd[36])] + cd[68] < balanceOf[address(cd[36])]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(cd[36])] += cd[68]
                                                emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(cd[4]), balanceOf[address(cd[4])]
                                                if ext_call.success:
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(cd[36]), balanceOf[address(cd[36])]
                                                    if ext_call.success:
                                                        if uint8(stor8.field_160):
                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[296 len 24] >> 64, 0
                                                        else:
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            if not ext_call.success:
                                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                    revert with 0, 
                                                                                32,
                                                                                40,
                                                                                0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                0
                                                            else:
                                                                require return_data.size >= 96
                                                                emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                    revert with 0, 
                                                                                32,
                                                                                40,
                                                                                0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                0
                                                    else:
                                                        emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                                        if uint8(stor8.field_160):
                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                                                        else:
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            if not ext_call.success:
                                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                    revert with 0, 
                                                                                32,
                                                                                40,
                                                                                0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                0
                                                            else:
                                                                require return_data.size >= 96
                                                                emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                    revert with 0, 
                                                                                32,
                                                                                40,
                                                                                0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                0
                                                else:
                                                    emit 0x1f4b4287: address(cd[4]), 64, 4, 0x66726f6d00000000000000000000000000000000000000000000000000000000
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(cd[36]), balanceOf[address(cd[36])]
                                                    if not ext_call.success:
                                                        emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                                    if uint8(stor8.field_160):
                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                                                    else:
                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args gasForProcessing
                                                        if not ext_call.success:
                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                revert with 0, 
                                                                            32,
                                                                            40,
                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                            0
                                                        else:
                                                            require return_data.size >= 96
                                                            emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                revert with 0, 
                                                                            32,
                                                                            40,
                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                            0
                                            else:
                                                if uint8(stor8.field_160):
                                                    if not address(cd[4]):
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not address(cd[36]):
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if cd[68] > balanceOf[address(cd[4])]:
                                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                                                    if balanceOf[address(cd[4])] < cd[68]:
                                                        revert with 0, 17
                                                    balanceOf[address(cd[4])] -= cd[68]
                                                    if balanceOf[address(cd[36])] > !cd[68]:
                                                        revert with 0, 17
                                                    if balanceOf[address(cd[36])] + cd[68] < balanceOf[address(cd[36])]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(cd[36])] += cd[68]
                                                    emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(cd[4]), balanceOf[address(cd[4])]
                                                    if ext_call.success:
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(cd[36]), balanceOf[address(cd[36])]
                                                        if ext_call.success:
                                                            if uint8(stor8.field_160):
                                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[296 len 24] >> 64, 0
                                                            else:
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                if not ext_call.success:
                                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    40,
                                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                    0
                                                                else:
                                                                    require return_data.size >= 96
                                                                    emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    40,
                                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                    0
                                                        else:
                                                            emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                                            if uint8(stor8.field_160):
                                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                                                            else:
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                if not ext_call.success:
                                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    40,
                                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                    0
                                                                else:
                                                                    require return_data.size >= 96
                                                                    emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    40,
                                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                    0
                                                    else:
                                                        emit 0x1f4b4287: address(cd[4]), 64, 4, 0x66726f6d00000000000000000000000000000000000000000000000000000000
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(cd[36]), balanceOf[address(cd[36])]
                                                        if not ext_call.success:
                                                            emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                                        if uint8(stor8.field_160):
                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                                                        else:
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            if not ext_call.success:
                                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                    revert with 0, 
                                                                                32,
                                                                                40,
                                                                                0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                0
                                                            else:
                                                                require return_data.size >= 96
                                                                emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                    revert with 0, 
                                                                                32,
                                                                                40,
                                                                                0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                0
                                                else:
                                                    if cd[68] and totalFees > -1 / cd[68]:
                                                        revert with 0, 17
                                                    if cd[68] < cd[68] * totalFees / 100:
                                                        revert with 0, 17
                                                    if not address(cd[4]):
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if cd[68] * totalFees / 100 > balanceOf[address(cd[4])]:
                                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                                                    if balanceOf[address(cd[4])] < cd[68] * totalFees / 100:
                                                        revert with 0, 17
                                                    balanceOf[address(cd[4])] -= cd[68] * totalFees / 100
                                                    if balanceOf[this.address] > !(cd[68] * totalFees / 100):
                                                        revert with 0, 17
                                                    if balanceOf[this.address] + (cd[68] * totalFees / 100) < balanceOf[this.address]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(this.address)] = balanceOf[this.address] + (cd[68] * totalFees / 100)
                                                    emit Transfer((cd[68] * totalFees / 100), address(cd[4]), this.address);
                                                    if not address(cd[4]):
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not address(cd[36]):
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if cd[68] - (cd[68] * totalFees / 100) > balanceOf[address(cd[4])]:
                                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                                                    if balanceOf[address(cd[4])] < cd[68] - (cd[68] * totalFees / 100):
                                                        revert with 0, 17
                                                    balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * totalFees / 100)
                                                    if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * totalFees / 100)):
                                                        revert with 0, 17
                                                    if balanceOf[address(cd[36])] + cd[68] - (cd[68] * totalFees / 100) < balanceOf[address(cd[36])]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * totalFees / 100)
                                                    emit Transfer((cd[68] - (cd[68] * totalFees / 100)), address(cd[4]), address(cd[36]));
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(cd[4]), balanceOf[address(cd[4])]
                                                    if ext_call.success:
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(cd[36]), balanceOf[address(cd[36])]
                                                        if ext_call.success:
                                                            if uint8(stor8.field_160):
                                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[392 len 24] >> 64, 0
                                                            else:
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                if not ext_call.success:
                                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    40,
                                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                    0
                                                                else:
                                                                    require return_data.size >= 96
                                                                    emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    40,
                                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                    0
                                                        else:
                                                            emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                                            if uint8(stor8.field_160):
                                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                                                            else:
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                if not ext_call.success:
                                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    40,
                                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                    0
                                                                else:
                                                                    require return_data.size >= 96
                                                                    emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    40,
                                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                    0
                                                    else:
                                                        emit 0x1f4b4287: address(cd[4]), 64, 4, 0x66726f6d00000000000000000000000000000000000000000000000000000000
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(cd[36]), balanceOf[address(cd[36])]
                                                        if not ext_call.success:
                                                            emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                                        if uint8(stor8.field_160):
                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                                                        else:
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            if not ext_call.success:
                                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                    revert with 0, 
                                                                                32,
                                                                                40,
                                                                                0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                0
                                                            else:
                                                                require return_data.size >= 96
                                                                emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                    revert with 0, 
                                                                                32,
                                                                                40,
                                                                                0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                0
                                    else:
                                        uint8(stor8.field_160) = 1
                                        if balanceOf[this.address] and liquidityFee > -1 / balanceOf[this.address]:
                                            revert with 0, 17
                                        if not totalFees:
                                            revert with 0, 18
                                        if balanceOf[this.address] < balanceOf[this.address] * liquidityFee / 2 / totalFees:
                                            revert with 0, 17
                                        mem[160] = this.address
                                        staticcall uniswapV2RouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        mem[224] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[192] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor7] = balanceOf[this.address] - (balanceOf[this.address] * liquidityFee / 2 / totalFees)
                                        emit Approval((balanceOf[this.address] - (balanceOf[this.address] * liquidityFee / 2 / totalFees)), this.address, uniswapV2RouterAddress);
                                        mem[ceil32(return_data.size) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 228] = balanceOf[this.address] - (balanceOf[this.address] * liquidityFee / 2 / totalFees)
                                        idx = 0
                                        s = ceil32(return_data.size) + 420
                                        t = 160
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args balanceOf[this.address] - (balanceOf[this.address] * liquidityFee / 2 / totalFees), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        if totalFees < stor14:
                                            revert with 0, 17
                                        if False and liquidityFee > 0:
                                            revert with 0, 17
                                        if not totalFees - stor14:
                                            revert with 0, 18
                                        if False and dividendFee > 0:
                                            revert with 0, 17
                                        if not totalFees - stor14:
                                            revert with 0, 18
                                        if 0 < 0 / totalFees - stor14:
                                            revert with 0, 17
                                        if -0 / totalFees - stor14 < 0 / totalFees - stor14:
                                            revert with 0, 17
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor7] = balanceOf[this.address] * liquidityFee / 2 / totalFees
                                        emit Approval((balanceOf[this.address] * liquidityFee / 2 / totalFees), this.address, uniswapV2RouterAddress);
                                        mem[ceil32(return_data.size) + 292] = 0
                                        mem[ceil32(return_data.size) + 324] = 0
                                        mem[ceil32(return_data.size) + 356] = 0
                                        mem[ceil32(return_data.size) + 388] = block.timestamp
                                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value 0 / totalFees - stor14 wei
                                             gas gas_remaining wei
                                            args this.address, balanceOf[this.address] * liquidityFee / 2 / totalFees, 0, 0, 0, block.timestamp
                                        mem[ceil32(return_data.size) + 224 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        emit SwapAndLiquify(balanceOf[this.address] * liquidityFee / 2 / totalFees, 0 / totalFees - stor14);
                                        call dividendTrackerAddress with:
                                           value 0 / totalFees - stor14 wei
                                             gas gas_remaining wei
                                        if ext_call.success:
                                            require ext_code.size(dividendTrackerAddress)
                                            call dividendTrackerAddress.distributeDividends(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args (0 / totalFees - stor14)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit SendDividends((0 / totalFees - stor14));
                                        call sub_1915c307Address with:
                                           value -2 * 0 / totalFees - stor14 wei
                                             gas gas_remaining wei
                                        if ext_call.success:
                                            emit 0xb158a2a5: sub_1915c307Address, -2 * 0 / totalFees - stor14
                                        uint8(stor8.field_160) = 0
                                        if not return_data.size:
                                            if not return_data.size:
                                                if stor19[address(cd[4])]:
                                                    if not address(cd[4]):
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not address(cd[36]):
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if cd[68] > balanceOf[address(cd[4])]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 294 len 26] >> 48,
                                                                    0
                                                    if balanceOf[address(cd[4])] < cd[68]:
                                                        revert with 0, 17
                                                    balanceOf[address(cd[4])] -= cd[68]
                                                    if balanceOf[address(cd[36])] > !cd[68]:
                                                        revert with 0, 17
                                                    if balanceOf[address(cd[36])] + cd[68] < balanceOf[address(cd[36])]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(cd[36])] += cd[68]
                                                    emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(cd[4]), balanceOf[address(cd[4])]
                                                    if ext_call.success:
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(cd[36]), balanceOf[address(cd[36])]
                                                        if ext_call.success:
                                                            if uint8(stor8.field_160):
                                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                    revert with 0, 
                                                                                32,
                                                                                40,
                                                                                0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[(2 * ceil32(return_data.size)) + 392 len 24] >> 64,
                                                                                0
                                                            else:
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                if not ext_call.success:
                                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    40,
                                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                    0
                                                                else:
                                                                    require return_data.size >= 96
                                                                    emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    40,
                                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                    0
                                                        else:
                                                            emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                                            if uint8(stor8.field_160):
                                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 2 >> 64, 0
                                                            else:
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                if not ext_call.success:
                                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    40,
                                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                    0
                                                                else:
                                                                    require return_data.size >= 96
                                                                    emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    40,
                                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                    0
                                                    else:
                                                        emit 0x1f4b4287: address(cd[4]), 64, 4, 0x66726f6d00000000000000000000000000000000000000000000000000000000
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(cd[36]), balanceOf[address(cd[36])]
                                                        if ext_call.success:
                                                            if uint8(stor8.field_160):
                                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                                                            else:
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                if not ext_call.success:
                                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    40,
                                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                    0
                                                                else:
                                                                    require return_data.size >= 96
                                                                    emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    40,
                                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                    0
                                                        else:
                                                            emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                                            if uint8(stor8.field_160):
                                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 2 >> 64, 0
                                                            else:
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                if not ext_call.success:
                                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    40,
                                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                    0
                                                                else:
                                                                    require return_data.size >= 96
                                                                    emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    40,
                                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                    0
                                                else:
                                                    if stor19[address(cd[36])]:
                                                        if not address(cd[4]):
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not address(cd[36]):
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if cd[68] > balanceOf[address(cd[4])]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 294 len 26] >> 48,
                                                                        0
                                                        if balanceOf[address(cd[4])] < cd[68]:
                                                            revert with 0, 17
                                                        balanceOf[address(cd[4])] -= cd[68]
                                                        if balanceOf[address(cd[36])] > !cd[68]:
                                                            revert with 0, 17
                                                        if balanceOf[address(cd[36])] + cd[68] < balanceOf[address(cd[36])]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(cd[36])] += cd[68]
                                                        emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(cd[4]), balanceOf[address(cd[4])]
                                                        if ext_call.success:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args address(cd[36]), balanceOf[address(cd[36])]
                                                            if ext_call.success:
                                                                if uint8(stor8.field_160):
                                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    40,
                                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[(2 * ceil32(return_data.size)) + 392 len 24] >> 64,
                                                                                    0
                                                                else:
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    if not ext_call.success:
                                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                            revert with 0, 
                                                                                        32,
                                                                                        40,
                                                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                        0
                                                                    else:
                                                                        require return_data.size >= 96
                                                                        emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                            revert with 0, 
                                                                                        32,
                                                                                        40,
                                                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                        0
                                                            else:
                                                                emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                                                if uint8(stor8.field_160):
                                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 2 >> 64, 0
                                                                else:
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    if not ext_call.success:
                                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                            revert with 0, 
                                                                                        32,
                                                                                        40,
                                                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                        0
                                                                    else:
                                                                        require return_data.size >= 96
                                                                        emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                            revert with 0, 
                                                                                        32,
                                                                                        40,
                                                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                        0
                                                        else:
                                                            emit 0x1f4b4287: address(cd[4]), 64, 4, 0x66726f6d00000000000000000000000000000000000000000000000000000000
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args address(cd[36]), balanceOf[address(cd[36])]
                                                            if ext_call.success:
                                                                if uint8(stor8.field_160):
                                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                                                                else:
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    if not ext_call.success:
                                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                            revert with 0, 
                                                                                        32,
                                                                                        40,
                                                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                        0
                                                                    else:
                                                                        require return_data.size >= 96
                                                                        emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                            revert with 0, 
                                                                                        32,
                                                                                        40,
                                                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                        0
                                                            else:
                                                                emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                                                if uint8(stor8.field_160):
                                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 2 >> 64, 0
                                                                else:
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    if not ext_call.success:
                                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                            revert with 0, 
                                                                                        32,
                                                                                        40,
                                                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                        0
                                                                    else:
                                                                        require return_data.size >= 96
                                                                        emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                            revert with 0, 
                                                                                        32,
                                                                                        40,
                                                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                        0
                                                    else:
                                                        if uint8(stor8.field_160):
                                                            if not address(cd[4]):
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not address(cd[36]):
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if cd[68] > balanceOf[address(cd[4])]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 294 len 26] >> 48,
                                                                            0
                                                            if balanceOf[address(cd[4])] < cd[68]:
                                                                revert with 0, 17
                                                            balanceOf[address(cd[4])] -= cd[68]
                                                            if balanceOf[address(cd[36])] > !cd[68]:
                                                                revert with 0, 17
                                                            if balanceOf[address(cd[36])] + cd[68] < balanceOf[address(cd[36])]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(cd[36])] += cd[68]
                                                            emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args address(cd[4]), balanceOf[address(cd[4])]
                                                            if ext_call.success:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args address(cd[36]), balanceOf[address(cd[36])]
                                                                if ext_call.success:
                                                                    if uint8(stor8.field_160):
                                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                            revert with 0, 
                                                                                        32,
                                                                                        40,
                                                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[(2 * ceil32(return_data.size)) + 392 len 24] >> 64,
                                                                                        0
                                                                    else:
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        if not ext_call.success:
                                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            40,
                                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                            0
                                                                        else:
                                                                            require return_data.size >= 96
                                                                            emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            40,
                                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                            0
                                                                else:
                                                                    emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                                                    if uint8(stor8.field_160):
                                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 2 >> 64, 0
                                                                    else:
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        if not ext_call.success:
                                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            40,
                                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                            0
                                                                        else:
                                                                            require return_data.size >= 96
                                                                            emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            40,
                                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                            0
                                                            else:
                                                                emit 0x1f4b4287: address(cd[4]), 64, 4, 0x66726f6d00000000000000000000000000000000000000000000000000000000
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args address(cd[36]), balanceOf[address(cd[36])]
                                                                if ext_call.success:
                                                                    if uint8(stor8.field_160):
                                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                                                                    else:
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        if not ext_call.success:
                                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            40,
                                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                            0
                                                                        else:
                                                                            require return_data.size >= 96
                                                                            emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            40,
                                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                            0
                                                                else:
                                                                    emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                                                    if uint8(stor8.field_160):
                                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 2 >> 64, 0
                                                                    else:
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        if not ext_call.success:
                                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            40,
                                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                            0
                                                                        else:
                                                                            require return_data.size >= 96
                                                                            emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            40,
                                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                            0
                                                        else:
                                                            if cd[68] and totalFees > -1 / cd[68]:
                                                                revert with 0, 17
                                                            if cd[68] < cd[68] * totalFees / 100:
                                                                revert with 0, 17
                                                            if not address(cd[4]):
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if cd[68] * totalFees / 100 > balanceOf[address(cd[4])]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 294 len 26] >> 48,
                                                                            0
                                                            if balanceOf[address(cd[4])] < cd[68] * totalFees / 100:
                                                                revert with 0, 17
                                                            balanceOf[address(cd[4])] -= cd[68] * totalFees / 100
                                                            if balanceOf[this.address] > !(cd[68] * totalFees / 100):
                                                                revert with 0, 17
                                                            if balanceOf[this.address] + (cd[68] * totalFees / 100) < balanceOf[this.address]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(this.address)] = balanceOf[this.address] + (cd[68] * totalFees / 100)
                                                            emit Transfer((cd[68] * totalFees / 100), address(cd[4]), this.address);
                                                            if not address(cd[4]):
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not address(cd[36]):
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if cd[68] - (cd[68] * totalFees / 100) > balanceOf[address(cd[4])]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 390 len 26] >> 48,
                                                                            0
                                                            if balanceOf[address(cd[4])] < cd[68] - (cd[68] * totalFees / 100):
                                                                revert with 0, 17
                                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * totalFees / 100)
                                                            if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * totalFees / 100)):
                                                                revert with 0, 17
                                                            if balanceOf[address(cd[36])] + cd[68] - (cd[68] * totalFees / 100) < balanceOf[address(cd[36])]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * totalFees / 100)
                                                            emit Transfer((cd[68] - (cd[68] * totalFees / 100)), address(cd[4]), address(cd[36]));
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args address(cd[4]), balanceOf[address(cd[4])]
                                                            if ext_call.success:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args address(cd[36]), balanceOf[address(cd[36])]
                                                                if ext_call.success:
                                                                    if uint8(stor8.field_160):
                                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                            revert with 0, 
                                                                                        32,
                                                                                        40,
                                                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[(2 * ceil32(return_data.size)) + 488 len 24] >> 64,
                                                                                        0
                                                                    else:
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        if not ext_call.success:
                                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            40,
                                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                            0
                                                                        else:
                                                                            require return_data.size >= 96
                                                                            emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            40,
                                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                            0
                                                                else:
                                                                    emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                                                    if uint8(stor8.field_160):
                                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 2 >> 64, 0
                                                                    else:
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        if not ext_call.success:
                                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            40,
                                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                            0
                                                                        else:
                                                                            require return_data.size >= 96
                                                                            emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            40,
                                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                            0
                                                            else:
                                                                emit 0x1f4b4287: address(cd[4]), 64, 4, 0x66726f6d00000000000000000000000000000000000000000000000000000000
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args address(cd[36]), balanceOf[address(cd[36])]
                                                                if ext_call.success:
                                                                    if uint8(stor8.field_160):
                                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                                                                    else:
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        if not ext_call.success:
                                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            40,
                                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                            0
                                                                        else:
                                                                            require return_data.size >= 96
                                                                            emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            40,
                                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                            0
                                                                else:
                                                                    emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                                                    if uint8(stor8.field_160):
                                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 2 >> 64, 0
                                                                    else:
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        if not ext_call.success:
                                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            40,
                                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                            0
                                                                        else:
                                                                            require return_data.size >= 96
                                                                            emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            40,
                                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                            0
                                            else:
                                                if stor19[address(cd[4])]:
                                                    if not address(cd[4]):
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not address(cd[36]):
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if cd[68] > balanceOf[address(cd[4])]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 295 len 26] >> 48,
                                                                    0
                                                    if balanceOf[address(cd[4])] < cd[68]:
                                                        revert with 0, 17
                                                    balanceOf[address(cd[4])] -= cd[68]
                                                    if balanceOf[address(cd[36])] > !cd[68]:
                                                        revert with 0, 17
                                                    if balanceOf[address(cd[36])] + cd[68] < balanceOf[address(cd[36])]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(cd[36])] += cd[68]
                                                    emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(cd[4]), balanceOf[address(cd[4])]
                                                    if ext_call.success:
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(cd[36]), balanceOf[address(cd[36])]
                                                        if ext_call.success:
                                                            if uint8(stor8.field_160):
                                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                    revert with 0, 
                                                                                32,
                                                                                40,
                                                                                0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393 len 24] >> 64,
                                                                                0
                                                            else:
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                if not ext_call.success:
                                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    40,
                                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                    0
                                                                else:
                                                                    require return_data.size >= 96
                                                                    emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    40,
                                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                    0
                                                        else:
                                                            emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                                            if uint8(stor8.field_160):
                                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 2 >> 64, 0
                                                            else:
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                if not ext_call.success:
                                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    40,
                                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                    0
                                                                else:
                                                                    require return_data.size >= 96
                                                                    emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    40,
                                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                    0
                                                    else:
                                                        emit 0x1f4b4287: address(cd[4]), 64, 4, 0x66726f6d00000000000000000000000000000000000000000000000000000000
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(cd[36]), balanceOf[address(cd[36])]
                                                        if ext_call.success:
                                                            if uint8(stor8.field_160):
                                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                                                            else:
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                if not ext_call.success:
                                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    40,
                                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                    0
                                                                else:
                                                                    require return_data.size >= 96
                                                                    emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    40,
                                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                    0
                                                        else:
                                                            emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                                            if uint8(stor8.field_160):
                                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 2 >> 64, 0
                                                            else:
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                if not ext_call.success:
                                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    40,
                                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                    0
                                                                else:
                                                                    require return_data.size >= 96
                                                                    emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    40,
                                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                    0
                                                else:
                                                    if stor19[address(cd[36])]:
                                                        if not address(cd[4]):
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not address(cd[36]):
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if cd[68] > balanceOf[address(cd[4])]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 295 len 26] >> 48,
                                                                        0
                                                        if balanceOf[address(cd[4])] < cd[68]:
                                                            revert with 0, 17
                                                        balanceOf[address(cd[4])] -= cd[68]
                                                        if balanceOf[address(cd[36])] > !cd[68]:
                                                            revert with 0, 17
                                                        if balanceOf[address(cd[36])] + cd[68] < balanceOf[address(cd[36])]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(cd[36])] += cd[68]
                                                        emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(cd[4]), balanceOf[address(cd[4])]
                                                        if ext_call.success:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args address(cd[36]), balanceOf[address(cd[36])]
                                                            if ext_call.success:
                                                                if uint8(stor8.field_160):
                                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    40,
                                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393 len 24] >> 64,
                                                                                    0
                                                                else:
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    if not ext_call.success:
                                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                            revert with 0, 
                                                                                        32,
                                                                                        40,
                                                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                        0
                                                                    else:
                                                                        require return_data.size >= 96
                                                                        emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                            revert with 0, 
                                                                                        32,
                                                                                        40,
                                                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                        0
                                                            else:
                                                                emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                                                if uint8(stor8.field_160):
                                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 2 >> 64, 0
                                                                else:
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    if not ext_call.success:
                                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                            revert with 0, 
                                                                                        32,
                                                                                        40,
                                                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                        0
                                                                    else:
                                                                        require return_data.size >= 96
                                                                        emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                            revert with 0, 
                                                                                        32,
                                                                                        40,
                                                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                        0
                                                        else:
                                                            emit 0x1f4b4287: address(cd[4]), 64, 4, 0x66726f6d00000000000000000000000000000000000000000000000000000000
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args address(cd[36]), balanceOf[address(cd[36])]
                                                            if ext_call.success:
                                                                if uint8(stor8.field_160):
                                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                                                                else:
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    if not ext_call.success:
                                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                            revert with 0, 
                                                                                        32,
                                                                                        40,
                                                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                        0
                                                                    else:
                                                                        require return_data.size >= 96
                                                                        emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                            revert with 0, 
                                                                                        32,
                                                                                        40,
                                                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                        0
                                                            else:
                                                                emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                                                if uint8(stor8.field_160):
                                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 2 >> 64, 0
                                                                else:
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    if not ext_call.success:
                                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                            revert with 0, 
                                                                                        32,
                                                                                        40,
                                                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                        0
                                                                    else:
                                                                        require return_data.size >= 96
                                                                        emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                            revert with 0, 
                                                                                        32,
                                                                                        40,
                                                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                        0
                                                    else:
                                                        if uint8(stor8.field_160):
                                                            if not address(cd[4]):
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not address(cd[36]):
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if cd[68] > balanceOf[address(cd[4])]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 295 len 26] >> 48,
                                                                            0
                                                            if balanceOf[address(cd[4])] < cd[68]:
                                                                revert with 0, 17
                                                            balanceOf[address(cd[4])] -= cd[68]
                                                            if balanceOf[address(cd[36])] > !cd[68]:
                                                                revert with 0, 17
                                                            if balanceOf[address(cd[36])] + cd[68] < balanceOf[address(cd[36])]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(cd[36])] += cd[68]
                                                            emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args address(cd[4]), balanceOf[address(cd[4])]
                                                            if ext_call.success:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args address(cd[36]), balanceOf[address(cd[36])]
                                                                if ext_call.success:
                                                                    if uint8(stor8.field_160):
                                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                            revert with 0, 
                                                                                        32,
                                                                                        40,
                                                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393 len 24] >> 64,
                                                                                        0
                                                                    else:
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        if not ext_call.success:
                                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            40,
                                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                            0
                                                                        else:
                                                                            require return_data.size >= 96
                                                                            emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            40,
                                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                            0
                                                                else:
                                                                    emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                                                    if uint8(stor8.field_160):
                                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 2 >> 64, 0
                                                                    else:
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        if not ext_call.success:
                                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            40,
                                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                            0
                                                                        else:
                                                                            require return_data.size >= 96
                                                                            emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            40,
                                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                            0
                                                            else:
                                                                emit 0x1f4b4287: address(cd[4]), 64, 4, 0x66726f6d00000000000000000000000000000000000000000000000000000000
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args address(cd[36]), balanceOf[address(cd[36])]
                                                                if ext_call.success:
                                                                    if uint8(stor8.field_160):
                                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                                                                    else:
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        if not ext_call.success:
                                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            40,
                                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                            0
                                                                        else:
                                                                            require return_data.size >= 96
                                                                            emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            40,
                                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                            0
                                                                else:
                                                                    emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                                                    if uint8(stor8.field_160):
                                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 2 >> 64, 0
                                                                    else:
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        if not ext_call.success:
                                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            40,
                                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                            0
                                                                        else:
                                                                            require return_data.size >= 96
                                                                            emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            40,
                                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                            0
                                                        else:
                                                            if cd[68] and totalFees > -1 / cd[68]:
                                                                revert with 0, 17
                                                            if cd[68] < cd[68] * totalFees / 100:
                                                                revert with 0, 17
                                                            if not address(cd[4]):
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if cd[68] * totalFees / 100 > balanceOf[address(cd[4])]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 295 len 26] >> 48,
                                                                            0
                                                            if balanceOf[address(cd[4])] < cd[68] * totalFees / 100:
                                                                revert with 0, 17
                                                            balanceOf[address(cd[4])] -= cd[68] * totalFees / 100
                                                            if balanceOf[this.address] > !(cd[68] * totalFees / 100):
                                                                revert with 0, 17
                                                            if balanceOf[this.address] + (cd[68] * totalFees / 100) < balanceOf[this.address]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(this.address)] = balanceOf[this.address] + (cd[68] * totalFees / 100)
                                                            emit Transfer((cd[68] * totalFees / 100), address(cd[4]), this.address);
                                                            if not address(cd[4]):
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not address(cd[36]):
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if cd[68] - (cd[68] * totalFees / 100) > balanceOf[address(cd[4])]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 391 len 26] >> 48,
                                                                            0
                                                            if balanceOf[address(cd[4])] < cd[68] - (cd[68] * totalFees / 100):
                                                                revert with 0, 17
                                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * totalFees / 100)
                                                            if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * totalFees / 100)):
                                                                revert with 0, 17
                                                            if balanceOf[address(cd[36])] + cd[68] - (cd[68] * totalFees / 100) < balanceOf[address(cd[36])]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * totalFees / 100)
                                                            emit Transfer((cd[68] - (cd[68] * totalFees / 100)), address(cd[4]), address(cd[36]));
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args address(cd[4]), balanceOf[address(cd[4])]
                                                            if ext_call.success:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args address(cd[36]), balanceOf[address(cd[36])]
                                                                if ext_call.success:
                                                                    if uint8(stor8.field_160):
                                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                            revert with 0, 
                                                                                        32,
                                                                                        40,
                                                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len 24] >> 64,
                                                                                        0
                                                                    else:
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        if not ext_call.success:
                                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            40,
                                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                            0
                                                                        else:
                                                                            require return_data.size >= 96
                                                                            emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            40,
                                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                            0
                                                                else:
                                                                    emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                                                    if uint8(stor8.field_160):
                                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 2 >> 64, 0
                                                                    else:
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        if not ext_call.success:
                                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            40,
                                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                            0
                                                                        else:
                                                                            require return_data.size >= 96
                                                                            emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            40,
                                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                            0
                                                            else:
                                                                emit 0x1f4b4287: address(cd[4]), 64, 4, 0x66726f6d00000000000000000000000000000000000000000000000000000000
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args address(cd[36]), balanceOf[address(cd[36])]
                                                                if ext_call.success:
                                                                    if uint8(stor8.field_160):
                                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                                                                    else:
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        if not ext_call.success:
                                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            40,
                                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                            0
                                                                        else:
                                                                            require return_data.size >= 96
                                                                            emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            40,
                                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                            0
                                                                else:
                                                                    emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                                                    if uint8(stor8.field_160):
                                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 2 >> 64, 0
                                                                    else:
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        if not ext_call.success:
                                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            40,
                                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                            0
                                                                        else:
                                                                            require return_data.size >= 96
                                                                            emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            40,
                                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                            0
                                        else:
                                            if not return_data.size:
                                                if stor19[address(cd[4])]:
                                                    if not address(cd[4]):
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not address(cd[36]):
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if cd[68] > balanceOf[address(cd[4])]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 295 len 26] >> 48,
                                                                    0
                                                    if balanceOf[address(cd[4])] < cd[68]:
                                                        revert with 0, 17
                                                    balanceOf[address(cd[4])] -= cd[68]
                                                    if balanceOf[address(cd[36])] > !cd[68]:
                                                        revert with 0, 17
                                                    if balanceOf[address(cd[36])] + cd[68] < balanceOf[address(cd[36])]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(cd[36])] += cd[68]
                                                    emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(cd[4]), balanceOf[address(cd[4])]
                                                    if ext_call.success:
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(cd[36]), balanceOf[address(cd[36])]
                                                        if ext_call.success:
                                                            if uint8(stor8.field_160):
                                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                    revert with 0, 
                                                                                32,
                                                                                40,
                                                                                0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393 len 24] >> 64,
                                                                                0
                                                            else:
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                if not ext_call.success:
                                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    40,
                                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                    0
                                                                else:
                                                                    require return_data.size >= 96
                                                                    emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    40,
                                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                    0
                                                        else:
                                                            emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                                            if uint8(stor8.field_160):
                                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 2 >> 64, 0
                                                            else:
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                if not ext_call.success:
                                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    40,
                                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                    0
                                                                else:
                                                                    require return_data.size >= 96
                                                                    emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    40,
                                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                    0
                                                    else:
                                                        emit 0x1f4b4287: address(cd[4]), 64, 4, 0x66726f6d00000000000000000000000000000000000000000000000000000000
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(cd[36]), balanceOf[address(cd[36])]
                                                        if ext_call.success:
                                                            if uint8(stor8.field_160):
                                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                                                            else:
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                if not ext_call.success:
                                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    40,
                                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                    0
                                                                else:
                                                                    require return_data.size >= 96
                                                                    emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    40,
                                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                    0
                                                        else:
                                                            emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                                            if uint8(stor8.field_160):
                                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 2 >> 64, 0
                                                            else:
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                if not ext_call.success:
                                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    40,
                                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                    0
                                                                else:
                                                                    require return_data.size >= 96
                                                                    emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    40,
                                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                    0
                                                else:
                                                    if stor19[address(cd[36])]:
                                                        if not address(cd[4]):
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not address(cd[36]):
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if cd[68] > balanceOf[address(cd[4])]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 295 len 26] >> 48,
                                                                        0
                                                        if balanceOf[address(cd[4])] < cd[68]:
                                                            revert with 0, 17
                                                        balanceOf[address(cd[4])] -= cd[68]
                                                        if balanceOf[address(cd[36])] > !cd[68]:
                                                            revert with 0, 17
                                                        if balanceOf[address(cd[36])] + cd[68] < balanceOf[address(cd[36])]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(cd[36])] += cd[68]
                                                        emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(cd[4]), balanceOf[address(cd[4])]
                                                        if ext_call.success:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args address(cd[36]), balanceOf[address(cd[36])]
                                                            if ext_call.success:
                                                                if uint8(stor8.field_160):
                                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    40,
                                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393 len 24] >> 64,
                                                                                    0
                                                                else:
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    if not ext_call.success:
                                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                            revert with 0, 
                                                                                        32,
                                                                                        40,
                                                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                        0
                                                                    else:
                                                                        require return_data.size >= 96
                                                                        emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                            revert with 0, 
                                                                                        32,
                                                                                        40,
                                                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                        0
                                                            else:
                                                                emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                                                if uint8(stor8.field_160):
                                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 2 >> 64, 0
                                                                else:
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    if not ext_call.success:
                                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                            revert with 0, 
                                                                                        32,
                                                                                        40,
                                                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                        0
                                                                    else:
                                                                        require return_data.size >= 96
                                                                        emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                            revert with 0, 
                                                                                        32,
                                                                                        40,
                                                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                        0
                                                        else:
                                                            emit 0x1f4b4287: address(cd[4]), 64, 4, 0x66726f6d00000000000000000000000000000000000000000000000000000000
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args address(cd[36]), balanceOf[address(cd[36])]
                                                            if ext_call.success:
                                                                if uint8(stor8.field_160):
                                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                                                                else:
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    if not ext_call.success:
                                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                            revert with 0, 
                                                                                        32,
                                                                                        40,
                                                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                        0
                                                                    else:
                                                                        require return_data.size >= 96
                                                                        emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                            revert with 0, 
                                                                                        32,
                                                                                        40,
                                                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                        0
                                                            else:
                                                                emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                                                if uint8(stor8.field_160):
                                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 2 >> 64, 0
                                                                else:
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    if not ext_call.success:
                                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                            revert with 0, 
                                                                                        32,
                                                                                        40,
                                                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                        0
                                                                    else:
                                                                        require return_data.size >= 96
                                                                        emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                            revert with 0, 
                                                                                        32,
                                                                                        40,
                                                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                        0
                                                    else:
                                                        if uint8(stor8.field_160):
                                                            if not address(cd[4]):
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not address(cd[36]):
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if cd[68] > balanceOf[address(cd[4])]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 295 len 26] >> 48,
                                                                            0
                                                            if balanceOf[address(cd[4])] < cd[68]:
                                                                revert with 0, 17
                                                            balanceOf[address(cd[4])] -= cd[68]
                                                            if balanceOf[address(cd[36])] > !cd[68]:
                                                                revert with 0, 17
                                                            if balanceOf[address(cd[36])] + cd[68] < balanceOf[address(cd[36])]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(cd[36])] += cd[68]
                                                            emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args address(cd[4]), balanceOf[address(cd[4])]
                                                            if ext_call.success:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args address(cd[36]), balanceOf[address(cd[36])]
                                                                if ext_call.success:
                                                                    if uint8(stor8.field_160):
                                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                            revert with 0, 
                                                                                        32,
                                                                                        40,
                                                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393 len 24] >> 64,
                                                                                        0
                                                                    else:
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        if not ext_call.success:
                                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            40,
                                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                            0
                                                                        else:
                                                                            require return_data.size >= 96
                                                                            emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            40,
                                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                            0
                                                                else:
                                                                    emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                                                    if uint8(stor8.field_160):
                                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 2 >> 64, 0
                                                                    else:
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        if not ext_call.success:
                                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            40,
                                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                            0
                                                                        else:
                                                                            require return_data.size >= 96
                                                                            emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            40,
                                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                            0
                                                            else:
                                                                emit 0x1f4b4287: address(cd[4]), 64, 4, 0x66726f6d00000000000000000000000000000000000000000000000000000000
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args address(cd[36]), balanceOf[address(cd[36])]
                                                                if ext_call.success:
                                                                    if uint8(stor8.field_160):
                                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                                                                    else:
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        if not ext_call.success:
                                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            40,
                                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                            0
                                                                        else:
                                                                            require return_data.size >= 96
                                                                            emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            40,
                                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                            0
                                                                else:
                                                                    emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                                                    if uint8(stor8.field_160):
                                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 2 >> 64, 0
                                                                    else:
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        if not ext_call.success:
                                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            40,
                                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                            0
                                                                        else:
                                                                            require return_data.size >= 96
                                                                            emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            40,
                                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                            0
                                                        else:
                                                            if cd[68] and totalFees > -1 / cd[68]:
                                                                revert with 0, 17
                                                            if cd[68] < cd[68] * totalFees / 100:
                                                                revert with 0, 17
                                                            if not address(cd[4]):
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if cd[68] * totalFees / 100 > balanceOf[address(cd[4])]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 295 len 26] >> 48,
                                                                            0
                                                            if balanceOf[address(cd[4])] < cd[68] * totalFees / 100:
                                                                revert with 0, 17
                                                            balanceOf[address(cd[4])] -= cd[68] * totalFees / 100
                                                            if balanceOf[this.address] > !(cd[68] * totalFees / 100):
                                                                revert with 0, 17
                                                            if balanceOf[this.address] + (cd[68] * totalFees / 100) < balanceOf[this.address]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(this.address)] = balanceOf[this.address] + (cd[68] * totalFees / 100)
                                                            emit Transfer((cd[68] * totalFees / 100), address(cd[4]), this.address);
                                                            if not address(cd[4]):
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not address(cd[36]):
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if cd[68] - (cd[68] * totalFees / 100) > balanceOf[address(cd[4])]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 391 len 26] >> 48,
                                                                            0
                                                            if balanceOf[address(cd[4])] < cd[68] - (cd[68] * totalFees / 100):
                                                                revert with 0, 17
                                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * totalFees / 100)
                                                            if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * totalFees / 100)):
                                                                revert with 0, 17
                                                            if balanceOf[address(cd[36])] + cd[68] - (cd[68] * totalFees / 100) < balanceOf[address(cd[36])]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * totalFees / 100)
                                                            emit Transfer((cd[68] - (cd[68] * totalFees / 100)), address(cd[4]), address(cd[36]));
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args address(cd[4]), balanceOf[address(cd[4])]
                                                            if ext_call.success:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args address(cd[36]), balanceOf[address(cd[36])]
                                                                if ext_call.success:
                                                                    if uint8(stor8.field_160):
                                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                            revert with 0, 
                                                                                        32,
                                                                                        40,
                                                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len 24] >> 64,
                                                                                        0
                                                                    else:
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        if not ext_call.success:
                                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            40,
                                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                            0
                                                                        else:
                                                                            require return_data.size >= 96
                                                                            emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            40,
                                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                            0
                                                                else:
                                                                    emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                                                    if uint8(stor8.field_160):
                                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 2 >> 64, 0
                                                                    else:
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        if not ext_call.success:
                                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            40,
                                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                            0
                                                                        else:
                                                                            require return_data.size >= 96
                                                                            emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            40,
                                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                            0
                                                            else:
                                                                emit 0x1f4b4287: address(cd[4]), 64, 4, 0x66726f6d00000000000000000000000000000000000000000000000000000000
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args address(cd[36]), balanceOf[address(cd[36])]
                                                                if ext_call.success:
                                                                    if uint8(stor8.field_160):
                                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                                                                    else:
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        if not ext_call.success:
                                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            40,
                                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                            0
                                                                        else:
                                                                            require return_data.size >= 96
                                                                            emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            40,
                                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                            0
                                                                else:
                                                                    emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                                                    if uint8(stor8.field_160):
                                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 2 >> 64, 0
                                                                    else:
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        if not ext_call.success:
                                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            40,
                                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                            0
                                                                        else:
                                                                            require return_data.size >= 96
                                                                            emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            40,
                                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                            0
                                            else:
                                                if stor19[address(cd[4])]:
                                                    if not address(cd[4]):
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not address(cd[36]):
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if cd[68] > balanceOf[address(cd[4])]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + 296 len 26] >> 48,
                                                                    0
                                                    if balanceOf[address(cd[4])] < cd[68]:
                                                        revert with 0, 17
                                                    balanceOf[address(cd[4])] -= cd[68]
                                                    if balanceOf[address(cd[36])] > !cd[68]:
                                                        revert with 0, 17
                                                    if balanceOf[address(cd[36])] + cd[68] < balanceOf[address(cd[36])]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(cd[36])] += cd[68]
                                                    emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(cd[4]), balanceOf[address(cd[4])]
                                                    if ext_call.success:
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(cd[36]), balanceOf[address(cd[36])]
                                                        if ext_call.success:
                                                            if uint8(stor8.field_160):
                                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                    revert with 0, 
                                                                                32,
                                                                                40,
                                                                                0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[(4 * ceil32(return_data.size)) + 394 len 24] >> 64,
                                                                                0
                                                            else:
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                if not ext_call.success:
                                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    40,
                                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                    0
                                                                else:
                                                                    require return_data.size >= 96
                                                                    emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    40,
                                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                    0
                                                        else:
                                                            emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                                            if uint8(stor8.field_160):
                                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 2 >> 64, 0
                                                            else:
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                if not ext_call.success:
                                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    40,
                                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                    0
                                                                else:
                                                                    require return_data.size >= 96
                                                                    emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    40,
                                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                    0
                                                    else:
                                                        emit 0x1f4b4287: address(cd[4]), 64, 4, 0x66726f6d00000000000000000000000000000000000000000000000000000000
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(cd[36]), balanceOf[address(cd[36])]
                                                        if ext_call.success:
                                                            if uint8(stor8.field_160):
                                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                                                            else:
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                if not ext_call.success:
                                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    40,
                                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                    0
                                                                else:
                                                                    require return_data.size >= 96
                                                                    emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    40,
                                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                    0
                                                        else:
                                                            emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                                            if uint8(stor8.field_160):
                                                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 2 >> 64, 0
                                                            else:
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                if not ext_call.success:
                                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    40,
                                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                    0
                                                                else:
                                                                    require return_data.size >= 96
                                                                    emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    40,
                                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                    0
                                                else:
                                                    if stor19[address(cd[36])]:
                                                        if not address(cd[4]):
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not address(cd[36]):
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if cd[68] > balanceOf[address(cd[4])]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + 296 len 26] >> 48,
                                                                        0
                                                        if balanceOf[address(cd[4])] < cd[68]:
                                                            revert with 0, 17
                                                        balanceOf[address(cd[4])] -= cd[68]
                                                        if balanceOf[address(cd[36])] > !cd[68]:
                                                            revert with 0, 17
                                                        if balanceOf[address(cd[36])] + cd[68] < balanceOf[address(cd[36])]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(cd[36])] += cd[68]
                                                        emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(cd[4]), balanceOf[address(cd[4])]
                                                        if ext_call.success:
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args address(cd[36]), balanceOf[address(cd[36])]
                                                            if ext_call.success:
                                                                if uint8(stor8.field_160):
                                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    40,
                                                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[(4 * ceil32(return_data.size)) + 394 len 24] >> 64,
                                                                                    0
                                                                else:
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    if not ext_call.success:
                                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                            revert with 0, 
                                                                                        32,
                                                                                        40,
                                                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                        0
                                                                    else:
                                                                        require return_data.size >= 96
                                                                        emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                            revert with 0, 
                                                                                        32,
                                                                                        40,
                                                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                        0
                                                            else:
                                                                emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                                                if uint8(stor8.field_160):
                                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 2 >> 64, 0
                                                                else:
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    if not ext_call.success:
                                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                            revert with 0, 
                                                                                        32,
                                                                                        40,
                                                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                        0
                                                                    else:
                                                                        require return_data.size >= 96
                                                                        emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                            revert with 0, 
                                                                                        32,
                                                                                        40,
                                                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                        0
                                                        else:
                                                            emit 0x1f4b4287: address(cd[4]), 64, 4, 0x66726f6d00000000000000000000000000000000000000000000000000000000
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args address(cd[36]), balanceOf[address(cd[36])]
                                                            if ext_call.success:
                                                                if uint8(stor8.field_160):
                                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                                                                else:
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    if not ext_call.success:
                                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                            revert with 0, 
                                                                                        32,
                                                                                        40,
                                                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                        0
                                                                    else:
                                                                        require return_data.size >= 96
                                                                        emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                            revert with 0, 
                                                                                        32,
                                                                                        40,
                                                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                        0
                                                            else:
                                                                emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                                                if uint8(stor8.field_160):
                                                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 2 >> 64, 0
                                                                else:
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    if not ext_call.success:
                                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                            revert with 0, 
                                                                                        32,
                                                                                        40,
                                                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                        0
                                                                    else:
                                                                        require return_data.size >= 96
                                                                        emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                            revert with 0, 
                                                                                        32,
                                                                                        40,
                                                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                        0
                                                    else:
                                                        if uint8(stor8.field_160):
                                                            if not address(cd[4]):
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not address(cd[36]):
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if cd[68] > balanceOf[address(cd[4])]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + 296 len 26] >> 48,
                                                                            0
                                                            if balanceOf[address(cd[4])] < cd[68]:
                                                                revert with 0, 17
                                                            balanceOf[address(cd[4])] -= cd[68]
                                                            if balanceOf[address(cd[36])] > !cd[68]:
                                                                revert with 0, 17
                                                            if balanceOf[address(cd[36])] + cd[68] < balanceOf[address(cd[36])]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(cd[36])] += cd[68]
                                                            emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args address(cd[4]), balanceOf[address(cd[4])]
                                                            if ext_call.success:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args address(cd[36]), balanceOf[address(cd[36])]
                                                                if ext_call.success:
                                                                    if uint8(stor8.field_160):
                                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                            revert with 0, 
                                                                                        32,
                                                                                        40,
                                                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[(4 * ceil32(return_data.size)) + 394 len 24] >> 64,
                                                                                        0
                                                                    else:
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        if not ext_call.success:
                                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            40,
                                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                            0
                                                                        else:
                                                                            require return_data.size >= 96
                                                                            emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            40,
                                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                            0
                                                                else:
                                                                    emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                                                    if uint8(stor8.field_160):
                                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 2 >> 64, 0
                                                                    else:
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        if not ext_call.success:
                                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            40,
                                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                            0
                                                                        else:
                                                                            require return_data.size >= 96
                                                                            emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            40,
                                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                            0
                                                            else:
                                                                emit 0x1f4b4287: address(cd[4]), 64, 4, 0x66726f6d00000000000000000000000000000000000000000000000000000000
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args address(cd[36]), balanceOf[address(cd[36])]
                                                                if ext_call.success:
                                                                    if uint8(stor8.field_160):
                                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                                                                    else:
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        if not ext_call.success:
                                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            40,
                                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                            0
                                                                        else:
                                                                            require return_data.size >= 96
                                                                            emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            40,
                                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                            0
                                                                else:
                                                                    emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                                                    if uint8(stor8.field_160):
                                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 2 >> 64, 0
                                                                    else:
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        if not ext_call.success:
                                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            40,
                                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                            0
                                                                        else:
                                                                            require return_data.size >= 96
                                                                            emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            40,
                                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                            0
                                                        else:
                                                            if cd[68] and totalFees > -1 / cd[68]:
                                                                revert with 0, 17
                                                            if cd[68] < cd[68] * totalFees / 100:
                                                                revert with 0, 17
                                                            if not address(cd[4]):
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if cd[68] * totalFees / 100 > balanceOf[address(cd[4])]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + 296 len 26] >> 48,
                                                                            0
                                                            if balanceOf[address(cd[4])] < cd[68] * totalFees / 100:
                                                                revert with 0, 17
                                                            balanceOf[address(cd[4])] -= cd[68] * totalFees / 100
                                                            if balanceOf[this.address] > !(cd[68] * totalFees / 100):
                                                                revert with 0, 17
                                                            if balanceOf[this.address] + (cd[68] * totalFees / 100) < balanceOf[this.address]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(this.address)] = balanceOf[this.address] + (cd[68] * totalFees / 100)
                                                            emit Transfer((cd[68] * totalFees / 100), address(cd[4]), this.address);
                                                            if not address(cd[4]):
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not address(cd[36]):
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if cd[68] - (cd[68] * totalFees / 100) > balanceOf[address(cd[4])]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(4 * ceil32(return_data.size)) + 392 len 26] >> 48,
                                                                            0
                                                            if balanceOf[address(cd[4])] < cd[68] - (cd[68] * totalFees / 100):
                                                                revert with 0, 17
                                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * totalFees / 100)
                                                            if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * totalFees / 100)):
                                                                revert with 0, 17
                                                            if balanceOf[address(cd[36])] + cd[68] - (cd[68] * totalFees / 100) < balanceOf[address(cd[36])]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * totalFees / 100)
                                                            emit Transfer((cd[68] - (cd[68] * totalFees / 100)), address(cd[4]), address(cd[36]));
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args address(cd[4]), balanceOf[address(cd[4])]
                                                            if ext_call.success:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args address(cd[36]), balanceOf[address(cd[36])]
                                                                if ext_call.success:
                                                                    if uint8(stor8.field_160):
                                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                            revert with 0, 
                                                                                        32,
                                                                                        40,
                                                                                        0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[(4 * ceil32(return_data.size)) + 490 len 24] >> 64,
                                                                                        0
                                                                    else:
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        if not ext_call.success:
                                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            40,
                                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                            0
                                                                        else:
                                                                            require return_data.size >= 96
                                                                            emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            40,
                                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                            0
                                                                else:
                                                                    emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                                                    if uint8(stor8.field_160):
                                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 2 >> 64, 0
                                                                    else:
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        if not ext_call.success:
                                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            40,
                                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                            0
                                                                        else:
                                                                            require return_data.size >= 96
                                                                            emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            40,
                                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                            0
                                                            else:
                                                                emit 0x1f4b4287: address(cd[4]), 64, 4, 0x66726f6d00000000000000000000000000000000000000000000000000000000
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args address(cd[36]), balanceOf[address(cd[36])]
                                                                if ext_call.success:
                                                                    if uint8(stor8.field_160):
                                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                                                                    else:
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        if not ext_call.success:
                                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            40,
                                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                            0
                                                                        else:
                                                                            require return_data.size >= 96
                                                                            emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            40,
                                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                            0
                                                                else:
                                                                    emit 0x1f4b4287: address(cd[36]), 64, 2, 0x746f000000000000000000000000000000000000000000000000000000000000
                                                                    if uint8(stor8.field_160):
                                                                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 2 >> 64, 0
                                                                    else:
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        if not ext_call.success:
                                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            40,
                                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, ext_call.return_data[72 len 24] >> 64,
                                                                                            0
                                                                        else:
                                                                            require return_data.size >= 96
                                                                            emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                                                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            40,
                                                                                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, Mask(192, 0, ext_call.return_data[64]) >> 64,
                                                                                            0
            ('le', ('cd', 68), ('stor', ('map', 'msg.sender', ('map', ('mask_shl', 160, 0, 0, ('cd', 4)), ('name', 'allowance', 1)))))
            if allowance[address(cd[4])][msg.sender] < cd[68]:
                revert with 0, 17
            if not address(cd[4]):
                revert with 0, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(cd[4])][address(msg.sender)] = allowance[address(cd[4])][msg.sender] - cd[68]
            emit Approval((allowance[address(cd[4])][msg.sender] - cd[68]), address(cd[4]), msg.sender);
    return 1
}



}
