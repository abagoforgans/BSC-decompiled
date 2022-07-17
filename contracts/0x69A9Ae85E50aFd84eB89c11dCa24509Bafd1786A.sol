contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const decimals = 18

const getTime = block.timestamp


mapping of uint256 balanceOf;
mapping of struct allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
address owner;
address stor6;
uint256 unlockTime;
uint256 start;
uint256 duration;
uint256 max;
address uniswapV2RouterAddress;
uint8 stor12; offset 160
address uniswapV2PairAddress;
uint256 stor12;
address dividendTrackerAddress;
address liquidityWalletAddress;
uint256 swapTokensAtAmount;
uint256 _maxTxAmount;
uint256 maxSellTransactionAmount;
uint256 sub_8c19b37b;
uint256 launchedAt;
uint256 launchedAtTime;
mapping of uint8 stor22;
uint8 swapEnabled;
uint8 swapAndLiquifyEnabled; offset 8
uint256 stor23; offset 8
uint256 eTHRewardsFee;
uint256 buyBackFee;
uint256 marketFee;
uint256 liquidityFee;
uint256 totalFees;
address sub_bbab0ff1Address;
uint256 gasForProcessing;
mapping of uint8 stor31;
mapping of uint8 stor33;
mapping of uint8 stor34;
mapping of uint8 stor35;

function maxSellTransactionAmount() {
    return maxSellTransactionAmount
}

function name() {
    return name[0 len name.length]
}

function marketFee() {
    return marketFee
}

function sub_0f1c6e27(?) {
    require calldata.size - 4 >= 32
    return bool(stor35[arg1])
}

function duration() {
    return duration
}

function totalFees() {
    return totalFees
}

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function totalSupply() {
    return totalSupply
}

function _isBlacklisted(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor22[arg1])
}

function dividendTracker() {
    return dividendTrackerAddress
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function swapAndLiquifyEnabled() {
    return bool(swapAndLiquifyEnabled)
}

function buyBackFee() {
    return buyBackFee
}

function isExcludedFromFees(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor31[address(arg1)])
}

function fixedSaleEarlyParticipants(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor33[arg1])
}

function getUnlockTime() {
    return unlockTime
}

function max() {
    return max
}

function swapEnabled() {
    return bool(swapEnabled)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function _maxTxAmount() {
    return _maxTxAmount
}

function sub_7f13ac46(?) {
    require calldata.size - 4 >= 32
    return bool(stor34[arg1])
}

function ETHRewardsFee() {
    return eTHRewardsFee
}

function sub_8c19b37b(?) {
    return sub_8c19b37b
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function liquidityFee() {
    return liquidityFee
}

function gasForProcessing() {
    return gasForProcessing
}

function launchedAtTime() {
    return launchedAtTime
}

function sub_bbab0ff1(?) {
    return sub_bbab0ff1Address
}

function start() {
    return start
}

function launchedAt() {
    return launchedAt
}

function liquidityWallet() {
    return liquidityWalletAddress
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)].field_0
}

function swapTokensAtAmount() {
    return swapTokensAtAmount
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    emit 0x728be007: owner, 0
    owner = 0
}

function sub_47c7d924(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    sub_8c19b37b = arg1
}

function setStart(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    start = arg1
}

function sub_a90f44a8(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    launchedAtTime = arg1
}

function setLaunchedAt(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    launchedAt = arg1
}

function setMaxTxAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    _maxTxAmount = arg1
}

function setswapEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    swapEnabled = uint8(arg1)
}

function setMarketWallet(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    sub_bbab0ff1Address = arg1
}

function setSwapTokensAtAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    swapTokensAtAmount = arg1
}

function setSwapAndLiquifyEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor23 = Mask(248, 0, arg1)
}

function setMaxSellTransactionAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    maxSellTransactionAmount = arg1
}

function blacklistAddress(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor22[address(arg1)] = uint8(arg2)
}

function lock(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor6 = owner
    owner = 0
    unlockTime = arg1 + block.timestamp
    emit 0x728be007 
    emit 0x0 
    emit 0x0 
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

function claim() {
    require ext_code.size(dividendTrackerAddress)
    call dividendTrackerAddress.processAccount(address arg1, bool arg2) with:
         gas gas_remaining wei
        args msg.sender, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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

function Sweep(address arg1) {
    require calldata.size - 4 >= 32
    if not stor35[msg.sender]:
        revert with 0, 'caller is not manager'
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function updateClaimWait(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    require ext_code.size(dividendTrackerAddress)
    call dividendTrackerAddress.0xe98030c7 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function dividendTokenBalanceOf(address arg1) {
    require calldata.size - 4 >= 32
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
    require ext_code.size(dividendTrackerAddress)
    staticcall dividendTrackerAddress.0xa8b9d240 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function unlock() {
    if stor6 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x73596f7520646f6e27742068617665207065726d697373696f6e20746f20756e6c6f63,
                    mem[199 len 29]
    if block.timestamp <= unlockTime:
        revert with 0, 'Contract is locked until 7 days'
    emit 0x728be007: owner, stor6
    owner = stor6
}

function setETHRewardsFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    eTHRewardsFee = arg1
    if buyBackFee + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if marketFee < 0:
        revert with 0, 'SafeMath: addition overflow'
    if liquidityFee < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalFees = liquidityFee + marketFee + buyBackFee + arg1
}

function setLiquidityFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    liquidityFee = arg1
    if buyBackFee + eTHRewardsFee < eTHRewardsFee:
        revert with 0, 'SafeMath: addition overflow'
    if marketFee < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalFees = arg1 + marketFee + buyBackFee + eTHRewardsFee
}

function setBuyBackFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    buyBackFee = arg1
    if arg1 + eTHRewardsFee < eTHRewardsFee:
        revert with 0, 'SafeMath: addition overflow'
    if marketFee < 0:
        revert with 0, 'SafeMath: addition overflow'
    if liquidityFee < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalFees = liquidityFee + marketFee + arg1 + eTHRewardsFee
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

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit 0x728be007: owner, arg1
    owner = arg1
}

function setMarketFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    marketFee = arg1
    if buyBackFee + eTHRewardsFee < eTHRewardsFee:
        revert with 0, 'SafeMath: addition overflow'
    if marketFee < 0:
        revert with 0, 'SafeMath: addition overflow'
    if liquidityFee < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalFees = liquidityFee + marketFee + buyBackFee + eTHRewardsFee
}

function excludeFromFees(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if arg2 == bool(stor31[address(arg1)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x7442696e616e6365446f673a204163636f756e7420697320616c7265616479207468652076616c7565206f6620276578636c75646564,
                    mem[218 len 10]
    stor31[address(arg1)] = uint8(arg2)
    emit ExcludeFromFees(arg2, arg1);
}

function addFixedSaleEarlyParticipants(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 33
        stor33[address(cd[((32 * idx) + arg1 + 36)])] = 1
        idx = idx + 1
        continue 
    emit FixedSaleEarlyParticipantsAdded(Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)]));
}

function getAccountDividendsInfo(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(dividendTrackerAddress)
    staticcall dividendTrackerAddress.getAccount(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 256
    return ext_call.return_data[12 len 20], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96],
           ext_call.return_data[128],
           ext_call.return_data[160],
           ext_call.return_data[192],
           ext_call.return_data[224]
}

