contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - _fallback()
#
const decimals = 18

const deadWallet = 57005

const BTC = 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c


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
address _marketingWalletAddress;
uint256 swapTokensAtAmount;
uint256 maxTxAmount;
uint256 minTxAmount;
uint256 sub_52e258b0;
uint256 liquidityFee;
uint256 marketingFee;
uint256 totalFees;
uint256 gasForProcessing;
mapping of uint8 stor18;
mapping of uint8 stor19;

function totalFees() {
    return totalFees
}

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function totalSupply() {
    return totalSupply
}

function minTxAmount() {
    return minTxAmount
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
    return bool(stor18[address(arg1)])
}

function sub_52e258b0(?) {
    return sub_52e258b0
}

function marketingFee() {
    return marketingFee
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function maxTxAmount() {
    return maxTxAmount
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
    return bool(stor19[arg1])
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

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setSwaptokensatAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    swapTokensAtAmount = arg1
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

function withdrawLeftOver() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call _marketingWalletAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function minimumTokenBalanceForDividends() {
    require ext_code.size(dividendTrackerAddress)
    staticcall dividendTrackerAddress.0xbe10b614 with:
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

function setMaxTxPercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if minTxAmount > arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Max Tx Amount can't set below 0.002% of total supply'
    maxTxAmount = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
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

function setMarketingWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FLOCKS: newAddress is a zero address'
    _marketingWalletAddress = arg1
    emit marketWalletUpdate(arg1);
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

function setMinimumTokenBalanceForDividends(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(dividendTrackerAddress)
    call dividendTrackerAddress.0x5ebf4db9 with:
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

function excludeFromFees(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 == bool(stor18[address(arg1)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FLOCKS: Account is already the value of 'excluded''
    stor18[address(arg1)] = uint8(arg2)
    emit ExcludeFromFees(arg2, arg1);
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

function setBTCRewardsFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_52e258b0 = arg1
    if arg1 > !liquidityFee:
        revert with 0, 17
    if arg1 + liquidityFee < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + liquidityFee > !marketingFee:
        revert with 0, 17
    if marketingFee < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalFees = arg1 + liquidityFee + marketingFee
    if 15 < arg1 + liquidityFee + marketingFee:
        revert with 0, 'Total fee is over 15%'
    emit btcRewardUpdate(arg1);
}

function setLiquiditFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    liquidityFee = arg1
    if sub_52e258b0 > !arg1:
        revert with 0, 17
    if sub_52e258b0 + arg1 < sub_52e258b0:
        revert with 0, 'SafeMath: addition overflow'
    if sub_52e258b0 + arg1 > !marketingFee:
        revert with 0, 17
    if marketingFee < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalFees = sub_52e258b0 + arg1 + marketingFee
    if 15 < sub_52e258b0 + arg1 + marketingFee:
        revert with 0, 'Total fee is over 15%'
    emit liquidityFeeUpdate(arg1);
}

function setMarketingFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    marketingFee = arg1
    if sub_52e258b0 > !liquidityFee:
        revert with 0, 17
    if sub_52e258b0 + liquidityFee < sub_52e258b0:
        revert with 0, 'SafeMath: addition overflow'
    if sub_52e258b0 + liquidityFee > !arg1:
        revert with 0, 17
    if arg1 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalFees = sub_52e258b0 + liquidityFee + arg1
    if 15 < sub_52e258b0 + liquidityFee + arg1:
        revert with 0, 'Total fee is over 15%'
    emit marketingFeeUpdate(arg1);
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > allowance[msg.sender][address(arg1)].field_0:
        revert with 0, 32, 37, 0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if allowance[msg.sender][address(arg1)].field_0 < arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)].field_0 = allowance[msg.sender][address(arg1)].field_0 - arg2
    emit Approval((allowance[msg.sender][address(arg1)].field_0 - arg2), msg.sender, arg1);
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

function updateGasForProcessing(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 200000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'FLOCKS: gasForProcessing must be between 200,000 and 500,000'
    if arg1 > 500000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'FLOCKS: gasForProcessing must be between 200,000 and 500,000'
    if arg1 == gasForProcessing:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'FLOCKS: Cannot update gasForProcessing to same value'
    emit GasForProcessingUpdated(arg1, gasForProcessing);
    gasForProcessing = arg1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)].field_0 > !arg2:
        revert with 0, 17
    if allowance[msg.sender][address(arg1)].field_0 + arg2 < allowance[msg.sender][address(arg1)].field_0:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)].field_0 = allowance[msg.sender][address(arg1)].field_0 + arg2
    emit Approval((allowance[msg.sender][address(arg1)].field_0 + arg2), msg.sender, arg1);
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
        mem[32] = 18
        stor18[address(cd[((32 * idx) + arg1 + 36)])] = uint8(arg2)
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

