contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const decimals = 18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
address owner;
address uniswapV2RouterAddress;
address uniswapV2PairAddress;
uint256 stor7;
address dividendTrackerAddress;
address deadWalletAddress;
address sub_634c6cb8Address;
uint256 maxSellTransactionAmount;
uint256 swapTokensAtAmount;
uint256 sub_8c19b37b;
uint8 swapAndLiquifyEnabled;
mapping of uint8 stor16;
uint256 sub_899c7e5f;
uint256 liquidityFee;
uint256 burnFee;
uint256 marketingFee;
uint256 totalFees;
uint8 swapEnabled; offset 160
uint128 stor22; offset 160
address _marketingWalletAddress;
uint256 sub_f293a5f9;
uint256 sub_1b2722ae;
uint256 sub_4bd1df90;
mapping of uint8 stor26;
uint256 gasForProcessing;
uint256 sub_3b25cb35;
mapping of uint8 stor30;
mapping of uint8 stor31;

function maxSellTransactionAmount() {
    return maxSellTransactionAmount
}

function name() {
    return name[0 len name.length]
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

function sub_1b2722ae(?) {
    return sub_1b2722ae
}

function _isBlacklisted(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor16[arg1])
}

function dividendTracker() {
    return dividendTrackerAddress
}

function sub_3b25cb35(?) {
    return sub_3b25cb35
}

function _marketingWalletAddress() {
    return _marketingWalletAddress
}

function uniswapV2Pair() {
    return address(uniswapV2PairAddress)
}

function swapAndLiquifyEnabled() {
    return bool(swapAndLiquifyEnabled)
}

function sub_4bd1df90(?) {
    return sub_4bd1df90
}

function isExcludedFromFees(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor30[address(arg1)])
}

function sub_634c6cb8(?) {
    return sub_634c6cb8Address
}

function marketingFee() {
    return marketingFee
}

function swapEnabled() {
    return bool(swapEnabled)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function deadWallet() {
    return deadWalletAddress
}

function sub_899c7e5f(?) {
    return sub_899c7e5f
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

function automatedMarketMakerPairs(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor31[arg1])
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function swapTokensAtAmount() {
    return swapTokensAtAmount
}

function sub_f293a5f9(?) {
    return sub_f293a5f9
}

function burnFee() {
    return burnFee
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if not stor26[msg.sender]:
        revert with 0, 'scaller is not owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_05c61d25(?) {
    require calldata.size - 4 >= 32
    if not stor26[msg.sender]:
        revert with 0, 'scaller is not owner'
    sub_4bd1df90 = arg1
}

function sub_47c7d924(?) {
    require calldata.size - 4 >= 32
    if not stor26[msg.sender]:
        revert with 0, 'scaller is not owner'
    sub_8c19b37b = arg1
}

function sub_76bbb26c(?) {
    require calldata.size - 4 >= 32
    if not stor26[msg.sender]:
        revert with 0, 'scaller is not owner'
    sub_1b2722ae = arg1
}

function setSwapEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    if not stor26[msg.sender]:
        revert with 0, 'scaller is not owner'
    stor22 = Mask(96, 0, arg1)
}

function setMarketingWallet(address arg1) {
    require calldata.size - 4 >= 32
    if not stor26[msg.sender]:
        revert with 0, 'scaller is not owner'
    _marketingWalletAddress = arg1
}

function setSwapAndLiquifyEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    if not stor26[msg.sender]:
        revert with 0, 'scaller is not owner'
    swapAndLiquifyEnabled = uint8(arg1)
}

function setMaxSellTransactionAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor26[msg.sender]:
        revert with 0, 'scaller is not owner'
    maxSellTransactionAmount = arg1
}

function blacklistAddress(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor26[msg.sender]:
        revert with 0, 'scaller is not owner'
    stor16[address(arg1)] = uint8(arg2)
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
    if not stor26[msg.sender]:
        revert with 0, 'scaller is not owner'
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
    if not stor26[msg.sender]:
        revert with 0, 'scaller is not owner'
    require ext_code.size(dividendTrackerAddress)
    call dividendTrackerAddress.0xe98030c7 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function excludeFromDividends(address arg1) {
    require calldata.size - 4 >= 32
    if not stor26[msg.sender]:
        revert with 0, 'scaller is not owner'
    require ext_code.size(dividendTrackerAddress)
    call dividendTrackerAddress.0x31e79db0 with:
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

function sub_d0972266(?) {
    require calldata.size - 4 >= 32
    if not stor26[msg.sender]:
        revert with 0, 'scaller is not owner'
    liquidityFee = arg1
    if arg1 + sub_899c7e5f < sub_899c7e5f:
        revert with 0, 'SafeMath: addition overflow'
    if marketingFee < 0:
        revert with 0, 'SafeMath: addition overflow'
    if burnFee < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalFees = burnFee + marketingFee + arg1 + sub_899c7e5f
}

function setTokenRewardsFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor26[msg.sender]:
        revert with 0, 'scaller is not owner'
    sub_899c7e5f = arg1
    if liquidityFee + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if marketingFee < 0:
        revert with 0, 'SafeMath: addition overflow'
    if burnFee < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalFees = burnFee + marketingFee + liquidityFee + arg1
}

function setBurnFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor26[msg.sender]:
        revert with 0, 'scaller is not owner'
    burnFee = arg1
    if liquidityFee + sub_899c7e5f < sub_899c7e5f:
        revert with 0, 'SafeMath: addition overflow'
    if marketingFee < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalFees = arg1 + marketingFee + liquidityFee + sub_899c7e5f
}

function setMarketingFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor26[msg.sender]:
        revert with 0, 'scaller is not owner'
    marketingFee = arg1
    if liquidityFee + sub_899c7e5f < sub_899c7e5f:
        revert with 0, 'SafeMath: addition overflow'
    if marketingFee < 0:
        revert with 0, 'SafeMath: addition overflow'
    if burnFee < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalFees = burnFee + marketingFee + liquidityFee + sub_899c7e5f
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
    if not stor26[msg.sender]:
        revert with 0, 'scaller is not owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x654f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function excludeFromFees(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor26[msg.sender]:
        revert with 0, 'scaller is not owner'
    if arg2 == bool(stor30[address(arg1)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    55,
                    0x73446f67654b696e67536f6e3a204163636f756e7420697320616c7265616479207468652076616c7565206f6620276578636c75646564,
                    mem[219 len 9]
    stor30[address(arg1)] = uint8(arg2)
    emit ExcludeFromFees(arg2, arg1);
}

function excludeMultipleAccountsFromFees(address[] arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if not stor26[msg.sender]:
        revert with 0, 'scaller is not owner'
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 30
        stor30[address(cd[((32 * idx) + arg1 + 36)])] = uint8(arg2)
        idx = idx + 1
        continue 
    emit ExcludeMultipleAccountsFromFees(Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)]), arg2);
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
                    0x45524332303a20617070726f76652066726f6d20746865207a65726f2061646472657300,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_cd5a0bc5(?) {
    require calldata.size - 4 >= 32
    if not stor26[msg.sender]:
        revert with 0, 'scaller is not owner'
    if not arg1:
        revert with 0, 'newRewardCoin is zero'
    if sub_634c6cb8Address == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x27446f67654b696e67536f6e3a2054686520526577617264436f696e20616c726561647920686173207468617420616464726573,
                    mem[216 len 12]
    sub_634c6cb8Address = arg1
    require ext_code.size(dividendTrackerAddress)
    call dividendTrackerAddress.setRewardCoin(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x7345524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x45524332303a20617070726f76652066726f6d20746865207a65726f2061646472657300, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x45524332303a20617070726f76652066726f6d20746865207a65726f2061646472657300,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function transferForeignToken(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if not stor26[msg.sender]:
        revert with 0, 'scaller is not owner'
    if this.address == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6543616e2774206c657420796f752074616b6520616c6c206e617469766520746f6b65,
                    mem[199 len 29]
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

function updateGasForProcessing(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor26[msg.sender]:
        revert with 0, 'scaller is not owner'
    if arg1 < 200000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    65,
                    0x73446f67654b696e67536f6e3a20676173466f7250726f63657373696e67206d757374206265206265747765656e203230302c30303020616e64203530302c3030,
                    mem[229 len 31]
    if arg1 > 500000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    65,
                    0x73446f67654b696e67536f6e3a20676173466f7250726f63657373696e67206d757374206265206265747765656e203230302c30303020616e64203530302c3030,
                    mem[229 len 31]
    if arg1 == gasForProcessing:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x30446f67654b696e67536f6e3a2043616e6e6f742075706461746520676173466f7250726f63657373696e6720746f2073616d652076616c75,
                    mem[221 len 7]
    emit GasForProcessingUpdated(arg1, gasForProcessing);
    gasForProcessing = arg1
}

function setAutomatedMarketMakerPair(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor26[msg.sender]:
        revert with 0, 'scaller is not owner'
    if address(uniswapV2PairAddress) == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    82,
                    0x73446f67654b696e67536f6e3a205468652050616e63616b655377617020706169722063616e6e6f742062652072656d6f7665642066726f6d206175746f6d617465644d61726b65744d616b657250616972,
                    mem[246 len 14]
    if arg2 == bool(stor31[address(arg1)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    69,
                    0x6e446f67654b696e67536f6e3a204175746f6d61746564206d61726b6574206d616b6572207061697220697320616c72656164792073657420746f20746861742076616c75,
                    mem[233 len 27]
    stor31[address(arg1)] = uint8(arg2)
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
    if not stor26[msg.sender]:
        revert with 0, 'scaller is not owner'
    if uniswapV2RouterAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x73446f67654b696e67536f6e3a2054686520726f7574657220616c726561647920686173207468617420616464726573,
                    mem[212 len 16]
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
    uint256(stor7) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor7))
}

function updateDividendTracker(address arg1) {
    require calldata.size - 4 >= 32
    if not stor26[msg.sender]:
        revert with 0, 'scaller is not owner'
    if dividendTrackerAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    58,
                    0x65446f67654b696e67536f6e3a20546865206469766964656e6420747261636b657220616c726561647920686173207468617420616464726573,
                    mem[222 len 6]
    require ext_code.size(arg1)
    staticcall arg1.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    85,
                    0x65446f67654b696e67536f6e3a20546865206e6577206469766964656e6420747261636b6572206d757374206265206f776e65642062792074686520446f67654b696e67536f6e20746f6b656e20636f6e74726163,
                    mem[249 len 11]
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



}