function excludeMultipleAccountsFromFees(address[] arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 31
        stor31[address(cd[((32 * idx) + arg1 + 36)])] = uint8(arg2)
        idx = idx + 1
        continue 
    emit ExcludeMultipleAccountsFromFees(Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)]), arg2);
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
    return ext_call.return_data[12 len 20], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96],
           ext_call.return_data[128],
           ext_call.return_data[160],
           ext_call.return_data[192],
           ext_call.return_data[224]
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)].field_0 = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)].field_0:
        revert with 0, 
                    32,
                    37,
                    0x6b45524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)].field_0 -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)].field_0 - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 + allowance[address(msg.sender)][address(arg1)].field_0 < allowance[address(msg.sender)][address(arg1)].field_0:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)].field_0 += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)].field_0), msg.sender, arg1);
    return 1
}

function transferForeignToken(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if not stor35[msg.sender]:
        revert with 0, 'caller is not manager'
    if this.address == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x6543616e2774206c657420796f75207442696e616e6365446f676520616c6c206e617469766520746f6b65,
                    mem[207 len 21]
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function updateLiquidityWallet(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if liquidityWalletAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x3042696e616e6365446f673a20546865206c69717569646974792077616c6c657420697320616c7265616479207468697320616464726573,
                    mem[220 len 8]
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if 1 == bool(stor31[address(arg1)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x7442696e616e6365446f673a204163636f756e7420697320616c7265616479207468652076616c7565206f6620276578636c75646564,
                    mem[218 len 10]
    stor31[address(arg1)] = 1
    emit ExcludeFromFees(1, arg1);
    emit LiquidityWalletUpdated(arg1, liquidityWalletAddress);
    liquidityWalletAddress = arg1
}

function updateGasForProcessing(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if arg1 < 200000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7342696e616e6365446f673a20676173466f7250726f63657373696e67206d757374206265206265747765656e203230302c30303020616e64203530302c3030
    if arg1 > 500000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7342696e616e6365446f673a20676173466f7250726f63657373696e67206d757374206265206265747765656e203230302c30303020616e64203530302c3030
    if arg1 == gasForProcessing:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x6542696e616e6365446f673a2043616e6e6f742075706461746520676173466f7250726f63657373696e6720746f2073616d652076616c75,
                    mem[220 len 8]
    emit GasForProcessingUpdated(arg1, gasForProcessing);
    gasForProcessing = arg1
}

function sub_9c701ace(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if uniswapV2PairAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    97,
                    0x6e42696e616e6365446f673a205468652050616e6342696e616e6365446f67655377617020706169722063616e6e6f742062652072656d6f7665642066726f6d206175746f6d617465644d61726b65744d42696e616e6365446f67657250616972,
                    mem[261 len 31]
    if arg2 == bool(stor34[address(arg1)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    76,
                    0x6542696e616e6365446f673a204175746f6d61746564206d61726b6574206d42696e616e6365446f676572207061697220697320616c72656164792073657420746f20746861742076616c75,
                    mem[240 len 20]
    stor34[address(arg1)] = uint8(arg2)
    if arg2:
        require ext_code.size(dividendTrackerAddress)
        call dividendTrackerAddress.excludeFromDividends(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit 0x45c06e61: arg1, arg2
}

function updateUniswapV2Router(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if uniswapV2RouterAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x7342696e616e6365446f673a2054686520726f7574657220616c726561647920686173207468617420616464726573,
                    mem[211 len 17]
    emit UpdateUniswapV2Router(arg1, uniswapV2RouterAddress);
    uniswapV2RouterAddress = arg1
    require ext_code.size(arg1)
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(uniswapV2RouterAddress)
    staticcall uniswapV2RouterAddress.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(this.address), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor12.field_0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor12.field_0))
}

function updateDividendTracker(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if dividendTrackerAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x7342696e616e6365446f673a20546865206469766964656e6420747261636b657220616c726561647920686173207468617420616464726573,
                    mem[221 len 7]
    require ext_code.size(arg1)
    staticcall arg1.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    83,
                    0xe042696e616e6365446f673a20546865206e6577206469766964656e6420747261636b6572206d757374206265206f776e6564206279207468652042696e616e6365446f6720746f6b656e20636f6e74726163,
                    mem[247 len 13]
    require ext_code.size(arg1)
    call arg1.excludeFromDividends(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.excludeFromDividends(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.excludeFromDividends(address arg1) with:
         gas gas_remaining wei
        args owner
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.excludeFromDividends(address arg1) with:
         gas gas_remaining wei
        args uniswapV2RouterAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit UpdateDividendTracker(arg1, dividendTrackerAddress);
    dividendTrackerAddress = arg1
}

function swapAll() {
    if not uint8(stor12.field_160):
        if not balanceOf[address(this.address)]:
            if not totalFees:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / totalFees:
                if 0 / totalFees > balanceOf[address(this.address)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not swapAndLiquifyEnabled:
                    if balanceOf[address(this.address)] - (0 / totalFees):
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not this.address:
                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[424 len 28]
                        if not uniswapV2RouterAddress:
                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[422 len 30]
                        allowance[address(this.address)][stor11].field_0 = balanceOf[address(this.address)] - (0 / totalFees)
                        emit Approval((balanceOf[address(this.address)] - (0 / totalFees)), this.address, uniswapV2RouterAddress);
                        mem[516 len 0] = None
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args balanceOf[address(this.address)] - (0 / totalFees), 0, 160, this.address, block.timestamp, 2, mem[516 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call dividendTrackerAddress with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                        if ext_call.success:
                            emit SendDividends(balanceOf[address(this.address)] - (0 / totalFees), eth.balance(this.address));
                else:
                    if liquidityFee <= 0:
                        if balanceOf[address(this.address)] - (0 / totalFees):
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not this.address:
                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[424 len 28]
                            if not uniswapV2RouterAddress:
                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[422 len 30]
                            allowance[address(this.address)][stor11].field_0 = balanceOf[address(this.address)] - (0 / totalFees)
                            emit Approval((balanceOf[address(this.address)] - (0 / totalFees)), this.address, uniswapV2RouterAddress);
                            mem[516 len 0] = None
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args balanceOf[address(this.address)] - (0 / totalFees), 0, 160, this.address, block.timestamp, 2, mem[516 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call dividendTrackerAddress with:
                               value eth.balance(this.address) wei
                                 gas gas_remaining wei
                            if ext_call.success:
                                emit SendDividends(balanceOf[address(this.address)] - (0 / totalFees), eth.balance(this.address));
                    else:
                        if not balanceOf[address(this.address)] - (0 / totalFees):
                            if not totalFees:
                                revert with 0, 'SafeMath: division by zero'
                            if not 0 / totalFees:
                                if 0 / totalFees > balanceOf[address(this.address)] - (0 / totalFees):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if balanceOf[address(this.address)] - (2 * 0 / totalFees):
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not this.address:
                                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[552 len 28]
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[550 len 30]
                                    allowance[address(this.address)][stor11].field_0 = balanceOf[address(this.address)] - (2 * 0 / totalFees)
                                    emit Approval((balanceOf[address(this.address)] - (2 * 0 / totalFees)), this.address, uniswapV2RouterAddress);
                                    mem[644 len 0] = None
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[address(this.address)] - (2 * 0 / totalFees), 0, 160, this.address, block.timestamp, 2, mem[644 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call dividendTrackerAddress with:
                                       value eth.balance(this.address) wei
                                         gas gas_remaining wei
                                    if ext_call.success:
                                        emit SendDividends(balanceOf[address(this.address)] - (2 * 0 / totalFees), eth.balance(this.address));
                            else:
                                if 0 / totalFees / 2 > 0 / totalFees:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not this.address:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[616 len 28]
                                if not uniswapV2RouterAddress:
                                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[614 len 30]
                                allowance[address(this.address)][stor11].field_0 = 0 / totalFees / 2
                                allowance[address(this.address)][stor11].field_255 = 0
                                emit Approval((0 / totalFees / 2), this.address, uniswapV2RouterAddress);
                                mem[708 len 0] = None
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, 0 / totalFees), 0, 160, this.address, block.timestamp, 2, mem[708 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) > eth.balance(this.address):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not this.address:
                                    revert with 0, 'sERC20: approve from the zero addres'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'sERC20: approve to the zero addres'
                                allowance[address(this.address)][stor11].field_0 = (0 / totalFees) - (0 / totalFees / 2)
                                emit Approval(((0 / totalFees) - (0 / totalFees / 2)), this.address, uniswapV2RouterAddress);
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                     gas gas_remaining wei
                                    args this.address, (0 / totalFees) - (0 / totalFees / 2), 0, 0, 0, 57005, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                emit SwapAndLiquify(Mask(255, 1, 0 / totalFees), 0, (0 / totalFees) - (0 / totalFees / 2));
                                if 0 / totalFees > balanceOf[address(this.address)] - (0 / totalFees):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if balanceOf[address(this.address)] - (2 * 0 / totalFees):
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not this.address:
                                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[840 len 28]
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[838 len 30]
                                    allowance[address(this.address)][stor11].field_0 = balanceOf[address(this.address)] - (2 * 0 / totalFees)
                                    emit Approval((balanceOf[address(this.address)] - (2 * 0 / totalFees)), this.address, uniswapV2RouterAddress);
                                    mem[932 len 0] = None
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[address(this.address)] - (2 * 0 / totalFees), 0, 160, this.address, block.timestamp, 2, mem[932 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call dividendTrackerAddress with:
                                       value eth.balance(this.address) wei
                                         gas gas_remaining wei
                                    if ext_call.success:
                                        emit SendDividends(balanceOf[address(this.address)] - (2 * 0 / totalFees), eth.balance(this.address));
                        else:
                            if (balanceOf[address(this.address)] * liquidityFee) - (0 / totalFees * liquidityFee) / balanceOf[address(this.address)] - (0 / totalFees) != liquidityFee:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not totalFees:
                                revert with 0, 'SafeMath: division by zero'
                            if not (balanceOf[address(this.address)] * liquidityFee) - (0 / totalFees * liquidityFee) / totalFees:
                                if (balanceOf[address(this.address)] * liquidityFee) - (0 / totalFees * liquidityFee) / totalFees > balanceOf[address(this.address)] - (0 / totalFees):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if balanceOf[address(this.address)] - (0 / totalFees) - ((balanceOf[address(this.address)] * liquidityFee) - (0 / totalFees * liquidityFee) / totalFees):
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not this.address:
                                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[552 len 28]
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[550 len 30]
                                    allowance[address(this.address)][stor11].field_0 = balanceOf[address(this.address)] - (0 / totalFees) - ((balanceOf[address(this.address)] * liquidityFee) - (0 / totalFees * liquidityFee) / totalFees)
                                    emit Approval((balanceOf[address(this.address)] - (0 / totalFees) - ((balanceOf[address(this.address)] * liquidityFee) - (0 / totalFees * liquidityFee) / totalFees)), this.address, uniswapV2RouterAddress);
                                    mem[644 len 0] = None
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[address(this.address)] - (0 / totalFees) - ((balanceOf[address(this.address)] * liquidityFee) - (0 / totalFees * liquidityFee) / totalFees), 0, 160, this.address, block.timestamp, 2, mem[644 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call dividendTrackerAddress with:
                                       value eth.balance(this.address) wei
                                         gas gas_remaining wei
                                    if ext_call.success:
                                        emit SendDividends(balanceOf[address(this.address)] - (0 / totalFees) - ((balanceOf[address(this.address)] * liquidityFee) - (0 / totalFees * liquidityFee) / totalFees), eth.balance(this.address));
                            else:
                                if (balanceOf[address(this.address)] * liquidityFee) - (0 / totalFees * liquidityFee) / totalFees / 2 > (balanceOf[address(this.address)] * liquidityFee) - (0 / totalFees * liquidityFee) / totalFees:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not this.address:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[616 len 28]
                                if not uniswapV2RouterAddress:
                                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[614 len 30]
                                allowance[address(this.address)][stor11].field_0 = (balanceOf[address(this.address)] * liquidityFee) - (0 / totalFees * liquidityFee) / totalFees / 2
                                allowance[address(this.address)][stor11].field_255 = 0
                                emit Approval(((balanceOf[address(this.address)] * liquidityFee) - (0 / totalFees * liquidityFee) / totalFees / 2), this.address, uniswapV2RouterAddress);
                                mem[708 len 0] = None
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, (balanceOf[address(this.address)] * liquidityFee) - (0 / totalFees * liquidityFee) / totalFees), 0, 160, this.address, block.timestamp, 2, mem[708 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) > eth.balance(this.address):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not this.address:
                                    revert with 0, 'sERC20: approve from the zero addres'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'sERC20: approve to the zero addres'
                                allowance[address(this.address)][stor11].field_0 = ((balanceOf[address(this.address)] * liquidityFee) - (0 / totalFees * liquidityFee) / totalFees) - ((balanceOf[address(this.address)] * liquidityFee) - (0 / totalFees * liquidityFee) / totalFees / 2)
                                emit Approval((((balanceOf[address(this.address)] * liquidityFee) - (0 / totalFees * liquidityFee) / totalFees) - ((balanceOf[address(this.address)] * liquidityFee) - (0 / totalFees * liquidityFee) / totalFees / 2)), this.address, uniswapV2RouterAddress);
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                     gas gas_remaining wei
                                    args this.address, ((balanceOf[address(this.address)] * liquidityFee) - (0 / totalFees * liquidityFee) / totalFees) - ((balanceOf[address(this.address)] * liquidityFee) - (0 / totalFees * liquidityFee) / totalFees / 2), 0, 0, 0, 57005, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                emit SwapAndLiquify(Mask(255, 1, (balanceOf[address(this.address)] * liquidityFee) - (0 / totalFees * liquidityFee) / totalFees), 0, ((balanceOf[address(this.address)] * liquidityFee) - (0 / totalFees * liquidityFee) / totalFees) - ((balanceOf[address(this.address)] * liquidityFee) - (0 / totalFees * liquidityFee) / totalFees / 2));
                                if (balanceOf[address(this.address)] * liquidityFee) - (0 / totalFees * liquidityFee) / totalFees > balanceOf[address(this.address)] - (0 / totalFees):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if balanceOf[address(this.address)] - (0 / totalFees) - ((balanceOf[address(this.address)] * liquidityFee) - (0 / totalFees * liquidityFee) / totalFees):
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not this.address:
                                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[840 len 28]
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[838 len 30]
                                    allowance[address(this.address)][stor11].field_0 = balanceOf[address(this.address)] - (0 / totalFees) - ((balanceOf[address(this.address)] * liquidityFee) - (0 / totalFees * liquidityFee) / totalFees)
                                    emit Approval((balanceOf[address(this.address)] - (0 / totalFees) - ((balanceOf[address(this.address)] * liquidityFee) - (0 / totalFees * liquidityFee) / totalFees)), this.address, uniswapV2RouterAddress);
                                    mem[932 len 0] = None
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[address(this.address)] - (0 / totalFees) - ((balanceOf[address(this.address)] * liquidityFee) - (0 / totalFees * liquidityFee) / totalFees), 0, 160, this.address, block.timestamp, 2, mem[932 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call dividendTrackerAddress with:
                                       value eth.balance(this.address) wei
                                         gas gas_remaining wei
                                    if ext_call.success:
                                        emit SendDividends(balanceOf[address(this.address)] - (0 / totalFees) - ((balanceOf[address(this.address)] * liquidityFee) - (0 / totalFees * liquidityFee) / totalFees), eth.balance(this.address));
            else:
                require ext_code.size(uniswapV2RouterAddress)
                staticcall uniswapV2RouterAddress.WETH() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not this.address:
                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[360 len 28]
                if not uniswapV2RouterAddress:
                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[358 len 30]
                allowance[address(this.address)][stor11].field_0 = 0 / totalFees
                emit Approval((0 / totalFees), this.address, uniswapV2RouterAddress);
                mem[452 len 0] = None
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 0 / totalFees, 0, 160, this.address, block.timestamp, 2, mem[452 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) > eth.balance(this.address):
                    revert with 0, 'SafeMath: subtraction overflow'
                call sub_bbab0ff1Address with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 0 / totalFees > balanceOf[address(this.address)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not swapAndLiquifyEnabled:
                    if balanceOf[address(this.address)] - (0 / totalFees):
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not this.address:
                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[584 len 28]
                        if not uniswapV2RouterAddress:
                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[582 len 30]
                        allowance[address(this.address)][stor11].field_0 = balanceOf[address(this.address)] - (0 / totalFees)
                        emit Approval((balanceOf[address(this.address)] - (0 / totalFees)), this.address, uniswapV2RouterAddress);
                        mem[676 len 0] = None
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args balanceOf[address(this.address)] - (0 / totalFees), 0, 160, this.address, block.timestamp, 2, mem[676 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call dividendTrackerAddress with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                        if ext_call.success:
                            emit SendDividends(balanceOf[address(this.address)] - (0 / totalFees), eth.balance(this.address));
                else:
                    if liquidityFee <= 0:
                        if balanceOf[address(this.address)] - (0 / totalFees):
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not this.address:
                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[584 len 28]
                            if not uniswapV2RouterAddress:
                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[582 len 30]
                            allowance[address(this.address)][stor11].field_0 = balanceOf[address(this.address)] - (0 / totalFees)
                            emit Approval((balanceOf[address(this.address)] - (0 / totalFees)), this.address, uniswapV2RouterAddress);
                            mem[676 len 0] = None
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args balanceOf[address(this.address)] - (0 / totalFees), 0, 160, this.address, block.timestamp, 2, mem[676 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call dividendTrackerAddress with:
                               value eth.balance(this.address) wei
                                 gas gas_remaining wei
                            if ext_call.success:
                                emit SendDividends(balanceOf[address(this.address)] - (0 / totalFees), eth.balance(this.address));
                    else:
                        if not balanceOf[address(this.address)] - (0 / totalFees):
                            if not totalFees:
                                revert with 0, 'SafeMath: division by zero'
                            if not 0 / totalFees:
                                if 0 / totalFees > balanceOf[address(this.address)] - (0 / totalFees):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if balanceOf[address(this.address)] - (2 * 0 / totalFees):
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not this.address:
                                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[712 len 28]
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[710 len 30]
                                    allowance[address(this.address)][stor11].field_0 = balanceOf[address(this.address)] - (2 * 0 / totalFees)
                                    emit Approval((balanceOf[address(this.address)] - (2 * 0 / totalFees)), this.address, uniswapV2RouterAddress);
                                    mem[804 len 0] = None
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[address(this.address)] - (2 * 0 / totalFees), 0, 160, this.address, block.timestamp, 2, mem[804 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call dividendTrackerAddress with:
                                       value eth.balance(this.address) wei
                                         gas gas_remaining wei
                                    if ext_call.success:
                                        emit SendDividends(balanceOf[address(this.address)] - (2 * 0 / totalFees), eth.balance(this.address));
                            else:
                                if 0 / totalFees / 2 > 0 / totalFees:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not this.address:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[776 len 28]
                                if not uniswapV2RouterAddress:
                                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[774 len 30]
                                allowance[address(this.address)][stor11].field_0 = 0 / totalFees / 2
                                allowance[address(this.address)][stor11].field_255 = 0
                                emit Approval((0 / totalFees / 2), this.address, uniswapV2RouterAddress);
                                mem[868 len 0] = None
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, 0 / totalFees), 0, 160, this.address, block.timestamp, 2, mem[868 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) > eth.balance(this.address):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not this.address:
                                    revert with 0, 'sERC20: approve from the zero addres'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'sERC20: approve to the zero addres'
                                allowance[address(this.address)][stor11].field_0 = (0 / totalFees) - (0 / totalFees / 2)
                                emit Approval(((0 / totalFees) - (0 / totalFees / 2)), this.address, uniswapV2RouterAddress);
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                     gas gas_remaining wei
                                    args this.address, (0 / totalFees) - (0 / totalFees / 2), 0, 0, 0, 57005, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                emit SwapAndLiquify(Mask(255, 1, 0 / totalFees), 0, (0 / totalFees) - (0 / totalFees / 2));
                                if 0 / totalFees > balanceOf[address(this.address)] - (0 / totalFees):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if balanceOf[address(this.address)] - (2 * 0 / totalFees):
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not this.address:
                                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[1000 len 28]
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[998 len 30]
                                    allowance[address(this.address)][stor11].field_0 = balanceOf[address(this.address)] - (2 * 0 / totalFees)
                                    emit Approval((balanceOf[address(this.address)] - (2 * 0 / totalFees)), this.address, uniswapV2RouterAddress);
                                    mem[1092 len 0] = None
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[address(this.address)] - (2 * 0 / totalFees), 0, 160, this.address, block.timestamp, 2, mem[1092 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call dividendTrackerAddress with:
                                       value eth.balance(this.address) wei
                                         gas gas_remaining wei
                                    if ext_call.success:
                                        emit SendDividends(balanceOf[address(this.address)] - (2 * 0 / totalFees), eth.balance(this.address));
                        else:
                            if (balanceOf[address(this.address)] * liquidityFee) - (0 / totalFees * liquidityFee) / balanceOf[address(this.address)] - (0 / totalFees) != liquidityFee:
                                revert with 0, 'sSafeMath: multiplication overflo', mem[485 len 31]
                            if not totalFees:
                                revert with 0, 'SafeMath: division by zero'
                            if not (balanceOf[address(this.address)] * liquidityFee) - (0 / totalFees * liquidityFee) / totalFees:
                                if (balanceOf[address(this.address)] * liquidityFee) - (0 / totalFees * liquidityFee) / totalFees > balanceOf[address(this.address)] - (0 / totalFees):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if balanceOf[address(this.address)] - (0 / totalFees) - ((balanceOf[address(this.address)] * liquidityFee) - (0 / totalFees * liquidityFee) / totalFees):
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not this.address:
                                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[712 len 28]
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[710 len 30]
                                    allowance[address(this.address)][stor11].field_0 = balanceOf[address(this.address)] - (0 / totalFees) - ((balanceOf[address(this.address)] * liquidityFee) - (0 / totalFees * liquidityFee) / totalFees)
                                    emit Approval((balanceOf[address(this.address)] - (0 / totalFees) - ((balanceOf[address(this.address)] * liquidityFee) - (0 / totalFees * liquidityFee) / totalFees)), this.address, uniswapV2RouterAddress);
                                    mem[804 len 0] = None
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[address(this.address)] - (0 / totalFees) - ((balanceOf[address(this.address)] * liquidityFee) - (0 / totalFees * liquidityFee) / totalFees), 0, 160, this.address, block.timestamp, 2, mem[804 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call dividendTrackerAddress with:
                                       value eth.balance(this.address) wei
                                         gas gas_remaining wei
                                    if ext_call.success:
                                        emit SendDividends(balanceOf[address(this.address)] - (0 / totalFees) - ((balanceOf[address(this.address)] * liquidityFee) - (0 / totalFees * liquidityFee) / totalFees), eth.balance(this.address));
                            else:
                                if (balanceOf[address(this.address)] * liquidityFee) - (0 / totalFees * liquidityFee) / totalFees / 2 > (balanceOf[address(this.address)] * liquidityFee) - (0 / totalFees * liquidityFee) / totalFees:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not this.address:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[776 len 28]
                                if not uniswapV2RouterAddress:
                                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[774 len 30]
                                allowance[address(this.address)][stor11].field_0 = (balanceOf[address(this.address)] * liquidityFee) - (0 / totalFees * liquidityFee) / totalFees / 2
                                allowance[address(this.address)][stor11].field_255 = 0
                                emit Approval(((balanceOf[address(this.address)] * liquidityFee) - (0 / totalFees * liquidityFee) / totalFees / 2), this.address, uniswapV2RouterAddress);
                                mem[868 len 0] = None
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, (balanceOf[address(this.address)] * liquidityFee) - (0 / totalFees * liquidityFee) / totalFees), 0, 160, this.address, block.timestamp, 2, mem[868 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) > eth.balance(this.address):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not this.address:
                                    revert with 0, 'sERC20: approve from the zero addres'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'sERC20: approve to the zero addres'
                                allowance[address(this.address)][stor11].field_0 = ((balanceOf[address(this.address)] * liquidityFee) - (0 / totalFees * liquidityFee) / totalFees) - ((balanceOf[address(this.address)] * liquidityFee) - (0 / totalFees * liquidityFee) / totalFees / 2)
                                emit Approval((((balanceOf[address(this.address)] * liquidityFee) - (0 / totalFees * liquidityFee) / totalFees) - ((balanceOf[address(this.address)] * liquidityFee) - (0 / totalFees * liquidityFee) / totalFees / 2)), this.address, uniswapV2RouterAddress);
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                     gas gas_remaining wei
                                    args this.address, ((balanceOf[address(this.address)] * liquidityFee) - (0 / totalFees * liquidityFee) / totalFees) - ((balanceOf[address(this.address)] * liquidityFee) - (0 / totalFees * liquidityFee) / totalFees / 2), 0, 0, 0, 57005, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                emit SwapAndLiquify(Mask(255, 1, (balanceOf[address(this.address)] * liquidityFee) - (0 / totalFees * liquidityFee) / totalFees), 0, ((balanceOf[address(this.address)] * liquidityFee) - (0 / totalFees * liquidityFee) / totalFees) - ((balanceOf[address(this.address)] * liquidityFee) - (0 / totalFees * liquidityFee) / totalFees / 2));
                                if (balanceOf[address(this.address)] * liquidityFee) - (0 / totalFees * liquidityFee) / totalFees > balanceOf[address(this.address)] - (0 / totalFees):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if balanceOf[address(this.address)] - (0 / totalFees) - ((balanceOf[address(this.address)] * liquidityFee) - (0 / totalFees * liquidityFee) / totalFees):
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not this.address:
                                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[1000 len 28]
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[998 len 30]
                                    allowance[address(this.address)][stor11].field_0 = balanceOf[address(this.address)] - (0 / totalFees) - ((balanceOf[address(this.address)] * liquidityFee) - (0 / totalFees * liquidityFee) / totalFees)
                                    emit Approval((balanceOf[address(this.address)] - (0 / totalFees) - ((balanceOf[address(this.address)] * liquidityFee) - (0 / totalFees * liquidityFee) / totalFees)), this.address, uniswapV2RouterAddress);
                                    mem[1092 len 0] = None
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[address(this.address)] - (0 / totalFees) - ((balanceOf[address(this.address)] * liquidityFee) - (0 / totalFees * liquidityFee) / totalFees), 0, 160, this.address, block.timestamp, 2, mem[1092 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call dividendTrackerAddress with:
                                       value eth.balance(this.address) wei
                                         gas gas_remaining wei
                                    if ext_call.success:
                                        emit SendDividends(balanceOf[address(this.address)] - (0 / totalFees) - ((balanceOf[address(this.address)] * liquidityFee) - (0 / totalFees * liquidityFee) / totalFees), eth.balance(this.address));
        else:
            if marketFee * balanceOf[address(this.address)] / balanceOf[address(this.address)] != marketFee:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not totalFees:
                revert with 0, 'SafeMath: division by zero'
            if not marketFee * balanceOf[address(this.address)] / totalFees:
                if marketFee * balanceOf[address(this.address)] / totalFees > balanceOf[address(this.address)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not swapAndLiquifyEnabled:
                    if balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees):
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not this.address:
                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[424 len 28]
                        if not uniswapV2RouterAddress:
                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[422 len 30]
                        allowance[address(this.address)][stor11].field_0 = balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees)
                        emit Approval((balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees)), this.address, uniswapV2RouterAddress);
                        mem[516 len 0] = None
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees), 0, 160, this.address, block.timestamp, 2, mem[516 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call dividendTrackerAddress with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                        if ext_call.success:
                            emit SendDividends(balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees), eth.balance(this.address));
                else:
                    if liquidityFee <= 0:
                        if balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees):
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not this.address:
                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[424 len 28]
                            if not uniswapV2RouterAddress:
                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[422 len 30]
                            allowance[address(this.address)][stor11].field_0 = balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees)
                            emit Approval((balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees)), this.address, uniswapV2RouterAddress);
                            mem[516 len 0] = None
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees), 0, 160, this.address, block.timestamp, 2, mem[516 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call dividendTrackerAddress with:
                               value eth.balance(this.address) wei
                                 gas gas_remaining wei
                            if ext_call.success:
                                emit SendDividends(balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees), eth.balance(this.address));
                    else:
                        if not balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees):
                            if not totalFees:
                                revert with 0, 'SafeMath: division by zero'
                            if not 0 / totalFees:
                                if 0 / totalFees > balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees) - (0 / totalFees):
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not this.address:
                                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[552 len 28]
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[550 len 30]
                                    allowance[address(this.address)][stor11].field_0 = balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees) - (0 / totalFees)
                                    emit Approval((balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees) - (0 / totalFees)), this.address, uniswapV2RouterAddress);
                                    mem[644 len 0] = None
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees) - (0 / totalFees), 0, 160, this.address, block.timestamp, 2, mem[644 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call dividendTrackerAddress with:
                                       value eth.balance(this.address) wei
                                         gas gas_remaining wei
                                    if ext_call.success:
                                        emit SendDividends(balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees) - (0 / totalFees), eth.balance(this.address));
                            else:
                                if 0 / totalFees / 2 > 0 / totalFees:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not this.address:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[616 len 28]
                                if not uniswapV2RouterAddress:
                                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[614 len 30]
                                allowance[address(this.address)][stor11].field_0 = 0 / totalFees / 2
                                allowance[address(this.address)][stor11].field_255 = 0
                                emit Approval((0 / totalFees / 2), this.address, uniswapV2RouterAddress);
                                mem[708 len 0] = None
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, 0 / totalFees), 0, 160, this.address, block.timestamp, 2, mem[708 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) > eth.balance(this.address):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not this.address:
                                    revert with 0, 'sERC20: approve from the zero addres'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'sERC20: approve to the zero addres'
                                allowance[address(this.address)][stor11].field_0 = (0 / totalFees) - (0 / totalFees / 2)
                                emit Approval(((0 / totalFees) - (0 / totalFees / 2)), this.address, uniswapV2RouterAddress);
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                     gas gas_remaining wei
                                    args this.address, (0 / totalFees) - (0 / totalFees / 2), 0, 0, 0, 57005, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                emit SwapAndLiquify(Mask(255, 1, 0 / totalFees), 0, (0 / totalFees) - (0 / totalFees / 2));
                                if 0 / totalFees > balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees) - (0 / totalFees):
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not this.address:
                                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[840 len 28]
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[838 len 30]
                                    allowance[address(this.address)][stor11].field_0 = balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees) - (0 / totalFees)
                                    emit Approval((balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees) - (0 / totalFees)), this.address, uniswapV2RouterAddress);
                                    mem[932 len 0] = None
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees) - (0 / totalFees), 0, 160, this.address, block.timestamp, 2, mem[932 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call dividendTrackerAddress with:
                                       value eth.balance(this.address) wei
                                         gas gas_remaining wei
                                    if ext_call.success:
                                        emit SendDividends(balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees) - (0 / totalFees), eth.balance(this.address));
                        else:
                            if (balanceOf[address(this.address)] * liquidityFee) - (marketFee * balanceOf[address(this.address)] / totalFees * liquidityFee) / balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees) != liquidityFee:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not totalFees:
                                revert with 0, 'SafeMath: division by zero'
                            if not (balanceOf[address(this.address)] * liquidityFee) - (marketFee * balanceOf[address(this.address)] / totalFees * liquidityFee) / totalFees:
                                if (balanceOf[address(this.address)] * liquidityFee) - (marketFee * balanceOf[address(this.address)] / totalFees * liquidityFee) / totalFees > balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees) - ((balanceOf[address(this.address)] * liquidityFee) - (marketFee * balanceOf[address(this.address)] / totalFees * liquidityFee) / totalFees):
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not this.address:
                                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[552 len 28]
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[550 len 30]
                                    allowance[address(this.address)][stor11].field_0 = balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees) - ((balanceOf[address(this.address)] * liquidityFee) - (marketFee * balanceOf[address(this.address)] / totalFees * liquidityFee) / totalFees)
                                    emit Approval((balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees) - ((balanceOf[address(this.address)] * liquidityFee) - (marketFee * balanceOf[address(this.address)] / totalFees * liquidityFee) / totalFees)), this.address, uniswapV2RouterAddress);
                                    mem[644 len 0] = None
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees) - ((balanceOf[address(this.address)] * liquidityFee) - (marketFee * balanceOf[address(this.address)] / totalFees * liquidityFee) / totalFees), 0, 160, this.address, block.timestamp, 2, mem[644 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call dividendTrackerAddress with:
                                       value eth.balance(this.address) wei
                                         gas gas_remaining wei
                                    if ext_call.success:
                                        emit SendDividends(balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees) - ((balanceOf[address(this.address)] * liquidityFee) - (marketFee * balanceOf[address(this.address)] / totalFees * liquidityFee) / totalFees), eth.balance(this.address));
                            else:
                                if (balanceOf[address(this.address)] * liquidityFee) - (marketFee * balanceOf[address(this.address)] / totalFees * liquidityFee) / totalFees / 2 > (balanceOf[address(this.address)] * liquidityFee) - (marketFee * balanceOf[address(this.address)] / totalFees * liquidityFee) / totalFees:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not this.address:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[616 len 28]
                                if not uniswapV2RouterAddress:
                                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[614 len 30]
                                allowance[address(this.address)][stor11].field_0 = (balanceOf[address(this.address)] * liquidityFee) - (marketFee * balanceOf[address(this.address)] / totalFees * liquidityFee) / totalFees / 2
                                allowance[address(this.address)][stor11].field_255 = 0
                                emit Approval(((balanceOf[address(this.address)] * liquidityFee) - (marketFee * balanceOf[address(this.address)] / totalFees * liquidityFee) / totalFees / 2), this.address, uniswapV2RouterAddress);
                                mem[708 len 0] = None
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, (balanceOf[address(this.address)] * liquidityFee) - (marketFee * balanceOf[address(this.address)] / totalFees * liquidityFee) / totalFees), 0, 160, this.address, block.timestamp, 2, mem[708 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) > eth.balance(this.address):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not this.address:
                                    revert with 0, 'sERC20: approve from the zero addres'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'sERC20: approve to the zero addres'
                                allowance[address(this.address)][stor11].field_0 = ((balanceOf[address(this.address)] * liquidityFee) - (marketFee * balanceOf[address(this.address)] / totalFees * liquidityFee) / totalFees) - ((balanceOf[address(this.address)] * liquidityFee) - (marketFee * balanceOf[address(this.address)] / totalFees * liquidityFee) / totalFees / 2)
                                emit Approval((((balanceOf[address(this.address)] * liquidityFee) - (marketFee * balanceOf[address(this.address)] / totalFees * liquidityFee) / totalFees) - ((balanceOf[address(this.address)] * liquidityFee) - (marketFee * balanceOf[address(this.address)] / totalFees * liquidityFee) / totalFees / 2)), this.address, uniswapV2RouterAddress);
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                     gas gas_remaining wei
                                    args this.address, ((balanceOf[address(this.address)] * liquidityFee) - (marketFee * balanceOf[address(this.address)] / totalFees * liquidityFee) / totalFees) - ((balanceOf[address(this.address)] * liquidityFee) - (marketFee * balanceOf[address(this.address)] / totalFees * liquidityFee) / totalFees / 2), 0, 0, 0, 57005, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                emit SwapAndLiquify(Mask(255, 1, (balanceOf[address(this.address)] * liquidityFee) - (marketFee * balanceOf[address(this.address)] / totalFees * liquidityFee) / totalFees), 0, ((balanceOf[address(this.address)] * liquidityFee) - (marketFee * balanceOf[address(this.address)] / totalFees * liquidityFee) / totalFees) - ((balanceOf[address(this.address)] * liquidityFee) - (marketFee * balanceOf[address(this.address)] / totalFees * liquidityFee) / totalFees / 2));
                                if (balanceOf[address(this.address)] * liquidityFee) - (marketFee * balanceOf[address(this.address)] / totalFees * liquidityFee) / totalFees > balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees) - ((balanceOf[address(this.address)] * liquidityFee) - (marketFee * balanceOf[address(this.address)] / totalFees * liquidityFee) / totalFees):
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not this.address:
                                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[840 len 28]
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[838 len 30]
                                    allowance[address(this.address)][stor11].field_0 = balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees) - ((balanceOf[address(this.address)] * liquidityFee) - (marketFee * balanceOf[address(this.address)] / totalFees * liquidityFee) / totalFees)
                                    emit Approval((balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees) - ((balanceOf[address(this.address)] * liquidityFee) - (marketFee * balanceOf[address(this.address)] / totalFees * liquidityFee) / totalFees)), this.address, uniswapV2RouterAddress);
                                    mem[932 len 0] = None
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees) - ((balanceOf[address(this.address)] * liquidityFee) - (marketFee * balanceOf[address(this.address)] / totalFees * liquidityFee) / totalFees), 0, 160, this.address, block.timestamp, 2, mem[932 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call dividendTrackerAddress with:
                                       value eth.balance(this.address) wei
                                         gas gas_remaining wei
                                    if ext_call.success:
                                        emit SendDividends(balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees) - ((balanceOf[address(this.address)] * liquidityFee) - (marketFee * balanceOf[address(this.address)] / totalFees * liquidityFee) / totalFees), eth.balance(this.address));
            else:
                require ext_code.size(uniswapV2RouterAddress)
                staticcall uniswapV2RouterAddress.WETH() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not this.address:
                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[360 len 28]
                if not uniswapV2RouterAddress:
                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[358 len 30]
                allowance[address(this.address)][stor11].field_0 = marketFee * balanceOf[address(this.address)] / totalFees
                emit Approval((marketFee * balanceOf[address(this.address)] / totalFees), this.address, uniswapV2RouterAddress);
                mem[452 len 0] = None
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args marketFee * balanceOf[address(this.address)] / totalFees, 0, 160, this.address, block.timestamp, 2, mem[452 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) > eth.balance(this.address):
                    revert with 0, 'SafeMath: subtraction overflow'
                call sub_bbab0ff1Address with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if marketFee * balanceOf[address(this.address)] / totalFees > balanceOf[address(this.address)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not swapAndLiquifyEnabled:
                    if balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees):
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not this.address:
                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[584 len 28]
                        if not uniswapV2RouterAddress:
                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[582 len 30]
                        allowance[address(this.address)][stor11].field_0 = balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees)
                        emit Approval((balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees)), this.address, uniswapV2RouterAddress);
                        mem[676 len 0] = None
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees), 0, 160, this.address, block.timestamp, 2, mem[676 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call dividendTrackerAddress with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                        if ext_call.success:
                            emit SendDividends(balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees), eth.balance(this.address));
                else:
                    if liquidityFee <= 0:
                        if balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees):
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not this.address:
                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[584 len 28]
                            if not uniswapV2RouterAddress:
                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[582 len 30]
                            allowance[address(this.address)][stor11].field_0 = balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees)
                            emit Approval((balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees)), this.address, uniswapV2RouterAddress);
                            mem[676 len 0] = None
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees), 0, 160, this.address, block.timestamp, 2, mem[676 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call dividendTrackerAddress with:
                               value eth.balance(this.address) wei
                                 gas gas_remaining wei
                            if ext_call.success:
                                emit SendDividends(balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees), eth.balance(this.address));
                    else:
                        if not balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees):
                            if not totalFees:
                                revert with 0, 'SafeMath: division by zero'
                            if not 0 / totalFees:
                                if 0 / totalFees > balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees) - (0 / totalFees):
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not this.address:
                                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[712 len 28]
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[710 len 30]
                                    allowance[address(this.address)][stor11].field_0 = balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees) - (0 / totalFees)
                                    emit Approval((balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees) - (0 / totalFees)), this.address, uniswapV2RouterAddress);
                                    mem[804 len 0] = None
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees) - (0 / totalFees), 0, 160, this.address, block.timestamp, 2, mem[804 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call dividendTrackerAddress with:
                                       value eth.balance(this.address) wei
                                         gas gas_remaining wei
                                    if ext_call.success:
                                        emit SendDividends(balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees) - (0 / totalFees), eth.balance(this.address));
                            else:
                                if 0 / totalFees / 2 > 0 / totalFees:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not this.address:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[776 len 28]
                                if not uniswapV2RouterAddress:
                                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[774 len 30]
                                allowance[address(this.address)][stor11].field_0 = 0 / totalFees / 2
                                allowance[address(this.address)][stor11].field_255 = 0
                                emit Approval((0 / totalFees / 2), this.address, uniswapV2RouterAddress);
                                mem[868 len 0] = None
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, 0 / totalFees), 0, 160, this.address, block.timestamp, 2, mem[868 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) > eth.balance(this.address):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not this.address:
                                    revert with 0, 'sERC20: approve from the zero addres'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'sERC20: approve to the zero addres'
                                allowance[address(this.address)][stor11].field_0 = (0 / totalFees) - (0 / totalFees / 2)
                                emit Approval(((0 / totalFees) - (0 / totalFees / 2)), this.address, uniswapV2RouterAddress);
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                     gas gas_remaining wei
                                    args this.address, (0 / totalFees) - (0 / totalFees / 2), 0, 0, 0, 57005, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                emit SwapAndLiquify(Mask(255, 1, 0 / totalFees), 0, (0 / totalFees) - (0 / totalFees / 2));
                                if 0 / totalFees > balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees) - (0 / totalFees):
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not this.address:
                                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[1000 len 28]
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[998 len 30]
                                    allowance[address(this.address)][stor11].field_0 = balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees) - (0 / totalFees)
                                    emit Approval((balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees) - (0 / totalFees)), this.address, uniswapV2RouterAddress);
                                    mem[1092 len 0] = None
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees) - (0 / totalFees), 0, 160, this.address, block.timestamp, 2, mem[1092 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call dividendTrackerAddress with:
                                       value eth.balance(this.address) wei
                                         gas gas_remaining wei
                                    if ext_call.success:
                                        emit SendDividends(balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees) - (0 / totalFees), eth.balance(this.address));
                        else:
                            if (balanceOf[address(this.address)] * liquidityFee) - (marketFee * balanceOf[address(this.address)] / totalFees * liquidityFee) / balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees) != liquidityFee:
                                revert with 0, 'sSafeMath: multiplication overflo', mem[485 len 31]
                            if not totalFees:
                                revert with 0, 'SafeMath: division by zero'
                            if not (balanceOf[address(this.address)] * liquidityFee) - (marketFee * balanceOf[address(this.address)] / totalFees * liquidityFee) / totalFees:
                                if (balanceOf[address(this.address)] * liquidityFee) - (marketFee * balanceOf[address(this.address)] / totalFees * liquidityFee) / totalFees > balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees) - ((balanceOf[address(this.address)] * liquidityFee) - (marketFee * balanceOf[address(this.address)] / totalFees * liquidityFee) / totalFees):
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not this.address:
                                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[712 len 28]
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[710 len 30]
                                    allowance[address(this.address)][stor11].field_0 = balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees) - ((balanceOf[address(this.address)] * liquidityFee) - (marketFee * balanceOf[address(this.address)] / totalFees * liquidityFee) / totalFees)
                                    emit Approval((balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees) - ((balanceOf[address(this.address)] * liquidityFee) - (marketFee * balanceOf[address(this.address)] / totalFees * liquidityFee) / totalFees)), this.address, uniswapV2RouterAddress);
                                    mem[804 len 0] = None
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees) - ((balanceOf[address(this.address)] * liquidityFee) - (marketFee * balanceOf[address(this.address)] / totalFees * liquidityFee) / totalFees), 0, 160, this.address, block.timestamp, 2, mem[804 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call dividendTrackerAddress with:
                                       value eth.balance(this.address) wei
                                         gas gas_remaining wei
                                    if ext_call.success:
                                        emit SendDividends(balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees) - ((balanceOf[address(this.address)] * liquidityFee) - (marketFee * balanceOf[address(this.address)] / totalFees * liquidityFee) / totalFees), eth.balance(this.address));
                            else:
                                if (balanceOf[address(this.address)] * liquidityFee) - (marketFee * balanceOf[address(this.address)] / totalFees * liquidityFee) / totalFees / 2 > (balanceOf[address(this.address)] * liquidityFee) - (marketFee * balanceOf[address(this.address)] / totalFees * liquidityFee) / totalFees:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not this.address:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[776 len 28]
                                if not uniswapV2RouterAddress:
                                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[774 len 30]
                                allowance[address(this.address)][stor11].field_0 = (balanceOf[address(this.address)] * liquidityFee) - (marketFee * balanceOf[address(this.address)] / totalFees * liquidityFee) / totalFees / 2
                                allowance[address(this.address)][stor11].field_255 = 0
                                emit Approval(((balanceOf[address(this.address)] * liquidityFee) - (marketFee * balanceOf[address(this.address)] / totalFees * liquidityFee) / totalFees / 2), this.address, uniswapV2RouterAddress);
                                mem[868 len 0] = None
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, (balanceOf[address(this.address)] * liquidityFee) - (marketFee * balanceOf[address(this.address)] / totalFees * liquidityFee) / totalFees), 0, 160, this.address, block.timestamp, 2, mem[868 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) > eth.balance(this.address):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not this.address:
                                    revert with 0, 'sERC20: approve from the zero addres'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'sERC20: approve to the zero addres'
                                allowance[address(this.address)][stor11].field_0 = ((balanceOf[address(this.address)] * liquidityFee) - (marketFee * balanceOf[address(this.address)] / totalFees * liquidityFee) / totalFees) - ((balanceOf[address(this.address)] * liquidityFee) - (marketFee * balanceOf[address(this.address)] / totalFees * liquidityFee) / totalFees / 2)
                                emit Approval((((balanceOf[address(this.address)] * liquidityFee) - (marketFee * balanceOf[address(this.address)] / totalFees * liquidityFee) / totalFees) - ((balanceOf[address(this.address)] * liquidityFee) - (marketFee * balanceOf[address(this.address)] / totalFees * liquidityFee) / totalFees / 2)), this.address, uniswapV2RouterAddress);
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                     gas gas_remaining wei
                                    args this.address, ((balanceOf[address(this.address)] * liquidityFee) - (marketFee * balanceOf[address(this.address)] / totalFees * liquidityFee) / totalFees) - ((balanceOf[address(this.address)] * liquidityFee) - (marketFee * balanceOf[address(this.address)] / totalFees * liquidityFee) / totalFees / 2), 0, 0, 0, 57005, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                emit SwapAndLiquify(Mask(255, 1, (balanceOf[address(this.address)] * liquidityFee) - (marketFee * balanceOf[address(this.address)] / totalFees * liquidityFee) / totalFees), 0, ((balanceOf[address(this.address)] * liquidityFee) - (marketFee * balanceOf[address(this.address)] / totalFees * liquidityFee) / totalFees) - ((balanceOf[address(this.address)] * liquidityFee) - (marketFee * balanceOf[address(this.address)] / totalFees * liquidityFee) / totalFees / 2));
                                if (balanceOf[address(this.address)] * liquidityFee) - (marketFee * balanceOf[address(this.address)] / totalFees * liquidityFee) / totalFees > balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees) - ((balanceOf[address(this.address)] * liquidityFee) - (marketFee * balanceOf[address(this.address)] / totalFees * liquidityFee) / totalFees):
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not this.address:
                                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[1000 len 28]
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[998 len 30]
                                    allowance[address(this.address)][stor11].field_0 = balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees) - ((balanceOf[address(this.address)] * liquidityFee) - (marketFee * balanceOf[address(this.address)] / totalFees * liquidityFee) / totalFees)
                                    emit Approval((balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees) - ((balanceOf[address(this.address)] * liquidityFee) - (marketFee * balanceOf[address(this.address)] / totalFees * liquidityFee) / totalFees)), this.address, uniswapV2RouterAddress);
                                    mem[1092 len 0] = None
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees) - ((balanceOf[address(this.address)] * liquidityFee) - (marketFee * balanceOf[address(this.address)] / totalFees * liquidityFee) / totalFees), 0, 160, this.address, block.timestamp, 2, mem[1092 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call dividendTrackerAddress with:
                                       value eth.balance(this.address) wei
                                         gas gas_remaining wei
                                    if ext_call.success:
                                        emit SendDividends(balanceOf[address(this.address)] - (marketFee * balanceOf[address(this.address)] / totalFees) - ((balanceOf[address(this.address)] * liquidityFee) - (marketFee * balanceOf[address(this.address)] / totalFees * liquidityFee) / totalFees), eth.balance(this.address));
}



}