function setAutomatedMarketMakerPair(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FLOCKS: newAddress is a zero address'
    if uniswapV2PairAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'FLOCKS: The PanCakeSwap pair cannot be removed from automatedMarketMakerPairs'
    if arg2 == bool(stor19[address(arg1)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'FLOCKS: Automated market maker pair is already set to that value'
    stor19[address(arg1)] = uint8(arg2)
    if arg2:
        require ext_code.size(dividendTrackerAddress)
        call dividendTrackerAddress.0x31e79db0 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit SetAutomatedMarketMakerPair(arg1, arg2);
}

function updateUniswapV2Router(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FLOCKS: newAddress is a zero address'
    if uniswapV2RouterAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FLOCKS: The router already has that address'
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
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FLOCKS: newAddress is a zero address'
    if dividendTrackerAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'FLOCKS: The dividend tracker already has that address'
    require ext_code.size(arg1)
    staticcall arg1.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'FLOCKS: The new dividend tracker must be owned by the FLOCKS token contract'
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
        args 57005
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
    if owner == msg.sender:
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
            if balanceOf[this.address] < swapTokensAtAmount:
                if stor18[address(msg.sender)]:
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
                    if stor18[address(arg1)]:
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
                        if stor7:
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
                            if not arg2:
                                if 0 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg2 < 0:
                                    revert with 0, 17
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if 0 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 0, 17
                                if balanceOf[this.address] > -1:
                                    revert with 0, 17
                                if balanceOf[this.address] < balanceOf[this.address]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(this.address)] = balanceOf[this.address]
                                emit Transfer(0, msg.sender, this.address);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[390 len 26] >> 48, 0
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
                                if not arg2:
                                    revert with 0, 18
                                if arg2 * totalFees / arg2 != totalFees:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if arg2 * totalFees / 100 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg2 < arg2 * totalFees / 100:
                                    revert with 0, 17
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if arg2 * totalFees / 100 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
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
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[390 len 26] >> 48, 0
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
                require ext_code.size(dividendTrackerAddress)
                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), balanceOf[address(arg1)]
            else:
                if stor7:
                    if stor18[address(msg.sender)]:
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
                        if stor18[address(arg1)]:
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
                            if stor7:
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
                                if not arg2:
                                    if 0 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < 0:
                                        revert with 0, 17
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 17
                                    if balanceOf[this.address] > -1:
                                        revert with 0, 17
                                    if balanceOf[this.address] < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] = balanceOf[this.address]
                                    emit Transfer(0, msg.sender, this.address);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[390 len 26] >> 48, 0
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
                                    if not arg2:
                                        revert with 0, 18
                                    if arg2 * totalFees / arg2 != totalFees:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if arg2 * totalFees / 100 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < arg2 * totalFees / 100:
                                        revert with 0, 17
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 * totalFees / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
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
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[390 len 26] >> 48, 0
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
                    require ext_code.size(dividendTrackerAddress)
                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), balanceOf[address(arg1)]
                else:
                    if stor19[address(msg.sender)]:
                        if stor18[address(msg.sender)]:
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
                            if stor18[address(arg1)]:
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
                                if stor7:
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
                                    if not arg2:
                                        if 0 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < 0:
                                            revert with 0, 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 0, 17
                                        if balanceOf[this.address] > -1:
                                            revert with 0, 17
                                        if balanceOf[this.address] < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] = balanceOf[this.address]
                                        emit Transfer(0, msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[390 len 26] >> 48, 0
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
                                        if not arg2:
                                            revert with 0, 18
                                        if arg2 * totalFees / arg2 != totalFees:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if arg2 * totalFees / 100 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < arg2 * totalFees / 100:
                                            revert with 0, 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 * totalFees / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
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
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[390 len 26] >> 48, 0
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
                        require ext_code.size(dividendTrackerAddress)
                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), balanceOf[address(arg1)]
                    else:
                        if owner == msg.sender:
                            if stor18[address(msg.sender)]:
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
                                if stor18[address(arg1)]:
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
                                    if stor7:
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
                                        if not arg2:
                                            if 0 > arg2:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if arg2 < 0:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if 0 > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                                            if balanceOf[address(msg.sender)] < 0:
                                                revert with 0, 17
                                            if balanceOf[this.address] > -1:
                                                revert with 0, 17
                                            if balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = balanceOf[this.address]
                                            emit Transfer(0, msg.sender, this.address);
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[390 len 26] >> 48, 0
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
                                            if not arg2:
                                                revert with 0, 18
                                            if arg2 * totalFees / arg2 != totalFees:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if arg2 * totalFees / 100 > arg2:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if arg2 < arg2 * totalFees / 100:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg2 * totalFees / 100 > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
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
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[390 len 26] >> 48, 0
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
                            require ext_code.size(dividendTrackerAddress)
                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), balanceOf[address(arg1)]
                        else:
                            if owner == arg1:
                                if stor18[address(msg.sender)]:
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
                                    if stor18[address(arg1)]:
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
                                        if stor7:
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
                                            if not arg2:
                                                if 0 > arg2:
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if arg2 < 0:
                                                    revert with 0, 17
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not this.address:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if 0 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                                                if balanceOf[address(msg.sender)] < 0:
                                                    revert with 0, 17
                                                if balanceOf[this.address] > -1:
                                                    revert with 0, 17
                                                if balanceOf[this.address] < balanceOf[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] = balanceOf[this.address]
                                                emit Transfer(0, msg.sender, this.address);
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[390 len 26] >> 48, 0
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
                                                if not arg2:
                                                    revert with 0, 18
                                                if arg2 * totalFees / arg2 != totalFees:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                if arg2 * totalFees / 100 > arg2:
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if arg2 < arg2 * totalFees / 100:
                                                    revert with 0, 17
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not this.address:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if arg2 * totalFees / 100 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
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
                                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[390 len 26] >> 48, 0
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
                                require ext_code.size(dividendTrackerAddress)
                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), balanceOf[address(arg1)]
                            else:
                                stor7 = 1
                                if not balanceOf[this.address]:
                                    if not totalFees:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    mem[164] = this.address
                                    require ext_code.size(0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c)
                                    staticcall 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[160] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[ceil32(return_data.size) + 160] = 3
                                    mem[ceil32(return_data.size) + 192] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 224] = ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 256] = 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c
                                    if not this.address:
                                        mem[(2 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 292] = 32
                                        mem[(2 * ceil32(return_data.size)) + 324] = 36
                                        mem[(2 * ceil32(return_data.size)) + 356] = 'ERC20: approve from the zero add'
                                        mem[(2 * ceil32(return_data.size)) + 388] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                        revert with memory
                                          from (2 * ceil32(return_data.size)) + 288
                                           len ceil32(return_data.size) + 132
                                    if not uniswapV2RouterAddress:
                                        mem[(2 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 292] = 32
                                        mem[(2 * ceil32(return_data.size)) + 324] = 34
                                        mem[(2 * ceil32(return_data.size)) + 356] = 'ERC20: approve to the zero addre'
                                        mem[(2 * ceil32(return_data.size)) + 388] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                        revert with memory
                                          from (2 * ceil32(return_data.size)) + 288
                                           len ceil32(return_data.size) + 132
                                    allowance[address(this.address)][stor6].field_0 = 0 / totalFees
                                    mem[(2 * ceil32(return_data.size)) + 288] = 0 / totalFees
                                    emit Approval(mem[(2 * ceil32(return_data.size)) + 288 len ceil32(return_data.size) + 32], this.address, uniswapV2RouterAddress);
                                    mem[(2 * ceil32(return_data.size)) + 288] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 292] = 0 / totalFees
                                    mem[(2 * ceil32(return_data.size)) + 324] = 0
                                    mem[(2 * ceil32(return_data.size)) + 356] = 160
                                    mem[(2 * ceil32(return_data.size)) + 452] = 3
                                    idx = 0
                                    s = (2 * ceil32(return_data.size)) + 484
                                    t = ceil32(return_data.size) + 192
                                    while idx < mem[ceil32(return_data.size) + 160]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(2 * ceil32(return_data.size)) + 388] = this.address
                                    mem[(2 * ceil32(return_data.size)) + 420] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args 0 / totalFees, 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 452 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c)
                                    staticcall 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    require ext_code.size(0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c)
                                    call 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args _marketingWalletAddress, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not balanceOf[this.address]:
                                        if not totalFees:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        if 0 / totalFees / 2 > 0 / totalFees:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if 0 / totalFees < 0 / totalFees / 2:
                                            revert with 0, 17
                                        mem[(6 * ceil32(return_data.size)) + 576] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        mem[(6 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[(6 * ceil32(return_data.size)) + 608] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor6].field_0 = 0 / totalFees / 2
                                        allowance[address(this.address)][stor6].field_255 = 0
                                        emit Approval((0 / totalFees / 2), this.address, uniswapV2RouterAddress);
                                        mem[(7 * ceil32(return_data.size)) + 640] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                        mem[(7 * ceil32(return_data.size)) + 644] = 0 / totalFees / 2
                                        idx = 0
                                        s = (7 * ceil32(return_data.size)) + 836
                                        t = (6 * ceil32(return_data.size)) + 576
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args Mask(255, 1, 0 / totalFees), 0, 160, address(this.address), block.timestamp, 2, mem[(7 * ceil32(return_data.size)) + 836 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if eth.balance(this.address) > eth.balance(this.address):
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor6].field_0 = (0 / totalFees) - (0 / totalFees / 2)
                                        emit Approval(((0 / totalFees) - (0 / totalFees / 2)), this.address, uniswapV2RouterAddress);
                                        mem[(7 * ceil32(return_data.size)) + 772] = 0
                                        mem[(7 * ceil32(return_data.size)) + 804] = 0
                                        mem[(7 * ceil32(return_data.size)) + 836] = owner
                                        mem[(7 * ceil32(return_data.size)) + 868] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                             gas gas_remaining wei
                                            args address(this.address), (0 / totalFees) - (0 / totalFees / 2), 0, 0, owner, block.timestamp
                                        mem[(7 * ceil32(return_data.size)) + 704 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                            Mask(255, 1, 0 / totalFees),
                                                            0,
                                                            (0 / totalFees) - (0 / totalFees / 2),
                                                            mem[(9 * ceil32(return_data.size)) + 800 len 5 * ceil32(return_data.size)],
                                    else:
                                        if balanceOf[this.address] and liquidityFee > -1 / balanceOf[this.address]:
                                            revert with 0, 17
                                        if not balanceOf[this.address]:
                                            revert with 0, 18
                                        if balanceOf[this.address] * liquidityFee / balanceOf[this.address] != liquidityFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not totalFees:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        if balanceOf[this.address] * liquidityFee / totalFees / 2 > balanceOf[this.address] * liquidityFee / totalFees:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if balanceOf[this.address] * liquidityFee / totalFees < balanceOf[this.address] * liquidityFee / totalFees / 2:
                                            revert with 0, 17
                                        mem[(6 * ceil32(return_data.size)) + 576] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        mem[(6 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[(6 * ceil32(return_data.size)) + 608] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor6].field_0 = balanceOf[this.address] * liquidityFee / totalFees / 2
                                        allowance[address(this.address)][stor6].field_255 = 0
                                        emit Approval((balanceOf[this.address] * liquidityFee / totalFees / 2), this.address, uniswapV2RouterAddress);
                                        mem[(7 * ceil32(return_data.size)) + 640] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                        mem[(7 * ceil32(return_data.size)) + 644] = balanceOf[this.address] * liquidityFee / totalFees / 2
                                        idx = 0
                                        s = (7 * ceil32(return_data.size)) + 836
                                        t = (6 * ceil32(return_data.size)) + 576
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args Mask(255, 1, balanceOf[this.address] * liquidityFee / totalFees), 0, 160, address(this.address), block.timestamp, 2, mem[(7 * ceil32(return_data.size)) + 836 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if eth.balance(this.address) > eth.balance(this.address):
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor6].field_0 = (balanceOf[this.address] * liquidityFee / totalFees) - (balanceOf[this.address] * liquidityFee / totalFees / 2)
                                        emit Approval(((balanceOf[this.address] * liquidityFee / totalFees) - (balanceOf[this.address] * liquidityFee / totalFees / 2)), this.address, uniswapV2RouterAddress);
                                        mem[(7 * ceil32(return_data.size)) + 772] = 0
                                        mem[(7 * ceil32(return_data.size)) + 804] = 0
                                        mem[(7 * ceil32(return_data.size)) + 836] = owner
                                        mem[(7 * ceil32(return_data.size)) + 868] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                             gas gas_remaining wei
                                            args address(this.address), (balanceOf[this.address] * liquidityFee / totalFees) - (balanceOf[this.address] * liquidityFee / totalFees / 2), 0, 0, owner, block.timestamp
                                        mem[(7 * ceil32(return_data.size)) + 704 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                            Mask(255, 1, balanceOf[this.address] * liquidityFee / totalFees),
                                                            0,
                                                            (balanceOf[this.address] * liquidityFee / totalFees) - (balanceOf[this.address] * liquidityFee / totalFees / 2),
                                                            mem[(9 * ceil32(return_data.size)) + 800 len 5 * ceil32(return_data.size)],
                                    mem[(9 * ceil32(return_data.size)) + 736] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    mem[(9 * ceil32(return_data.size)) + 832] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(9 * ceil32(return_data.size)) + 768] = ext_call.return_data[12 len 20]
                                    mem[(9 * ceil32(return_data.size)) + 800] = 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    allowance[address(this.address)][stor6].field_0 = balanceOf[this.address]
                                    emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                    mem[(10 * ceil32(return_data.size)) + 832] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[(10 * ceil32(return_data.size)) + 836] = balanceOf[this.address]
                                    mem[(10 * ceil32(return_data.size)) + 900] = 160
                                    mem[(10 * ceil32(return_data.size)) + 996] = 3
                                    idx = 0
                                    s = (10 * ceil32(return_data.size)) + 1028
                                    t = (9 * ceil32(return_data.size)) + 736
                                    while idx < 3:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(10 * ceil32(return_data.size)) + 932] = this.address
                                    mem[(10 * ceil32(return_data.size)) + 964] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 3, mem[(10 * ceil32(return_data.size)) + 1028 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c)
                                    staticcall 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c)
                                    call 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args dividendTrackerAddress, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if ext_call.return_data[0]:
                                        require ext_code.size(dividendTrackerAddress)
                                        call dividendTrackerAddress.distributeBTCDividends(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit SendDividends(balanceOf[this.address], ext_call.return_data[0]);
                                    stor7 = 0
                                    if stor18[address(msg.sender)]:
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(12 * ceil32(return_data.size)) + 902 len 26] >> 48,
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
                                        if stor18[address(arg1)]:
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(12 * ceil32(return_data.size)) + 902 len 26] >> 48,
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
                                            if stor7:
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(12 * ceil32(return_data.size)) + 902 len 26] >> 48,
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
                                                if not arg2:
                                                    if 0 > arg2:
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                    if arg2 < 0:
                                                        revert with 0, 17
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if 0 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(12 * ceil32(return_data.size)) + 1030 len 26] >> 48,
                                                                    0
                                                    if balanceOf[address(msg.sender)] < 0:
                                                        revert with 0, 17
                                                    if balanceOf[this.address] > -1:
                                                        revert with 0, 17
                                                    if balanceOf[this.address] < balanceOf[this.address]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(this.address)] = balanceOf[this.address]
                                                    emit Transfer(0, msg.sender, this.address);
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(12 * ceil32(return_data.size)) + 1126 len 26] >> 48,
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
                                                    if not arg2:
                                                        revert with 0, 18
                                                    if arg2 * totalFees / arg2 != totalFees:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if arg2 * totalFees / 100 > arg2:
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
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
                                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(12 * ceil32(return_data.size)) + 1030 len 26] >> 48,
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
                                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(12 * ceil32(return_data.size)) + 1126 len 26] >> 48,
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
                                    require ext_code.size(dividendTrackerAddress)
                                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg1), balanceOf[address(arg1)]
                                else:
                                    if balanceOf[this.address] and marketingFee > -1 / balanceOf[this.address]:
                                        revert with 0, 17
                                    if not balanceOf[this.address]:
                                        revert with 0, 18
                                    if balanceOf[this.address] * marketingFee / balanceOf[this.address] != marketingFee:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    mem[96] = 26
                                    mem[128] = 'SafeMath: division by zero'
                                    if not totalFees:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    mem[164] = this.address
                                    require ext_code.size(0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c)
                                    staticcall 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[160] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[ceil32(return_data.size) + 160] = 3
                                    mem[ceil32(return_data.size) + 192] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 224] = ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 256] = 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c
                                    if not this.address:
                                        mem[(2 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 292] = 32
                                        mem[(2 * ceil32(return_data.size)) + 324] = 36
                                        mem[(2 * ceil32(return_data.size)) + 356] = 'ERC20: approve from the zero add'
                                        mem[(2 * ceil32(return_data.size)) + 388] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                        revert with memory
                                          from (2 * ceil32(return_data.size)) + 288
                                           len ceil32(return_data.size) + 132
                                    if not uniswapV2RouterAddress:
                                        mem[(2 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 292] = 32
                                        mem[(2 * ceil32(return_data.size)) + 324] = 34
                                        mem[(2 * ceil32(return_data.size)) + 356] = 'ERC20: approve to the zero addre'
                                        mem[(2 * ceil32(return_data.size)) + 388] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                        revert with memory
                                          from (2 * ceil32(return_data.size)) + 288
                                           len ceil32(return_data.size) + 132
                                    allowance[address(this.address)][stor6].field_0 = balanceOf[this.address] * marketingFee / totalFees
                                    mem[(2 * ceil32(return_data.size)) + 288] = balanceOf[this.address] * marketingFee / totalFees
                                    emit Approval(mem[(2 * ceil32(return_data.size)) + 288 len ceil32(return_data.size) + 32], this.address, uniswapV2RouterAddress);
                                    mem[(2 * ceil32(return_data.size)) + 288] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 292] = balanceOf[this.address] * marketingFee / totalFees
                                    mem[(2 * ceil32(return_data.size)) + 324] = 0
                                    mem[(2 * ceil32(return_data.size)) + 356] = 160
                                    mem[(2 * ceil32(return_data.size)) + 452] = 3
                                    idx = 0
                                    s = (2 * ceil32(return_data.size)) + 484
                                    t = ceil32(return_data.size) + 192
                                    while idx < mem[ceil32(return_data.size) + 160]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(2 * ceil32(return_data.size)) + 388] = this.address
                                    mem[(2 * ceil32(return_data.size)) + 420] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[this.address] * marketingFee / totalFees, 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 452 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(2 * ceil32(return_data.size)) + 292] = this.address
                                    require ext_code.size(0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c)
                                    staticcall 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(4 * ceil32(return_data.size)) + 288] = 30
                                    mem[(4 * ceil32(return_data.size)) + 320] = 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    mem[(4 * ceil32(return_data.size)) + 356] = _marketingWalletAddress
                                    mem[(4 * ceil32(return_data.size)) + 388] = 0
                                    require ext_code.size(0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c)
                                    call 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args _marketingWalletAddress, 0
                                    mem[(4 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if balanceOf[this.address]:
                                        if balanceOf[this.address] and liquidityFee > -1 / balanceOf[this.address]:
                                            revert with 0, 17
                                        if not balanceOf[this.address]:
                                            revert with 0, 18
                                        if balanceOf[this.address] * liquidityFee / balanceOf[this.address] != liquidityFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not totalFees:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        if balanceOf[this.address] * liquidityFee / totalFees / 2 > balanceOf[this.address] * liquidityFee / totalFees:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if balanceOf[this.address] * liquidityFee / totalFees < balanceOf[this.address] * liquidityFee / totalFees / 2:
                                            revert with 0, 17
                                        mem[(6 * ceil32(return_data.size)) + 576] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        mem[(6 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[(6 * ceil32(return_data.size)) + 608] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor6].field_0 = balanceOf[this.address] * liquidityFee / totalFees / 2
                                        allowance[address(this.address)][stor6].field_255 = 0
                                        emit Approval((balanceOf[this.address] * liquidityFee / totalFees / 2), this.address, uniswapV2RouterAddress);
                                        mem[(7 * ceil32(return_data.size)) + 640] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                        mem[(7 * ceil32(return_data.size)) + 644] = balanceOf[this.address] * liquidityFee / totalFees / 2
                                        idx = 0
                                        s = (7 * ceil32(return_data.size)) + 836
                                        t = (6 * ceil32(return_data.size)) + 576
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args Mask(255, 1, balanceOf[this.address] * liquidityFee / totalFees), 0, 160, address(this.address), block.timestamp, 2, mem[(7 * ceil32(return_data.size)) + 836 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if eth.balance(this.address) > eth.balance(this.address):
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor6].field_0 = (balanceOf[this.address] * liquidityFee / totalFees) - (balanceOf[this.address] * liquidityFee / totalFees / 2)
                                        emit Approval(((balanceOf[this.address] * liquidityFee / totalFees) - (balanceOf[this.address] * liquidityFee / totalFees / 2)), this.address, uniswapV2RouterAddress);
                                        mem[(7 * ceil32(return_data.size)) + 772] = 0
                                        mem[(7 * ceil32(return_data.size)) + 804] = 0
                                        mem[(7 * ceil32(return_data.size)) + 836] = owner
                                        mem[(7 * ceil32(return_data.size)) + 868] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                             gas gas_remaining wei
                                            args address(this.address), (balanceOf[this.address] * liquidityFee / totalFees) - (balanceOf[this.address] * liquidityFee / totalFees / 2), 0, 0, owner, block.timestamp
                                        mem[(7 * ceil32(return_data.size)) + 704 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                            Mask(255, 1, balanceOf[this.address] * liquidityFee / totalFees),
                                                            0,
                                                            (balanceOf[this.address] * liquidityFee / totalFees) - (balanceOf[this.address] * liquidityFee / totalFees / 2),
                                                            mem[(9 * ceil32(return_data.size)) + 800 len 5 * ceil32(return_data.size)],
                                        mem[(9 * ceil32(return_data.size)) + 736] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        mem[(9 * ceil32(return_data.size)) + 832] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[(9 * ceil32(return_data.size)) + 768] = ext_call.return_data[12 len 20]
                                        mem[(9 * ceil32(return_data.size)) + 800] = 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor6].field_0 = balanceOf[this.address]
                                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                        mem[(10 * ceil32(return_data.size)) + 832] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                        mem[(10 * ceil32(return_data.size)) + 836] = balanceOf[this.address]
                                        mem[(10 * ceil32(return_data.size)) + 900] = 160
                                        mem[(10 * ceil32(return_data.size)) + 996] = 3
                                        idx = 0
                                        s = (10 * ceil32(return_data.size)) + 1028
                                        t = (9 * ceil32(return_data.size)) + 736
                                        while idx < 3:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(10 * ceil32(return_data.size)) + 932] = this.address
                                        mem[(10 * ceil32(return_data.size)) + 964] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 3, mem[(10 * ceil32(return_data.size)) + 1028 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c)
                                        staticcall 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c)
                                        call 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args dividendTrackerAddress, ext_call.return_data[0], mem[(12 * ceil32(return_data.size)) + 900 len 5 * ceil32(return_data.size)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if ext_call.return_data[0]:
                                            require ext_code.size(dividendTrackerAddress)
                                            call dividendTrackerAddress.distributeBTCDividends(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit SendDividends(balanceOf[this.address], ext_call.return_data[0]);
                                        stor7 = 0
                                        if stor18[address(msg.sender)]:
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address', mem[(14 * ceil32(return_data.size)) + 964 len 9 * ceil32(return_data.size)]
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address', mem[(14 * ceil32(return_data.size)) + 964 len 9 * ceil32(return_data.size)]
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                mem[(14 * ceil32(return_data.size)) + 1034] = 0
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(14 * ceil32(return_data.size)) + 902 len 26] >> 48,
                                                            mem[(14 * ceil32(return_data.size)) + 1034 len (9 * ceil32(return_data.size)) + 26]
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[arg1] > !arg2:
                                                revert with 0, 17
                                            if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                                revert with 0, 'SafeMath: addition overflow', mem[(14 * ceil32(return_data.size)) + 1028 len 9 * ceil32(return_data.size)]
                                            balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                            require ext_code.size(dividendTrackerAddress)
                                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, balanceOf[address(msg.sender)], mem[(14 * ceil32(return_data.size)) + 996 len 9 * ceil32(return_data.size)]
                                            require ext_code.size(dividendTrackerAddress)
                                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(arg1), balanceOf[address(arg1)], mem[(14 * ceil32(return_data.size)) + 996 len 9 * ceil32(return_data.size)]
                                        else:
                                            if stor18[address(arg1)]:
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address', mem[(14 * ceil32(return_data.size)) + 964 len 9 * ceil32(return_data.size)]
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address', mem[(14 * ceil32(return_data.size)) + 964 len 9 * ceil32(return_data.size)]
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    mem[(14 * ceil32(return_data.size)) + 1034] = 0
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(14 * ceil32(return_data.size)) + 902 len 26] >> 48,
                                                                mem[(14 * ceil32(return_data.size)) + 1034 len (9 * ceil32(return_data.size)) + 26]
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[arg1] > !arg2:
                                                    revert with 0, 17
                                                if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                                    revert with 0, 'SafeMath: addition overflow', mem[(14 * ceil32(return_data.size)) + 1028 len 9 * ceil32(return_data.size)]
                                                balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, balanceOf[address(msg.sender)], mem[(14 * ceil32(return_data.size)) + 996 len 9 * ceil32(return_data.size)]
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg1), balanceOf[address(arg1)], mem[(14 * ceil32(return_data.size)) + 996 len 9 * ceil32(return_data.size)]
                                            else:
                                                if stor7:
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address', mem[(14 * ceil32(return_data.size)) + 964 len 9 * ceil32(return_data.size)]
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address', mem[(14 * ceil32(return_data.size)) + 964 len 9 * ceil32(return_data.size)]
                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                        mem[(14 * ceil32(return_data.size)) + 1034] = 0
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(14 * ceil32(return_data.size)) + 902 len 26] >> 48,
                                                                    mem[(14 * ceil32(return_data.size)) + 1034 len (9 * ceil32(return_data.size)) + 26]
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !arg2:
                                                        revert with 0, 17
                                                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                                        revert with 0, 'SafeMath: addition overflow', mem[(14 * ceil32(return_data.size)) + 1028 len 9 * ceil32(return_data.size)]
                                                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args msg.sender, balanceOf[address(msg.sender)], mem[(14 * ceil32(return_data.size)) + 996 len 9 * ceil32(return_data.size)]
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg1), balanceOf[address(arg1)], mem[(14 * ceil32(return_data.size)) + 996 len 9 * ceil32(return_data.size)]
                                                else:
                                                    if not arg2:
                                                        if 0 > arg2:
                                                            mem[(14 * ceil32(return_data.size)) + 1058] = 0
                                                            revert with 0, 'SafeMath: subtraction overflow', mem[(14 * ceil32(return_data.size)) + 1058 len (9 * ceil32(return_data.size)) + 2]
                                                        if arg2 < 0:
                                                            revert with 0, 17
                                                        if not msg.sender:
                                                            revert with 0, 
                                                                        'ERC20: transfer from the zero address',
                                                                        mem[(14 * ceil32(return_data.size)) + 1092 len 9 * ceil32(return_data.size)]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer to the zero address', mem[(14 * ceil32(return_data.size)) + 1092 len 9 * ceil32(return_data.size)]
                                                        if 0 > balanceOf[address(msg.sender)]:
                                                            mem[(14 * ceil32(return_data.size)) + 1162] = 0
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(14 * ceil32(return_data.size)) + 1030 len 26] >> 48,
                                                                        mem[(14 * ceil32(return_data.size)) + 1162 len (9 * ceil32(return_data.size)) + 26]
                                                        if balanceOf[address(msg.sender)] < 0:
                                                            revert with 0, 17
                                                        if balanceOf[this.address] > -1:
                                                            revert with 0, 17
                                                        if balanceOf[this.address] < balanceOf[this.address]:
                                                            revert with 0, 'SafeMath: addition overflow', mem[(14 * ceil32(return_data.size)) + 1156 len 9 * ceil32(return_data.size)]
                                                        balanceOf[address(this.address)] = balanceOf[this.address]
                                                        emit Transfer(0, msg.sender, this.address);
                                                        if not msg.sender:
                                                            revert with 0, 
                                                                        'ERC20: transfer from the zero address',
                                                                        mem[(14 * ceil32(return_data.size)) + 1188 len 9 * ceil32(return_data.size)]
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer to the zero address', mem[(14 * ceil32(return_data.size)) + 1188 len 9 * ceil32(return_data.size)]
                                                        if arg2 > balanceOf[address(msg.sender)]:
                                                            mem[(14 * ceil32(return_data.size)) + 1258] = 0
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(14 * ceil32(return_data.size)) + 1126 len 26] >> 48,
                                                                        mem[(14 * ceil32(return_data.size)) + 1258 len (9 * ceil32(return_data.size)) + 26]
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[arg1] > !arg2:
                                                            revert with 0, 17
                                                        if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                                            revert with 0, 'SafeMath: addition overflow', mem[(14 * ceil32(return_data.size)) + 1252 len 9 * ceil32(return_data.size)]
                                                        balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if arg2 and totalFees > -1 / arg2:
                                                            revert with 0, 17
                                                        if not arg2:
                                                            revert with 0, 18
                                                        if arg2 * totalFees / arg2 != totalFees:
                                                            revert with 0, 'SafeMath: multiplication overflow', mem[(14 * ceil32(return_data.size)) + 964 len 9 * ceil32(return_data.size)]
                                                        if arg2 * totalFees / 100 > arg2:
                                                            mem[(14 * ceil32(return_data.size)) + 1058] = 0
                                                            revert with 0, 'SafeMath: subtraction overflow', mem[(14 * ceil32(return_data.size)) + 1058 len (9 * ceil32(return_data.size)) + 2]
                                                        if arg2 < arg2 * totalFees / 100:
                                                            revert with 0, 17
                                                        if not msg.sender:
                                                            revert with 0, 
                                                                        'ERC20: transfer from the zero address',
                                                                        mem[(14 * ceil32(return_data.size)) + 1092 len 9 * ceil32(return_data.size)]
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer to the zero address', mem[(14 * ceil32(return_data.size)) + 1092 len 9 * ceil32(return_data.size)]
                                                        if arg2 * totalFees / 100 > balanceOf[address(msg.sender)]:
                                                            mem[(14 * ceil32(return_data.size)) + 1162] = 0
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(14 * ceil32(return_data.size)) + 1030 len 26] >> 48,
                                                                        mem[(14 * ceil32(return_data.size)) + 1162 len (9 * ceil32(return_data.size)) + 26]
                                                        if balanceOf[address(msg.sender)] < arg2 * totalFees / 100:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)] -= arg2 * totalFees / 100
                                                        if balanceOf[this.address] > !(arg2 * totalFees / 100):
                                                            revert with 0, 17
                                                        if balanceOf[this.address] + (arg2 * totalFees / 100) < balanceOf[this.address]:
                                                            revert with 0, 'SafeMath: addition overflow', mem[(14 * ceil32(return_data.size)) + 1156 len 9 * ceil32(return_data.size)]
                                                        balanceOf[address(this.address)] = balanceOf[this.address] + (arg2 * totalFees / 100)
                                                        emit Transfer((arg2 * totalFees / 100), msg.sender, this.address);
                                                        if not msg.sender:
                                                            revert with 0, 
                                                                        'ERC20: transfer from the zero address',
                                                                        mem[(14 * ceil32(return_data.size)) + 1188 len 9 * ceil32(return_data.size)]
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer to the zero address', mem[(14 * ceil32(return_data.size)) + 1188 len 9 * ceil32(return_data.size)]
                                                        if arg2 - (arg2 * totalFees / 100) > balanceOf[address(msg.sender)]:
                                                            mem[(14 * ceil32(return_data.size)) + 1258] = 0
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(14 * ceil32(return_data.size)) + 1126 len 26] >> 48,
                                                                        mem[(14 * ceil32(return_data.size)) + 1258 len (9 * ceil32(return_data.size)) + 26]
                                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * totalFees / 100):
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * totalFees / 100)
                                                        if balanceOf[arg1] > !(arg2 - (arg2 * totalFees / 100)):
                                                            revert with 0, 17
                                                        if balanceOf[arg1] + arg2 - (arg2 * totalFees / 100) < balanceOf[arg1]:
                                                            revert with 0, 'SafeMath: addition overflow', mem[(14 * ceil32(return_data.size)) + 1252 len 9 * ceil32(return_data.size)]
                                                        balanceOf[address(arg1)] = balanceOf[arg1] + arg2 - (arg2 * totalFees / 100)
                                                        emit Transfer((arg2 - (arg2 * totalFees / 100)), msg.sender, arg1);
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args msg.sender, balanceOf[address(msg.sender)], mem[(14 * ceil32(return_data.size)) + 1220 len 9 * ceil32(return_data.size)]
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg1), balanceOf[address(arg1)], mem[(14 * ceil32(return_data.size)) + 1220 len 9 * ceil32(return_data.size)]
                                    else:
                                        mem[(6 * ceil32(return_data.size)) + 352] = 26
                                        mem[(6 * ceil32(return_data.size)) + 384] = 'SafeMath: division by zero'
                                        if not totalFees:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        mem[(6 * ceil32(return_data.size)) + 416] = 26
                                        mem[(6 * ceil32(return_data.size)) + 448] = 'SafeMath: division by zero'
                                        mem[(6 * ceil32(return_data.size)) + 480] = 30
                                        mem[(6 * ceil32(return_data.size)) + 512] = 'SafeMath: subtraction overflow'
                                        if 0 / totalFees / 2 > 0 / totalFees:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if 0 / totalFees < 0 / totalFees / 2:
                                            revert with 0, 17
                                        mem[(6 * ceil32(return_data.size)) + 544] = 2
                                        mem[(6 * ceil32(return_data.size)) + 576] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        mem[(6 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[(6 * ceil32(return_data.size)) + 608] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor6].field_0 = 0 / totalFees / 2
                                        allowance[address(this.address)][stor6].field_255 = 0
                                        emit Approval((0 / totalFees / 2), this.address, uniswapV2RouterAddress);
                                        mem[(7 * ceil32(return_data.size)) + 640] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                        mem[(7 * ceil32(return_data.size)) + 644] = 0 / totalFees / 2
                                        mem[(7 * ceil32(return_data.size)) + 676] = 0
                                        idx = 0
                                        s = (7 * ceil32(return_data.size)) + 836
                                        t = (6 * ceil32(return_data.size)) + 576
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args Mask(255, 1, 0 / totalFees), 0, 160, address(this.address), block.timestamp, 2, mem[(7 * ceil32(return_data.size)) + 836 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(7 * ceil32(return_data.size)) + 640] = 30
                                        mem[(7 * ceil32(return_data.size)) + 672] = 'SafeMath: subtraction overflow'
                                        if eth.balance(this.address) > eth.balance(this.address):
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor6].field_0 = (0 / totalFees) - (0 / totalFees / 2)
                                        emit Approval(((0 / totalFees) - (0 / totalFees / 2)), this.address, uniswapV2RouterAddress);
                                        mem[(7 * ceil32(return_data.size)) + 708] = this.address
                                        mem[(7 * ceil32(return_data.size)) + 740] = (0 / totalFees) - (0 / totalFees / 2)
                                        mem[(7 * ceil32(return_data.size)) + 772] = 0
                                        mem[(7 * ceil32(return_data.size)) + 804] = 0
                                        mem[(7 * ceil32(return_data.size)) + 836] = owner
                                        mem[(7 * ceil32(return_data.size)) + 868] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                             gas gas_remaining wei
                                            args address(this.address), (0 / totalFees) - (0 / totalFees / 2), 0, 0, owner, block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        emit SwapAndLiquify(Mask(255, 1, 0 / totalFees), 0, (0 / totalFees) - (0 / totalFees / 2));
                                        mem[(8 * ceil32(return_data.size)) + 704] = 3
                                        mem[(8 * ceil32(return_data.size)) + 736] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        mem[(8 * ceil32(return_data.size)) + 832] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = (10 * ceil32(return_data.size)) + 832
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[(8 * ceil32(return_data.size)) + 768] = ext_call.return_data[12 len 20]
                                        mem[(8 * ceil32(return_data.size)) + 800] = 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        mem[0] = uniswapV2RouterAddress
                                        mem[32] = sha3(address(this.address), 1)
                                        allowance[address(this.address)][stor6].field_0 = balanceOf[this.address]
                                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                        mem[(10 * ceil32(return_data.size)) + 832] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                        mem[(10 * ceil32(return_data.size)) + 836] = balanceOf[this.address]
                                        mem[(10 * ceil32(return_data.size)) + 868] = 0
                                        mem[(10 * ceil32(return_data.size)) + 900] = 160
                                        mem[(10 * ceil32(return_data.size)) + 996] = 3
                                        idx = 0
                                        s = (10 * ceil32(return_data.size)) + 1028
                                        t = (8 * ceil32(return_data.size)) + 736
                                        while idx < mem[(8 * ceil32(return_data.size)) + 704]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(10 * ceil32(return_data.size)) + 932] = this.address
                                        mem[(10 * ceil32(return_data.size)) + 964] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[(10 * ceil32(return_data.size)) + 996 len (32 * mem[(8 * ceil32(return_data.size)) + 704]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c)
                                        staticcall 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c)
                                        call 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args dividendTrackerAddress, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if ext_call.return_data[0]:
                                            require ext_code.size(dividendTrackerAddress)
                                            call dividendTrackerAddress.distributeBTCDividends(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit SendDividends(balanceOf[this.address], ext_call.return_data[0]);
                                        stor7 = 0
                                        if stor18[address(msg.sender)]:
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(14 * ceil32(return_data.size)) + 902 len 26] >> 48,
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
                                            if stor18[address(arg1)]:
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(14 * ceil32(return_data.size)) + 902 len 26] >> 48,
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
                                                if stor7:
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(14 * ceil32(return_data.size)) + 902 len 26] >> 48,
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
                                                    if not arg2:
                                                        if 0 > arg2:
                                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                                        if arg2 < 0:
                                                            revert with 0, 17
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if 0 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(14 * ceil32(return_data.size)) + 1030 len 26] >> 48,
                                                                        0
                                                        if balanceOf[address(msg.sender)] < 0:
                                                            revert with 0, 17
                                                        if balanceOf[this.address] > -1:
                                                            revert with 0, 17
                                                        if balanceOf[this.address] < balanceOf[this.address]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(this.address)] = balanceOf[this.address]
                                                        emit Transfer(0, msg.sender, this.address);
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if arg2 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(14 * ceil32(return_data.size)) + 1126 len 26] >> 48,
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
                                                        if not arg2:
                                                            revert with 0, 18
                                                        if arg2 * totalFees / arg2 != totalFees:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        if arg2 * totalFees / 100 > arg2:
                                                            revert with 0, 'SafeMath: subtraction overflow', 0
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
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(14 * ceil32(return_data.size)) + 1030 len 26] >> 48,
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
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(14 * ceil32(return_data.size)) + 1126 len 26] >> 48,
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
                if balanceOf[this.address] < swapTokensAtAmount:
                    if stor18[address(msg.sender)]:
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
                        if stor18[address(arg1)]:
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
                            if stor7:
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
                                if not arg2:
                                    if 0 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < 0:
                                        revert with 0, 17
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 17
                                    if balanceOf[this.address] > -1:
                                        revert with 0, 17
                                    if balanceOf[this.address] < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] = balanceOf[this.address]
                                    emit Transfer(0, msg.sender, this.address);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[390 len 26] >> 48, 0
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
                                    if not arg2:
                                        revert with 0, 18
                                    if arg2 * totalFees / arg2 != totalFees:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if arg2 * totalFees / 100 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < arg2 * totalFees / 100:
                                        revert with 0, 17
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 * totalFees / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
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
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[390 len 26] >> 48, 0
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
                    require ext_code.size(dividendTrackerAddress)
                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), balanceOf[address(arg1)]
                else:
                    if stor7:
                        if stor18[address(msg.sender)]:
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
                            if stor18[address(arg1)]:
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
                                if stor7:
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
                                    if not arg2:
                                        if 0 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < 0:
                                            revert with 0, 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 0, 17
                                        if balanceOf[this.address] > -1:
                                            revert with 0, 17
                                        if balanceOf[this.address] < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] = balanceOf[this.address]
                                        emit Transfer(0, msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[390 len 26] >> 48, 0
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
                                        if not arg2:
                                            revert with 0, 18
                                        if arg2 * totalFees / arg2 != totalFees:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if arg2 * totalFees / 100 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < arg2 * totalFees / 100:
                                            revert with 0, 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 * totalFees / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
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
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[390 len 26] >> 48, 0
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
                        require ext_code.size(dividendTrackerAddress)
                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), balanceOf[address(arg1)]
                    else:
                        if stor19[address(msg.sender)]:
                            if stor18[address(msg.sender)]:
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
                                if stor18[address(arg1)]:
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
                                    if stor7:
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
                                        if not arg2:
                                            if 0 > arg2:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if arg2 < 0:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if 0 > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                                            if balanceOf[address(msg.sender)] < 0:
                                                revert with 0, 17
                                            if balanceOf[this.address] > -1:
                                                revert with 0, 17
                                            if balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = balanceOf[this.address]
                                            emit Transfer(0, msg.sender, this.address);
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[390 len 26] >> 48, 0
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
                                            if not arg2:
                                                revert with 0, 18
                                            if arg2 * totalFees / arg2 != totalFees:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if arg2 * totalFees / 100 > arg2:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if arg2 < arg2 * totalFees / 100:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg2 * totalFees / 100 > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
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
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[390 len 26] >> 48, 0
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
                            require ext_code.size(dividendTrackerAddress)
                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), balanceOf[address(arg1)]
                        else:
                            if owner == msg.sender:
                                if stor18[address(msg.sender)]:
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
                                    if stor18[address(arg1)]:
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
                                        if stor7:
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
                                            if not arg2:
                                                if 0 > arg2:
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if arg2 < 0:
                                                    revert with 0, 17
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not this.address:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if 0 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                                                if balanceOf[address(msg.sender)] < 0:
                                                    revert with 0, 17
                                                if balanceOf[this.address] > -1:
                                                    revert with 0, 17
                                                if balanceOf[this.address] < balanceOf[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] = balanceOf[this.address]
                                                emit Transfer(0, msg.sender, this.address);
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[390 len 26] >> 48, 0
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
                                                if not arg2:
                                                    revert with 0, 18
                                                if arg2 * totalFees / arg2 != totalFees:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                if arg2 * totalFees / 100 > arg2:
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if arg2 < arg2 * totalFees / 100:
                                                    revert with 0, 17
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not this.address:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if arg2 * totalFees / 100 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
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
                                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[390 len 26] >> 48, 0
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
                                require ext_code.size(dividendTrackerAddress)
                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), balanceOf[address(arg1)]
                            else:
                                if owner == arg1:
                                    if stor18[address(msg.sender)]:
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
                                        if stor18[address(arg1)]:
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
                                            if stor7:
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
                                                if not arg2:
                                                    if 0 > arg2:
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                    if arg2 < 0:
                                                        revert with 0, 17
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if 0 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                                                    if balanceOf[address(msg.sender)] < 0:
                                                        revert with 0, 17
                                                    if balanceOf[this.address] > -1:
                                                        revert with 0, 17
                                                    if balanceOf[this.address] < balanceOf[this.address]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(this.address)] = balanceOf[this.address]
                                                    emit Transfer(0, msg.sender, this.address);
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[390 len 26] >> 48, 0
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
                                                    if not arg2:
                                                        revert with 0, 18
                                                    if arg2 * totalFees / arg2 != totalFees:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                    if arg2 * totalFees / 100 > arg2:
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                    if arg2 < arg2 * totalFees / 100:
                                                        revert with 0, 17
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if arg2 * totalFees / 100 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
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
                                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[390 len 26] >> 48, 0
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
                                    require ext_code.size(dividendTrackerAddress)
                                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg1), balanceOf[address(arg1)]
                                else:
                                    stor7 = 1
                                    if balanceOf[this.address]:
                                        if balanceOf[this.address] and marketingFee > -1 / balanceOf[this.address]:
                                            revert with 0, 17
                                        if not balanceOf[this.address]:
                                            revert with 0, 18
                                        if balanceOf[this.address] * marketingFee / balanceOf[this.address] != marketingFee:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        mem[96] = 26
                                        mem[128] = 'SafeMath: division by zero'
                                        if not totalFees:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        mem[164] = this.address
                                        require ext_code.size(0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c)
                                        staticcall 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[160] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[ceil32(return_data.size) + 160] = 3
                                        mem[ceil32(return_data.size) + 192] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[ceil32(return_data.size) + 224] = ext_call.return_data[12 len 20]
                                        mem[ceil32(return_data.size) + 256] = 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c
                                        if not this.address:
                                            mem[(2 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(2 * ceil32(return_data.size)) + 292] = 32
                                            mem[(2 * ceil32(return_data.size)) + 324] = 36
                                            mem[(2 * ceil32(return_data.size)) + 356] = 'ERC20: approve from the zero add'
                                            mem[(2 * ceil32(return_data.size)) + 388] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                            revert with memory
                                              from (2 * ceil32(return_data.size)) + 288
                                               len ceil32(return_data.size) + 132
                                        if not uniswapV2RouterAddress:
                                            mem[(2 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(2 * ceil32(return_data.size)) + 292] = 32
                                            mem[(2 * ceil32(return_data.size)) + 324] = 34
                                            mem[(2 * ceil32(return_data.size)) + 356] = 'ERC20: approve to the zero addre'
                                            mem[(2 * ceil32(return_data.size)) + 388] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                            revert with memory
                                              from (2 * ceil32(return_data.size)) + 288
                                               len ceil32(return_data.size) + 132
                                        allowance[address(this.address)][stor6].field_0 = balanceOf[this.address] * marketingFee / totalFees
                                        mem[(2 * ceil32(return_data.size)) + 288] = balanceOf[this.address] * marketingFee / totalFees
                                        emit Approval(mem[(2 * ceil32(return_data.size)) + 288 len ceil32(return_data.size) + 32], this.address, uniswapV2RouterAddress);
                                        mem[(2 * ceil32(return_data.size)) + 288] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 292] = balanceOf[this.address] * marketingFee / totalFees
                                        mem[(2 * ceil32(return_data.size)) + 324] = 0
                                        mem[(2 * ceil32(return_data.size)) + 356] = 160
                                        mem[(2 * ceil32(return_data.size)) + 452] = 3
                                        idx = 0
                                        s = (2 * ceil32(return_data.size)) + 484
                                        t = ceil32(return_data.size) + 192
                                        while idx < mem[ceil32(return_data.size) + 160]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(2 * ceil32(return_data.size)) + 388] = this.address
                                        mem[(2 * ceil32(return_data.size)) + 420] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args balanceOf[this.address] * marketingFee / totalFees, 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 452 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(2 * ceil32(return_data.size)) + 292] = this.address
                                        require ext_code.size(0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c)
                                        staticcall 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(4 * ceil32(return_data.size)) + 288] = 30
                                        mem[(4 * ceil32(return_data.size)) + 320] = 'SafeMath: subtraction overflow'
                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        mem[(4 * ceil32(return_data.size)) + 356] = _marketingWalletAddress
                                        mem[(4 * ceil32(return_data.size)) + 388] = 0
                                        require ext_code.size(0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c)
                                        call 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args _marketingWalletAddress, 0
                                        mem[(4 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if balanceOf[this.address]:
                                            if balanceOf[this.address] and liquidityFee > -1 / balanceOf[this.address]:
                                                revert with 0, 17
                                            if not balanceOf[this.address]:
                                                revert with 0, 18
                                            if balanceOf[this.address] * liquidityFee / balanceOf[this.address] != liquidityFee:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if not totalFees:
                                                revert with 0, 'SafeMath: division by zero', 0
                                            if balanceOf[this.address] * liquidityFee / totalFees / 2 > balanceOf[this.address] * liquidityFee / totalFees:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if balanceOf[this.address] * liquidityFee / totalFees < balanceOf[this.address] * liquidityFee / totalFees / 2:
                                                revert with 0, 17
                                            mem[(6 * ceil32(return_data.size)) + 576] = this.address
                                            require ext_code.size(uniswapV2RouterAddress)
                                            staticcall uniswapV2RouterAddress.WETH() with:
                                                    gas gas_remaining wei
                                            mem[(6 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[(6 * ceil32(return_data.size)) + 608] = ext_call.return_data[12 len 20]
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            if not uniswapV2RouterAddress:
                                                revert with 0, 'ERC20: approve to the zero address'
                                            allowance[address(this.address)][stor6].field_0 = balanceOf[this.address] * liquidityFee / totalFees / 2
                                            allowance[address(this.address)][stor6].field_255 = 0
                                            emit Approval((balanceOf[this.address] * liquidityFee / totalFees / 2), this.address, uniswapV2RouterAddress);
                                            mem[(7 * ceil32(return_data.size)) + 640] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                            mem[(7 * ceil32(return_data.size)) + 644] = balanceOf[this.address] * liquidityFee / totalFees / 2
                                            idx = 0
                                            s = (7 * ceil32(return_data.size)) + 836
                                            t = (6 * ceil32(return_data.size)) + 576
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(uniswapV2RouterAddress)
                                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args Mask(255, 1, balanceOf[this.address] * liquidityFee / totalFees), 0, 160, address(this.address), block.timestamp, 2, mem[(7 * ceil32(return_data.size)) + 836 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if eth.balance(this.address) > eth.balance(this.address):
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            if not uniswapV2RouterAddress:
                                                revert with 0, 'ERC20: approve to the zero address'
                                            allowance[address(this.address)][stor6].field_0 = (balanceOf[this.address] * liquidityFee / totalFees) - (balanceOf[this.address] * liquidityFee / totalFees / 2)
                                            emit Approval(((balanceOf[this.address] * liquidityFee / totalFees) - (balanceOf[this.address] * liquidityFee / totalFees / 2)), this.address, uniswapV2RouterAddress);
                                            mem[(7 * ceil32(return_data.size)) + 772] = 0
                                            mem[(7 * ceil32(return_data.size)) + 804] = 0
                                            mem[(7 * ceil32(return_data.size)) + 836] = owner
                                            mem[(7 * ceil32(return_data.size)) + 868] = block.timestamp
                                            require ext_code.size(uniswapV2RouterAddress)
                                            call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                 gas gas_remaining wei
                                                args address(this.address), (balanceOf[this.address] * liquidityFee / totalFees) - (balanceOf[this.address] * liquidityFee / totalFees / 2), 0, 0, owner, block.timestamp
                                            mem[(7 * ceil32(return_data.size)) + 704 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                Mask(255, 1, balanceOf[this.address] * liquidityFee / totalFees),
                                                                0,
                                                                (balanceOf[this.address] * liquidityFee / totalFees) - (balanceOf[this.address] * liquidityFee / totalFees / 2),
                                                                mem[(9 * ceil32(return_data.size)) + 800 len 5 * ceil32(return_data.size)],
                                            mem[(9 * ceil32(return_data.size)) + 736] = this.address
                                            require ext_code.size(uniswapV2RouterAddress)
                                            staticcall uniswapV2RouterAddress.WETH() with:
                                                    gas gas_remaining wei
                                            mem[(9 * ceil32(return_data.size)) + 832] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[(9 * ceil32(return_data.size)) + 768] = ext_call.return_data[12 len 20]
                                            mem[(9 * ceil32(return_data.size)) + 800] = 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            if not uniswapV2RouterAddress:
                                                revert with 0, 'ERC20: approve to the zero address'
                                            allowance[address(this.address)][stor6].field_0 = balanceOf[this.address]
                                            emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                            mem[(10 * ceil32(return_data.size)) + 832] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                            mem[(10 * ceil32(return_data.size)) + 836] = balanceOf[this.address]
                                            mem[(10 * ceil32(return_data.size)) + 900] = 160
                                            mem[(10 * ceil32(return_data.size)) + 996] = 3
                                            idx = 0
                                            s = (10 * ceil32(return_data.size)) + 1028
                                            t = (9 * ceil32(return_data.size)) + 736
                                            while idx < 3:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[(10 * ceil32(return_data.size)) + 932] = this.address
                                            mem[(10 * ceil32(return_data.size)) + 964] = block.timestamp
                                            require ext_code.size(uniswapV2RouterAddress)
                                            call uniswapV2RouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 3, mem[(10 * ceil32(return_data.size)) + 1028 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c)
                                            staticcall 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c)
                                            call 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args dividendTrackerAddress, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if ext_call.return_data[0]:
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.distributeBTCDividends(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                emit SendDividends(balanceOf[this.address], ext_call.return_data[0]);
                                            stor7 = 0
                                            if stor18[address(msg.sender)]:
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(12 * ceil32(return_data.size)) + 902 len 26] >> 48,
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
                                                if stor18[address(arg1)]:
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(12 * ceil32(return_data.size)) + 902 len 26] >> 48,
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
                                                    if stor7:
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if arg2 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(12 * ceil32(return_data.size)) + 902 len 26] >> 48,
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
                                                        if not arg2:
                                                            if 0 > arg2:
                                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                                            if arg2 < 0:
                                                                revert with 0, 17
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if 0 > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(12 * ceil32(return_data.size)) + 1030 len 26] >> 48,
                                                                            0
                                                            if balanceOf[address(msg.sender)] < 0:
                                                                revert with 0, 17
                                                            if balanceOf[this.address] > -1:
                                                                revert with 0, 17
                                                            if balanceOf[this.address] < balanceOf[this.address]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(this.address)] = balanceOf[this.address]
                                                            emit Transfer(0, msg.sender, this.address);
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if arg2 > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(12 * ceil32(return_data.size)) + 1126 len 26] >> 48,
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
                                                            if not arg2:
                                                                revert with 0, 18
                                                            if arg2 * totalFees / arg2 != totalFees:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if arg2 * totalFees / 100 > arg2:
                                                                revert with 0, 'SafeMath: subtraction overflow', 0
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
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(12 * ceil32(return_data.size)) + 1030 len 26] >> 48,
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
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(12 * ceil32(return_data.size)) + 1126 len 26] >> 48,
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
                                            mem[(6 * ceil32(return_data.size)) + 352] = 26
                                            mem[(6 * ceil32(return_data.size)) + 384] = 'SafeMath: division by zero'
                                            if not totalFees:
                                                revert with 0, 'SafeMath: division by zero', 0
                                            mem[(6 * ceil32(return_data.size)) + 416] = 26
                                            mem[(6 * ceil32(return_data.size)) + 448] = 'SafeMath: division by zero'
                                            mem[(6 * ceil32(return_data.size)) + 480] = 30
                                            mem[(6 * ceil32(return_data.size)) + 512] = 'SafeMath: subtraction overflow'
                                            if 0 / totalFees / 2 > 0 / totalFees:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if 0 / totalFees < 0 / totalFees / 2:
                                                revert with 0, 17
                                            mem[(6 * ceil32(return_data.size)) + 544] = 2
                                            mem[(6 * ceil32(return_data.size)) + 576] = this.address
                                            require ext_code.size(uniswapV2RouterAddress)
                                            staticcall uniswapV2RouterAddress.WETH() with:
                                                    gas gas_remaining wei
                                            mem[(6 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[(6 * ceil32(return_data.size)) + 608] = ext_call.return_data[12 len 20]
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            if not uniswapV2RouterAddress:
                                                revert with 0, 'ERC20: approve to the zero address'
                                            allowance[address(this.address)][stor6].field_0 = 0 / totalFees / 2
                                            allowance[address(this.address)][stor6].field_255 = 0
                                            emit Approval((0 / totalFees / 2), this.address, uniswapV2RouterAddress);
                                            mem[(7 * ceil32(return_data.size)) + 640] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                            mem[(7 * ceil32(return_data.size)) + 644] = 0 / totalFees / 2
                                            mem[(7 * ceil32(return_data.size)) + 676] = 0
                                            idx = 0
                                            s = (7 * ceil32(return_data.size)) + 836
                                            t = (6 * ceil32(return_data.size)) + 576
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(uniswapV2RouterAddress)
                                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args Mask(255, 1, 0 / totalFees), 0, 160, address(this.address), block.timestamp, 2, mem[(7 * ceil32(return_data.size)) + 836 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(7 * ceil32(return_data.size)) + 640] = 30
                                            mem[(7 * ceil32(return_data.size)) + 672] = 'SafeMath: subtraction overflow'
                                            if eth.balance(this.address) > eth.balance(this.address):
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            if not uniswapV2RouterAddress:
                                                revert with 0, 'ERC20: approve to the zero address'
                                            allowance[address(this.address)][stor6].field_0 = (0 / totalFees) - (0 / totalFees / 2)
                                            emit Approval(((0 / totalFees) - (0 / totalFees / 2)), this.address, uniswapV2RouterAddress);
                                            mem[(7 * ceil32(return_data.size)) + 708] = this.address
                                            mem[(7 * ceil32(return_data.size)) + 740] = (0 / totalFees) - (0 / totalFees / 2)
                                            mem[(7 * ceil32(return_data.size)) + 772] = 0
                                            mem[(7 * ceil32(return_data.size)) + 804] = 0
                                            mem[(7 * ceil32(return_data.size)) + 836] = owner
                                            mem[(7 * ceil32(return_data.size)) + 868] = block.timestamp
                                            require ext_code.size(uniswapV2RouterAddress)
                                            call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                 gas gas_remaining wei
                                                args address(this.address), (0 / totalFees) - (0 / totalFees / 2), 0, 0, owner, block.timestamp
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            emit SwapAndLiquify(Mask(255, 1, 0 / totalFees), 0, (0 / totalFees) - (0 / totalFees / 2));
                                            mem[(8 * ceil32(return_data.size)) + 704] = 3
                                            mem[(8 * ceil32(return_data.size)) + 736] = this.address
                                            require ext_code.size(uniswapV2RouterAddress)
                                            staticcall uniswapV2RouterAddress.WETH() with:
                                                    gas gas_remaining wei
                                            mem[(8 * ceil32(return_data.size)) + 832] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = (10 * ceil32(return_data.size)) + 832
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[(8 * ceil32(return_data.size)) + 768] = ext_call.return_data[12 len 20]
                                            mem[(8 * ceil32(return_data.size)) + 800] = 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            if not uniswapV2RouterAddress:
                                                revert with 0, 'ERC20: approve to the zero address'
                                            mem[0] = uniswapV2RouterAddress
                                            mem[32] = sha3(address(this.address), 1)
                                            allowance[address(this.address)][stor6].field_0 = balanceOf[this.address]
                                            emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                            mem[(10 * ceil32(return_data.size)) + 832] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                            mem[(10 * ceil32(return_data.size)) + 836] = balanceOf[this.address]
                                            mem[(10 * ceil32(return_data.size)) + 868] = 0
                                            mem[(10 * ceil32(return_data.size)) + 900] = 160
                                            mem[(10 * ceil32(return_data.size)) + 996] = 3
                                            idx = 0
                                            s = (10 * ceil32(return_data.size)) + 1028
                                            t = (8 * ceil32(return_data.size)) + 736
                                            while idx < mem[(8 * ceil32(return_data.size)) + 704]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[(10 * ceil32(return_data.size)) + 932] = this.address
                                            mem[(10 * ceil32(return_data.size)) + 964] = block.timestamp
                                            require ext_code.size(uniswapV2RouterAddress)
                                            call uniswapV2RouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[(10 * ceil32(return_data.size)) + 996 len (32 * mem[(8 * ceil32(return_data.size)) + 704]) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c)
                                            staticcall 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c)
                                            call 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args dividendTrackerAddress, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if ext_call.return_data[0]:
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.distributeBTCDividends(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                emit SendDividends(balanceOf[this.address], ext_call.return_data[0]);
                                            stor7 = 0
                                            if stor18[address(msg.sender)]:
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(14 * ceil32(return_data.size)) + 902 len 26] >> 48,
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
                                                if stor18[address(arg1)]:
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(14 * ceil32(return_data.size)) + 902 len 26] >> 48,
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
                                                    if stor7:
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if arg2 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(14 * ceil32(return_data.size)) + 902 len 26] >> 48,
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
                                                        if not arg2:
                                                            if 0 > arg2:
                                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                                            if arg2 < 0:
                                                                revert with 0, 17
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if 0 > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(14 * ceil32(return_data.size)) + 1030 len 26] >> 48,
                                                                            0
                                                            if balanceOf[address(msg.sender)] < 0:
                                                                revert with 0, 17
                                                            if balanceOf[this.address] > -1:
                                                                revert with 0, 17
                                                            if balanceOf[this.address] < balanceOf[this.address]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(this.address)] = balanceOf[this.address]
                                                            emit Transfer(0, msg.sender, this.address);
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if arg2 > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(14 * ceil32(return_data.size)) + 1126 len 26] >> 48,
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
                                                            if not arg2:
                                                                revert with 0, 18
                                                            if arg2 * totalFees / arg2 != totalFees:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if arg2 * totalFees / 100 > arg2:
                                                                revert with 0, 'SafeMath: subtraction overflow', 0
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
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(14 * ceil32(return_data.size)) + 1030 len 26] >> 48,
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
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(14 * ceil32(return_data.size)) + 1126 len 26] >> 48,
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
                                        require ext_code.size(dividendTrackerAddress)
                                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(arg1), balanceOf[address(arg1)]
                                    else:
                                        mem[96] = 26
                                        mem[128] = 'SafeMath: division by zero'
                                        if not totalFees:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        mem[164] = this.address
                                        require ext_code.size(0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c)
                                        staticcall 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[160] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[ceil32(return_data.size) + 160] = 3
                                        mem[ceil32(return_data.size) + 192] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[ceil32(return_data.size) + 224] = ext_call.return_data[12 len 20]
                                        mem[ceil32(return_data.size) + 256] = 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c
                                        if not this.address:
                                            mem[(2 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(2 * ceil32(return_data.size)) + 292] = 32
                                            mem[(2 * ceil32(return_data.size)) + 324] = 36
                                            mem[(2 * ceil32(return_data.size)) + 356] = 'ERC20: approve from the zero add'
                                            mem[(2 * ceil32(return_data.size)) + 388] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                            revert with memory
                                              from (2 * ceil32(return_data.size)) + 288
                                               len ceil32(return_data.size) + 132
                                        if not uniswapV2RouterAddress:
                                            mem[(2 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(2 * ceil32(return_data.size)) + 292] = 32
                                            mem[(2 * ceil32(return_data.size)) + 324] = 34
                                            mem[(2 * ceil32(return_data.size)) + 356] = 'ERC20: approve to the zero addre'
                                            mem[(2 * ceil32(return_data.size)) + 388] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                            revert with memory
                                              from (2 * ceil32(return_data.size)) + 288
                                               len ceil32(return_data.size) + 132
                                        allowance[address(this.address)][stor6].field_0 = 0 / totalFees
                                        mem[(2 * ceil32(return_data.size)) + 288] = 0 / totalFees
                                        emit Approval(mem[(2 * ceil32(return_data.size)) + 288 len ceil32(return_data.size) + 32], this.address, uniswapV2RouterAddress);
                                        mem[(2 * ceil32(return_data.size)) + 288] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 292] = 0 / totalFees
                                        mem[(2 * ceil32(return_data.size)) + 324] = 0
                                        mem[(2 * ceil32(return_data.size)) + 356] = 160
                                        mem[(2 * ceil32(return_data.size)) + 452] = 3
                                        idx = 0
                                        s = (2 * ceil32(return_data.size)) + 484
                                        t = ceil32(return_data.size) + 192
                                        while idx < mem[ceil32(return_data.size) + 160]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(2 * ceil32(return_data.size)) + 388] = this.address
                                        mem[(2 * ceil32(return_data.size)) + 420] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args 0 / totalFees, 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 452 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(2 * ceil32(return_data.size)) + 292] = this.address
                                        require ext_code.size(0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c)
                                        staticcall 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(4 * ceil32(return_data.size)) + 288] = 30
                                        mem[(4 * ceil32(return_data.size)) + 320] = 'SafeMath: subtraction overflow'
                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        mem[(4 * ceil32(return_data.size)) + 356] = _marketingWalletAddress
                                        mem[(4 * ceil32(return_data.size)) + 388] = 0
                                        require ext_code.size(0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c)
                                        call 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args _marketingWalletAddress, 0
                                        mem[(4 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if not balanceOf[this.address]:
                                            if not totalFees:
                                                revert with 0, 'SafeMath: division by zero', 0
                                            if 0 / totalFees / 2 > 0 / totalFees:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if 0 / totalFees < 0 / totalFees / 2:
                                                revert with 0, 17
                                            mem[(6 * ceil32(return_data.size)) + 576] = this.address
                                            require ext_code.size(uniswapV2RouterAddress)
                                            staticcall uniswapV2RouterAddress.WETH() with:
                                                    gas gas_remaining wei
                                            mem[(6 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[(6 * ceil32(return_data.size)) + 608] = ext_call.return_data[12 len 20]
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            if not uniswapV2RouterAddress:
                                                revert with 0, 'ERC20: approve to the zero address'
                                            allowance[address(this.address)][stor6].field_0 = 0 / totalFees / 2
                                            allowance[address(this.address)][stor6].field_255 = 0
                                            emit Approval((0 / totalFees / 2), this.address, uniswapV2RouterAddress);
                                            mem[(7 * ceil32(return_data.size)) + 640] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                            mem[(7 * ceil32(return_data.size)) + 644] = 0 / totalFees / 2
                                            idx = 0
                                            s = (7 * ceil32(return_data.size)) + 836
                                            t = (6 * ceil32(return_data.size)) + 576
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(uniswapV2RouterAddress)
                                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args Mask(255, 1, 0 / totalFees), 0, 160, address(this.address), block.timestamp, 2, mem[(7 * ceil32(return_data.size)) + 836 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if eth.balance(this.address) > eth.balance(this.address):
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            if not uniswapV2RouterAddress:
                                                revert with 0, 'ERC20: approve to the zero address'
                                            allowance[address(this.address)][stor6].field_0 = (0 / totalFees) - (0 / totalFees / 2)
                                            emit Approval(((0 / totalFees) - (0 / totalFees / 2)), this.address, uniswapV2RouterAddress);
                                            mem[(7 * ceil32(return_data.size)) + 772] = 0
                                            mem[(7 * ceil32(return_data.size)) + 804] = 0
                                            mem[(7 * ceil32(return_data.size)) + 836] = owner
                                            mem[(7 * ceil32(return_data.size)) + 868] = block.timestamp
                                            require ext_code.size(uniswapV2RouterAddress)
                                            call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                 gas gas_remaining wei
                                                args address(this.address), (0 / totalFees) - (0 / totalFees / 2), 0, 0, owner, block.timestamp
                                            mem[(7 * ceil32(return_data.size)) + 704 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                Mask(255, 1, 0 / totalFees),
                                                                0,
                                                                (0 / totalFees) - (0 / totalFees / 2),
                                                                mem[(9 * ceil32(return_data.size)) + 800 len 5 * ceil32(return_data.size)],
                                            mem[(9 * ceil32(return_data.size)) + 736] = this.address
                                            require ext_code.size(uniswapV2RouterAddress)
                                            staticcall uniswapV2RouterAddress.WETH() with:
                                                    gas gas_remaining wei
                                            mem[(9 * ceil32(return_data.size)) + 832] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[(9 * ceil32(return_data.size)) + 768] = ext_call.return_data[12 len 20]
                                            mem[(9 * ceil32(return_data.size)) + 800] = 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            if not uniswapV2RouterAddress:
                                                revert with 0, 'ERC20: approve to the zero address'
                                            allowance[address(this.address)][stor6].field_0 = balanceOf[this.address]
                                            emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                            mem[(10 * ceil32(return_data.size)) + 832] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                            mem[(10 * ceil32(return_data.size)) + 836] = balanceOf[this.address]
                                            mem[(10 * ceil32(return_data.size)) + 900] = 160
                                            mem[(10 * ceil32(return_data.size)) + 996] = 3
                                            idx = 0
                                            s = (10 * ceil32(return_data.size)) + 1028
                                            t = (9 * ceil32(return_data.size)) + 736
                                            while idx < 3:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[(10 * ceil32(return_data.size)) + 932] = this.address
                                            mem[(10 * ceil32(return_data.size)) + 964] = block.timestamp
                                            require ext_code.size(uniswapV2RouterAddress)
                                            call uniswapV2RouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 3, mem[(10 * ceil32(return_data.size)) + 1028 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c)
                                            staticcall 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c)
                                            call 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args dividendTrackerAddress, ext_call.return_data[0], mem[(12 * ceil32(return_data.size)) + 900 len 5 * ceil32(return_data.size)]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if ext_call.return_data[0]:
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.distributeBTCDividends(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                emit SendDividends(balanceOf[this.address], ext_call.return_data[0]);
                                            stor7 = 0
                                            if stor18[address(msg.sender)]:
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address', mem[(14 * ceil32(return_data.size)) + 964 len 9 * ceil32(return_data.size)]
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address', mem[(14 * ceil32(return_data.size)) + 964 len 9 * ceil32(return_data.size)]
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    mem[(14 * ceil32(return_data.size)) + 1034] = 0
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(14 * ceil32(return_data.size)) + 902 len 26] >> 48,
                                                                mem[(14 * ceil32(return_data.size)) + 1034 len (9 * ceil32(return_data.size)) + 26]
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[arg1] > !arg2:
                                                    revert with 0, 17
                                                if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                                    revert with 0, 'SafeMath: addition overflow', mem[(14 * ceil32(return_data.size)) + 1028 len 9 * ceil32(return_data.size)]
                                                balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, balanceOf[address(msg.sender)], mem[(14 * ceil32(return_data.size)) + 996 len 9 * ceil32(return_data.size)]
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg1), balanceOf[address(arg1)], mem[(14 * ceil32(return_data.size)) + 996 len 9 * ceil32(return_data.size)]
                                            else:
                                                if stor18[address(arg1)]:
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address', mem[(14 * ceil32(return_data.size)) + 964 len 9 * ceil32(return_data.size)]
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address', mem[(14 * ceil32(return_data.size)) + 964 len 9 * ceil32(return_data.size)]
                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                        mem[(14 * ceil32(return_data.size)) + 1034] = 0
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(14 * ceil32(return_data.size)) + 902 len 26] >> 48,
                                                                    mem[(14 * ceil32(return_data.size)) + 1034 len (9 * ceil32(return_data.size)) + 26]
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !arg2:
                                                        revert with 0, 17
                                                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                                        revert with 0, 'SafeMath: addition overflow', mem[(14 * ceil32(return_data.size)) + 1028 len 9 * ceil32(return_data.size)]
                                                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args msg.sender, balanceOf[address(msg.sender)], mem[(14 * ceil32(return_data.size)) + 996 len 9 * ceil32(return_data.size)]
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg1), balanceOf[address(arg1)], mem[(14 * ceil32(return_data.size)) + 996 len 9 * ceil32(return_data.size)]
                                                else:
                                                    if stor7:
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address', mem[(14 * ceil32(return_data.size)) + 964 len 9 * ceil32(return_data.size)]
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer to the zero address', mem[(14 * ceil32(return_data.size)) + 964 len 9 * ceil32(return_data.size)]
                                                        if arg2 > balanceOf[address(msg.sender)]:
                                                            mem[(14 * ceil32(return_data.size)) + 1034] = 0
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(14 * ceil32(return_data.size)) + 902 len 26] >> 48,
                                                                        mem[(14 * ceil32(return_data.size)) + 1034 len (9 * ceil32(return_data.size)) + 26]
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[arg1] > !arg2:
                                                            revert with 0, 17
                                                        if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                                            revert with 0, 'SafeMath: addition overflow', mem[(14 * ceil32(return_data.size)) + 1028 len 9 * ceil32(return_data.size)]
                                                        balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, balanceOf[address(msg.sender)], mem[(14 * ceil32(return_data.size)) + 996 len 9 * ceil32(return_data.size)]
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg1), balanceOf[address(arg1)], mem[(14 * ceil32(return_data.size)) + 996 len 9 * ceil32(return_data.size)]
                                                    else:
                                                        if not arg2:
                                                            if 0 > arg2:
                                                                mem[(14 * ceil32(return_data.size)) + 1058] = 0
                                                                revert with 0, 'SafeMath: subtraction overflow', mem[(14 * ceil32(return_data.size)) + 1058 len (9 * ceil32(return_data.size)) + 2]
                                                            if arg2 < 0:
                                                                revert with 0, 17
                                                            if not msg.sender:
                                                                revert with 0, 
                                                                            'ERC20: transfer from the zero address',
                                                                            mem[(14 * ceil32(return_data.size)) + 1092 len 9 * ceil32(return_data.size)]
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer to the zero address', mem[(14 * ceil32(return_data.size)) + 1092 len 9 * ceil32(return_data.size)]
                                                            if 0 > balanceOf[address(msg.sender)]:
                                                                mem[(14 * ceil32(return_data.size)) + 1162] = 0
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(14 * ceil32(return_data.size)) + 1030 len 26] >> 48,
                                                                            mem[(14 * ceil32(return_data.size)) + 1162 len (9 * ceil32(return_data.size)) + 26]
                                                            if balanceOf[address(msg.sender)] < 0:
                                                                revert with 0, 17
                                                            if balanceOf[this.address] > -1:
                                                                revert with 0, 17
                                                            if balanceOf[this.address] < balanceOf[this.address]:
                                                                revert with 0, 'SafeMath: addition overflow', mem[(14 * ceil32(return_data.size)) + 1156 len 9 * ceil32(return_data.size)]
                                                            balanceOf[address(this.address)] = balanceOf[this.address]
                                                            emit Transfer(0, msg.sender, this.address);
                                                            if not msg.sender:
                                                                revert with 0, 
                                                                            'ERC20: transfer from the zero address',
                                                                            mem[(14 * ceil32(return_data.size)) + 1188 len 9 * ceil32(return_data.size)]
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer to the zero address', mem[(14 * ceil32(return_data.size)) + 1188 len 9 * ceil32(return_data.size)]
                                                            if arg2 > balanceOf[address(msg.sender)]:
                                                                mem[(14 * ceil32(return_data.size)) + 1258] = 0
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(14 * ceil32(return_data.size)) + 1126 len 26] >> 48,
                                                                            mem[(14 * ceil32(return_data.size)) + 1258 len (9 * ceil32(return_data.size)) + 26]
                                                            if balanceOf[address(msg.sender)] < arg2:
                                                                revert with 0, 17
                                                            balanceOf[address(msg.sender)] -= arg2
                                                            if balanceOf[arg1] > !arg2:
                                                                revert with 0, 17
                                                            if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                                                revert with 0, 'SafeMath: addition overflow', mem[(14 * ceil32(return_data.size)) + 1252 len 9 * ceil32(return_data.size)]
                                                            balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                                            emit Transfer(arg2, msg.sender, arg1);
                                                        else:
                                                            if arg2 and totalFees > -1 / arg2:
                                                                revert with 0, 17
                                                            if not arg2:
                                                                revert with 0, 18
                                                            if arg2 * totalFees / arg2 != totalFees:
                                                                revert with 0, 'SafeMath: multiplication overflow', mem[(14 * ceil32(return_data.size)) + 964 len 9 * ceil32(return_data.size)]
                                                            if arg2 * totalFees / 100 > arg2:
                                                                mem[(14 * ceil32(return_data.size)) + 1058] = 0
                                                                revert with 0, 'SafeMath: subtraction overflow', mem[(14 * ceil32(return_data.size)) + 1058 len (9 * ceil32(return_data.size)) + 2]
                                                            if arg2 < arg2 * totalFees / 100:
                                                                revert with 0, 17
                                                            if not msg.sender:
                                                                revert with 0, 
                                                                            'ERC20: transfer from the zero address',
                                                                            mem[(14 * ceil32(return_data.size)) + 1092 len 9 * ceil32(return_data.size)]
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer to the zero address', mem[(14 * ceil32(return_data.size)) + 1092 len 9 * ceil32(return_data.size)]
                                                            if arg2 * totalFees / 100 > balanceOf[address(msg.sender)]:
                                                                mem[(14 * ceil32(return_data.size)) + 1162] = 0
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(14 * ceil32(return_data.size)) + 1030 len 26] >> 48,
                                                                            mem[(14 * ceil32(return_data.size)) + 1162 len (9 * ceil32(return_data.size)) + 26]
                                                            if balanceOf[address(msg.sender)] < arg2 * totalFees / 100:
                                                                revert with 0, 17
                                                            balanceOf[address(msg.sender)] -= arg2 * totalFees / 100
                                                            if balanceOf[this.address] > !(arg2 * totalFees / 100):
                                                                revert with 0, 17
                                                            if balanceOf[this.address] + (arg2 * totalFees / 100) < balanceOf[this.address]:
                                                                revert with 0, 'SafeMath: addition overflow', mem[(14 * ceil32(return_data.size)) + 1156 len 9 * ceil32(return_data.size)]
                                                            balanceOf[address(this.address)] = balanceOf[this.address] + (arg2 * totalFees / 100)
                                                            emit Transfer((arg2 * totalFees / 100), msg.sender, this.address);
                                                            if not msg.sender:
                                                                revert with 0, 
                                                                            'ERC20: transfer from the zero address',
                                                                            mem[(14 * ceil32(return_data.size)) + 1188 len 9 * ceil32(return_data.size)]
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer to the zero address', mem[(14 * ceil32(return_data.size)) + 1188 len 9 * ceil32(return_data.size)]
                                                            if arg2 - (arg2 * totalFees / 100) > balanceOf[address(msg.sender)]:
                                                                mem[(14 * ceil32(return_data.size)) + 1258] = 0
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(14 * ceil32(return_data.size)) + 1126 len 26] >> 48,
                                                                            mem[(14 * ceil32(return_data.size)) + 1258 len (9 * ceil32(return_data.size)) + 26]
                                                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * totalFees / 100):
                                                                revert with 0, 17
                                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * totalFees / 100)
                                                            if balanceOf[arg1] > !(arg2 - (arg2 * totalFees / 100)):
                                                                revert with 0, 17
                                                            if balanceOf[arg1] + arg2 - (arg2 * totalFees / 100) < balanceOf[arg1]:
                                                                revert with 0, 'SafeMath: addition overflow', mem[(14 * ceil32(return_data.size)) + 1252 len 9 * ceil32(return_data.size)]
                                                            balanceOf[address(arg1)] = balanceOf[arg1] + arg2 - (arg2 * totalFees / 100)
                                                            emit Transfer((arg2 - (arg2 * totalFees / 100)), msg.sender, arg1);
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, balanceOf[address(msg.sender)], mem[(14 * ceil32(return_data.size)) + 1220 len 9 * ceil32(return_data.size)]
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg1), balanceOf[address(arg1)], mem[(14 * ceil32(return_data.size)) + 1220 len 9 * ceil32(return_data.size)]
                                        else:
                                            if balanceOf[this.address] and liquidityFee > -1 / balanceOf[this.address]:
                                                revert with 0, 17
                                            if not balanceOf[this.address]:
                                                revert with 0, 18
                                            if balanceOf[this.address] * liquidityFee / balanceOf[this.address] != liquidityFee:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            mem[(6 * ceil32(return_data.size)) + 352] = 26
                                            mem[(6 * ceil32(return_data.size)) + 384] = 'SafeMath: division by zero'
                                            if not totalFees:
                                                revert with 0, 'SafeMath: division by zero', 0
                                            mem[(6 * ceil32(return_data.size)) + 416] = 26
                                            mem[(6 * ceil32(return_data.size)) + 448] = 'SafeMath: division by zero'
                                            mem[(6 * ceil32(return_data.size)) + 480] = 30
                                            mem[(6 * ceil32(return_data.size)) + 512] = 'SafeMath: subtraction overflow'
                                            if balanceOf[this.address] * liquidityFee / totalFees / 2 > balanceOf[this.address] * liquidityFee / totalFees:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if balanceOf[this.address] * liquidityFee / totalFees < balanceOf[this.address] * liquidityFee / totalFees / 2:
                                                revert with 0, 17
                                            mem[(6 * ceil32(return_data.size)) + 544] = 2
                                            mem[(6 * ceil32(return_data.size)) + 576] = this.address
                                            require ext_code.size(uniswapV2RouterAddress)
                                            staticcall uniswapV2RouterAddress.WETH() with:
                                                    gas gas_remaining wei
                                            mem[(6 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[(6 * ceil32(return_data.size)) + 608] = ext_call.return_data[12 len 20]
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            if not uniswapV2RouterAddress:
                                                revert with 0, 'ERC20: approve to the zero address'
                                            allowance[address(this.address)][stor6].field_0 = balanceOf[this.address] * liquidityFee / totalFees / 2
                                            allowance[address(this.address)][stor6].field_255 = 0
                                            emit Approval((balanceOf[this.address] * liquidityFee / totalFees / 2), this.address, uniswapV2RouterAddress);
                                            mem[(7 * ceil32(return_data.size)) + 640] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                            mem[(7 * ceil32(return_data.size)) + 644] = balanceOf[this.address] * liquidityFee / totalFees / 2
                                            mem[(7 * ceil32(return_data.size)) + 676] = 0
                                            idx = 0
                                            s = (7 * ceil32(return_data.size)) + 836
                                            t = (6 * ceil32(return_data.size)) + 576
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(uniswapV2RouterAddress)
                                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args Mask(255, 1, balanceOf[this.address] * liquidityFee / totalFees), 0, 160, address(this.address), block.timestamp, 2, mem[(7 * ceil32(return_data.size)) + 836 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(7 * ceil32(return_data.size)) + 640] = 30
                                            mem[(7 * ceil32(return_data.size)) + 672] = 'SafeMath: subtraction overflow'
                                            if eth.balance(this.address) > eth.balance(this.address):
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            if not uniswapV2RouterAddress:
                                                revert with 0, 'ERC20: approve to the zero address'
                                            allowance[address(this.address)][stor6].field_0 = (balanceOf[this.address] * liquidityFee / totalFees) - (balanceOf[this.address] * liquidityFee / totalFees / 2)
                                            emit Approval(((balanceOf[this.address] * liquidityFee / totalFees) - (balanceOf[this.address] * liquidityFee / totalFees / 2)), this.address, uniswapV2RouterAddress);
                                            mem[(7 * ceil32(return_data.size)) + 708] = this.address
                                            mem[(7 * ceil32(return_data.size)) + 740] = (balanceOf[this.address] * liquidityFee / totalFees) - (balanceOf[this.address] * liquidityFee / totalFees / 2)
                                            mem[(7 * ceil32(return_data.size)) + 772] = 0
                                            mem[(7 * ceil32(return_data.size)) + 804] = 0
                                            mem[(7 * ceil32(return_data.size)) + 836] = owner
                                            mem[(7 * ceil32(return_data.size)) + 868] = block.timestamp
                                            require ext_code.size(uniswapV2RouterAddress)
                                            call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                 gas gas_remaining wei
                                                args address(this.address), (balanceOf[this.address] * liquidityFee / totalFees) - (balanceOf[this.address] * liquidityFee / totalFees / 2), 0, 0, owner, block.timestamp
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            emit SwapAndLiquify(Mask(255, 1, balanceOf[this.address] * liquidityFee / totalFees), 0, (balanceOf[this.address] * liquidityFee / totalFees) - (balanceOf[this.address] * liquidityFee / totalFees / 2));
                                            mem[(8 * ceil32(return_data.size)) + 704] = 3
                                            mem[(8 * ceil32(return_data.size)) + 736] = this.address
                                            require ext_code.size(uniswapV2RouterAddress)
                                            staticcall uniswapV2RouterAddress.WETH() with:
                                                    gas gas_remaining wei
                                            mem[(8 * ceil32(return_data.size)) + 832] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = (10 * ceil32(return_data.size)) + 832
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[(8 * ceil32(return_data.size)) + 768] = ext_call.return_data[12 len 20]
                                            mem[(8 * ceil32(return_data.size)) + 800] = 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            if not uniswapV2RouterAddress:
                                                revert with 0, 'ERC20: approve to the zero address'
                                            mem[0] = uniswapV2RouterAddress
                                            mem[32] = sha3(address(this.address), 1)
                                            allowance[address(this.address)][stor6].field_0 = balanceOf[this.address]
                                            emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                            mem[(10 * ceil32(return_data.size)) + 832] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                            mem[(10 * ceil32(return_data.size)) + 836] = balanceOf[this.address]
                                            mem[(10 * ceil32(return_data.size)) + 868] = 0
                                            mem[(10 * ceil32(return_data.size)) + 900] = 160
                                            mem[(10 * ceil32(return_data.size)) + 996] = 3
                                            idx = 0
                                            s = (10 * ceil32(return_data.size)) + 1028
                                            t = (8 * ceil32(return_data.size)) + 736
                                            while idx < mem[(8 * ceil32(return_data.size)) + 704]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[(10 * ceil32(return_data.size)) + 932] = this.address
                                            mem[(10 * ceil32(return_data.size)) + 964] = block.timestamp
                                            require ext_code.size(uniswapV2RouterAddress)
                                            call uniswapV2RouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[(10 * ceil32(return_data.size)) + 996 len (32 * mem[(8 * ceil32(return_data.size)) + 704]) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c)
                                            staticcall 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c)
                                            call 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args dividendTrackerAddress, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if ext_call.return_data[0]:
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.distributeBTCDividends(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                emit SendDividends(balanceOf[this.address], ext_call.return_data[0]);
                                            stor7 = 0
                                            if stor18[address(msg.sender)]:
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(14 * ceil32(return_data.size)) + 902 len 26] >> 48,
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
                                                if stor18[address(arg1)]:
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(14 * ceil32(return_data.size)) + 902 len 26] >> 48,
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
                                                    if stor7:
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if arg2 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(14 * ceil32(return_data.size)) + 902 len 26] >> 48,
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
                                                        if not arg2:
                                                            if 0 > arg2:
                                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                                            if arg2 < 0:
                                                                revert with 0, 17
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if 0 > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(14 * ceil32(return_data.size)) + 1030 len 26] >> 48,
                                                                            0
                                                            if balanceOf[address(msg.sender)] < 0:
                                                                revert with 0, 17
                                                            if balanceOf[this.address] > -1:
                                                                revert with 0, 17
                                                            if balanceOf[this.address] < balanceOf[this.address]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(this.address)] = balanceOf[this.address]
                                                            emit Transfer(0, msg.sender, this.address);
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if arg2 > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(14 * ceil32(return_data.size)) + 1126 len 26] >> 48,
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
                                                            if not arg2:
                                                                revert with 0, 18
                                                            if arg2 * totalFees / arg2 != totalFees:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if arg2 * totalFees / 100 > arg2:
                                                                revert with 0, 'SafeMath: subtraction overflow', 0
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
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(14 * ceil32(return_data.size)) + 1030 len 26] >> 48,
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
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(14 * ceil32(return_data.size)) + 1126 len 26] >> 48,
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
            if arg2 > maxTxAmount:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount exceeds the maxTxAmount.'
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
                if balanceOf[this.address] < swapTokensAtAmount:
                    if stor18[address(msg.sender)]:
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
                        if stor18[address(arg1)]:
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
                            if stor7:
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
                                if not arg2:
                                    if 0 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < 0:
                                        revert with 0, 17
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 17
                                    if balanceOf[this.address] > -1:
                                        revert with 0, 17
                                    if balanceOf[this.address] < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] = balanceOf[this.address]
                                    emit Transfer(0, msg.sender, this.address);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[390 len 26] >> 48, 0
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
                                    if not arg2:
                                        revert with 0, 18
                                    if arg2 * totalFees / arg2 != totalFees:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if arg2 * totalFees / 100 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < arg2 * totalFees / 100:
                                        revert with 0, 17
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if arg2 * totalFees / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
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
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[390 len 26] >> 48, 0
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
                        if stor18[address(msg.sender)]:
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
                            if stor18[address(arg1)]:
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
                                if stor7:
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
                                    if not arg2:
                                        if 0 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < 0:
                                            revert with 0, 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 0, 17
                                        if balanceOf[this.address] > -1:
                                            revert with 0, 17
                                        if balanceOf[this.address] < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] = balanceOf[this.address]
                                        emit Transfer(0, msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[390 len 26] >> 48, 0
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
                                        if not arg2:
                                            revert with 0, 18
                                        if arg2 * totalFees / arg2 != totalFees:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if arg2 * totalFees / 100 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg2 < arg2 * totalFees / 100:
                                            revert with 0, 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if arg2 * totalFees / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
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
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[390 len 26] >> 48, 0
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
                        if stor19[address(msg.sender)]:
                            if stor18[address(msg.sender)]:
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
                                if stor18[address(arg1)]:
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
                                    if stor7:
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
                                        if not arg2:
                                            if 0 > arg2:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if arg2 < 0:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if 0 > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                                            if balanceOf[address(msg.sender)] < 0:
                                                revert with 0, 17
                                            if balanceOf[this.address] > -1:
                                                revert with 0, 17
                                            if balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = balanceOf[this.address]
                                            emit Transfer(0, msg.sender, this.address);
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[390 len 26] >> 48, 0
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
                                            if not arg2:
                                                revert with 0, 18
                                            if arg2 * totalFees / arg2 != totalFees:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                            if arg2 * totalFees / 100 > arg2:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if arg2 < arg2 * totalFees / 100:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if arg2 * totalFees / 100 > balanceOf[address(msg.sender)]:
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
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
                                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[390 len 26] >> 48, 0
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
                                if stor18[address(msg.sender)]:
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
                                    if stor18[address(arg1)]:
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
                                        if stor7:
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
                                            if not arg2:
                                                if 0 > arg2:
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if arg2 < 0:
                                                    revert with 0, 17
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not this.address:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if 0 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                                                if balanceOf[address(msg.sender)] < 0:
                                                    revert with 0, 17
                                                if balanceOf[this.address] > -1:
                                                    revert with 0, 17
                                                if balanceOf[this.address] < balanceOf[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] = balanceOf[this.address]
                                                emit Transfer(0, msg.sender, this.address);
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[390 len 26] >> 48, 0
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
                                                if not arg2:
                                                    revert with 0, 18
                                                if arg2 * totalFees / arg2 != totalFees:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                if arg2 * totalFees / 100 > arg2:
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if arg2 < arg2 * totalFees / 100:
                                                    revert with 0, 17
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not this.address:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if arg2 * totalFees / 100 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
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
                                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[390 len 26] >> 48, 0
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
                                    if stor18[address(msg.sender)]:
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
                                        if stor18[address(arg1)]:
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
                                            if stor7:
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
                                                if not arg2:
                                                    if 0 > arg2:
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                    if arg2 < 0:
                                                        revert with 0, 17
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if 0 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                                                    if balanceOf[address(msg.sender)] < 0:
                                                        revert with 0, 17
                                                    if balanceOf[this.address] > -1:
                                                        revert with 0, 17
                                                    if balanceOf[this.address] < balanceOf[this.address]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(this.address)] = balanceOf[this.address]
                                                    emit Transfer(0, msg.sender, this.address);
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[390 len 26] >> 48, 0
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
                                                    if not arg2:
                                                        revert with 0, 18
                                                    if arg2 * totalFees / arg2 != totalFees:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                    if arg2 * totalFees / 100 > arg2:
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                    if arg2 < arg2 * totalFees / 100:
                                                        revert with 0, 17
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if arg2 * totalFees / 100 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
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
                                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[390 len 26] >> 48, 0
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
                                    if balanceOf[this.address]:
                                        if balanceOf[this.address] and marketingFee > -1 / balanceOf[this.address]:
                                            revert with 0, 17
                                        if not balanceOf[this.address]:
                                            revert with 0, 18
                                        if balanceOf[this.address] * marketingFee / balanceOf[this.address] != marketingFee:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        mem[96] = 26
                                        mem[128] = 'SafeMath: division by zero'
                                        if not totalFees:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        mem[164] = this.address
                                        require ext_code.size(0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c)
                                        staticcall 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[160] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[ceil32(return_data.size) + 160] = 3
                                        mem[ceil32(return_data.size) + 192] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[ceil32(return_data.size) + 224] = ext_call.return_data[12 len 20]
                                        mem[ceil32(return_data.size) + 256] = 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c
                                        if not this.address:
                                            mem[(2 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(2 * ceil32(return_data.size)) + 292] = 32
                                            mem[(2 * ceil32(return_data.size)) + 324] = 36
                                            mem[(2 * ceil32(return_data.size)) + 356] = 'ERC20: approve from the zero add'
                                            mem[(2 * ceil32(return_data.size)) + 388] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                            revert with memory
                                              from (2 * ceil32(return_data.size)) + 288
                                               len ceil32(return_data.size) + 132
                                        if not uniswapV2RouterAddress:
                                            mem[(2 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(2 * ceil32(return_data.size)) + 292] = 32
                                            mem[(2 * ceil32(return_data.size)) + 324] = 34
                                            mem[(2 * ceil32(return_data.size)) + 356] = 'ERC20: approve to the zero addre'
                                            mem[(2 * ceil32(return_data.size)) + 388] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                            revert with memory
                                              from (2 * ceil32(return_data.size)) + 288
                                               len ceil32(return_data.size) + 132
                                        allowance[address(this.address)][stor6].field_0 = balanceOf[this.address] * marketingFee / totalFees
                                        mem[(2 * ceil32(return_data.size)) + 288] = balanceOf[this.address] * marketingFee / totalFees
                                        emit Approval(mem[(2 * ceil32(return_data.size)) + 288 len ceil32(return_data.size) + 32], this.address, uniswapV2RouterAddress);
                                        mem[(2 * ceil32(return_data.size)) + 288] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 292] = balanceOf[this.address] * marketingFee / totalFees
                                        mem[(2 * ceil32(return_data.size)) + 324] = 0
                                        mem[(2 * ceil32(return_data.size)) + 356] = 160
                                        mem[(2 * ceil32(return_data.size)) + 452] = 3
                                        idx = 0
                                        s = (2 * ceil32(return_data.size)) + 484
                                        t = ceil32(return_data.size) + 192
                                        while idx < mem[ceil32(return_data.size) + 160]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(2 * ceil32(return_data.size)) + 388] = this.address
                                        mem[(2 * ceil32(return_data.size)) + 420] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args balanceOf[this.address] * marketingFee / totalFees, 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 452 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(2 * ceil32(return_data.size)) + 292] = this.address
                                        require ext_code.size(0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c)
                                        staticcall 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(4 * ceil32(return_data.size)) + 288] = 30
                                        mem[(4 * ceil32(return_data.size)) + 320] = 'SafeMath: subtraction overflow'
                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        mem[(4 * ceil32(return_data.size)) + 356] = _marketingWalletAddress
                                        mem[(4 * ceil32(return_data.size)) + 388] = 0
                                        require ext_code.size(0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c)
                                        call 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args _marketingWalletAddress, 0
                                        mem[(4 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if balanceOf[this.address]:
                                            if balanceOf[this.address] and liquidityFee > -1 / balanceOf[this.address]:
                                                revert with 0, 17
                                            if not balanceOf[this.address]:
                                                revert with 0, 18
                                            if balanceOf[this.address] * liquidityFee / balanceOf[this.address] != liquidityFee:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if not totalFees:
                                                revert with 0, 'SafeMath: division by zero', 0
                                            if balanceOf[this.address] * liquidityFee / totalFees / 2 > balanceOf[this.address] * liquidityFee / totalFees:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if balanceOf[this.address] * liquidityFee / totalFees < balanceOf[this.address] * liquidityFee / totalFees / 2:
                                                revert with 0, 17
                                            mem[(6 * ceil32(return_data.size)) + 576] = this.address
                                            require ext_code.size(uniswapV2RouterAddress)
                                            staticcall uniswapV2RouterAddress.WETH() with:
                                                    gas gas_remaining wei
                                            mem[(6 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[(6 * ceil32(return_data.size)) + 608] = ext_call.return_data[12 len 20]
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            if not uniswapV2RouterAddress:
                                                revert with 0, 'ERC20: approve to the zero address'
                                            allowance[address(this.address)][stor6].field_0 = balanceOf[this.address] * liquidityFee / totalFees / 2
                                            allowance[address(this.address)][stor6].field_255 = 0
                                            emit Approval((balanceOf[this.address] * liquidityFee / totalFees / 2), this.address, uniswapV2RouterAddress);
                                            mem[(7 * ceil32(return_data.size)) + 640] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                            mem[(7 * ceil32(return_data.size)) + 644] = balanceOf[this.address] * liquidityFee / totalFees / 2
                                            idx = 0
                                            s = (7 * ceil32(return_data.size)) + 836
                                            t = (6 * ceil32(return_data.size)) + 576
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(uniswapV2RouterAddress)
                                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args Mask(255, 1, balanceOf[this.address] * liquidityFee / totalFees), 0, 160, address(this.address), block.timestamp, 2, mem[(7 * ceil32(return_data.size)) + 836 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if eth.balance(this.address) > eth.balance(this.address):
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            if not uniswapV2RouterAddress:
                                                revert with 0, 'ERC20: approve to the zero address'
                                            allowance[address(this.address)][stor6].field_0 = (balanceOf[this.address] * liquidityFee / totalFees) - (balanceOf[this.address] * liquidityFee / totalFees / 2)
                                            emit Approval(((balanceOf[this.address] * liquidityFee / totalFees) - (balanceOf[this.address] * liquidityFee / totalFees / 2)), this.address, uniswapV2RouterAddress);
                                            mem[(7 * ceil32(return_data.size)) + 772] = 0
                                            mem[(7 * ceil32(return_data.size)) + 804] = 0
                                            mem[(7 * ceil32(return_data.size)) + 836] = owner
                                            mem[(7 * ceil32(return_data.size)) + 868] = block.timestamp
                                            require ext_code.size(uniswapV2RouterAddress)
                                            call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                 gas gas_remaining wei
                                                args address(this.address), (balanceOf[this.address] * liquidityFee / totalFees) - (balanceOf[this.address] * liquidityFee / totalFees / 2), 0, 0, owner, block.timestamp
                                            mem[(7 * ceil32(return_data.size)) + 704 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                Mask(255, 1, balanceOf[this.address] * liquidityFee / totalFees),
                                                                0,
                                                                (balanceOf[this.address] * liquidityFee / totalFees) - (balanceOf[this.address] * liquidityFee / totalFees / 2),
                                                                mem[(9 * ceil32(return_data.size)) + 800 len 5 * ceil32(return_data.size)],
                                            mem[(9 * ceil32(return_data.size)) + 736] = this.address
                                            require ext_code.size(uniswapV2RouterAddress)
                                            staticcall uniswapV2RouterAddress.WETH() with:
                                                    gas gas_remaining wei
                                            mem[(9 * ceil32(return_data.size)) + 832] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[(9 * ceil32(return_data.size)) + 768] = ext_call.return_data[12 len 20]
                                            mem[(9 * ceil32(return_data.size)) + 800] = 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            if not uniswapV2RouterAddress:
                                                revert with 0, 'ERC20: approve to the zero address'
                                            allowance[address(this.address)][stor6].field_0 = balanceOf[this.address]
                                            emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                            mem[(10 * ceil32(return_data.size)) + 832] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                            mem[(10 * ceil32(return_data.size)) + 836] = balanceOf[this.address]
                                            mem[(10 * ceil32(return_data.size)) + 900] = 160
                                            mem[(10 * ceil32(return_data.size)) + 996] = 3
                                            idx = 0
                                            s = (10 * ceil32(return_data.size)) + 1028
                                            t = (9 * ceil32(return_data.size)) + 736
                                            while idx < 3:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[(10 * ceil32(return_data.size)) + 932] = this.address
                                            mem[(10 * ceil32(return_data.size)) + 964] = block.timestamp
                                            require ext_code.size(uniswapV2RouterAddress)
                                            call uniswapV2RouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 3, mem[(10 * ceil32(return_data.size)) + 1028 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c)
                                            staticcall 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c)
                                            call 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args dividendTrackerAddress, ext_call.return_data[0], mem[(12 * ceil32(return_data.size)) + 900 len 5 * ceil32(return_data.size)]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if ext_call.return_data[0]:
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.distributeBTCDividends(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                emit SendDividends(balanceOf[this.address], ext_call.return_data[0]);
                                            stor7 = 0
                                            if stor18[address(msg.sender)]:
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address', mem[(14 * ceil32(return_data.size)) + 964 len 9 * ceil32(return_data.size)]
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address', mem[(14 * ceil32(return_data.size)) + 964 len 9 * ceil32(return_data.size)]
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    mem[(14 * ceil32(return_data.size)) + 1034] = 0
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(14 * ceil32(return_data.size)) + 902 len 26] >> 48,
                                                                mem[(14 * ceil32(return_data.size)) + 1034 len (9 * ceil32(return_data.size)) + 26]
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 0, 17
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[arg1] > !arg2:
                                                    revert with 0, 17
                                                if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                                    revert with 0, 'SafeMath: addition overflow', mem[(14 * ceil32(return_data.size)) + 1028 len 9 * ceil32(return_data.size)]
                                                balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, balanceOf[address(msg.sender)], mem[(14 * ceil32(return_data.size)) + 996 len 9 * ceil32(return_data.size)]
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg1), balanceOf[address(arg1)], mem[(14 * ceil32(return_data.size)) + 996 len 9 * ceil32(return_data.size)]
                                            else:
                                                if stor18[address(arg1)]:
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address', mem[(14 * ceil32(return_data.size)) + 964 len 9 * ceil32(return_data.size)]
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address', mem[(14 * ceil32(return_data.size)) + 964 len 9 * ceil32(return_data.size)]
                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                        mem[(14 * ceil32(return_data.size)) + 1034] = 0
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(14 * ceil32(return_data.size)) + 902 len 26] >> 48,
                                                                    mem[(14 * ceil32(return_data.size)) + 1034 len (9 * ceil32(return_data.size)) + 26]
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !arg2:
                                                        revert with 0, 17
                                                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                                        revert with 0, 'SafeMath: addition overflow', mem[(14 * ceil32(return_data.size)) + 1028 len 9 * ceil32(return_data.size)]
                                                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args msg.sender, balanceOf[address(msg.sender)], mem[(14 * ceil32(return_data.size)) + 996 len 9 * ceil32(return_data.size)]
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg1), balanceOf[address(arg1)], mem[(14 * ceil32(return_data.size)) + 996 len 9 * ceil32(return_data.size)]
                                                else:
                                                    if stor7:
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address', mem[(14 * ceil32(return_data.size)) + 964 len 9 * ceil32(return_data.size)]
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer to the zero address', mem[(14 * ceil32(return_data.size)) + 964 len 9 * ceil32(return_data.size)]
                                                        if arg2 > balanceOf[address(msg.sender)]:
                                                            mem[(14 * ceil32(return_data.size)) + 1034] = 0
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(14 * ceil32(return_data.size)) + 902 len 26] >> 48,
                                                                        mem[(14 * ceil32(return_data.size)) + 1034 len (9 * ceil32(return_data.size)) + 26]
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[arg1] > !arg2:
                                                            revert with 0, 17
                                                        if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                                            revert with 0, 'SafeMath: addition overflow', mem[(14 * ceil32(return_data.size)) + 1028 len 9 * ceil32(return_data.size)]
                                                        balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, balanceOf[address(msg.sender)], mem[(14 * ceil32(return_data.size)) + 996 len 9 * ceil32(return_data.size)]
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg1), balanceOf[address(arg1)], mem[(14 * ceil32(return_data.size)) + 996 len 9 * ceil32(return_data.size)]
                                                    else:
                                                        if not arg2:
                                                            if 0 > arg2:
                                                                mem[(14 * ceil32(return_data.size)) + 1058] = 0
                                                                revert with 0, 'SafeMath: subtraction overflow', mem[(14 * ceil32(return_data.size)) + 1058 len (9 * ceil32(return_data.size)) + 2]
                                                            if arg2 < 0:
                                                                revert with 0, 17
                                                            if not msg.sender:
                                                                revert with 0, 
                                                                            'ERC20: transfer from the zero address',
                                                                            mem[(14 * ceil32(return_data.size)) + 1092 len 9 * ceil32(return_data.size)]
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer to the zero address', mem[(14 * ceil32(return_data.size)) + 1092 len 9 * ceil32(return_data.size)]
                                                            if 0 > balanceOf[address(msg.sender)]:
                                                                mem[(14 * ceil32(return_data.size)) + 1162] = 0
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(14 * ceil32(return_data.size)) + 1030 len 26] >> 48,
                                                                            mem[(14 * ceil32(return_data.size)) + 1162 len (9 * ceil32(return_data.size)) + 26]
                                                            if balanceOf[address(msg.sender)] < 0:
                                                                revert with 0, 17
                                                            if balanceOf[this.address] > -1:
                                                                revert with 0, 17
                                                            if balanceOf[this.address] < balanceOf[this.address]:
                                                                revert with 0, 'SafeMath: addition overflow', mem[(14 * ceil32(return_data.size)) + 1156 len 9 * ceil32(return_data.size)]
                                                            balanceOf[address(this.address)] = balanceOf[this.address]
                                                            emit Transfer(0, msg.sender, this.address);
                                                            if not msg.sender:
                                                                revert with 0, 
                                                                            'ERC20: transfer from the zero address',
                                                                            mem[(14 * ceil32(return_data.size)) + 1188 len 9 * ceil32(return_data.size)]
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer to the zero address', mem[(14 * ceil32(return_data.size)) + 1188 len 9 * ceil32(return_data.size)]
                                                            if arg2 > balanceOf[address(msg.sender)]:
                                                                mem[(14 * ceil32(return_data.size)) + 1258] = 0
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(14 * ceil32(return_data.size)) + 1126 len 26] >> 48,
                                                                            mem[(14 * ceil32(return_data.size)) + 1258 len (9 * ceil32(return_data.size)) + 26]
                                                            if balanceOf[address(msg.sender)] < arg2:
                                                                revert with 0, 17
                                                            balanceOf[address(msg.sender)] -= arg2
                                                            if balanceOf[arg1] > !arg2:
                                                                revert with 0, 17
                                                            if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                                                revert with 0, 'SafeMath: addition overflow', mem[(14 * ceil32(return_data.size)) + 1252 len 9 * ceil32(return_data.size)]
                                                            balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                                                            emit Transfer(arg2, msg.sender, arg1);
                                                        else:
                                                            if arg2 and totalFees > -1 / arg2:
                                                                revert with 0, 17
                                                            if not arg2:
                                                                revert with 0, 18
                                                            if arg2 * totalFees / arg2 != totalFees:
                                                                revert with 0, 'SafeMath: multiplication overflow', mem[(14 * ceil32(return_data.size)) + 964 len 9 * ceil32(return_data.size)]
                                                            if arg2 * totalFees / 100 > arg2:
                                                                mem[(14 * ceil32(return_data.size)) + 1058] = 0
                                                                revert with 0, 'SafeMath: subtraction overflow', mem[(14 * ceil32(return_data.size)) + 1058 len (9 * ceil32(return_data.size)) + 2]
                                                            if arg2 < arg2 * totalFees / 100:
                                                                revert with 0, 17
                                                            if not msg.sender:
                                                                revert with 0, 
                                                                            'ERC20: transfer from the zero address',
                                                                            mem[(14 * ceil32(return_data.size)) + 1092 len 9 * ceil32(return_data.size)]
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer to the zero address', mem[(14 * ceil32(return_data.size)) + 1092 len 9 * ceil32(return_data.size)]
                                                            if arg2 * totalFees / 100 > balanceOf[address(msg.sender)]:
                                                                mem[(14 * ceil32(return_data.size)) + 1162] = 0
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(14 * ceil32(return_data.size)) + 1030 len 26] >> 48,
                                                                            mem[(14 * ceil32(return_data.size)) + 1162 len (9 * ceil32(return_data.size)) + 26]
                                                            if balanceOf[address(msg.sender)] < arg2 * totalFees / 100:
                                                                revert with 0, 17
                                                            balanceOf[address(msg.sender)] -= arg2 * totalFees / 100
                                                            if balanceOf[this.address] > !(arg2 * totalFees / 100):
                                                                revert with 0, 17
                                                            if balanceOf[this.address] + (arg2 * totalFees / 100) < balanceOf[this.address]:
                                                                revert with 0, 'SafeMath: addition overflow', mem[(14 * ceil32(return_data.size)) + 1156 len 9 * ceil32(return_data.size)]
                                                            balanceOf[address(this.address)] = balanceOf[this.address] + (arg2 * totalFees / 100)
                                                            emit Transfer((arg2 * totalFees / 100), msg.sender, this.address);
                                                            if not msg.sender:
                                                                revert with 0, 
                                                                            'ERC20: transfer from the zero address',
                                                                            mem[(14 * ceil32(return_data.size)) + 1188 len 9 * ceil32(return_data.size)]
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer to the zero address', mem[(14 * ceil32(return_data.size)) + 1188 len 9 * ceil32(return_data.size)]
                                                            if arg2 - (arg2 * totalFees / 100) > balanceOf[address(msg.sender)]:
                                                                mem[(14 * ceil32(return_data.size)) + 1258] = 0
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(14 * ceil32(return_data.size)) + 1126 len 26] >> 48,
                                                                            mem[(14 * ceil32(return_data.size)) + 1258 len (9 * ceil32(return_data.size)) + 26]
                                                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * totalFees / 100):
                                                                revert with 0, 17
                                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * totalFees / 100)
                                                            if balanceOf[arg1] > !(arg2 - (arg2 * totalFees / 100)):
                                                                revert with 0, 17
                                                            if balanceOf[arg1] + arg2 - (arg2 * totalFees / 100) < balanceOf[arg1]:
                                                                revert with 0, 'SafeMath: addition overflow', mem[(14 * ceil32(return_data.size)) + 1252 len 9 * ceil32(return_data.size)]
                                                            balanceOf[address(arg1)] = balanceOf[arg1] + arg2 - (arg2 * totalFees / 100)
                                                            emit Transfer((arg2 - (arg2 * totalFees / 100)), msg.sender, arg1);
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, balanceOf[address(msg.sender)], mem[(14 * ceil32(return_data.size)) + 1220 len 9 * ceil32(return_data.size)]
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg1), balanceOf[address(arg1)], mem[(14 * ceil32(return_data.size)) + 1220 len 9 * ceil32(return_data.size)]
                                            if not stor7:
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args gasForProcessing
                                                if ext_call.success:
                                                    require return_data.size >= 96
                                                    emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                        else:
                                            mem[(6 * ceil32(return_data.size)) + 352] = 26
                                            mem[(6 * ceil32(return_data.size)) + 384] = 'SafeMath: division by zero'
                                            if not totalFees:
                                                revert with 0, 'SafeMath: division by zero', 0
                                            mem[(6 * ceil32(return_data.size)) + 416] = 26
                                            mem[(6 * ceil32(return_data.size)) + 448] = 'SafeMath: division by zero'
                                            mem[(6 * ceil32(return_data.size)) + 480] = 30
                                            mem[(6 * ceil32(return_data.size)) + 512] = 'SafeMath: subtraction overflow'
                                            if 0 / totalFees / 2 > 0 / totalFees:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if 0 / totalFees < 0 / totalFees / 2:
                                                revert with 0, 17
                                            mem[(6 * ceil32(return_data.size)) + 544] = 2
                                            mem[(6 * ceil32(return_data.size)) + 576] = this.address
                                            require ext_code.size(uniswapV2RouterAddress)
                                            staticcall uniswapV2RouterAddress.WETH() with:
                                                    gas gas_remaining wei
                                            mem[(6 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[(6 * ceil32(return_data.size)) + 608] = ext_call.return_data[12 len 20]
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            if not uniswapV2RouterAddress:
                                                revert with 0, 'ERC20: approve to the zero address'
                                            allowance[address(this.address)][stor6].field_0 = 0 / totalFees / 2
                                            allowance[address(this.address)][stor6].field_255 = 0
                                            emit Approval((0 / totalFees / 2), this.address, uniswapV2RouterAddress);
                                            mem[(7 * ceil32(return_data.size)) + 640] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                            mem[(7 * ceil32(return_data.size)) + 644] = 0 / totalFees / 2
                                            mem[(7 * ceil32(return_data.size)) + 676] = 0
                                            idx = 0
                                            s = (7 * ceil32(return_data.size)) + 836
                                            t = (6 * ceil32(return_data.size)) + 576
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(uniswapV2RouterAddress)
                                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args Mask(255, 1, 0 / totalFees), 0, 160, address(this.address), block.timestamp, 2, mem[(7 * ceil32(return_data.size)) + 836 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(7 * ceil32(return_data.size)) + 640] = 30
                                            mem[(7 * ceil32(return_data.size)) + 672] = 'SafeMath: subtraction overflow'
                                            if eth.balance(this.address) > eth.balance(this.address):
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            if not uniswapV2RouterAddress:
                                                revert with 0, 'ERC20: approve to the zero address'
                                            allowance[address(this.address)][stor6].field_0 = (0 / totalFees) - (0 / totalFees / 2)
                                            emit Approval(((0 / totalFees) - (0 / totalFees / 2)), this.address, uniswapV2RouterAddress);
                                            mem[(7 * ceil32(return_data.size)) + 708] = this.address
                                            mem[(7 * ceil32(return_data.size)) + 740] = (0 / totalFees) - (0 / totalFees / 2)
                                            mem[(7 * ceil32(return_data.size)) + 772] = 0
                                            mem[(7 * ceil32(return_data.size)) + 804] = 0
                                            mem[(7 * ceil32(return_data.size)) + 836] = owner
                                            mem[(7 * ceil32(return_data.size)) + 868] = block.timestamp
                                            require ext_code.size(uniswapV2RouterAddress)
                                            call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                 gas gas_remaining wei
                                                args address(this.address), (0 / totalFees) - (0 / totalFees / 2), 0, 0, owner, block.timestamp
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            emit SwapAndLiquify(Mask(255, 1, 0 / totalFees), 0, (0 / totalFees) - (0 / totalFees / 2));
                                            mem[(8 * ceil32(return_data.size)) + 704] = 3
                                            mem[(8 * ceil32(return_data.size)) + 736] = this.address
                                            require ext_code.size(uniswapV2RouterAddress)
                                            staticcall uniswapV2RouterAddress.WETH() with:
                                                    gas gas_remaining wei
                                            mem[(8 * ceil32(return_data.size)) + 832] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = (10 * ceil32(return_data.size)) + 832
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[(8 * ceil32(return_data.size)) + 768] = ext_call.return_data[12 len 20]
                                            mem[(8 * ceil32(return_data.size)) + 800] = 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            if not uniswapV2RouterAddress:
                                                revert with 0, 'ERC20: approve to the zero address'
                                            mem[0] = uniswapV2RouterAddress
                                            mem[32] = sha3(address(this.address), 1)
                                            allowance[address(this.address)][stor6].field_0 = balanceOf[this.address]
                                            emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                            mem[(10 * ceil32(return_data.size)) + 832] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                            mem[(10 * ceil32(return_data.size)) + 836] = balanceOf[this.address]
                                            mem[(10 * ceil32(return_data.size)) + 868] = 0
                                            mem[(10 * ceil32(return_data.size)) + 900] = 160
                                            mem[(10 * ceil32(return_data.size)) + 996] = 3
                                            idx = 0
                                            s = (10 * ceil32(return_data.size)) + 1028
                                            t = (8 * ceil32(return_data.size)) + 736
                                            while idx < mem[(8 * ceil32(return_data.size)) + 704]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[(10 * ceil32(return_data.size)) + 932] = this.address
                                            mem[(10 * ceil32(return_data.size)) + 964] = block.timestamp
                                            require ext_code.size(uniswapV2RouterAddress)
                                            call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + 704]) + -mem[64] + 1024]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c)
                                            staticcall 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _29767 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _29779 = mem[_29767]
                                            mem[mem[64] + 4] = dividendTrackerAddress
                                            mem[mem[64] + 36] = _29779
                                            require ext_code.size(0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c)
                                            call 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args dividendTrackerAddress, _29779
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _29815 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_29815] == bool(mem[_29815])
                                            if not mem[_29815]:
                                                stor7 = 0
                                                mem[0] = msg.sender
                                                mem[32] = 18
                                                if stor18[address(msg.sender)]:
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    _30013 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_30013] = 38
                                                    mem[_30013 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 38
                                                        mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_30013 + 70 len 26]
                                                        revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !arg2:
                                                        revert with 0, 17
                                                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
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
                                                                    _32587 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _33111 = mem[_32587 + 32]
                                                                    _33112 = mem[_32587 + 64]
                                                                    mem[mem[64]] = mem[_32587]
                                                                    mem[mem[64] + 64] = _33112
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _33111, _33112, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not stor7:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _32783 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _33582 = mem[_32783 + 32]
                                                                    _33583 = mem[_32783 + 64]
                                                                    mem[mem[64]] = mem[_32783]
                                                                    mem[mem[64] + 64] = _33583
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _33582, _33583, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not ext_call.success:
                                                            if not stor7:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _32784 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _33586 = mem[_32784 + 32]
                                                                    _33587 = mem[_32784 + 64]
                                                                    mem[mem[64]] = mem[_32784]
                                                                    mem[mem[64] + 64] = _33587
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _33586, _33587, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not stor7:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _33115 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _33969 = mem[_33115 + 32]
                                                                    _33970 = mem[_33115 + 64]
                                                                    mem[mem[64]] = mem[_33115]
                                                                    mem[mem[64] + 64] = _33970
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _33969, _33970, gasForProcessing, 1, tx.origin);
                                                else:
                                                    mem[0] = arg1
                                                    mem[32] = 18
                                                    if stor18[address(arg1)]:
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        _30081 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_30081] = 38
                                                        mem[_30081 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                        if arg2 > balanceOf[address(msg.sender)]:
                                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = 32
                                                            mem[mem[64] + 36] = 38
                                                            mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_30081 + 70 len 26]
                                                            revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[arg1] > !arg2:
                                                            revert with 0, 17
                                                        if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(arg1)] = balanceOf[arg1] + arg2
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
                                                                        _32789 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _33605 = mem[_32789 + 32]
                                                                        _33606 = mem[_32789 + 64]
                                                                        mem[mem[64]] = mem[_32789]
                                                                        mem[mem[64] + 64] = _33606
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _33605, _33606, gasForProcessing, 1, tx.origin);
                                                            else:
                                                                if not stor7:
                                                                    require ext_code.size(dividendTrackerAddress)
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _33126 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _33979 = mem[_33126 + 32]
                                                                        _33980 = mem[_33126 + 64]
                                                                        mem[mem[64]] = mem[_33126]
                                                                        mem[mem[64] + 64] = _33980
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _33979, _33980, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not ext_call.success:
                                                                if not stor7:
                                                                    require ext_code.size(dividendTrackerAddress)
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _33127 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _33983 = mem[_33127 + 32]
                                                                        _33984 = mem[_33127 + 64]
                                                                        mem[mem[64]] = mem[_33127]
                                                                        mem[mem[64] + 64] = _33984
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _33983, _33984, gasForProcessing, 1, tx.origin);
                                                            else:
                                                                if not stor7:
                                                                    require ext_code.size(dividendTrackerAddress)
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _33609 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _34333 = mem[_33609 + 32]
                                                                        _34334 = mem[_33609 + 64]
                                                                        mem[mem[64]] = mem[_33609]
                                                                        mem[mem[64] + 64] = _34334
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _34333, _34334, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if stor7:
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            _30016 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_30016] = 38
                                                            mem[_30016 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                            if arg2 > balanceOf[address(msg.sender)]:
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                mem[mem[64] + 36] = 38
                                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_30016 + 70 len 26]
                                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                            if balanceOf[address(msg.sender)] < arg2:
                                                                revert with 0, 17
                                                            balanceOf[address(msg.sender)] -= arg2
                                                            if balanceOf[arg1] > !arg2:
                                                                revert with 0, 17
                                                            if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(arg1)] = balanceOf[arg1] + arg2
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
                                                                            _32590 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _33118 = mem[_32590 + 32]
                                                                            _33119 = mem[_32590 + 64]
                                                                            mem[mem[64]] = mem[_32590]
                                                                            mem[mem[64] + 64] = _33119
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _33118, _33119, gasForProcessing, 1, tx.origin);
                                                                else:
                                                                    if not stor7:
                                                                        require ext_code.size(dividendTrackerAddress)
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _32786 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _33591 = mem[_32786 + 32]
                                                                            _33592 = mem[_32786 + 64]
                                                                            mem[mem[64]] = mem[_32786]
                                                                            mem[mem[64] + 64] = _33592
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _33591, _33592, gasForProcessing, 1, tx.origin);
                                                            else:
                                                                if not ext_call.success:
                                                                    if not stor7:
                                                                        require ext_code.size(dividendTrackerAddress)
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _32787 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _33595 = mem[_32787 + 32]
                                                                            _33596 = mem[_32787 + 64]
                                                                            mem[mem[64]] = mem[_32787]
                                                                            mem[mem[64] + 64] = _33596
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _33595, _33596, gasForProcessing, 1, tx.origin);
                                                                else:
                                                                    if not stor7:
                                                                        require ext_code.size(dividendTrackerAddress)
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _33122 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _33973 = mem[_33122 + 32]
                                                                            _33974 = mem[_33122 + 64]
                                                                            mem[mem[64]] = mem[_33122]
                                                                            mem[mem[64] + 64] = _33974
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _33973, _33974, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not arg2:
                                                                _30170 = mem[64]
                                                                mem[64] = mem[64] + 64
                                                                mem[_30170] = 26
                                                                mem[_30170 + 32] = 'SafeMath: division by zero'
                                                                _30892 = mem[64]
                                                                mem[64] = mem[64] + 64
                                                                mem[_30892] = 30
                                                                mem[_30892 + 32] = 'SafeMath: subtraction overflow'
                                                                if 0 > arg2:
                                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                                if arg2 < 0:
                                                                    revert with 0, 17
                                                                if not msg.sender:
                                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                                if not this.address:
                                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                                _31978 = mem[64]
                                                                mem[64] = mem[64] + 96
                                                                mem[_31978] = 38
                                                                mem[_31978 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                                if 0 > balanceOf[address(msg.sender)]:
                                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                    mem[mem[64] + 4] = 32
                                                                    mem[mem[64] + 36] = 38
                                                                    mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_31978 + 70 len 26]
                                                                    revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                                if balanceOf[address(msg.sender)] < 0:
                                                                    revert with 0, 17
                                                                if balanceOf[this.address] > -1:
                                                                    revert with 0, 17
                                                                if balanceOf[this.address] < balanceOf[this.address]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                mem[0] = this.address
                                                                mem[32] = 0
                                                                balanceOf[address(this.address)] = balanceOf[this.address]
                                                                emit Transfer(0, msg.sender, this.address);
                                                                if not msg.sender:
                                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                                if not arg1:
                                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                                _37012 = mem[64]
                                                                mem[64] = mem[64] + 96
                                                                mem[_37012] = 38
                                                                mem[_37012 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                                if arg2 > balanceOf[address(msg.sender)]:
                                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                    mem[mem[64] + 4] = 32
                                                                    mem[mem[64] + 36] = 38
                                                                    mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_37012 + 70 len 26]
                                                                    revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                                if balanceOf[address(msg.sender)] < arg2:
                                                                    revert with 0, 17
                                                                balanceOf[address(msg.sender)] -= arg2
                                                                if balanceOf[arg1] > !arg2:
                                                                    revert with 0, 17
                                                                if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                balanceOf[address(arg1)] = balanceOf[arg1] + arg2
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
                                                                                _38384 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 96
                                                                                _38639 = mem[_38384 + 32]
                                                                                _38640 = mem[_38384 + 64]
                                                                                mem[mem[64]] = mem[_38384]
                                                                                mem[mem[64] + 64] = _38640
                                                                                mem[mem[64] + 96] = gasForProcessing
                                                                                emit ProcessedDividendTracker(mem[mem[64]], _38639, _38640, gasForProcessing, 1, tx.origin);
                                                                    else:
                                                                        if not stor7:
                                                                            require ext_code.size(dividendTrackerAddress)
                                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                                 gas gas_remaining wei
                                                                                args gasForProcessing
                                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                            if ext_call.success:
                                                                                _38492 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 96
                                                                                _38793 = mem[_38492 + 32]
                                                                                _38794 = mem[_38492 + 64]
                                                                                mem[mem[64]] = mem[_38492]
                                                                                mem[mem[64] + 64] = _38794
                                                                                mem[mem[64] + 96] = gasForProcessing
                                                                                emit ProcessedDividendTracker(mem[mem[64]], _38793, _38794, gasForProcessing, 1, tx.origin);
                                                                else:
                                                                    if not ext_call.success:
                                                                        if not stor7:
                                                                            require ext_code.size(dividendTrackerAddress)
                                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                                 gas gas_remaining wei
                                                                                args gasForProcessing
                                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                            if ext_call.success:
                                                                                _38493 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 96
                                                                                _38797 = mem[_38493 + 32]
                                                                                _38798 = mem[_38493 + 64]
                                                                                mem[mem[64]] = mem[_38493]
                                                                                mem[mem[64] + 64] = _38798
                                                                                mem[mem[64] + 96] = gasForProcessing
                                                                                emit ProcessedDividendTracker(mem[mem[64]], _38797, _38798, gasForProcessing, 1, tx.origin);
                                                                    else:
                                                                        if not stor7:
                                                                            require ext_code.size(dividendTrackerAddress)
                                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                                 gas gas_remaining wei
                                                                                args gasForProcessing
                                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                            if ext_call.success:
                                                                                _38643 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 96
                                                                                _38942 = mem[_38643 + 32]
                                                                                _38943 = mem[_38643 + 64]
                                                                                mem[mem[64]] = mem[_38643]
                                                                                mem[mem[64] + 64] = _38943
                                                                                mem[mem[64] + 96] = gasForProcessing
                                                                                emit ProcessedDividendTracker(mem[mem[64]], _38942, _38943, gasForProcessing, 1, tx.origin);
                                                            else:
                                                                if arg2 and totalFees > -1 / arg2:
                                                                    revert with 0, 17
                                                                if not arg2:
                                                                    revert with 0, 18
                                                                if arg2 * totalFees / arg2 != totalFees:
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                _30738 = mem[64]
                                                                mem[64] = mem[64] + 64
                                                                mem[_30738] = 26
                                                                mem[_30738 + 32] = 'SafeMath: division by zero'
                                                                _31483 = mem[64]
                                                                mem[64] = mem[64] + 64
                                                                mem[_31483] = 30
                                                                mem[_31483 + 32] = 'SafeMath: subtraction overflow'
                                                                if arg2 * totalFees / 100 > arg2:
                                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                                if arg2 < arg2 * totalFees / 100:
                                                                    revert with 0, 17
                                                                if not msg.sender:
                                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                                if not this.address:
                                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                                _33598 = mem[64]
                                                                mem[64] = mem[64] + 96
                                                                mem[_33598] = 38
                                                                mem[_33598 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                                if arg2 * totalFees / 100 > balanceOf[address(msg.sender)]:
                                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                    mem[mem[64] + 4] = 32
                                                                    mem[mem[64] + 36] = 38
                                                                    mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_33598 + 70 len 26]
                                                                    revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                                if balanceOf[address(msg.sender)] < arg2 * totalFees / 100:
                                                                    revert with 0, 17
                                                                balanceOf[address(msg.sender)] -= arg2 * totalFees / 100
                                                                if balanceOf[this.address] > !(arg2 * totalFees / 100):
                                                                    revert with 0, 17
                                                                if balanceOf[this.address] + (arg2 * totalFees / 100) < balanceOf[this.address]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                mem[0] = this.address
                                                                mem[32] = 0
                                                                balanceOf[address(this.address)] = balanceOf[this.address] + (arg2 * totalFees / 100)
                                                                emit Transfer((arg2 * totalFees / 100), msg.sender, this.address);
                                                                if not msg.sender:
                                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                                if not arg1:
                                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                                _37408 = mem[64]
                                                                mem[64] = mem[64] + 96
                                                                mem[_37408] = 38
                                                                mem[_37408 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                                if arg2 - (arg2 * totalFees / 100) > balanceOf[address(msg.sender)]:
                                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                    mem[mem[64] + 4] = 32
                                                                    mem[mem[64] + 36] = 38
                                                                    mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_37408 + 70 len 26]
                                                                    revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
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
                                                                                _39307 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 96
                                                                                _39672 = mem[_39307 + 32]
                                                                                _39673 = mem[_39307 + 64]
                                                                                mem[mem[64]] = mem[_39307]
                                                                                mem[mem[64] + 64] = _39673
                                                                                mem[mem[64] + 96] = gasForProcessing
                                                                                emit ProcessedDividendTracker(mem[mem[64]], _39672, _39673, gasForProcessing, 1, tx.origin);
                                                                    else:
                                                                        if not stor7:
                                                                            require ext_code.size(dividendTrackerAddress)
                                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                                 gas gas_remaining wei
                                                                                args gasForProcessing
                                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                            if ext_call.success:
                                                                                _39485 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 96
                                                                                _39882 = mem[_39485 + 32]
                                                                                _39883 = mem[_39485 + 64]
                                                                                mem[mem[64]] = mem[_39485]
                                                                                mem[mem[64] + 64] = _39883
                                                                                mem[mem[64] + 96] = gasForProcessing
                                                                                emit ProcessedDividendTracker(mem[mem[64]], _39882, _39883, gasForProcessing, 1, tx.origin);
                                                                else:
                                                                    if not ext_call.success:
                                                                        if not stor7:
                                                                            require ext_code.size(dividendTrackerAddress)
                                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                                 gas gas_remaining wei
                                                                                args gasForProcessing
                                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                            if ext_call.success:
                                                                                _39486 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 96
                                                                                _39886 = mem[_39486 + 32]
                                                                                _39887 = mem[_39486 + 64]
                                                                                mem[mem[64]] = mem[_39486]
                                                                                mem[mem[64] + 64] = _39887
                                                                                mem[mem[64] + 96] = gasForProcessing
                                                                                emit ProcessedDividendTracker(mem[mem[64]], _39886, _39887, gasForProcessing, 1, tx.origin);
                                                                    else:
                                                                        if not stor7:
                                                                            require ext_code.size(dividendTrackerAddress)
                                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                                 gas gas_remaining wei
                                                                                args gasForProcessing
                                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                            if ext_call.success:
                                                                                _39676 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 96
                                                                                _40053 = mem[_39676 + 32]
                                                                                _40054 = mem[_39676 + 64]
                                                                                mem[mem[64]] = mem[_39676]
                                                                                mem[mem[64] + 64] = _40054
                                                                                mem[mem[64] + 96] = gasForProcessing
                                                                                emit ProcessedDividendTracker(mem[mem[64]], _40053, _40054, gasForProcessing, 1, tx.origin);
                                            else:
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.distributeBTCDividends(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _29779
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[mem[64] + 32] = _29779
                                                emit SendDividends(balanceOf[this.address], _29779);
                                                stor7 = 0
                                                mem[0] = msg.sender
                                                mem[32] = 18
                                                if stor18[address(msg.sender)]:
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    _30293 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_30293] = 38
                                                    mem[_30293 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 38
                                                        mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_30293 + 70 len 26]
                                                        revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !arg2:
                                                        revert with 0, 17
                                                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
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
                                                                    _33610 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _34337 = mem[_33610 + 32]
                                                                    _34338 = mem[_33610 + 64]
                                                                    mem[mem[64]] = mem[_33610]
                                                                    mem[mem[64] + 64] = _34338
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _34337, _34338, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not stor7:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _33987 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _34816 = mem[_33987 + 32]
                                                                    _34817 = mem[_33987 + 64]
                                                                    mem[mem[64]] = mem[_33987]
                                                                    mem[mem[64] + 64] = _34817
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _34816, _34817, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not ext_call.success:
                                                            if not stor7:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _33988 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _34820 = mem[_33988 + 32]
                                                                    _34821 = mem[_33988 + 64]
                                                                    mem[mem[64]] = mem[_33988]
                                                                    mem[mem[64] + 64] = _34821
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _34820, _34821, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not stor7:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _34341 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _35253 = mem[_34341 + 32]
                                                                    _35254 = mem[_34341 + 64]
                                                                    mem[mem[64]] = mem[_34341]
                                                                    mem[mem[64] + 64] = _35254
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _35253, _35254, gasForProcessing, 1, tx.origin);
                                                else:
                                                    mem[0] = arg1
                                                    mem[32] = 18
                                                    if stor18[address(arg1)]:
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        _30379 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_30379] = 38
                                                        mem[_30379 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                        if arg2 > balanceOf[address(msg.sender)]:
                                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = 32
                                                            mem[mem[64] + 36] = 38
                                                            mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_30379 + 70 len 26]
                                                            revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[arg1] > !arg2:
                                                            revert with 0, 17
                                                        if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(arg1)] = balanceOf[arg1] + arg2
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
                                                                        _33993 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _34839 = mem[_33993 + 32]
                                                                        _34840 = mem[_33993 + 64]
                                                                        mem[mem[64]] = mem[_33993]
                                                                        mem[mem[64] + 64] = _34840
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _34839, _34840, gasForProcessing, 1, tx.origin);
                                                            else:
                                                                if not stor7:
                                                                    require ext_code.size(dividendTrackerAddress)
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _34352 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _35263 = mem[_34352 + 32]
                                                                        _35264 = mem[_34352 + 64]
                                                                        mem[mem[64]] = mem[_34352]
                                                                        mem[mem[64] + 64] = _35264
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _35263, _35264, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not ext_call.success:
                                                                if not stor7:
                                                                    require ext_code.size(dividendTrackerAddress)
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _34353 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _35267 = mem[_34353 + 32]
                                                                        _35268 = mem[_34353 + 64]
                                                                        mem[mem[64]] = mem[_34353]
                                                                        mem[mem[64] + 64] = _35268
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _35267, _35268, gasForProcessing, 1, tx.origin);
                                                            else:
                                                                if not stor7:
                                                                    require ext_code.size(dividendTrackerAddress)
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _34843 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _35576 = mem[_34843 + 32]
                                                                        _35577 = mem[_34843 + 64]
                                                                        mem[mem[64]] = mem[_34843]
                                                                        mem[mem[64] + 64] = _35577
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _35576, _35577, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if stor7:
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            _30296 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_30296] = 38
                                                            mem[_30296 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                            if arg2 > balanceOf[address(msg.sender)]:
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                mem[mem[64] + 36] = 38
                                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_30296 + 70 len 26]
                                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                            if balanceOf[address(msg.sender)] < arg2:
                                                                revert with 0, 17
                                                            balanceOf[address(msg.sender)] -= arg2
                                                            if balanceOf[arg1] > !arg2:
                                                                revert with 0, 17
                                                            if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(arg1)] = balanceOf[arg1] + arg2
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
                                                                            _33613 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _34344 = mem[_33613 + 32]
                                                                            _34345 = mem[_33613 + 64]
                                                                            mem[mem[64]] = mem[_33613]
                                                                            mem[mem[64] + 64] = _34345
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _34344, _34345, gasForProcessing, 1, tx.origin);
                                                                else:
                                                                    if not stor7:
                                                                        require ext_code.size(dividendTrackerAddress)
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _33990 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _34825 = mem[_33990 + 32]
                                                                            _34826 = mem[_33990 + 64]
                                                                            mem[mem[64]] = mem[_33990]
                                                                            mem[mem[64] + 64] = _34826
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _34825, _34826, gasForProcessing, 1, tx.origin);
                                                            else:
                                                                if not ext_call.success:
                                                                    if not stor7:
                                                                        require ext_code.size(dividendTrackerAddress)
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _33991 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _34829 = mem[_33991 + 32]
                                                                            _34830 = mem[_33991 + 64]
                                                                            mem[mem[64]] = mem[_33991]
                                                                            mem[mem[64] + 64] = _34830
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _34829, _34830, gasForProcessing, 1, tx.origin);
                                                                else:
                                                                    if not stor7:
                                                                        require ext_code.size(dividendTrackerAddress)
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _34348 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _35257 = mem[_34348 + 32]
                                                                            _35258 = mem[_34348 + 64]
                                                                            mem[mem[64]] = mem[_34348]
                                                                            mem[mem[64] + 64] = _35258
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _35257, _35258, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not arg2:
                                                                _30472 = mem[64]
                                                                mem[64] = mem[64] + 64
                                                                mem[_30472] = 26
                                                                mem[_30472 + 32] = 'SafeMath: division by zero'
                                                                _31159 = mem[64]
                                                                mem[64] = mem[64] + 64
                                                                mem[_31159] = 30
                                                                mem[_31159 + 32] = 'SafeMath: subtraction overflow'
                                                                if 0 > arg2:
                                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                                if arg2 < 0:
                                                                    revert with 0, 17
                                                                if not msg.sender:
                                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                                if not this.address:
                                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                                _32599 = mem[64]
                                                                mem[64] = mem[64] + 96
                                                                mem[_32599] = 38
                                                                mem[_32599 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                                if 0 > balanceOf[address(msg.sender)]:
                                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                    mem[mem[64] + 4] = 32
                                                                    mem[mem[64] + 36] = 38
                                                                    mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_32599 + 70 len 26]
                                                                    revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                                if balanceOf[address(msg.sender)] < 0:
                                                                    revert with 0, 17
                                                                if balanceOf[this.address] > -1:
                                                                    revert with 0, 17
                                                                if balanceOf[this.address] < balanceOf[this.address]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                mem[0] = this.address
                                                                mem[32] = 0
                                                                balanceOf[address(this.address)] = balanceOf[this.address]
                                                                emit Transfer(0, msg.sender, this.address);
                                                                if not msg.sender:
                                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                                if not arg1:
                                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                                _37265 = mem[64]
                                                                mem[64] = mem[64] + 96
                                                                mem[_37265] = 38
                                                                mem[_37265 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                                if arg2 > balanceOf[address(msg.sender)]:
                                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                    mem[mem[64] + 4] = 32
                                                                    mem[mem[64] + 36] = 38
                                                                    mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_37265 + 70 len 26]
                                                                    revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                                if balanceOf[address(msg.sender)] < arg2:
                                                                    revert with 0, 17
                                                                balanceOf[address(msg.sender)] -= arg2
                                                                if balanceOf[arg1] > !arg2:
                                                                    revert with 0, 17
                                                                if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                balanceOf[address(arg1)] = balanceOf[arg1] + arg2
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
                                                                                _38801 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 96
                                                                                _39119 = mem[_38801 + 32]
                                                                                _39120 = mem[_38801 + 64]
                                                                                mem[mem[64]] = mem[_38801]
                                                                                mem[mem[64] + 64] = _39120
                                                                                mem[mem[64] + 96] = gasForProcessing
                                                                                emit ProcessedDividendTracker(mem[mem[64]], _39119, _39120, gasForProcessing, 1, tx.origin);
                                                                    else:
                                                                        if not stor7:
                                                                            require ext_code.size(dividendTrackerAddress)
                                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                                 gas gas_remaining wei
                                                                                args gasForProcessing
                                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                            if ext_call.success:
                                                                                _38948 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 96
                                                                                _39317 = mem[_38948 + 32]
                                                                                _39318 = mem[_38948 + 64]
                                                                                mem[mem[64]] = mem[_38948]
                                                                                mem[mem[64] + 64] = _39318
                                                                                mem[mem[64] + 96] = gasForProcessing
                                                                                emit ProcessedDividendTracker(mem[mem[64]], _39317, _39318, gasForProcessing, 1, tx.origin);
                                                                else:
                                                                    if not ext_call.success:
                                                                        if not stor7:
                                                                            require ext_code.size(dividendTrackerAddress)
                                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                                 gas gas_remaining wei
                                                                                args gasForProcessing
                                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                            if ext_call.success:
                                                                                _38949 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 96
                                                                                _39321 = mem[_38949 + 32]
                                                                                _39322 = mem[_38949 + 64]
                                                                                mem[mem[64]] = mem[_38949]
                                                                                mem[mem[64] + 64] = _39322
                                                                                mem[mem[64] + 96] = gasForProcessing
                                                                                emit ProcessedDividendTracker(mem[mem[64]], _39321, _39322, gasForProcessing, 1, tx.origin);
                                                                    else:
                                                                        if not stor7:
                                                                            require ext_code.size(dividendTrackerAddress)
                                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                                 gas gas_remaining wei
                                                                                args gasForProcessing
                                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                            if ext_call.success:
                                                                                _39123 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 96
                                                                                _39496 = mem[_39123 + 32]
                                                                                _39497 = mem[_39123 + 64]
                                                                                mem[mem[64]] = mem[_39123]
                                                                                mem[mem[64] + 64] = _39497
                                                                                mem[mem[64] + 96] = gasForProcessing
                                                                                emit ProcessedDividendTracker(mem[mem[64]], _39496, _39497, gasForProcessing, 1, tx.origin);
                                                            else:
                                                                if arg2 and totalFees > -1 / arg2:
                                                                    revert with 0, 17
                                                                if not arg2:
                                                                    revert with 0, 18
                                                                if arg2 * totalFees / arg2 != totalFees:
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                _30968 = mem[64]
                                                                mem[64] = mem[64] + 64
                                                                mem[_30968] = 26
                                                                mem[_30968 + 32] = 'SafeMath: division by zero'
                                                                _31879 = mem[64]
                                                                mem[64] = mem[64] + 64
                                                                mem[_31879] = 30
                                                                mem[_31879 + 32] = 'SafeMath: subtraction overflow'
                                                                if arg2 * totalFees / 100 > arg2:
                                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                                if arg2 < arg2 * totalFees / 100:
                                                                    revert with 0, 17
                                                                if not msg.sender:
                                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                                if not this.address:
                                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                                _34832 = mem[64]
                                                                mem[64] = mem[64] + 96
                                                                mem[_34832] = 38
                                                                mem[_34832 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                                if arg2 * totalFees / 100 > balanceOf[address(msg.sender)]:
                                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                    mem[mem[64] + 4] = 32
                                                                    mem[mem[64] + 36] = 38
                                                                    mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_34832 + 70 len 26]
                                                                    revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                                if balanceOf[address(msg.sender)] < arg2 * totalFees / 100:
                                                                    revert with 0, 17
                                                                balanceOf[address(msg.sender)] -= arg2 * totalFees / 100
                                                                if balanceOf[this.address] > !(arg2 * totalFees / 100):
                                                                    revert with 0, 17
                                                                if balanceOf[this.address] + (arg2 * totalFees / 100) < balanceOf[this.address]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                mem[0] = this.address
                                                                mem[32] = 0
                                                                balanceOf[address(this.address)] = balanceOf[this.address] + (arg2 * totalFees / 100)
                                                                emit Transfer((arg2 * totalFees / 100), msg.sender, this.address);
                                                                if not msg.sender:
                                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                                if not arg1:
                                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                                _37565 = mem[64]
                                                                mem[64] = mem[64] + 96
                                                                mem[_37565] = 38
                                                                mem[_37565 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                                if arg2 - (arg2 * totalFees / 100) > balanceOf[address(msg.sender)]:
                                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                    mem[mem[64] + 4] = 32
                                                                    mem[mem[64] + 36] = 38
                                                                    mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_37565 + 70 len 26]
                                                                    revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
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
                                                                                _39890 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 96
                                                                                _40232 = mem[_39890 + 32]
                                                                                _40233 = mem[_39890 + 64]
                                                                                mem[mem[64]] = mem[_39890]
                                                                                mem[mem[64] + 64] = _40233
                                                                                mem[mem[64] + 96] = gasForProcessing
                                                                                emit ProcessedDividendTracker(mem[mem[64]], _40232, _40233, gasForProcessing, 1, tx.origin);
                                                                    else:
                                                                        if not stor7:
                                                                            require ext_code.size(dividendTrackerAddress)
                                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                                 gas gas_remaining wei
                                                                                args gasForProcessing
                                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                            if ext_call.success:
                                                                                _40057 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 96
                                                                                _40442 = mem[_40057 + 32]
                                                                                _40443 = mem[_40057 + 64]
                                                                                mem[mem[64]] = mem[_40057]
                                                                                mem[mem[64] + 64] = _40443
                                                                                mem[mem[64] + 96] = gasForProcessing
                                                                                emit ProcessedDividendTracker(mem[mem[64]], _40442, _40443, gasForProcessing, 1, tx.origin);
                                                                else:
                                                                    if not ext_call.success:
                                                                        if not stor7:
                                                                            require ext_code.size(dividendTrackerAddress)
                                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                                 gas gas_remaining wei
                                                                                args gasForProcessing
                                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                            if ext_call.success:
                                                                                _40058 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 96
                                                                                _40446 = mem[_40058 + 32]
                                                                                _40447 = mem[_40058 + 64]
                                                                                mem[mem[64]] = mem[_40058]
                                                                                mem[mem[64] + 64] = _40447
                                                                                mem[mem[64] + 96] = gasForProcessing
                                                                                emit ProcessedDividendTracker(mem[mem[64]], _40446, _40447, gasForProcessing, 1, tx.origin);
                                                                    else:
                                                                        if not stor7:
                                                                            require ext_code.size(dividendTrackerAddress)
                                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                                 gas gas_remaining wei
                                                                                args gasForProcessing
                                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                            if ext_call.success:
                                                                                _40236 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 96
                                                                                _40593 = mem[_40236 + 32]
                                                                                _40594 = mem[_40236 + 64]
                                                                                mem[mem[64]] = mem[_40236]
                                                                                mem[mem[64] + 64] = _40594
                                                                                mem[mem[64] + 96] = gasForProcessing
                                                                                emit ProcessedDividendTracker(mem[mem[64]], _40593, _40594, gasForProcessing, 1, tx.origin);
                                    else:
                                        mem[96] = 26
                                        mem[128] = 'SafeMath: division by zero'
                                        if not totalFees:
                                            revert with 0, 'SafeMath: division by zero', 0
                                        mem[164] = this.address
                                        require ext_code.size(0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c)
                                        staticcall 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[160] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[ceil32(return_data.size) + 160] = 3
                                        mem[ceil32(return_data.size) + 192] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[ceil32(return_data.size) + 224] = ext_call.return_data[12 len 20]
                                        mem[ceil32(return_data.size) + 256] = 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c
                                        if not this.address:
                                            mem[(2 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(2 * ceil32(return_data.size)) + 292] = 32
                                            mem[(2 * ceil32(return_data.size)) + 324] = 36
                                            mem[(2 * ceil32(return_data.size)) + 356] = 'ERC20: approve from the zero add'
                                            mem[(2 * ceil32(return_data.size)) + 388] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                            revert with memory
                                              from (2 * ceil32(return_data.size)) + 288
                                               len ceil32(return_data.size) + 132
                                        if not uniswapV2RouterAddress:
                                            mem[(2 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(2 * ceil32(return_data.size)) + 292] = 32
                                            mem[(2 * ceil32(return_data.size)) + 324] = 34
                                            mem[(2 * ceil32(return_data.size)) + 356] = 'ERC20: approve to the zero addre'
                                            mem[(2 * ceil32(return_data.size)) + 388] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                            revert with memory
                                              from (2 * ceil32(return_data.size)) + 288
                                               len ceil32(return_data.size) + 132
                                        allowance[address(this.address)][stor6].field_0 = 0 / totalFees
                                        mem[(2 * ceil32(return_data.size)) + 288] = 0 / totalFees
                                        emit Approval(mem[(2 * ceil32(return_data.size)) + 288 len ceil32(return_data.size) + 32], this.address, uniswapV2RouterAddress);
                                        mem[(2 * ceil32(return_data.size)) + 288] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 292] = 0 / totalFees
                                        mem[(2 * ceil32(return_data.size)) + 324] = 0
                                        mem[(2 * ceil32(return_data.size)) + 356] = 160
                                        mem[(2 * ceil32(return_data.size)) + 452] = 3
                                        idx = 0
                                        s = (2 * ceil32(return_data.size)) + 484
                                        t = ceil32(return_data.size) + 192
                                        while idx < mem[ceil32(return_data.size) + 160]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(2 * ceil32(return_data.size)) + 388] = this.address
                                        mem[(2 * ceil32(return_data.size)) + 420] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args 0 / totalFees, 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 452 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(2 * ceil32(return_data.size)) + 292] = this.address
                                        require ext_code.size(0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c)
                                        staticcall 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(4 * ceil32(return_data.size)) + 288] = 30
                                        mem[(4 * ceil32(return_data.size)) + 320] = 'SafeMath: subtraction overflow'
                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        mem[(4 * ceil32(return_data.size)) + 356] = _marketingWalletAddress
                                        mem[(4 * ceil32(return_data.size)) + 388] = 0
                                        require ext_code.size(0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c)
                                        call 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args _marketingWalletAddress, 0
                                        mem[(4 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if not balanceOf[this.address]:
                                            if not totalFees:
                                                revert with 0, 'SafeMath: division by zero', 0
                                            if 0 / totalFees / 2 > 0 / totalFees:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if 0 / totalFees < 0 / totalFees / 2:
                                                revert with 0, 17
                                            mem[(6 * ceil32(return_data.size)) + 576] = this.address
                                            require ext_code.size(uniswapV2RouterAddress)
                                            staticcall uniswapV2RouterAddress.WETH() with:
                                                    gas gas_remaining wei
                                            mem[(6 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[(6 * ceil32(return_data.size)) + 608] = ext_call.return_data[12 len 20]
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            if not uniswapV2RouterAddress:
                                                revert with 0, 'ERC20: approve to the zero address'
                                            allowance[address(this.address)][stor6].field_0 = 0 / totalFees / 2
                                            allowance[address(this.address)][stor6].field_255 = 0
                                            emit Approval((0 / totalFees / 2), this.address, uniswapV2RouterAddress);
                                            mem[(7 * ceil32(return_data.size)) + 640] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                            mem[(7 * ceil32(return_data.size)) + 644] = 0 / totalFees / 2
                                            idx = 0
                                            s = (7 * ceil32(return_data.size)) + 836
                                            t = (6 * ceil32(return_data.size)) + 576
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(uniswapV2RouterAddress)
                                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args Mask(255, 1, 0 / totalFees), 0, 160, address(this.address), block.timestamp, 2, mem[(7 * ceil32(return_data.size)) + 836 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if eth.balance(this.address) > eth.balance(this.address):
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            if not uniswapV2RouterAddress:
                                                revert with 0, 'ERC20: approve to the zero address'
                                            allowance[address(this.address)][stor6].field_0 = (0 / totalFees) - (0 / totalFees / 2)
                                            emit Approval(((0 / totalFees) - (0 / totalFees / 2)), this.address, uniswapV2RouterAddress);
                                            mem[(7 * ceil32(return_data.size)) + 772] = 0
                                            mem[(7 * ceil32(return_data.size)) + 804] = 0
                                            mem[(7 * ceil32(return_data.size)) + 836] = owner
                                            mem[(7 * ceil32(return_data.size)) + 868] = block.timestamp
                                            require ext_code.size(uniswapV2RouterAddress)
                                            call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                 gas gas_remaining wei
                                                args address(this.address), (0 / totalFees) - (0 / totalFees / 2), 0, 0, owner, block.timestamp
                                            mem[(7 * ceil32(return_data.size)) + 704 len 96] = ext_call.return_data[0 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                Mask(255, 1, 0 / totalFees),
                                                                0,
                                                                (0 / totalFees) - (0 / totalFees / 2),
                                                                mem[(9 * ceil32(return_data.size)) + 800 len 5 * ceil32(return_data.size)],
                                            mem[(9 * ceil32(return_data.size)) + 736] = this.address
                                            require ext_code.size(uniswapV2RouterAddress)
                                            staticcall uniswapV2RouterAddress.WETH() with:
                                                    gas gas_remaining wei
                                            mem[(9 * ceil32(return_data.size)) + 832] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[(9 * ceil32(return_data.size)) + 768] = ext_call.return_data[12 len 20]
                                            mem[(9 * ceil32(return_data.size)) + 800] = 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            if not uniswapV2RouterAddress:
                                                revert with 0, 'ERC20: approve to the zero address'
                                            allowance[address(this.address)][stor6].field_0 = balanceOf[this.address]
                                            emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                            mem[(10 * ceil32(return_data.size)) + 832] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                            mem[(10 * ceil32(return_data.size)) + 836] = balanceOf[this.address]
                                            mem[(10 * ceil32(return_data.size)) + 900] = 160
                                            mem[(10 * ceil32(return_data.size)) + 996] = 3
                                            idx = 0
                                            s = (10 * ceil32(return_data.size)) + 1028
                                            t = (9 * ceil32(return_data.size)) + 736
                                            while idx < 3:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[(10 * ceil32(return_data.size)) + 932] = this.address
                                            mem[(10 * ceil32(return_data.size)) + 964] = block.timestamp
                                            require ext_code.size(uniswapV2RouterAddress)
                                            call uniswapV2RouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 3, mem[(10 * ceil32(return_data.size)) + 1028 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c)
                                            staticcall 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c)
                                            call 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args dividendTrackerAddress, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if ext_call.return_data[0]:
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.distributeBTCDividends(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                emit SendDividends(balanceOf[this.address], ext_call.return_data[0]);
                                            stor7 = 0
                                            if stor18[address(msg.sender)]:
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(12 * ceil32(return_data.size)) + 902 len 26] >> 48,
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
                                                if stor18[address(arg1)]:
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(12 * ceil32(return_data.size)) + 902 len 26] >> 48,
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
                                                    if stor7:
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if arg2 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 
                                                                        32,
                                                                        38,
                                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(12 * ceil32(return_data.size)) + 902 len 26] >> 48,
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
                                                        if not arg2:
                                                            if 0 > arg2:
                                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                                            if arg2 < 0:
                                                                revert with 0, 17
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if 0 > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(12 * ceil32(return_data.size)) + 1030 len 26] >> 48,
                                                                            0
                                                            if balanceOf[address(msg.sender)] < 0:
                                                                revert with 0, 17
                                                            if balanceOf[this.address] > -1:
                                                                revert with 0, 17
                                                            if balanceOf[this.address] < balanceOf[this.address]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(this.address)] = balanceOf[this.address]
                                                            emit Transfer(0, msg.sender, this.address);
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if arg2 > balanceOf[address(msg.sender)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(12 * ceil32(return_data.size)) + 1126 len 26] >> 48,
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
                                                            if not arg2:
                                                                revert with 0, 18
                                                            if arg2 * totalFees / arg2 != totalFees:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if arg2 * totalFees / 100 > arg2:
                                                                revert with 0, 'SafeMath: subtraction overflow', 0
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
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(12 * ceil32(return_data.size)) + 1030 len 26] >> 48,
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
                                                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(12 * ceil32(return_data.size)) + 1126 len 26] >> 48,
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
                                            if balanceOf[this.address] and liquidityFee > -1 / balanceOf[this.address]:
                                                revert with 0, 17
                                            if not balanceOf[this.address]:
                                                revert with 0, 18
                                            if balanceOf[this.address] * liquidityFee / balanceOf[this.address] != liquidityFee:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            mem[(6 * ceil32(return_data.size)) + 352] = 26
                                            mem[(6 * ceil32(return_data.size)) + 384] = 'SafeMath: division by zero'
                                            if not totalFees:
                                                revert with 0, 'SafeMath: division by zero', 0
                                            mem[(6 * ceil32(return_data.size)) + 416] = 26
                                            mem[(6 * ceil32(return_data.size)) + 448] = 'SafeMath: division by zero'
                                            mem[(6 * ceil32(return_data.size)) + 480] = 30
                                            mem[(6 * ceil32(return_data.size)) + 512] = 'SafeMath: subtraction overflow'
                                            if balanceOf[this.address] * liquidityFee / totalFees / 2 > balanceOf[this.address] * liquidityFee / totalFees:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if balanceOf[this.address] * liquidityFee / totalFees < balanceOf[this.address] * liquidityFee / totalFees / 2:
                                                revert with 0, 17
                                            mem[(6 * ceil32(return_data.size)) + 544] = 2
                                            mem[(6 * ceil32(return_data.size)) + 576] = this.address
                                            require ext_code.size(uniswapV2RouterAddress)
                                            staticcall uniswapV2RouterAddress.WETH() with:
                                                    gas gas_remaining wei
                                            mem[(6 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[(6 * ceil32(return_data.size)) + 608] = ext_call.return_data[12 len 20]
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            if not uniswapV2RouterAddress:
                                                revert with 0, 'ERC20: approve to the zero address'
                                            allowance[address(this.address)][stor6].field_0 = balanceOf[this.address] * liquidityFee / totalFees / 2
                                            allowance[address(this.address)][stor6].field_255 = 0
                                            emit Approval((balanceOf[this.address] * liquidityFee / totalFees / 2), this.address, uniswapV2RouterAddress);
                                            mem[(7 * ceil32(return_data.size)) + 640] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                            mem[(7 * ceil32(return_data.size)) + 644] = balanceOf[this.address] * liquidityFee / totalFees / 2
                                            mem[(7 * ceil32(return_data.size)) + 676] = 0
                                            idx = 0
                                            s = (7 * ceil32(return_data.size)) + 836
                                            t = (6 * ceil32(return_data.size)) + 576
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(uniswapV2RouterAddress)
                                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args Mask(255, 1, balanceOf[this.address] * liquidityFee / totalFees), 0, 160, address(this.address), block.timestamp, 2, mem[(7 * ceil32(return_data.size)) + 836 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[(7 * ceil32(return_data.size)) + 640] = 30
                                            mem[(7 * ceil32(return_data.size)) + 672] = 'SafeMath: subtraction overflow'
                                            if eth.balance(this.address) > eth.balance(this.address):
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            if not uniswapV2RouterAddress:
                                                revert with 0, 'ERC20: approve to the zero address'
                                            allowance[address(this.address)][stor6].field_0 = (balanceOf[this.address] * liquidityFee / totalFees) - (balanceOf[this.address] * liquidityFee / totalFees / 2)
                                            emit Approval(((balanceOf[this.address] * liquidityFee / totalFees) - (balanceOf[this.address] * liquidityFee / totalFees / 2)), this.address, uniswapV2RouterAddress);
                                            mem[(7 * ceil32(return_data.size)) + 708] = this.address
                                            mem[(7 * ceil32(return_data.size)) + 740] = (balanceOf[this.address] * liquidityFee / totalFees) - (balanceOf[this.address] * liquidityFee / totalFees / 2)
                                            mem[(7 * ceil32(return_data.size)) + 772] = 0
                                            mem[(7 * ceil32(return_data.size)) + 804] = 0
                                            mem[(7 * ceil32(return_data.size)) + 836] = owner
                                            mem[(7 * ceil32(return_data.size)) + 868] = block.timestamp
                                            require ext_code.size(uniswapV2RouterAddress)
                                            call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                 gas gas_remaining wei
                                                args address(this.address), (balanceOf[this.address] * liquidityFee / totalFees) - (balanceOf[this.address] * liquidityFee / totalFees / 2), 0, 0, owner, block.timestamp
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            emit SwapAndLiquify(Mask(255, 1, balanceOf[this.address] * liquidityFee / totalFees), 0, (balanceOf[this.address] * liquidityFee / totalFees) - (balanceOf[this.address] * liquidityFee / totalFees / 2));
                                            mem[(8 * ceil32(return_data.size)) + 704] = 3
                                            mem[(8 * ceil32(return_data.size)) + 736] = this.address
                                            require ext_code.size(uniswapV2RouterAddress)
                                            staticcall uniswapV2RouterAddress.WETH() with:
                                                    gas gas_remaining wei
                                            mem[(8 * ceil32(return_data.size)) + 832] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = (10 * ceil32(return_data.size)) + 832
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[(8 * ceil32(return_data.size)) + 768] = ext_call.return_data[12 len 20]
                                            mem[(8 * ceil32(return_data.size)) + 800] = 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            if not uniswapV2RouterAddress:
                                                revert with 0, 'ERC20: approve to the zero address'
                                            mem[0] = uniswapV2RouterAddress
                                            mem[32] = sha3(address(this.address), 1)
                                            allowance[address(this.address)][stor6].field_0 = balanceOf[this.address]
                                            emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                            mem[(10 * ceil32(return_data.size)) + 832] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                            mem[(10 * ceil32(return_data.size)) + 836] = balanceOf[this.address]
                                            mem[(10 * ceil32(return_data.size)) + 868] = 0
                                            mem[(10 * ceil32(return_data.size)) + 900] = 160
                                            mem[(10 * ceil32(return_data.size)) + 996] = 3
                                            idx = 0
                                            s = (10 * ceil32(return_data.size)) + 1028
                                            t = (8 * ceil32(return_data.size)) + 736
                                            while idx < mem[(8 * ceil32(return_data.size)) + 704]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[(10 * ceil32(return_data.size)) + 932] = this.address
                                            mem[(10 * ceil32(return_data.size)) + 964] = block.timestamp
                                            require ext_code.size(uniswapV2RouterAddress)
                                            call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + 704]) + -mem[64] + 1024]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c)
                                            staticcall 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _29768 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _29780 = mem[_29768]
                                            mem[mem[64] + 4] = dividendTrackerAddress
                                            mem[mem[64] + 36] = _29780
                                            require ext_code.size(0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c)
                                            call 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args dividendTrackerAddress, _29780
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _29816 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_29816] == bool(mem[_29816])
                                            if not mem[_29816]:
                                                stor7 = 0
                                                mem[0] = msg.sender
                                                mem[32] = 18
                                                if stor18[address(msg.sender)]:
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    _30020 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_30020] = 38
                                                    mem[_30020 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 38
                                                        mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_30020 + 70 len 26]
                                                        revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !arg2:
                                                        revert with 0, 17
                                                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
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
                                                                    _32604 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _33142 = mem[_32604 + 32]
                                                                    _33143 = mem[_32604 + 64]
                                                                    mem[mem[64]] = mem[_32604]
                                                                    mem[mem[64] + 64] = _33143
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _33142, _33143, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not stor7:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _32799 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _33624 = mem[_32799 + 32]
                                                                    _33625 = mem[_32799 + 64]
                                                                    mem[mem[64]] = mem[_32799]
                                                                    mem[mem[64] + 64] = _33625
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _33624, _33625, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not ext_call.success:
                                                            if not stor7:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _32800 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _33628 = mem[_32800 + 32]
                                                                    _33629 = mem[_32800 + 64]
                                                                    mem[mem[64]] = mem[_32800]
                                                                    mem[mem[64] + 64] = _33629
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _33628, _33629, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not stor7:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _33146 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _33998 = mem[_33146 + 32]
                                                                    _33999 = mem[_33146 + 64]
                                                                    mem[mem[64]] = mem[_33146]
                                                                    mem[mem[64] + 64] = _33999
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _33998, _33999, gasForProcessing, 1, tx.origin);
                                                else:
                                                    mem[0] = arg1
                                                    mem[32] = 18
                                                    if stor18[address(arg1)]:
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        _30086 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_30086] = 38
                                                        mem[_30086 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                        if arg2 > balanceOf[address(msg.sender)]:
                                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = 32
                                                            mem[mem[64] + 36] = 38
                                                            mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_30086 + 70 len 26]
                                                            revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[arg1] > !arg2:
                                                            revert with 0, 17
                                                        if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(arg1)] = balanceOf[arg1] + arg2
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
                                                                        _32805 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _33647 = mem[_32805 + 32]
                                                                        _33648 = mem[_32805 + 64]
                                                                        mem[mem[64]] = mem[_32805]
                                                                        mem[mem[64] + 64] = _33648
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _33647, _33648, gasForProcessing, 1, tx.origin);
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
                                                                        _34008 = mem[_33157 + 32]
                                                                        _34009 = mem[_33157 + 64]
                                                                        mem[mem[64]] = mem[_33157]
                                                                        mem[mem[64] + 64] = _34009
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _34008, _34009, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not ext_call.success:
                                                                if not stor7:
                                                                    require ext_code.size(dividendTrackerAddress)
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _33158 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _34012 = mem[_33158 + 32]
                                                                        _34013 = mem[_33158 + 64]
                                                                        mem[mem[64]] = mem[_33158]
                                                                        mem[mem[64] + 64] = _34013
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _34012, _34013, gasForProcessing, 1, tx.origin);
                                                            else:
                                                                if not stor7:
                                                                    require ext_code.size(dividendTrackerAddress)
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _33651 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _34363 = mem[_33651 + 32]
                                                                        _34364 = mem[_33651 + 64]
                                                                        mem[mem[64]] = mem[_33651]
                                                                        mem[mem[64] + 64] = _34364
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _34363, _34364, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if stor7:
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            _30023 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_30023] = 38
                                                            mem[_30023 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                            if arg2 > balanceOf[address(msg.sender)]:
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                mem[mem[64] + 36] = 38
                                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_30023 + 70 len 26]
                                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                            if balanceOf[address(msg.sender)] < arg2:
                                                                revert with 0, 17
                                                            balanceOf[address(msg.sender)] -= arg2
                                                            if balanceOf[arg1] > !arg2:
                                                                revert with 0, 17
                                                            if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(arg1)] = balanceOf[arg1] + arg2
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
                                                                            _32607 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _33149 = mem[_32607 + 32]
                                                                            _33150 = mem[_32607 + 64]
                                                                            mem[mem[64]] = mem[_32607]
                                                                            mem[mem[64] + 64] = _33150
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _33149, _33150, gasForProcessing, 1, tx.origin);
                                                                else:
                                                                    if not stor7:
                                                                        require ext_code.size(dividendTrackerAddress)
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _32802 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _33633 = mem[_32802 + 32]
                                                                            _33634 = mem[_32802 + 64]
                                                                            mem[mem[64]] = mem[_32802]
                                                                            mem[mem[64] + 64] = _33634
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _33633, _33634, gasForProcessing, 1, tx.origin);
                                                            else:
                                                                if not ext_call.success:
                                                                    if not stor7:
                                                                        require ext_code.size(dividendTrackerAddress)
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _32803 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _33637 = mem[_32803 + 32]
                                                                            _33638 = mem[_32803 + 64]
                                                                            mem[mem[64]] = mem[_32803]
                                                                            mem[mem[64] + 64] = _33638
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _33637, _33638, gasForProcessing, 1, tx.origin);
                                                                else:
                                                                    if not stor7:
                                                                        require ext_code.size(dividendTrackerAddress)
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _33153 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _34002 = mem[_33153 + 32]
                                                                            _34003 = mem[_33153 + 64]
                                                                            mem[mem[64]] = mem[_33153]
                                                                            mem[mem[64] + 64] = _34003
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _34002, _34003, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not arg2:
                                                                _30178 = mem[64]
                                                                mem[64] = mem[64] + 64
                                                                mem[_30178] = 26
                                                                mem[_30178 + 32] = 'SafeMath: division by zero'
                                                                _30898 = mem[64]
                                                                mem[64] = mem[64] + 64
                                                                mem[_30898] = 30
                                                                mem[_30898 + 32] = 'SafeMath: subtraction overflow'
                                                                if 0 > arg2:
                                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                                if arg2 < 0:
                                                                    revert with 0, 17
                                                                if not msg.sender:
                                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                                if not this.address:
                                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                                _31986 = mem[64]
                                                                mem[64] = mem[64] + 96
                                                                mem[_31986] = 38
                                                                mem[_31986 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                                if 0 > balanceOf[address(msg.sender)]:
                                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                    mem[mem[64] + 4] = 32
                                                                    mem[mem[64] + 36] = 38
                                                                    mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_31986 + 70 len 26]
                                                                    revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                                if balanceOf[address(msg.sender)] < 0:
                                                                    revert with 0, 17
                                                                if balanceOf[this.address] > -1:
                                                                    revert with 0, 17
                                                                if balanceOf[this.address] < balanceOf[this.address]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                mem[0] = this.address
                                                                mem[32] = 0
                                                                balanceOf[address(this.address)] = balanceOf[this.address]
                                                                emit Transfer(0, msg.sender, this.address);
                                                                if not msg.sender:
                                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                                if not arg1:
                                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                                _37027 = mem[64]
                                                                mem[64] = mem[64] + 96
                                                                mem[_37027] = 38
                                                                mem[_37027 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                                if arg2 > balanceOf[address(msg.sender)]:
                                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                    mem[mem[64] + 4] = 32
                                                                    mem[mem[64] + 36] = 38
                                                                    mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_37027 + 70 len 26]
                                                                    revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                                if balanceOf[address(msg.sender)] < arg2:
                                                                    revert with 0, 17
                                                                balanceOf[address(msg.sender)] -= arg2
                                                                if balanceOf[arg1] > !arg2:
                                                                    revert with 0, 17
                                                                if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                balanceOf[address(arg1)] = balanceOf[arg1] + arg2
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
                                                                                _38389 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 96
                                                                                _38652 = mem[_38389 + 32]
                                                                                _38653 = mem[_38389 + 64]
                                                                                mem[mem[64]] = mem[_38389]
                                                                                mem[mem[64] + 64] = _38653
                                                                                mem[mem[64] + 96] = gasForProcessing
                                                                                emit ProcessedDividendTracker(mem[mem[64]], _38652, _38653, gasForProcessing, 1, tx.origin);
                                                                    else:
                                                                        if not stor7:
                                                                            require ext_code.size(dividendTrackerAddress)
                                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                                 gas gas_remaining wei
                                                                                args gasForProcessing
                                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                            if ext_call.success:
                                                                                _38502 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 96
                                                                                _38806 = mem[_38502 + 32]
                                                                                _38807 = mem[_38502 + 64]
                                                                                mem[mem[64]] = mem[_38502]
                                                                                mem[mem[64] + 64] = _38807
                                                                                mem[mem[64] + 96] = gasForProcessing
                                                                                emit ProcessedDividendTracker(mem[mem[64]], _38806, _38807, gasForProcessing, 1, tx.origin);
                                                                else:
                                                                    if not ext_call.success:
                                                                        if not stor7:
                                                                            require ext_code.size(dividendTrackerAddress)
                                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                                 gas gas_remaining wei
                                                                                args gasForProcessing
                                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                            if ext_call.success:
                                                                                _38503 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 96
                                                                                _38810 = mem[_38503 + 32]
                                                                                _38811 = mem[_38503 + 64]
                                                                                mem[mem[64]] = mem[_38503]
                                                                                mem[mem[64] + 64] = _38811
                                                                                mem[mem[64] + 96] = gasForProcessing
                                                                                emit ProcessedDividendTracker(mem[mem[64]], _38810, _38811, gasForProcessing, 1, tx.origin);
                                                                    else:
                                                                        if not stor7:
                                                                            require ext_code.size(dividendTrackerAddress)
                                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                                 gas gas_remaining wei
                                                                                args gasForProcessing
                                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                            if ext_call.success:
                                                                                _38656 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 96
                                                                                _38954 = mem[_38656 + 32]
                                                                                _38955 = mem[_38656 + 64]
                                                                                mem[mem[64]] = mem[_38656]
                                                                                mem[mem[64] + 64] = _38955
                                                                                mem[mem[64] + 96] = gasForProcessing
                                                                                emit ProcessedDividendTracker(mem[mem[64]], _38954, _38955, gasForProcessing, 1, tx.origin);
                                                            else:
                                                                if arg2 and totalFees > -1 / arg2:
                                                                    revert with 0, 17
                                                                if not arg2:
                                                                    revert with 0, 18
                                                                if arg2 * totalFees / arg2 != totalFees:
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                _30744 = mem[64]
                                                                mem[64] = mem[64] + 64
                                                                mem[_30744] = 26
                                                                mem[_30744 + 32] = 'SafeMath: division by zero'
                                                                _31492 = mem[64]
                                                                mem[64] = mem[64] + 64
                                                                mem[_31492] = 30
                                                                mem[_31492 + 32] = 'SafeMath: subtraction overflow'
                                                                if arg2 * totalFees / 100 > arg2:
                                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                                if arg2 < arg2 * totalFees / 100:
                                                                    revert with 0, 17
                                                                if not msg.sender:
                                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                                if not this.address:
                                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                                _33640 = mem[64]
                                                                mem[64] = mem[64] + 96
                                                                mem[_33640] = 38
                                                                mem[_33640 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                                if arg2 * totalFees / 100 > balanceOf[address(msg.sender)]:
                                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                    mem[mem[64] + 4] = 32
                                                                    mem[mem[64] + 36] = 38
                                                                    mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_33640 + 70 len 26]
                                                                    revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                                if balanceOf[address(msg.sender)] < arg2 * totalFees / 100:
                                                                    revert with 0, 17
                                                                balanceOf[address(msg.sender)] -= arg2 * totalFees / 100
                                                                if balanceOf[this.address] > !(arg2 * totalFees / 100):
                                                                    revert with 0, 17
                                                                if balanceOf[this.address] + (arg2 * totalFees / 100) < balanceOf[this.address]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                mem[0] = this.address
                                                                mem[32] = 0
                                                                balanceOf[address(this.address)] = balanceOf[this.address] + (arg2 * totalFees / 100)
                                                                emit Transfer((arg2 * totalFees / 100), msg.sender, this.address);
                                                                if not msg.sender:
                                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                                if not arg1:
                                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                                _37414 = mem[64]
                                                                mem[64] = mem[64] + 96
                                                                mem[_37414] = 38
                                                                mem[_37414 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                                if arg2 - (arg2 * totalFees / 100) > balanceOf[address(msg.sender)]:
                                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                    mem[mem[64] + 4] = 32
                                                                    mem[mem[64] + 36] = 38
                                                                    mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_37414 + 70 len 26]
                                                                    revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
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
                                                                                _39324 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 96
                                                                                _39688 = mem[_39324 + 32]
                                                                                _39689 = mem[_39324 + 64]
                                                                                mem[mem[64]] = mem[_39324]
                                                                                mem[mem[64] + 64] = _39689
                                                                                mem[mem[64] + 96] = gasForProcessing
                                                                                emit ProcessedDividendTracker(mem[mem[64]], _39688, _39689, gasForProcessing, 1, tx.origin);
                                                                    else:
                                                                        if not stor7:
                                                                            require ext_code.size(dividendTrackerAddress)
                                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                                 gas gas_remaining wei
                                                                                args gasForProcessing
                                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                            if ext_call.success:
                                                                                _39499 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 96
                                                                                _39900 = mem[_39499 + 32]
                                                                                _39901 = mem[_39499 + 64]
                                                                                mem[mem[64]] = mem[_39499]
                                                                                mem[mem[64] + 64] = _39901
                                                                                mem[mem[64] + 96] = gasForProcessing
                                                                                emit ProcessedDividendTracker(mem[mem[64]], _39900, _39901, gasForProcessing, 1, tx.origin);
                                                                else:
                                                                    if not ext_call.success:
                                                                        if not stor7:
                                                                            require ext_code.size(dividendTrackerAddress)
                                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                                 gas gas_remaining wei
                                                                                args gasForProcessing
                                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                            if ext_call.success:
                                                                                _39500 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 96
                                                                                _39904 = mem[_39500 + 32]
                                                                                _39905 = mem[_39500 + 64]
                                                                                mem[mem[64]] = mem[_39500]
                                                                                mem[mem[64] + 64] = _39905
                                                                                mem[mem[64] + 96] = gasForProcessing
                                                                                emit ProcessedDividendTracker(mem[mem[64]], _39904, _39905, gasForProcessing, 1, tx.origin);
                                                                    else:
                                                                        if not stor7:
                                                                            require ext_code.size(dividendTrackerAddress)
                                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                                 gas gas_remaining wei
                                                                                args gasForProcessing
                                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                            if ext_call.success:
                                                                                _39692 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 96
                                                                                _40066 = mem[_39692 + 32]
                                                                                _40067 = mem[_39692 + 64]
                                                                                mem[mem[64]] = mem[_39692]
                                                                                mem[mem[64] + 64] = _40067
                                                                                mem[mem[64] + 96] = gasForProcessing
                                                                                emit ProcessedDividendTracker(mem[mem[64]], _40066, _40067, gasForProcessing, 1, tx.origin);
                                            else:
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.distributeBTCDividends(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _29780
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[mem[64] + 32] = _29780
                                                emit SendDividends(balanceOf[this.address], _29780);
                                                stor7 = 0
                                                mem[0] = msg.sender
                                                mem[32] = 18
                                                if stor18[address(msg.sender)]:
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    _30304 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_30304] = 38
                                                    mem[_30304 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 38
                                                        mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_30304 + 70 len 26]
                                                        revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[arg1] > !arg2:
                                                        revert with 0, 17
                                                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
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
                                                                    _33652 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _34367 = mem[_33652 + 32]
                                                                    _34368 = mem[_33652 + 64]
                                                                    mem[mem[64]] = mem[_33652]
                                                                    mem[mem[64] + 64] = _34368
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _34367, _34368, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not stor7:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _34016 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _34859 = mem[_34016 + 32]
                                                                    _34860 = mem[_34016 + 64]
                                                                    mem[mem[64]] = mem[_34016]
                                                                    mem[mem[64] + 64] = _34860
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _34859, _34860, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not ext_call.success:
                                                            if not stor7:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _34017 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _34863 = mem[_34017 + 32]
                                                                    _34864 = mem[_34017 + 64]
                                                                    mem[mem[64]] = mem[_34017]
                                                                    mem[mem[64] + 64] = _34864
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _34863, _34864, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not stor7:
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _34371 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _35287 = mem[_34371 + 32]
                                                                    _35288 = mem[_34371 + 64]
                                                                    mem[mem[64]] = mem[_34371]
                                                                    mem[mem[64] + 64] = _35288
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _35287, _35288, gasForProcessing, 1, tx.origin);
                                                else:
                                                    mem[0] = arg1
                                                    mem[32] = 18
                                                    if stor18[address(arg1)]:
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        _30385 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_30385] = 38
                                                        mem[_30385 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                        if arg2 > balanceOf[address(msg.sender)]:
                                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = 32
                                                            mem[mem[64] + 36] = 38
                                                            mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_30385 + 70 len 26]
                                                            revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                        if balanceOf[address(msg.sender)] < arg2:
                                                            revert with 0, 17
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[arg1] > !arg2:
                                                            revert with 0, 17
                                                        if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        balanceOf[address(arg1)] = balanceOf[arg1] + arg2
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
                                                                        _34022 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _34882 = mem[_34022 + 32]
                                                                        _34883 = mem[_34022 + 64]
                                                                        mem[mem[64]] = mem[_34022]
                                                                        mem[mem[64] + 64] = _34883
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _34882, _34883, gasForProcessing, 1, tx.origin);
                                                            else:
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
                                                                        _35297 = mem[_34382 + 32]
                                                                        _35298 = mem[_34382 + 64]
                                                                        mem[mem[64]] = mem[_34382]
                                                                        mem[mem[64] + 64] = _35298
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _35297, _35298, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not ext_call.success:
                                                                if not stor7:
                                                                    require ext_code.size(dividendTrackerAddress)
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _34383 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _35301 = mem[_34383 + 32]
                                                                        _35302 = mem[_34383 + 64]
                                                                        mem[mem[64]] = mem[_34383]
                                                                        mem[mem[64] + 64] = _35302
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _35301, _35302, gasForProcessing, 1, tx.origin);
                                                            else:
                                                                if not stor7:
                                                                    require ext_code.size(dividendTrackerAddress)
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _34886 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _35600 = mem[_34886 + 32]
                                                                        _35601 = mem[_34886 + 64]
                                                                        mem[mem[64]] = mem[_34886]
                                                                        mem[mem[64] + 64] = _35601
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _35600, _35601, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if stor7:
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            _30307 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_30307] = 38
                                                            mem[_30307 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                            if arg2 > balanceOf[address(msg.sender)]:
                                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[mem[64] + 4] = 32
                                                                mem[mem[64] + 36] = 38
                                                                mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_30307 + 70 len 26]
                                                                revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                            if balanceOf[address(msg.sender)] < arg2:
                                                                revert with 0, 17
                                                            balanceOf[address(msg.sender)] -= arg2
                                                            if balanceOf[arg1] > !arg2:
                                                                revert with 0, 17
                                                            if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            balanceOf[address(arg1)] = balanceOf[arg1] + arg2
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
                                                                            _33655 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _34374 = mem[_33655 + 32]
                                                                            _34375 = mem[_33655 + 64]
                                                                            mem[mem[64]] = mem[_33655]
                                                                            mem[mem[64] + 64] = _34375
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _34374, _34375, gasForProcessing, 1, tx.origin);
                                                                else:
                                                                    if not stor7:
                                                                        require ext_code.size(dividendTrackerAddress)
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _34019 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _34868 = mem[_34019 + 32]
                                                                            _34869 = mem[_34019 + 64]
                                                                            mem[mem[64]] = mem[_34019]
                                                                            mem[mem[64] + 64] = _34869
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _34868, _34869, gasForProcessing, 1, tx.origin);
                                                            else:
                                                                if not ext_call.success:
                                                                    if not stor7:
                                                                        require ext_code.size(dividendTrackerAddress)
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _34020 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _34872 = mem[_34020 + 32]
                                                                            _34873 = mem[_34020 + 64]
                                                                            mem[mem[64]] = mem[_34020]
                                                                            mem[mem[64] + 64] = _34873
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _34872, _34873, gasForProcessing, 1, tx.origin);
                                                                else:
                                                                    if not stor7:
                                                                        require ext_code.size(dividendTrackerAddress)
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _34378 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _35291 = mem[_34378 + 32]
                                                                            _35292 = mem[_34378 + 64]
                                                                            mem[mem[64]] = mem[_34378]
                                                                            mem[mem[64] + 64] = _35292
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _35291, _35292, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not arg2:
                                                                _30480 = mem[64]
                                                                mem[64] = mem[64] + 64
                                                                mem[_30480] = 26
                                                                mem[_30480 + 32] = 'SafeMath: division by zero'
                                                                _31166 = mem[64]
                                                                mem[64] = mem[64] + 64
                                                                mem[_31166] = 30
                                                                mem[_31166 + 32] = 'SafeMath: subtraction overflow'
                                                                if 0 > arg2:
                                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                                if arg2 < 0:
                                                                    revert with 0, 17
                                                                if not msg.sender:
                                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                                if not this.address:
                                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                                _32616 = mem[64]
                                                                mem[64] = mem[64] + 96
                                                                mem[_32616] = 38
                                                                mem[_32616 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                                if 0 > balanceOf[address(msg.sender)]:
                                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                    mem[mem[64] + 4] = 32
                                                                    mem[mem[64] + 36] = 38
                                                                    mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_32616 + 70 len 26]
                                                                    revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                                if balanceOf[address(msg.sender)] < 0:
                                                                    revert with 0, 17
                                                                if balanceOf[this.address] > -1:
                                                                    revert with 0, 17
                                                                if balanceOf[this.address] < balanceOf[this.address]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                mem[0] = this.address
                                                                mem[32] = 0
                                                                balanceOf[address(this.address)] = balanceOf[this.address]
                                                                emit Transfer(0, msg.sender, this.address);
                                                                if not msg.sender:
                                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                                if not arg1:
                                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                                _37272 = mem[64]
                                                                mem[64] = mem[64] + 96
                                                                mem[_37272] = 38
                                                                mem[_37272 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                                if arg2 > balanceOf[address(msg.sender)]:
                                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                    mem[mem[64] + 4] = 32
                                                                    mem[mem[64] + 36] = 38
                                                                    mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_37272 + 70 len 26]
                                                                    revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                                if balanceOf[address(msg.sender)] < arg2:
                                                                    revert with 0, 17
                                                                balanceOf[address(msg.sender)] -= arg2
                                                                if balanceOf[arg1] > !arg2:
                                                                    revert with 0, 17
                                                                if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                balanceOf[address(arg1)] = balanceOf[arg1] + arg2
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
                                                                                _38814 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 96
                                                                                _39134 = mem[_38814 + 32]
                                                                                _39135 = mem[_38814 + 64]
                                                                                mem[mem[64]] = mem[_38814]
                                                                                mem[mem[64] + 64] = _39135
                                                                                mem[mem[64] + 96] = gasForProcessing
                                                                                emit ProcessedDividendTracker(mem[mem[64]], _39134, _39135, gasForProcessing, 1, tx.origin);
                                                                    else:
                                                                        if not stor7:
                                                                            require ext_code.size(dividendTrackerAddress)
                                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                                 gas gas_remaining wei
                                                                                args gasForProcessing
                                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                            if ext_call.success:
                                                                                _38960 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 96
                                                                                _39334 = mem[_38960 + 32]
                                                                                _39335 = mem[_38960 + 64]
                                                                                mem[mem[64]] = mem[_38960]
                                                                                mem[mem[64] + 64] = _39335
                                                                                mem[mem[64] + 96] = gasForProcessing
                                                                                emit ProcessedDividendTracker(mem[mem[64]], _39334, _39335, gasForProcessing, 1, tx.origin);
                                                                else:
                                                                    if not ext_call.success:
                                                                        if not stor7:
                                                                            require ext_code.size(dividendTrackerAddress)
                                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                                 gas gas_remaining wei
                                                                                args gasForProcessing
                                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                            if ext_call.success:
                                                                                _38961 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 96
                                                                                _39338 = mem[_38961 + 32]
                                                                                _39339 = mem[_38961 + 64]
                                                                                mem[mem[64]] = mem[_38961]
                                                                                mem[mem[64] + 64] = _39339
                                                                                mem[mem[64] + 96] = gasForProcessing
                                                                                emit ProcessedDividendTracker(mem[mem[64]], _39338, _39339, gasForProcessing, 1, tx.origin);
                                                                    else:
                                                                        if not stor7:
                                                                            require ext_code.size(dividendTrackerAddress)
                                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                                 gas gas_remaining wei
                                                                                args gasForProcessing
                                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                            if ext_call.success:
                                                                                _39138 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 96
                                                                                _39510 = mem[_39138 + 32]
                                                                                _39511 = mem[_39138 + 64]
                                                                                mem[mem[64]] = mem[_39138]
                                                                                mem[mem[64] + 64] = _39511
                                                                                mem[mem[64] + 96] = gasForProcessing
                                                                                emit ProcessedDividendTracker(mem[mem[64]], _39510, _39511, gasForProcessing, 1, tx.origin);
                                                            else:
                                                                if arg2 and totalFees > -1 / arg2:
                                                                    revert with 0, 17
                                                                if not arg2:
                                                                    revert with 0, 18
                                                                if arg2 * totalFees / arg2 != totalFees:
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                _30974 = mem[64]
                                                                mem[64] = mem[64] + 64
                                                                mem[_30974] = 26
                                                                mem[_30974 + 32] = 'SafeMath: division by zero'
                                                                _31891 = mem[64]
                                                                mem[64] = mem[64] + 64
                                                                mem[_31891] = 30
                                                                mem[_31891 + 32] = 'SafeMath: subtraction overflow'
                                                                if arg2 * totalFees / 100 > arg2:
                                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                                if arg2 < arg2 * totalFees / 100:
                                                                    revert with 0, 17
                                                                if not msg.sender:
                                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                                if not this.address:
                                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                                _34875 = mem[64]
                                                                mem[64] = mem[64] + 96
                                                                mem[_34875] = 38
                                                                mem[_34875 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                                if arg2 * totalFees / 100 > balanceOf[address(msg.sender)]:
                                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                    mem[mem[64] + 4] = 32
                                                                    mem[mem[64] + 36] = 38
                                                                    mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_34875 + 70 len 26]
                                                                    revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
                                                                if balanceOf[address(msg.sender)] < arg2 * totalFees / 100:
                                                                    revert with 0, 17
                                                                balanceOf[address(msg.sender)] -= arg2 * totalFees / 100
                                                                if balanceOf[this.address] > !(arg2 * totalFees / 100):
                                                                    revert with 0, 17
                                                                if balanceOf[this.address] + (arg2 * totalFees / 100) < balanceOf[this.address]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                mem[0] = this.address
                                                                mem[32] = 0
                                                                balanceOf[address(this.address)] = balanceOf[this.address] + (arg2 * totalFees / 100)
                                                                emit Transfer((arg2 * totalFees / 100), msg.sender, this.address);
                                                                if not msg.sender:
                                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                                if not arg1:
                                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                                _37571 = mem[64]
                                                                mem[64] = mem[64] + 96
                                                                mem[_37571] = 38
                                                                mem[_37571 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                                if arg2 - (arg2 * totalFees / 100) > balanceOf[address(msg.sender)]:
                                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                    mem[mem[64] + 4] = 32
                                                                    mem[mem[64] + 36] = 38
                                                                    mem[mem[64] + 68 len 64] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[_37571 + 70 len 26]
                                                                    revert with 0, 32, 38, mem[mem[64] + 68 len 38], 0
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
                                                                                _39908 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 96
                                                                                _40247 = mem[_39908 + 32]
                                                                                _40248 = mem[_39908 + 64]
                                                                                mem[mem[64]] = mem[_39908]
                                                                                mem[mem[64] + 64] = _40248
                                                                                mem[mem[64] + 96] = gasForProcessing
                                                                                emit ProcessedDividendTracker(mem[mem[64]], _40247, _40248, gasForProcessing, 1, tx.origin);
                                                                    else:
                                                                        if not stor7:
                                                                            require ext_code.size(dividendTrackerAddress)
                                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                                 gas gas_remaining wei
                                                                                args gasForProcessing
                                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                            if ext_call.success:
                                                                                _40070 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 96
                                                                                _40460 = mem[_40070 + 32]
                                                                                _40461 = mem[_40070 + 64]
                                                                                mem[mem[64]] = mem[_40070]
                                                                                mem[mem[64] + 64] = _40461
                                                                                mem[mem[64] + 96] = gasForProcessing
                                                                                emit ProcessedDividendTracker(mem[mem[64]], _40460, _40461, gasForProcessing, 1, tx.origin);
                                                                else:
                                                                    if not ext_call.success:
                                                                        if not stor7:
                                                                            require ext_code.size(dividendTrackerAddress)
                                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                                 gas gas_remaining wei
                                                                                args gasForProcessing
                                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                            if ext_call.success:
                                                                                _40071 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 96
                                                                                _40464 = mem[_40071 + 32]
                                                                                _40465 = mem[_40071 + 64]
                                                                                mem[mem[64]] = mem[_40071]
                                                                                mem[mem[64] + 64] = _40465
                                                                                mem[mem[64] + 96] = gasForProcessing
                                                                                emit ProcessedDividendTracker(mem[mem[64]], _40464, _40465, gasForProcessing, 1, tx.origin);
                                                                    else:
                                                                        if not stor7:
                                                                            require ext_code.size(dividendTrackerAddress)
                                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                                 gas gas_remaining wei
                                                                                args gasForProcessing
                                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                            if ext_call.success:
                                                                                _40251 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 96
                                                                                _40604 = mem[_40251 + 32]
                                                                                _40605 = mem[_40251 + 64]
                                                                                mem[mem[64]] = mem[_40251]
                                                                                mem[mem[64] + 64] = _40605
                                                                                mem[mem[64] + 96] = gasForProcessing
                                                                                emit ProcessedDividendTracker(mem[mem[64]], _40604, _40605, gasForProcessing, 1, tx.origin);
    return 1
}



}
