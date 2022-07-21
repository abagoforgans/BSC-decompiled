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
uint8 stor7; offset 168
uint8 stor7; offset 176
uint128 stor7; offset 176
uint128 stor7; offset 168
address uniswapV2PairAddress;
address dividendTrackerAddress;
address rewardTokenAddress;
address UAddress;
address sub_68b8df5cAddress;
address sub_0736dbe6Address;
address sub_a23b2534Address;
address deadAddress;
uint256 swapTokensAtAmount;
uint256 sub_89d3e27b;
uint256 sub_185eabad;
uint256 bonusFee;
uint256 sub_a14c80fb;
uint256 sub_b23492b1;
uint256 contractFee;
uint256 gasForProcessing;
mapping of uint8 stor23;
mapping of uint8 stor24;
mapping of uint8 stor25;

function sub_0736dbe6(?) {
    return sub_0736dbe6Address
}

function sub_1422650f(?) {
    return bool(uint8(stor7.field_176))
}

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function totalSupply() {
    return totalSupply
}

function sub_185eabad(?) {
    return sub_185eabad
}

function sub_22b63a3e(?) {
    return bool(uint8(stor7.field_168))
}

function U() {
    return UAddress
}

function deadAddress() {
    return deadAddress
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
    return bool(stor23[address(arg1)])
}

function sub_68b8df5c(?) {
    return sub_68b8df5cAddress
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_89d3e27b(?) {
    return sub_89d3e27b
}

function owner() {
    return owner
}

function gasForProcessing() {
    return gasForProcessing
}

function sub_a14c80fb(?) {
    return sub_a14c80fb
}

function sub_a23b2534(?) {
    return sub_a23b2534Address
}

function bonusFee() {
    return bonusFee
}

function sub_b23492b1(?) {
    return sub_b23492b1
}

function automatedMarketMakerPairs(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor24[arg1])
}

function sub_d13357ca(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor25[arg1])
}

function contractFee() {
    return contractFee
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

function sub_814db466(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_0736dbe6Address = address(arg1)
}

function sub_8f7aa667(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_68b8df5cAddress = address(arg1)
}

function sub_c4b5b9fe(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_a23b2534Address = address(arg1)
}

function sub_8a43ca25(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(80, 0, stor7.field_176) = Mask(80, 0, bool(arg1))
}

function sub_ed490cce(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(88, 0, stor7.field_168) = Mask(88, 0, bool(arg1))
}

function sub_3874f4fc(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor25[address(arg1)] = uint8(bool(arg2))
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

function excludeFromFees(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor23[address(arg1)] = uint8(arg2)
    emit ExcludeFromFees(arg2, arg1);
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function getMinimumTokenBalanceForDividends() {
    staticcall dividendTrackerAddress.minimumTokenBalanceForDividends() with:
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

function isExcludedFromDividends(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall dividendTrackerAddress.0xc705c569 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
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
    if arg2 == bool(stor24[address(arg1)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'BABYTOKEN: Automated market maker pair is already set to that value'
    stor24[address(arg1)] = uint8(arg2)
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
        mem[32] = 23
        stor23[address(cd[((32 * idx) + arg1 + 36)])] = uint8(arg2)
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
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
}

function updateDividendTracker(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if dividendTrackerAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'BABYTOKEN: The dividend tracker already has that address'
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

function withdrawCoin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if not balanceOf[this.address]:
        if not this.address:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
        if balanceOf[address(this.address)] < 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
        if balanceOf[arg1] > -1:
            revert with 0, 17
        emit Transfer(0, this.address, arg1);
    else:
        if stor25[address(this.address)]:
            revert with 0, 'Blacklist buying restrictions'
        if not uint8(stor7.field_168):
            if stor23[address(this.address)]:
                if not this.address:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if balanceOf[address(this.address)] < balanceOf[this.address]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(this.address)] -= balanceOf[this.address]
                if balanceOf[arg1] > !balanceOf[this.address]:
                    revert with 0, 17
                balanceOf[arg1] += balanceOf[this.address]
                emit Transfer(balanceOf[this.address], this.address, arg1);
            else:
                if stor23[address(arg1)]:
                    if not this.address:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(this.address)] < balanceOf[this.address]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(this.address)] -= balanceOf[this.address]
                    if balanceOf[arg1] > !balanceOf[this.address]:
                        revert with 0, 17
                    balanceOf[arg1] += balanceOf[this.address]
                    emit Transfer(balanceOf[this.address], this.address, arg1);
                else:
                    if uint8(stor7.field_160):
                        if not this.address:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(this.address)] < balanceOf[this.address]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(this.address)] -= balanceOf[this.address]
                        if balanceOf[arg1] > !balanceOf[this.address]:
                            revert with 0, 17
                        balanceOf[arg1] += balanceOf[this.address]
                        emit Transfer(balanceOf[this.address], this.address, arg1);
                    else:
                        if balanceOf[this.address] and contractFee > -1 / balanceOf[this.address]:
                            revert with 0, 17
                        if not this.address:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if balanceOf[address(this.address)] < balanceOf[this.address] * contractFee / 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(this.address)] -= balanceOf[this.address] * contractFee / 1000
                        if balanceOf[this.address] > !(balanceOf[this.address] * contractFee / 1000):
                            revert with 0, 17
                        balanceOf[this.address] += balanceOf[this.address] * contractFee / 1000
                        emit Transfer((balanceOf[this.address] * contractFee / 1000), this.address, this.address);
                        if balanceOf[this.address] and sub_a14c80fb > -1 / balanceOf[this.address]:
                            revert with 0, 17
                        if not this.address:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not deadAddress:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(this.address)] < balanceOf[this.address] * sub_a14c80fb / 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(this.address)] -= balanceOf[this.address] * sub_a14c80fb / 1000
                        if balanceOf[stor14] > !(balanceOf[this.address] * sub_a14c80fb / 1000):
                            revert with 0, 17
                        balanceOf[stor14] += balanceOf[this.address] * sub_a14c80fb / 1000
                        emit Transfer((balanceOf[this.address] * sub_a14c80fb / 1000), this.address, deadAddress);
                        if balanceOf[this.address] < balanceOf[this.address] * contractFee / 1000:
                            revert with 0, 17
                        if balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) < balanceOf[this.address] * sub_a14c80fb / 1000:
                            revert with 0, 17
                        if not this.address:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(this.address)] < balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) - (balanceOf[this.address] * sub_a14c80fb / 1000):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - balanceOf[this.address] + (balanceOf[this.address] * contractFee / 1000) + (balanceOf[this.address] * sub_a14c80fb / 1000)
                        if balanceOf[arg1] > !(balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) - (balanceOf[this.address] * sub_a14c80fb / 1000)):
                            revert with 0, 17
                        balanceOf[arg1] = balanceOf[arg1] + balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) - (balanceOf[this.address] * sub_a14c80fb / 1000)
                        emit Transfer((balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) - (balanceOf[this.address] * sub_a14c80fb / 1000)), this.address, arg1);
            require ext_code.size(dividendTrackerAddress)
            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(this.address), balanceOf[address(this.address)]
            require ext_code.size(dividendTrackerAddress)
            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), balanceOf[address(arg1)]
            if not uint8(stor7.field_160):
                if uint8(stor7.field_176):
                    call dividendTrackerAddress.process(uint256 arg1) with:
                         gas gas_remaining wei
                        args gasForProcessing
                    if ext_call.success:
                        require return_data.size >= 96
                        emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
        else:
            if balanceOf[this.address] < swapTokensAtAmount:
                if stor23[address(this.address)]:
                    if not this.address:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(this.address)] < balanceOf[this.address]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(this.address)] -= balanceOf[this.address]
                    if balanceOf[arg1] > !balanceOf[this.address]:
                        revert with 0, 17
                    balanceOf[arg1] += balanceOf[this.address]
                    emit Transfer(balanceOf[this.address], this.address, arg1);
                else:
                    if stor23[address(arg1)]:
                        if not this.address:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(this.address)] < balanceOf[this.address]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(this.address)] -= balanceOf[this.address]
                        if balanceOf[arg1] > !balanceOf[this.address]:
                            revert with 0, 17
                        balanceOf[arg1] += balanceOf[this.address]
                        emit Transfer(balanceOf[this.address], this.address, arg1);
                    else:
                        if uint8(stor7.field_160):
                            if not this.address:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(this.address)] < balanceOf[this.address]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(this.address)] -= balanceOf[this.address]
                            if balanceOf[arg1] > !balanceOf[this.address]:
                                revert with 0, 17
                            balanceOf[arg1] += balanceOf[this.address]
                            emit Transfer(balanceOf[this.address], this.address, arg1);
                        else:
                            if balanceOf[this.address] and contractFee > -1 / balanceOf[this.address]:
                                revert with 0, 17
                            if not this.address:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if balanceOf[address(this.address)] < balanceOf[this.address] * contractFee / 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(this.address)] -= balanceOf[this.address] * contractFee / 1000
                            if balanceOf[this.address] > !(balanceOf[this.address] * contractFee / 1000):
                                revert with 0, 17
                            balanceOf[this.address] += balanceOf[this.address] * contractFee / 1000
                            emit Transfer((balanceOf[this.address] * contractFee / 1000), this.address, this.address);
                            if balanceOf[this.address] and sub_a14c80fb > -1 / balanceOf[this.address]:
                                revert with 0, 17
                            if not this.address:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not deadAddress:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(this.address)] < balanceOf[this.address] * sub_a14c80fb / 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(this.address)] -= balanceOf[this.address] * sub_a14c80fb / 1000
                            if balanceOf[stor14] > !(balanceOf[this.address] * sub_a14c80fb / 1000):
                                revert with 0, 17
                            balanceOf[stor14] += balanceOf[this.address] * sub_a14c80fb / 1000
                            emit Transfer((balanceOf[this.address] * sub_a14c80fb / 1000), this.address, deadAddress);
                            if balanceOf[this.address] < balanceOf[this.address] * contractFee / 1000:
                                revert with 0, 17
                            if balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) < balanceOf[this.address] * sub_a14c80fb / 1000:
                                revert with 0, 17
                            if not this.address:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(this.address)] < balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) - (balanceOf[this.address] * sub_a14c80fb / 1000):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(this.address)] = balanceOf[address(this.address)] - balanceOf[this.address] + (balanceOf[this.address] * contractFee / 1000) + (balanceOf[this.address] * sub_a14c80fb / 1000)
                            if balanceOf[arg1] > !(balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) - (balanceOf[this.address] * sub_a14c80fb / 1000)):
                                revert with 0, 17
                            balanceOf[arg1] = balanceOf[arg1] + balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) - (balanceOf[this.address] * sub_a14c80fb / 1000)
                            emit Transfer((balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) - (balanceOf[this.address] * sub_a14c80fb / 1000)), this.address, arg1);
                require ext_code.size(dividendTrackerAddress)
                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(this.address), balanceOf[address(this.address)]
                require ext_code.size(dividendTrackerAddress)
                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), balanceOf[address(arg1)]
                if not uint8(stor7.field_160):
                    if uint8(stor7.field_176):
                        call dividendTrackerAddress.process(uint256 arg1) with:
                             gas gas_remaining wei
                            args gasForProcessing
                        if ext_call.success:
                            require return_data.size >= 96
                            emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
            else:
                if uint8(stor7.field_160):
                    if stor23[address(this.address)]:
                        if not this.address:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(this.address)] < balanceOf[this.address]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(this.address)] -= balanceOf[this.address]
                        if balanceOf[arg1] > !balanceOf[this.address]:
                            revert with 0, 17
                        balanceOf[arg1] += balanceOf[this.address]
                        emit Transfer(balanceOf[this.address], this.address, arg1);
                    else:
                        if stor23[address(arg1)]:
                            if not this.address:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(this.address)] < balanceOf[this.address]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(this.address)] -= balanceOf[this.address]
                            if balanceOf[arg1] > !balanceOf[this.address]:
                                revert with 0, 17
                            balanceOf[arg1] += balanceOf[this.address]
                            emit Transfer(balanceOf[this.address], this.address, arg1);
                        else:
                            if uint8(stor7.field_160):
                                if not this.address:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(this.address)] < balanceOf[this.address]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(this.address)] -= balanceOf[this.address]
                                if balanceOf[arg1] > !balanceOf[this.address]:
                                    revert with 0, 17
                                balanceOf[arg1] += balanceOf[this.address]
                                emit Transfer(balanceOf[this.address], this.address, arg1);
                            else:
                                if balanceOf[this.address] and contractFee > -1 / balanceOf[this.address]:
                                    revert with 0, 17
                                if not this.address:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if balanceOf[address(this.address)] < balanceOf[this.address] * contractFee / 1000:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(this.address)] -= balanceOf[this.address] * contractFee / 1000
                                if balanceOf[this.address] > !(balanceOf[this.address] * contractFee / 1000):
                                    revert with 0, 17
                                balanceOf[this.address] += balanceOf[this.address] * contractFee / 1000
                                emit Transfer((balanceOf[this.address] * contractFee / 1000), this.address, this.address);
                                if balanceOf[this.address] and sub_a14c80fb > -1 / balanceOf[this.address]:
                                    revert with 0, 17
                                if not this.address:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not deadAddress:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(this.address)] < balanceOf[this.address] * sub_a14c80fb / 1000:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(this.address)] -= balanceOf[this.address] * sub_a14c80fb / 1000
                                if balanceOf[stor14] > !(balanceOf[this.address] * sub_a14c80fb / 1000):
                                    revert with 0, 17
                                balanceOf[stor14] += balanceOf[this.address] * sub_a14c80fb / 1000
                                emit Transfer((balanceOf[this.address] * sub_a14c80fb / 1000), this.address, deadAddress);
                                if balanceOf[this.address] < balanceOf[this.address] * contractFee / 1000:
                                    revert with 0, 17
                                if balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) < balanceOf[this.address] * sub_a14c80fb / 1000:
                                    revert with 0, 17
                                if not this.address:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(this.address)] < balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) - (balanceOf[this.address] * sub_a14c80fb / 1000):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(this.address)] = balanceOf[address(this.address)] - balanceOf[this.address] + (balanceOf[this.address] * contractFee / 1000) + (balanceOf[this.address] * sub_a14c80fb / 1000)
                                if balanceOf[arg1] > !(balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) - (balanceOf[this.address] * sub_a14c80fb / 1000)):
                                    revert with 0, 17
                                balanceOf[arg1] = balanceOf[arg1] + balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) - (balanceOf[this.address] * sub_a14c80fb / 1000)
                                emit Transfer((balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) - (balanceOf[this.address] * sub_a14c80fb / 1000)), this.address, arg1);
                    require ext_code.size(dividendTrackerAddress)
                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(this.address), balanceOf[address(this.address)]
                    require ext_code.size(dividendTrackerAddress)
                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), balanceOf[address(arg1)]
                    if not uint8(stor7.field_160):
                        if uint8(stor7.field_176):
                            call dividendTrackerAddress.process(uint256 arg1) with:
                                 gas gas_remaining wei
                                args gasForProcessing
                            if ext_call.success:
                                require return_data.size >= 96
                                emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                else:
                    if stor24[address(this.address)]:
                        if stor23[address(this.address)]:
                            if not this.address:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(this.address)] < balanceOf[this.address]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(this.address)] -= balanceOf[this.address]
                            if balanceOf[arg1] > !balanceOf[this.address]:
                                revert with 0, 17
                            balanceOf[arg1] += balanceOf[this.address]
                            emit Transfer(balanceOf[this.address], this.address, arg1);
                        else:
                            if stor23[address(arg1)]:
                                if not this.address:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(this.address)] < balanceOf[this.address]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(this.address)] -= balanceOf[this.address]
                                if balanceOf[arg1] > !balanceOf[this.address]:
                                    revert with 0, 17
                                balanceOf[arg1] += balanceOf[this.address]
                                emit Transfer(balanceOf[this.address], this.address, arg1);
                            else:
                                if uint8(stor7.field_160):
                                    if not this.address:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(this.address)] < balanceOf[this.address]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(this.address)] -= balanceOf[this.address]
                                    if balanceOf[arg1] > !balanceOf[this.address]:
                                        revert with 0, 17
                                    balanceOf[arg1] += balanceOf[this.address]
                                    emit Transfer(balanceOf[this.address], this.address, arg1);
                                else:
                                    if balanceOf[this.address] and contractFee > -1 / balanceOf[this.address]:
                                        revert with 0, 17
                                    if not this.address:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if balanceOf[address(this.address)] < balanceOf[this.address] * contractFee / 1000:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(this.address)] -= balanceOf[this.address] * contractFee / 1000
                                    if balanceOf[this.address] > !(balanceOf[this.address] * contractFee / 1000):
                                        revert with 0, 17
                                    balanceOf[this.address] += balanceOf[this.address] * contractFee / 1000
                                    emit Transfer((balanceOf[this.address] * contractFee / 1000), this.address, this.address);
                                    if balanceOf[this.address] and sub_a14c80fb > -1 / balanceOf[this.address]:
                                        revert with 0, 17
                                    if not this.address:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not deadAddress:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(this.address)] < balanceOf[this.address] * sub_a14c80fb / 1000:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(this.address)] -= balanceOf[this.address] * sub_a14c80fb / 1000
                                    if balanceOf[stor14] > !(balanceOf[this.address] * sub_a14c80fb / 1000):
                                        revert with 0, 17
                                    balanceOf[stor14] += balanceOf[this.address] * sub_a14c80fb / 1000
                                    emit Transfer((balanceOf[this.address] * sub_a14c80fb / 1000), this.address, deadAddress);
                                    if balanceOf[this.address] < balanceOf[this.address] * contractFee / 1000:
                                        revert with 0, 17
                                    if balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) < balanceOf[this.address] * sub_a14c80fb / 1000:
                                        revert with 0, 17
                                    if not this.address:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(this.address)] < balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) - (balanceOf[this.address] * sub_a14c80fb / 1000):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - balanceOf[this.address] + (balanceOf[this.address] * contractFee / 1000) + (balanceOf[this.address] * sub_a14c80fb / 1000)
                                    if balanceOf[arg1] > !(balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) - (balanceOf[this.address] * sub_a14c80fb / 1000)):
                                        revert with 0, 17
                                    balanceOf[arg1] = balanceOf[arg1] + balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) - (balanceOf[this.address] * sub_a14c80fb / 1000)
                                    emit Transfer((balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) - (balanceOf[this.address] * sub_a14c80fb / 1000)), this.address, arg1);
                        require ext_code.size(dividendTrackerAddress)
                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(this.address), balanceOf[address(this.address)]
                        require ext_code.size(dividendTrackerAddress)
                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), balanceOf[address(arg1)]
                        if not uint8(stor7.field_160):
                            if uint8(stor7.field_176):
                                call dividendTrackerAddress.process(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args gasForProcessing
                                if ext_call.success:
                                    require return_data.size >= 96
                                    emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                    else:
                        if owner == this.address:
                            if stor23[address(this.address)]:
                                if not this.address:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(this.address)] < balanceOf[this.address]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(this.address)] -= balanceOf[this.address]
                                if balanceOf[arg1] > !balanceOf[this.address]:
                                    revert with 0, 17
                                balanceOf[arg1] += balanceOf[this.address]
                                emit Transfer(balanceOf[this.address], this.address, arg1);
                            else:
                                if stor23[address(arg1)]:
                                    if not this.address:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(this.address)] < balanceOf[this.address]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(this.address)] -= balanceOf[this.address]
                                    if balanceOf[arg1] > !balanceOf[this.address]:
                                        revert with 0, 17
                                    balanceOf[arg1] += balanceOf[this.address]
                                    emit Transfer(balanceOf[this.address], this.address, arg1);
                                else:
                                    if uint8(stor7.field_160):
                                        if not this.address:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(this.address)] < balanceOf[this.address]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(this.address)] -= balanceOf[this.address]
                                        if balanceOf[arg1] > !balanceOf[this.address]:
                                            revert with 0, 17
                                        balanceOf[arg1] += balanceOf[this.address]
                                        emit Transfer(balanceOf[this.address], this.address, arg1);
                                    else:
                                        if balanceOf[this.address] and contractFee > -1 / balanceOf[this.address]:
                                            revert with 0, 17
                                        if not this.address:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if balanceOf[address(this.address)] < balanceOf[this.address] * contractFee / 1000:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(this.address)] -= balanceOf[this.address] * contractFee / 1000
                                        if balanceOf[this.address] > !(balanceOf[this.address] * contractFee / 1000):
                                            revert with 0, 17
                                        balanceOf[this.address] += balanceOf[this.address] * contractFee / 1000
                                        emit Transfer((balanceOf[this.address] * contractFee / 1000), this.address, this.address);
                                        if balanceOf[this.address] and sub_a14c80fb > -1 / balanceOf[this.address]:
                                            revert with 0, 17
                                        if not this.address:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not deadAddress:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(this.address)] < balanceOf[this.address] * sub_a14c80fb / 1000:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(this.address)] -= balanceOf[this.address] * sub_a14c80fb / 1000
                                        if balanceOf[stor14] > !(balanceOf[this.address] * sub_a14c80fb / 1000):
                                            revert with 0, 17
                                        balanceOf[stor14] += balanceOf[this.address] * sub_a14c80fb / 1000
                                        emit Transfer((balanceOf[this.address] * sub_a14c80fb / 1000), this.address, deadAddress);
                                        if balanceOf[this.address] < balanceOf[this.address] * contractFee / 1000:
                                            revert with 0, 17
                                        if balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) < balanceOf[this.address] * sub_a14c80fb / 1000:
                                            revert with 0, 17
                                        if not this.address:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(this.address)] < balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) - (balanceOf[this.address] * sub_a14c80fb / 1000):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - balanceOf[this.address] + (balanceOf[this.address] * contractFee / 1000) + (balanceOf[this.address] * sub_a14c80fb / 1000)
                                        if balanceOf[arg1] > !(balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) - (balanceOf[this.address] * sub_a14c80fb / 1000)):
                                            revert with 0, 17
                                        balanceOf[arg1] = balanceOf[arg1] + balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) - (balanceOf[this.address] * sub_a14c80fb / 1000)
                                        emit Transfer((balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) - (balanceOf[this.address] * sub_a14c80fb / 1000)), this.address, arg1);
                            require ext_code.size(dividendTrackerAddress)
                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(this.address), balanceOf[address(this.address)]
                            require ext_code.size(dividendTrackerAddress)
                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), balanceOf[address(arg1)]
                            if not uint8(stor7.field_160):
                                if uint8(stor7.field_176):
                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args gasForProcessing
                                    if ext_call.success:
                                        require return_data.size >= 96
                                        emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                        else:
                            if owner == arg1:
                                if stor23[address(this.address)]:
                                    if not this.address:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(this.address)] < balanceOf[this.address]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(this.address)] -= balanceOf[this.address]
                                    if balanceOf[arg1] > !balanceOf[this.address]:
                                        revert with 0, 17
                                    balanceOf[arg1] += balanceOf[this.address]
                                    emit Transfer(balanceOf[this.address], this.address, arg1);
                                else:
                                    if stor23[address(arg1)]:
                                        if not this.address:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(this.address)] < balanceOf[this.address]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(this.address)] -= balanceOf[this.address]
                                        if balanceOf[arg1] > !balanceOf[this.address]:
                                            revert with 0, 17
                                        balanceOf[arg1] += balanceOf[this.address]
                                        emit Transfer(balanceOf[this.address], this.address, arg1);
                                    else:
                                        if uint8(stor7.field_160):
                                            if not this.address:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(this.address)] < balanceOf[this.address]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(this.address)] -= balanceOf[this.address]
                                            if balanceOf[arg1] > !balanceOf[this.address]:
                                                revert with 0, 17
                                            balanceOf[arg1] += balanceOf[this.address]
                                            emit Transfer(balanceOf[this.address], this.address, arg1);
                                        else:
                                            if balanceOf[this.address] and contractFee > -1 / balanceOf[this.address]:
                                                revert with 0, 17
                                            if not this.address:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                            if balanceOf[address(this.address)] < balanceOf[this.address] * contractFee / 1000:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(this.address)] -= balanceOf[this.address] * contractFee / 1000
                                            if balanceOf[this.address] > !(balanceOf[this.address] * contractFee / 1000):
                                                revert with 0, 17
                                            balanceOf[this.address] += balanceOf[this.address] * contractFee / 1000
                                            emit Transfer((balanceOf[this.address] * contractFee / 1000), this.address, this.address);
                                            if balanceOf[this.address] and sub_a14c80fb > -1 / balanceOf[this.address]:
                                                revert with 0, 17
                                            if not this.address:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                            if not deadAddress:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(this.address)] < balanceOf[this.address] * sub_a14c80fb / 1000:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(this.address)] -= balanceOf[this.address] * sub_a14c80fb / 1000
                                            if balanceOf[stor14] > !(balanceOf[this.address] * sub_a14c80fb / 1000):
                                                revert with 0, 17
                                            balanceOf[stor14] += balanceOf[this.address] * sub_a14c80fb / 1000
                                            emit Transfer((balanceOf[this.address] * sub_a14c80fb / 1000), this.address, deadAddress);
                                            if balanceOf[this.address] < balanceOf[this.address] * contractFee / 1000:
                                                revert with 0, 17
                                            if balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) < balanceOf[this.address] * sub_a14c80fb / 1000:
                                                revert with 0, 17
                                            if not this.address:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(this.address)] < balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) - (balanceOf[this.address] * sub_a14c80fb / 1000):
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(this.address)] = balanceOf[address(this.address)] - balanceOf[this.address] + (balanceOf[this.address] * contractFee / 1000) + (balanceOf[this.address] * sub_a14c80fb / 1000)
                                            if balanceOf[arg1] > !(balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) - (balanceOf[this.address] * sub_a14c80fb / 1000)):
                                                revert with 0, 17
                                            balanceOf[arg1] = balanceOf[arg1] + balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) - (balanceOf[this.address] * sub_a14c80fb / 1000)
                                            emit Transfer((balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) - (balanceOf[this.address] * sub_a14c80fb / 1000)), this.address, arg1);
                                require ext_code.size(dividendTrackerAddress)
                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), balanceOf[address(this.address)]
                                require ext_code.size(dividendTrackerAddress)
                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), balanceOf[address(arg1)]
                                if not uint8(stor7.field_160):
                                    if uint8(stor7.field_176):
                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args gasForProcessing
                                        if ext_call.success:
                                            require return_data.size >= 96
                                            emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                            else:
                                uint8(stor7.field_160) = 1
                                if balanceOf[this.address] and sub_89d3e27b > -1 / balanceOf[this.address]:
                                    revert with 0, 17
                                if not contractFee:
                                    revert with 0, 18
                                mem[96] = 2
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
                                allowance[address(this.address)][stor6].field_0 = balanceOf[this.address] * sub_89d3e27b / contractFee
                                emit Approval((balanceOf[this.address] * sub_89d3e27b / contractFee), this.address, uniswapV2RouterAddress);
                                mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 196] = balanceOf[this.address] * sub_89d3e27b / contractFee
                                mem[ceil32(return_data.size) + 356] = 2
                                idx = 0
                                s = ceil32(return_data.size) + 388
                                t = 128
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[ceil32(return_data.size) + 292] = sub_68b8df5cAddress
                                mem[ceil32(return_data.size) + 324] = block.timestamp
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args balanceOf[this.address] * sub_89d3e27b / contractFee, 0, 160, sub_68b8df5cAddress, block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if balanceOf[this.address] and sub_185eabad > -1 / balanceOf[this.address]:
                                    revert with 0, 17
                                if not contractFee:
                                    revert with 0, 18
                                mem[ceil32(return_data.size) + 192] = 2
                                mem[ceil32(return_data.size) + 224] = this.address
                                staticcall uniswapV2RouterAddress.WETH() with:
                                        gas gas_remaining wei
                                mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 288
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[ceil32(return_data.size) + 256] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                mem[0] = uniswapV2RouterAddress
                                mem[32] = sha3(address(this.address), 1)
                                allowance[address(this.address)][stor6].field_0 = balanceOf[this.address] * sub_185eabad / contractFee
                                emit Approval((balanceOf[this.address] * sub_185eabad / contractFee), this.address, uniswapV2RouterAddress);
                                mem[(2 * ceil32(return_data.size)) + 288] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 292] = balanceOf[this.address] * sub_185eabad / contractFee
                                mem[(2 * ceil32(return_data.size)) + 324] = 0
                                mem[(2 * ceil32(return_data.size)) + 356] = 160
                                mem[(2 * ceil32(return_data.size)) + 452] = 2
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 484
                                t = ceil32(return_data.size) + 224
                                while idx < mem[ceil32(return_data.size) + 192]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(2 * ceil32(return_data.size)) + 388] = sub_0736dbe6Address
                                mem[(2 * ceil32(return_data.size)) + 420] = block.timestamp
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args balanceOf[this.address] * sub_185eabad / contractFee, 0, 160, sub_0736dbe6Address, block.timestamp, mem[(2 * ceil32(return_data.size)) + 452 len (32 * mem[ceil32(return_data.size) + 192]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if balanceOf[this.address] and sub_b23492b1 > -1 / balanceOf[this.address]:
                                    revert with 0, 17
                                if not contractFee:
                                    revert with 0, 18
                                if balanceOf[this.address] * sub_b23492b1 / contractFee < balanceOf[this.address] * sub_b23492b1 / contractFee / 2:
                                    revert with 0, 17
                                mem[(2 * ceil32(return_data.size)) + 288] = 2
                                mem[(2 * ceil32(return_data.size)) + 320] = this.address
                                staticcall uniswapV2RouterAddress.WETH() with:
                                        gas gas_remaining wei
                                mem[(2 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + 384
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(2 * ceil32(return_data.size)) + 352] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                mem[0] = uniswapV2RouterAddress
                                mem[32] = sha3(address(this.address), 1)
                                allowance[address(this.address)][stor6].field_0 = balanceOf[this.address] * sub_b23492b1 / contractFee / 2
                                allowance[address(this.address)][stor6].field_255 = 0
                                emit Approval((balanceOf[this.address] * sub_b23492b1 / contractFee / 2), this.address, uniswapV2RouterAddress);
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = balanceOf[this.address] * sub_b23492b1 / contractFee / 2
                                mem[(4 * ceil32(return_data.size)) + 420] = 0
                                mem[(4 * ceil32(return_data.size)) + 452] = 160
                                mem[(4 * ceil32(return_data.size)) + 548] = 2
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + 580
                                t = (2 * ceil32(return_data.size)) + 320
                                while idx < mem[(2 * ceil32(return_data.size)) + 288]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(4 * ceil32(return_data.size)) + 484] = this.address
                                mem[(4 * ceil32(return_data.size)) + 516] = block.timestamp
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, balanceOf[this.address] * sub_b23492b1 / contractFee), 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 548 len (32 * mem[(2 * ceil32(return_data.size)) + 288]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                if not this.address:
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 36
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'ERC20: approve from the zero add'
                                    mem[(4 * ceil32(return_data.size)) + 484] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 132
                                if not uniswapV2RouterAddress:
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 34
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'ERC20: approve to the zero addre'
                                    mem[(4 * ceil32(return_data.size)) + 484] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 132
                                allowance[address(this.address)][stor6].field_0 = (balanceOf[this.address] * sub_b23492b1 / contractFee) - (balanceOf[this.address] * sub_b23492b1 / contractFee / 2)
                                emit Approval(((balanceOf[this.address] * sub_b23492b1 / contractFee) - (balanceOf[this.address] * sub_b23492b1 / contractFee / 2)), this.address, uniswapV2RouterAddress);
                                mem[(4 * ceil32(return_data.size)) + 388] = this.address
                                mem[(4 * ceil32(return_data.size)) + 420] = (balanceOf[this.address] * sub_b23492b1 / contractFee) - (balanceOf[this.address] * sub_b23492b1 / contractFee / 2)
                                mem[(4 * ceil32(return_data.size)) + 452] = 0
                                mem[(4 * ceil32(return_data.size)) + 484] = 0
                                mem[(4 * ceil32(return_data.size)) + 516] = sub_a23b2534Address
                                mem[(4 * ceil32(return_data.size)) + 548] = block.timestamp
                                call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                     gas gas_remaining wei
                                    args mem[(4 * ceil32(return_data.size)) + 388 len (5 * ceil32(return_data.size)) + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                mem[(4 * ceil32(return_data.size)) + 384] = balanceOf[this.address] * sub_b23492b1 / contractFee / 2
                                mem[(4 * ceil32(return_data.size)) + 416] = 0
                                mem[(4 * ceil32(return_data.size)) + 448] = (balanceOf[this.address] * sub_b23492b1 / contractFee) - (balanceOf[this.address] * sub_b23492b1 / contractFee / 2)
                                emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                    mem[(4 * ceil32(return_data.size)) + 384 len (7 * ceil32(return_data.size)) + 96],
                                mem[(4 * ceil32(return_data.size)) + 384] = 4
                                mem[(4 * ceil32(return_data.size)) + 416] = this.address
                                staticcall uniswapV2RouterAddress.WETH() with:
                                        gas gas_remaining wei
                                mem[(4 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (6 * ceil32(return_data.size)) + 544
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(4 * ceil32(return_data.size)) + 448] = ext_call.return_data[12 len 20]
                                mem[(4 * ceil32(return_data.size)) + 480] = UAddress
                                mem[(4 * ceil32(return_data.size)) + 512] = rewardTokenAddress
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                mem[0] = uniswapV2RouterAddress
                                mem[32] = sha3(address(this.address), 1)
                                allowance[address(this.address)][stor6].field_0 = balanceOf[this.address]
                                emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                mem[(6 * ceil32(return_data.size)) + 544] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[(6 * ceil32(return_data.size)) + 548] = balanceOf[this.address]
                                mem[(6 * ceil32(return_data.size)) + 580] = 0
                                mem[(6 * ceil32(return_data.size)) + 612] = 160
                                mem[(6 * ceil32(return_data.size)) + 708] = 4
                                idx = 0
                                s = (6 * ceil32(return_data.size)) + 740
                                t = (4 * ceil32(return_data.size)) + 416
                                while idx < mem[(4 * ceil32(return_data.size)) + 384]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(6 * ceil32(return_data.size)) + 644] = this.address
                                mem[(6 * ceil32(return_data.size)) + 676] = block.timestamp
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[(6 * ceil32(return_data.size)) + 708 len (32 * mem[(4 * ceil32(return_data.size)) + 384]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(6 * ceil32(return_data.size)) + 548] = this.address
                                staticcall rewardTokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[(6 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
                                require return_data.size >= 32
                                mem[(8 * ceil32(return_data.size)) + 548] = dividendTrackerAddress
                                mem[(8 * ceil32(return_data.size)) + 580] = ext_call.return_data[0]
                                call rewardTokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[(8 * ceil32(return_data.size)) + 548 len (13 * ceil32(return_data.size)) + 64]
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
                                uint8(stor7.field_160) = 0
                                if stor23[address(this.address)]:
                                    if not this.address:
                                        mem[(8 * ceil32(return_data.size)) + 544] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(8 * ceil32(return_data.size)) + 548] = 32
                                        mem[(8 * ceil32(return_data.size)) + 580] = 37
                                        mem[(8 * ceil32(return_data.size)) + 612] = 'ERC20: transfer from the zero ad'
                                        mem[(8 * ceil32(return_data.size)) + 644] = 0x6472657373000000000000000000000000000000000000000000000000000000
                                        revert with memory
                                          from (8 * ceil32(return_data.size)) + 544
                                           len (15 * ceil32(return_data.size)) + 132
                                    if not arg1:
                                        mem[(8 * ceil32(return_data.size)) + 544] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(8 * ceil32(return_data.size)) + 548] = 32
                                        mem[(8 * ceil32(return_data.size)) + 580] = 35
                                        mem[(8 * ceil32(return_data.size)) + 612] = 'ERC20: transfer to the zero addr'
                                        mem[(8 * ceil32(return_data.size)) + 644] = 0x6573730000000000000000000000000000000000000000000000000000000000
                                        revert with memory
                                          from (8 * ceil32(return_data.size)) + 544
                                           len (15 * ceil32(return_data.size)) + 132
                                    if balanceOf[address(this.address)] < balanceOf[this.address]:
                                        mem[(8 * ceil32(return_data.size)) + 544] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(8 * ceil32(return_data.size)) + 548] = 32
                                        mem[(8 * ceil32(return_data.size)) + 580] = 38
                                        mem[(8 * ceil32(return_data.size)) + 612] = 'ERC20: transfer amount exceeds b'
                                        mem[(8 * ceil32(return_data.size)) + 644] = 0x616c616e63650000000000000000000000000000000000000000000000000000
                                        revert with memory
                                          from (8 * ceil32(return_data.size)) + 544
                                           len (15 * ceil32(return_data.size)) + 132
                                    balanceOf[address(this.address)] -= balanceOf[this.address]
                                    if balanceOf[arg1] > !balanceOf[this.address]:
                                        revert with 0, 17
                                    balanceOf[arg1] += balanceOf[this.address]
                                    emit Transfer(balanceOf[this.address], this.address, arg1);
                                else:
                                    if stor23[address(arg1)]:
                                        if not this.address:
                                            mem[(8 * ceil32(return_data.size)) + 544] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(8 * ceil32(return_data.size)) + 548] = 32
                                            mem[(8 * ceil32(return_data.size)) + 580] = 37
                                            mem[(8 * ceil32(return_data.size)) + 612] = 'ERC20: transfer from the zero ad'
                                            mem[(8 * ceil32(return_data.size)) + 644] = 0x6472657373000000000000000000000000000000000000000000000000000000
                                            revert with memory
                                              from (8 * ceil32(return_data.size)) + 544
                                               len (15 * ceil32(return_data.size)) + 132
                                        if not arg1:
                                            mem[(8 * ceil32(return_data.size)) + 544] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(8 * ceil32(return_data.size)) + 548] = 32
                                            mem[(8 * ceil32(return_data.size)) + 580] = 35
                                            mem[(8 * ceil32(return_data.size)) + 612] = 'ERC20: transfer to the zero addr'
                                            mem[(8 * ceil32(return_data.size)) + 644] = 0x6573730000000000000000000000000000000000000000000000000000000000
                                            revert with memory
                                              from (8 * ceil32(return_data.size)) + 544
                                               len (15 * ceil32(return_data.size)) + 132
                                        if balanceOf[address(this.address)] < balanceOf[this.address]:
                                            mem[(8 * ceil32(return_data.size)) + 544] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(8 * ceil32(return_data.size)) + 548] = 32
                                            mem[(8 * ceil32(return_data.size)) + 580] = 38
                                            mem[(8 * ceil32(return_data.size)) + 612] = 'ERC20: transfer amount exceeds b'
                                            mem[(8 * ceil32(return_data.size)) + 644] = 0x616c616e63650000000000000000000000000000000000000000000000000000
                                            revert with memory
                                              from (8 * ceil32(return_data.size)) + 544
                                               len (15 * ceil32(return_data.size)) + 132
                                        balanceOf[address(this.address)] -= balanceOf[this.address]
                                        if balanceOf[arg1] > !balanceOf[this.address]:
                                            revert with 0, 17
                                        balanceOf[arg1] += balanceOf[this.address]
                                        emit Transfer(balanceOf[this.address], this.address, arg1);
                                    else:
                                        if uint8(stor7.field_160):
                                            if not this.address:
                                                mem[(8 * ceil32(return_data.size)) + 544] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[(8 * ceil32(return_data.size)) + 548] = 32
                                                mem[(8 * ceil32(return_data.size)) + 580] = 37
                                                mem[(8 * ceil32(return_data.size)) + 612] = 'ERC20: transfer from the zero ad'
                                                mem[(8 * ceil32(return_data.size)) + 644] = 0x6472657373000000000000000000000000000000000000000000000000000000
                                                revert with memory
                                                  from (8 * ceil32(return_data.size)) + 544
                                                   len (15 * ceil32(return_data.size)) + 132
                                            if not arg1:
                                                mem[(8 * ceil32(return_data.size)) + 544] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[(8 * ceil32(return_data.size)) + 548] = 32
                                                mem[(8 * ceil32(return_data.size)) + 580] = 35
                                                mem[(8 * ceil32(return_data.size)) + 612] = 'ERC20: transfer to the zero addr'
                                                mem[(8 * ceil32(return_data.size)) + 644] = 0x6573730000000000000000000000000000000000000000000000000000000000
                                                revert with memory
                                                  from (8 * ceil32(return_data.size)) + 544
                                                   len (15 * ceil32(return_data.size)) + 132
                                            if balanceOf[address(this.address)] < balanceOf[this.address]:
                                                mem[(8 * ceil32(return_data.size)) + 544] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[(8 * ceil32(return_data.size)) + 548] = 32
                                                mem[(8 * ceil32(return_data.size)) + 580] = 38
                                                mem[(8 * ceil32(return_data.size)) + 612] = 'ERC20: transfer amount exceeds b'
                                                mem[(8 * ceil32(return_data.size)) + 644] = 0x616c616e63650000000000000000000000000000000000000000000000000000
                                                revert with memory
                                                  from (8 * ceil32(return_data.size)) + 544
                                                   len (15 * ceil32(return_data.size)) + 132
                                            balanceOf[address(this.address)] -= balanceOf[this.address]
                                            if balanceOf[arg1] > !balanceOf[this.address]:
                                                revert with 0, 17
                                            balanceOf[arg1] += balanceOf[this.address]
                                            emit Transfer(balanceOf[this.address], this.address, arg1);
                                        else:
                                            if balanceOf[this.address] and contractFee > -1 / balanceOf[this.address]:
                                                revert with 0, 17
                                            if not this.address:
                                                mem[(8 * ceil32(return_data.size)) + 544] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[(8 * ceil32(return_data.size)) + 548] = 32
                                                mem[(8 * ceil32(return_data.size)) + 580] = 37
                                                mem[(8 * ceil32(return_data.size)) + 612] = 'ERC20: transfer from the zero ad'
                                                mem[(8 * ceil32(return_data.size)) + 644] = 0x6472657373000000000000000000000000000000000000000000000000000000
                                                revert with memory
                                                  from (8 * ceil32(return_data.size)) + 544
                                                   len (15 * ceil32(return_data.size)) + 132
                                            if balanceOf[address(this.address)] < balanceOf[this.address] * contractFee / 1000:
                                                mem[(8 * ceil32(return_data.size)) + 544] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[(8 * ceil32(return_data.size)) + 548] = 32
                                                mem[(8 * ceil32(return_data.size)) + 580] = 38
                                                mem[(8 * ceil32(return_data.size)) + 612] = 'ERC20: transfer amount exceeds b'
                                                mem[(8 * ceil32(return_data.size)) + 644] = 0x616c616e63650000000000000000000000000000000000000000000000000000
                                                revert with memory
                                                  from (8 * ceil32(return_data.size)) + 544
                                                   len (15 * ceil32(return_data.size)) + 132
                                            balanceOf[address(this.address)] -= balanceOf[this.address] * contractFee / 1000
                                            if balanceOf[this.address] > !(balanceOf[this.address] * contractFee / 1000):
                                                revert with 0, 17
                                            balanceOf[this.address] += balanceOf[this.address] * contractFee / 1000
                                            emit Transfer((balanceOf[this.address] * contractFee / 1000), this.address, this.address);
                                            if balanceOf[this.address] and sub_a14c80fb > -1 / balanceOf[this.address]:
                                                revert with 0, 17
                                            if not this.address:
                                                mem[(8 * ceil32(return_data.size)) + 544] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[(8 * ceil32(return_data.size)) + 548] = 32
                                                mem[(8 * ceil32(return_data.size)) + 580] = 37
                                                mem[(8 * ceil32(return_data.size)) + 612] = 'ERC20: transfer from the zero ad'
                                                mem[(8 * ceil32(return_data.size)) + 644] = 0x6472657373000000000000000000000000000000000000000000000000000000
                                                revert with memory
                                                  from (8 * ceil32(return_data.size)) + 544
                                                   len (15 * ceil32(return_data.size)) + 132
                                            if not deadAddress:
                                                mem[(8 * ceil32(return_data.size)) + 544] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[(8 * ceil32(return_data.size)) + 548] = 32
                                                mem[(8 * ceil32(return_data.size)) + 580] = 35
                                                mem[(8 * ceil32(return_data.size)) + 612] = 'ERC20: transfer to the zero addr'
                                                mem[(8 * ceil32(return_data.size)) + 644] = 0x6573730000000000000000000000000000000000000000000000000000000000
                                                revert with memory
                                                  from (8 * ceil32(return_data.size)) + 544
                                                   len (15 * ceil32(return_data.size)) + 132
                                            if balanceOf[address(this.address)] < balanceOf[this.address] * sub_a14c80fb / 1000:
                                                mem[(8 * ceil32(return_data.size)) + 544] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[(8 * ceil32(return_data.size)) + 548] = 32
                                                mem[(8 * ceil32(return_data.size)) + 580] = 38
                                                mem[(8 * ceil32(return_data.size)) + 612] = 'ERC20: transfer amount exceeds b'
                                                mem[(8 * ceil32(return_data.size)) + 644] = 0x616c616e63650000000000000000000000000000000000000000000000000000
                                                revert with memory
                                                  from (8 * ceil32(return_data.size)) + 544
                                                   len (15 * ceil32(return_data.size)) + 132
                                            balanceOf[address(this.address)] -= balanceOf[this.address] * sub_a14c80fb / 1000
                                            if balanceOf[stor14] > !(balanceOf[this.address] * sub_a14c80fb / 1000):
                                                revert with 0, 17
                                            balanceOf[stor14] += balanceOf[this.address] * sub_a14c80fb / 1000
                                            emit Transfer((balanceOf[this.address] * sub_a14c80fb / 1000), this.address, deadAddress);
                                            if balanceOf[this.address] < balanceOf[this.address] * contractFee / 1000:
                                                revert with 0, 17
                                            if balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) < balanceOf[this.address] * sub_a14c80fb / 1000:
                                                revert with 0, 17
                                            if not this.address:
                                                mem[(8 * ceil32(return_data.size)) + 544] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[(8 * ceil32(return_data.size)) + 548] = 32
                                                mem[(8 * ceil32(return_data.size)) + 580] = 37
                                                mem[(8 * ceil32(return_data.size)) + 612] = 'ERC20: transfer from the zero ad'
                                                mem[(8 * ceil32(return_data.size)) + 644] = 0x6472657373000000000000000000000000000000000000000000000000000000
                                                revert with memory
                                                  from (8 * ceil32(return_data.size)) + 544
                                                   len (15 * ceil32(return_data.size)) + 132
                                            if not arg1:
                                                mem[(8 * ceil32(return_data.size)) + 544] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[(8 * ceil32(return_data.size)) + 548] = 32
                                                mem[(8 * ceil32(return_data.size)) + 580] = 35
                                                mem[(8 * ceil32(return_data.size)) + 612] = 'ERC20: transfer to the zero addr'
                                                mem[(8 * ceil32(return_data.size)) + 644] = 0x6573730000000000000000000000000000000000000000000000000000000000
                                                revert with memory
                                                  from (8 * ceil32(return_data.size)) + 544
                                                   len (15 * ceil32(return_data.size)) + 132
                                            if balanceOf[address(this.address)] < balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) - (balanceOf[this.address] * sub_a14c80fb / 1000):
                                                mem[(8 * ceil32(return_data.size)) + 544] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[(8 * ceil32(return_data.size)) + 548] = 32
                                                mem[(8 * ceil32(return_data.size)) + 580] = 38
                                                mem[(8 * ceil32(return_data.size)) + 612] = 'ERC20: transfer amount exceeds b'
                                                mem[(8 * ceil32(return_data.size)) + 644] = 0x616c616e63650000000000000000000000000000000000000000000000000000
                                                revert with memory
                                                  from (8 * ceil32(return_data.size)) + 544
                                                   len (15 * ceil32(return_data.size)) + 132
                                            balanceOf[address(this.address)] = balanceOf[address(this.address)] - balanceOf[this.address] + (balanceOf[this.address] * contractFee / 1000) + (balanceOf[this.address] * sub_a14c80fb / 1000)
                                            if balanceOf[arg1] > !(balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) - (balanceOf[this.address] * sub_a14c80fb / 1000)):
                                                revert with 0, 17
                                            balanceOf[arg1] = balanceOf[arg1] + balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) - (balanceOf[this.address] * sub_a14c80fb / 1000)
                                            emit Transfer((balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) - (balanceOf[this.address] * sub_a14c80fb / 1000)), this.address, arg1);
                                mem[(8 * ceil32(return_data.size)) + 548] = this.address
                                mem[(8 * ceil32(return_data.size)) + 580] = balanceOf[address(this.address)]
                                require ext_code.size(dividendTrackerAddress)
                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args mem[(8 * ceil32(return_data.size)) + 548 len (15 * ceil32(return_data.size)) + 64]
                                mem[(8 * ceil32(return_data.size)) + 548] = arg1
                                mem[(8 * ceil32(return_data.size)) + 580] = balanceOf[address(arg1)]
                                require ext_code.size(dividendTrackerAddress)
                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args mem[(8 * ceil32(return_data.size)) + 548 len (15 * ceil32(return_data.size)) + 64]
                                if not uint8(stor7.field_160):
                                    if uint8(stor7.field_176):
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
                                                                          mem[(11 * ceil32(return_data.size)) + 672 len 9 * ceil32(return_data.size)],
                                                                          1,
                                                                          tx.origin,
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
        if stor25[address(msg.sender)]:
            revert with 0, 'Blacklist buying restrictions'
        if not uint8(stor7.field_168):
            if stor23[address(msg.sender)]:
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
                if stor23[address(arg1)]:
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
                    if uint8(stor7.field_160):
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
                        if arg2 and contractFee > -1 / arg2:
                            revert with 0, 17
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not this.address:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)] < arg2 * contractFee / 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] -= arg2 * contractFee / 1000
                        if balanceOf[this.address] > !(arg2 * contractFee / 1000):
                            revert with 0, 17
                        balanceOf[this.address] += arg2 * contractFee / 1000
                        emit Transfer((arg2 * contractFee / 1000), msg.sender, this.address);
                        if arg2 and sub_a14c80fb > -1 / arg2:
                            revert with 0, 17
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not deadAddress:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)] < arg2 * sub_a14c80fb / 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] -= arg2 * sub_a14c80fb / 1000
                        if balanceOf[stor14] > !(arg2 * sub_a14c80fb / 1000):
                            revert with 0, 17
                        balanceOf[stor14] += arg2 * sub_a14c80fb / 1000
                        emit Transfer((arg2 * sub_a14c80fb / 1000), msg.sender, deadAddress);
                        if arg2 < arg2 * contractFee / 1000:
                            revert with 0, 17
                        if arg2 - (arg2 * contractFee / 1000) < arg2 * sub_a14c80fb / 1000:
                            revert with 0, 17
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * contractFee / 1000) - (arg2 * sub_a14c80fb / 1000):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * contractFee / 1000) + (arg2 * sub_a14c80fb / 1000)
                        if balanceOf[arg1] > !(arg2 - (arg2 * contractFee / 1000) - (arg2 * sub_a14c80fb / 1000)):
                            revert with 0, 17
                        balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * contractFee / 1000) - (arg2 * sub_a14c80fb / 1000)
                        emit Transfer((arg2 - (arg2 * contractFee / 1000) - (arg2 * sub_a14c80fb / 1000)), msg.sender, arg1);
            require ext_code.size(dividendTrackerAddress)
            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, balanceOf[address(msg.sender)]
            require ext_code.size(dividendTrackerAddress)
            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), balanceOf[address(arg1)]
            if not uint8(stor7.field_160):
                if uint8(stor7.field_176):
                    call dividendTrackerAddress.process(uint256 arg1) with:
                         gas gas_remaining wei
                        args gasForProcessing
                    if ext_call.success:
                        require return_data.size >= 96
                        emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
        else:
            if balanceOf[this.address] < swapTokensAtAmount:
                if stor23[address(msg.sender)]:
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
                    if stor23[address(arg1)]:
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
                        if uint8(stor7.field_160):
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
                            if arg2 and contractFee > -1 / arg2:
                                revert with 0, 17
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not this.address:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < arg2 * contractFee / 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] -= arg2 * contractFee / 1000
                            if balanceOf[this.address] > !(arg2 * contractFee / 1000):
                                revert with 0, 17
                            balanceOf[this.address] += arg2 * contractFee / 1000
                            emit Transfer((arg2 * contractFee / 1000), msg.sender, this.address);
                            if arg2 and sub_a14c80fb > -1 / arg2:
                                revert with 0, 17
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not deadAddress:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < arg2 * sub_a14c80fb / 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] -= arg2 * sub_a14c80fb / 1000
                            if balanceOf[stor14] > !(arg2 * sub_a14c80fb / 1000):
                                revert with 0, 17
                            balanceOf[stor14] += arg2 * sub_a14c80fb / 1000
                            emit Transfer((arg2 * sub_a14c80fb / 1000), msg.sender, deadAddress);
                            if arg2 < arg2 * contractFee / 1000:
                                revert with 0, 17
                            if arg2 - (arg2 * contractFee / 1000) < arg2 * sub_a14c80fb / 1000:
                                revert with 0, 17
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * contractFee / 1000) - (arg2 * sub_a14c80fb / 1000):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * contractFee / 1000) + (arg2 * sub_a14c80fb / 1000)
                            if balanceOf[arg1] > !(arg2 - (arg2 * contractFee / 1000) - (arg2 * sub_a14c80fb / 1000)):
                                revert with 0, 17
                            balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * contractFee / 1000) - (arg2 * sub_a14c80fb / 1000)
                            emit Transfer((arg2 - (arg2 * contractFee / 1000) - (arg2 * sub_a14c80fb / 1000)), msg.sender, arg1);
                require ext_code.size(dividendTrackerAddress)
                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, balanceOf[address(msg.sender)]
                require ext_code.size(dividendTrackerAddress)
                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), balanceOf[address(arg1)]
                if not uint8(stor7.field_160):
                    if uint8(stor7.field_176):
                        call dividendTrackerAddress.process(uint256 arg1) with:
                             gas gas_remaining wei
                            args gasForProcessing
                        if ext_call.success:
                            require return_data.size >= 96
                            emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
            else:
                if uint8(stor7.field_160):
                    if stor23[address(msg.sender)]:
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
                        if stor23[address(arg1)]:
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
                            if uint8(stor7.field_160):
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
                                if arg2 and contractFee > -1 / arg2:
                                    revert with 0, 17
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2 * contractFee / 1000:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= arg2 * contractFee / 1000
                                if balanceOf[this.address] > !(arg2 * contractFee / 1000):
                                    revert with 0, 17
                                balanceOf[this.address] += arg2 * contractFee / 1000
                                emit Transfer((arg2 * contractFee / 1000), msg.sender, this.address);
                                if arg2 and sub_a14c80fb > -1 / arg2:
                                    revert with 0, 17
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not deadAddress:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2 * sub_a14c80fb / 1000:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= arg2 * sub_a14c80fb / 1000
                                if balanceOf[stor14] > !(arg2 * sub_a14c80fb / 1000):
                                    revert with 0, 17
                                balanceOf[stor14] += arg2 * sub_a14c80fb / 1000
                                emit Transfer((arg2 * sub_a14c80fb / 1000), msg.sender, deadAddress);
                                if arg2 < arg2 * contractFee / 1000:
                                    revert with 0, 17
                                if arg2 - (arg2 * contractFee / 1000) < arg2 * sub_a14c80fb / 1000:
                                    revert with 0, 17
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2 - (arg2 * contractFee / 1000) - (arg2 * sub_a14c80fb / 1000):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * contractFee / 1000) + (arg2 * sub_a14c80fb / 1000)
                                if balanceOf[arg1] > !(arg2 - (arg2 * contractFee / 1000) - (arg2 * sub_a14c80fb / 1000)):
                                    revert with 0, 17
                                balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * contractFee / 1000) - (arg2 * sub_a14c80fb / 1000)
                                emit Transfer((arg2 - (arg2 * contractFee / 1000) - (arg2 * sub_a14c80fb / 1000)), msg.sender, arg1);
                    require ext_code.size(dividendTrackerAddress)
                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, balanceOf[address(msg.sender)]
                    require ext_code.size(dividendTrackerAddress)
                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), balanceOf[address(arg1)]
                    if not uint8(stor7.field_160):
                        if uint8(stor7.field_176):
                            call dividendTrackerAddress.process(uint256 arg1) with:
                                 gas gas_remaining wei
                                args gasForProcessing
                            if ext_call.success:
                                require return_data.size >= 96
                                emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                else:
                    if stor24[address(msg.sender)]:
                        if stor23[address(msg.sender)]:
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
                            if stor23[address(arg1)]:
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
                                if uint8(stor7.field_160):
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
                                    if arg2 and contractFee > -1 / arg2:
                                        revert with 0, 17
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < arg2 * contractFee / 1000:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] -= arg2 * contractFee / 1000
                                    if balanceOf[this.address] > !(arg2 * contractFee / 1000):
                                        revert with 0, 17
                                    balanceOf[this.address] += arg2 * contractFee / 1000
                                    emit Transfer((arg2 * contractFee / 1000), msg.sender, this.address);
                                    if arg2 and sub_a14c80fb > -1 / arg2:
                                        revert with 0, 17
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not deadAddress:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < arg2 * sub_a14c80fb / 1000:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] -= arg2 * sub_a14c80fb / 1000
                                    if balanceOf[stor14] > !(arg2 * sub_a14c80fb / 1000):
                                        revert with 0, 17
                                    balanceOf[stor14] += arg2 * sub_a14c80fb / 1000
                                    emit Transfer((arg2 * sub_a14c80fb / 1000), msg.sender, deadAddress);
                                    if arg2 < arg2 * contractFee / 1000:
                                        revert with 0, 17
                                    if arg2 - (arg2 * contractFee / 1000) < arg2 * sub_a14c80fb / 1000:
                                        revert with 0, 17
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * contractFee / 1000) - (arg2 * sub_a14c80fb / 1000):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * contractFee / 1000) + (arg2 * sub_a14c80fb / 1000)
                                    if balanceOf[arg1] > !(arg2 - (arg2 * contractFee / 1000) - (arg2 * sub_a14c80fb / 1000)):
                                        revert with 0, 17
                                    balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * contractFee / 1000) - (arg2 * sub_a14c80fb / 1000)
                                    emit Transfer((arg2 - (arg2 * contractFee / 1000) - (arg2 * sub_a14c80fb / 1000)), msg.sender, arg1);
                        require ext_code.size(dividendTrackerAddress)
                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, balanceOf[address(msg.sender)]
                        require ext_code.size(dividendTrackerAddress)
                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), balanceOf[address(arg1)]
                        if not uint8(stor7.field_160):
                            if uint8(stor7.field_176):
                                call dividendTrackerAddress.process(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args gasForProcessing
                                if ext_call.success:
                                    require return_data.size >= 96
                                    emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                    else:
                        if owner == msg.sender:
                            if stor23[address(msg.sender)]:
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
                                if stor23[address(arg1)]:
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
                                    if uint8(stor7.field_160):
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
                                        if arg2 and contractFee > -1 / arg2:
                                            revert with 0, 17
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2 * contractFee / 1000:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= arg2 * contractFee / 1000
                                        if balanceOf[this.address] > !(arg2 * contractFee / 1000):
                                            revert with 0, 17
                                        balanceOf[this.address] += arg2 * contractFee / 1000
                                        emit Transfer((arg2 * contractFee / 1000), msg.sender, this.address);
                                        if arg2 and sub_a14c80fb > -1 / arg2:
                                            revert with 0, 17
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not deadAddress:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2 * sub_a14c80fb / 1000:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= arg2 * sub_a14c80fb / 1000
                                        if balanceOf[stor14] > !(arg2 * sub_a14c80fb / 1000):
                                            revert with 0, 17
                                        balanceOf[stor14] += arg2 * sub_a14c80fb / 1000
                                        emit Transfer((arg2 * sub_a14c80fb / 1000), msg.sender, deadAddress);
                                        if arg2 < arg2 * contractFee / 1000:
                                            revert with 0, 17
                                        if arg2 - (arg2 * contractFee / 1000) < arg2 * sub_a14c80fb / 1000:
                                            revert with 0, 17
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * contractFee / 1000) - (arg2 * sub_a14c80fb / 1000):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * contractFee / 1000) + (arg2 * sub_a14c80fb / 1000)
                                        if balanceOf[arg1] > !(arg2 - (arg2 * contractFee / 1000) - (arg2 * sub_a14c80fb / 1000)):
                                            revert with 0, 17
                                        balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * contractFee / 1000) - (arg2 * sub_a14c80fb / 1000)
                                        emit Transfer((arg2 - (arg2 * contractFee / 1000) - (arg2 * sub_a14c80fb / 1000)), msg.sender, arg1);
                            require ext_code.size(dividendTrackerAddress)
                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, balanceOf[address(msg.sender)]
                            require ext_code.size(dividendTrackerAddress)
                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), balanceOf[address(arg1)]
                            if not uint8(stor7.field_160):
                                if uint8(stor7.field_176):
                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args gasForProcessing
                                    if ext_call.success:
                                        require return_data.size >= 96
                                        emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                        else:
                            if owner == arg1:
                                if stor23[address(msg.sender)]:
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
                                    if stor23[address(arg1)]:
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
                                        if uint8(stor7.field_160):
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
                                            if arg2 and contractFee > -1 / arg2:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < arg2 * contractFee / 1000:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= arg2 * contractFee / 1000
                                            if balanceOf[this.address] > !(arg2 * contractFee / 1000):
                                                revert with 0, 17
                                            balanceOf[this.address] += arg2 * contractFee / 1000
                                            emit Transfer((arg2 * contractFee / 1000), msg.sender, this.address);
                                            if arg2 and sub_a14c80fb > -1 / arg2:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                            if not deadAddress:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < arg2 * sub_a14c80fb / 1000:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= arg2 * sub_a14c80fb / 1000
                                            if balanceOf[stor14] > !(arg2 * sub_a14c80fb / 1000):
                                                revert with 0, 17
                                            balanceOf[stor14] += arg2 * sub_a14c80fb / 1000
                                            emit Transfer((arg2 * sub_a14c80fb / 1000), msg.sender, deadAddress);
                                            if arg2 < arg2 * contractFee / 1000:
                                                revert with 0, 17
                                            if arg2 - (arg2 * contractFee / 1000) < arg2 * sub_a14c80fb / 1000:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * contractFee / 1000) - (arg2 * sub_a14c80fb / 1000):
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * contractFee / 1000) + (arg2 * sub_a14c80fb / 1000)
                                            if balanceOf[arg1] > !(arg2 - (arg2 * contractFee / 1000) - (arg2 * sub_a14c80fb / 1000)):
                                                revert with 0, 17
                                            balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * contractFee / 1000) - (arg2 * sub_a14c80fb / 1000)
                                            emit Transfer((arg2 - (arg2 * contractFee / 1000) - (arg2 * sub_a14c80fb / 1000)), msg.sender, arg1);
                                require ext_code.size(dividendTrackerAddress)
                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, balanceOf[address(msg.sender)]
                                require ext_code.size(dividendTrackerAddress)
                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), balanceOf[address(arg1)]
                                if not uint8(stor7.field_160):
                                    if uint8(stor7.field_176):
                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args gasForProcessing
                                        if ext_call.success:
                                            require return_data.size >= 96
                                            emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                            else:
                                uint8(stor7.field_160) = 1
                                if balanceOf[this.address] and sub_89d3e27b > -1 / balanceOf[this.address]:
                                    revert with 0, 17
                                if not contractFee:
                                    revert with 0, 18
                                mem[96] = 2
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
                                allowance[address(this.address)][stor6].field_0 = balanceOf[this.address] * sub_89d3e27b / contractFee
                                emit Approval((balanceOf[this.address] * sub_89d3e27b / contractFee), this.address, uniswapV2RouterAddress);
                                mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 196] = balanceOf[this.address] * sub_89d3e27b / contractFee
                                mem[ceil32(return_data.size) + 356] = 2
                                idx = 0
                                s = ceil32(return_data.size) + 388
                                t = 128
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[ceil32(return_data.size) + 292] = sub_68b8df5cAddress
                                mem[ceil32(return_data.size) + 324] = block.timestamp
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args balanceOf[this.address] * sub_89d3e27b / contractFee, 0, 160, sub_68b8df5cAddress, block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if balanceOf[this.address] and sub_185eabad > -1 / balanceOf[this.address]:
                                    revert with 0, 17
                                if not contractFee:
                                    revert with 0, 18
                                mem[ceil32(return_data.size) + 192] = 2
                                mem[ceil32(return_data.size) + 224] = this.address
                                staticcall uniswapV2RouterAddress.WETH() with:
                                        gas gas_remaining wei
                                mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 288
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[ceil32(return_data.size) + 256] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                mem[0] = uniswapV2RouterAddress
                                mem[32] = sha3(address(this.address), 1)
                                allowance[address(this.address)][stor6].field_0 = balanceOf[this.address] * sub_185eabad / contractFee
                                emit Approval((balanceOf[this.address] * sub_185eabad / contractFee), this.address, uniswapV2RouterAddress);
                                mem[(2 * ceil32(return_data.size)) + 288] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 292] = balanceOf[this.address] * sub_185eabad / contractFee
                                mem[(2 * ceil32(return_data.size)) + 324] = 0
                                mem[(2 * ceil32(return_data.size)) + 356] = 160
                                mem[(2 * ceil32(return_data.size)) + 452] = 2
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 484
                                t = ceil32(return_data.size) + 224
                                while idx < mem[ceil32(return_data.size) + 192]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(2 * ceil32(return_data.size)) + 388] = sub_0736dbe6Address
                                mem[(2 * ceil32(return_data.size)) + 420] = block.timestamp
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args balanceOf[this.address] * sub_185eabad / contractFee, 0, 160, sub_0736dbe6Address, block.timestamp, mem[(2 * ceil32(return_data.size)) + 452 len (32 * mem[ceil32(return_data.size) + 192]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if balanceOf[this.address] and sub_b23492b1 > -1 / balanceOf[this.address]:
                                    revert with 0, 17
                                if not contractFee:
                                    revert with 0, 18
                                if balanceOf[this.address] * sub_b23492b1 / contractFee < balanceOf[this.address] * sub_b23492b1 / contractFee / 2:
                                    revert with 0, 17
                                mem[(2 * ceil32(return_data.size)) + 288] = 2
                                mem[(2 * ceil32(return_data.size)) + 320] = this.address
                                staticcall uniswapV2RouterAddress.WETH() with:
                                        gas gas_remaining wei
                                mem[(2 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + 384
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(2 * ceil32(return_data.size)) + 352] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                mem[0] = uniswapV2RouterAddress
                                mem[32] = sha3(address(this.address), 1)
                                allowance[address(this.address)][stor6].field_0 = balanceOf[this.address] * sub_b23492b1 / contractFee / 2
                                allowance[address(this.address)][stor6].field_255 = 0
                                emit Approval((balanceOf[this.address] * sub_b23492b1 / contractFee / 2), this.address, uniswapV2RouterAddress);
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = balanceOf[this.address] * sub_b23492b1 / contractFee / 2
                                mem[(4 * ceil32(return_data.size)) + 420] = 0
                                mem[(4 * ceil32(return_data.size)) + 452] = 160
                                mem[(4 * ceil32(return_data.size)) + 548] = 2
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + 580
                                t = (2 * ceil32(return_data.size)) + 320
                                while idx < mem[(2 * ceil32(return_data.size)) + 288]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(4 * ceil32(return_data.size)) + 484] = this.address
                                mem[(4 * ceil32(return_data.size)) + 516] = block.timestamp
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, balanceOf[this.address] * sub_b23492b1 / contractFee), 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 548 len (32 * mem[(2 * ceil32(return_data.size)) + 288]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                if not this.address:
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 36
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'ERC20: approve from the zero add'
                                    mem[(4 * ceil32(return_data.size)) + 484] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 132
                                if not uniswapV2RouterAddress:
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 34
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'ERC20: approve to the zero addre'
                                    mem[(4 * ceil32(return_data.size)) + 484] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 132
                                allowance[address(this.address)][stor6].field_0 = (balanceOf[this.address] * sub_b23492b1 / contractFee) - (balanceOf[this.address] * sub_b23492b1 / contractFee / 2)
                                emit Approval(((balanceOf[this.address] * sub_b23492b1 / contractFee) - (balanceOf[this.address] * sub_b23492b1 / contractFee / 2)), this.address, uniswapV2RouterAddress);
                                mem[(4 * ceil32(return_data.size)) + 388] = this.address
                                mem[(4 * ceil32(return_data.size)) + 420] = (balanceOf[this.address] * sub_b23492b1 / contractFee) - (balanceOf[this.address] * sub_b23492b1 / contractFee / 2)
                                mem[(4 * ceil32(return_data.size)) + 452] = 0
                                mem[(4 * ceil32(return_data.size)) + 484] = 0
                                mem[(4 * ceil32(return_data.size)) + 516] = sub_a23b2534Address
                                mem[(4 * ceil32(return_data.size)) + 548] = block.timestamp
                                call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                     gas gas_remaining wei
                                    args mem[(4 * ceil32(return_data.size)) + 388 len (5 * ceil32(return_data.size)) + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                mem[(4 * ceil32(return_data.size)) + 384] = balanceOf[this.address] * sub_b23492b1 / contractFee / 2
                                mem[(4 * ceil32(return_data.size)) + 416] = 0
                                mem[(4 * ceil32(return_data.size)) + 448] = (balanceOf[this.address] * sub_b23492b1 / contractFee) - (balanceOf[this.address] * sub_b23492b1 / contractFee / 2)
                                emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                    mem[(4 * ceil32(return_data.size)) + 384 len (7 * ceil32(return_data.size)) + 96],
                                mem[(4 * ceil32(return_data.size)) + 384] = 4
                                mem[(4 * ceil32(return_data.size)) + 416] = this.address
                                staticcall uniswapV2RouterAddress.WETH() with:
                                        gas gas_remaining wei
                                mem[(4 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (6 * ceil32(return_data.size)) + 544
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(4 * ceil32(return_data.size)) + 448] = ext_call.return_data[12 len 20]
                                mem[(4 * ceil32(return_data.size)) + 480] = UAddress
                                mem[(4 * ceil32(return_data.size)) + 512] = rewardTokenAddress
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                mem[0] = uniswapV2RouterAddress
                                mem[32] = sha3(address(this.address), 1)
                                allowance[address(this.address)][stor6].field_0 = balanceOf[this.address]
                                emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                mem[(6 * ceil32(return_data.size)) + 544] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[(6 * ceil32(return_data.size)) + 548] = balanceOf[this.address]
                                mem[(6 * ceil32(return_data.size)) + 580] = 0
                                mem[(6 * ceil32(return_data.size)) + 612] = 160
                                mem[(6 * ceil32(return_data.size)) + 708] = 4
                                idx = 0
                                s = (6 * ceil32(return_data.size)) + 740
                                t = (4 * ceil32(return_data.size)) + 416
                                while idx < mem[(4 * ceil32(return_data.size)) + 384]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(6 * ceil32(return_data.size)) + 644] = this.address
                                mem[(6 * ceil32(return_data.size)) + 676] = block.timestamp
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + 384]) + -mem[64] + 736]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = this.address
                                staticcall rewardTokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                _4597 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4598 = mem[_4597]
                                mem[mem[64] + 4] = dividendTrackerAddress
                                mem[mem[64] + 36] = _4598
                                call rewardTokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args dividendTrackerAddress, _4598
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4601 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4601] == bool(mem[_4601])
                                if not mem[_4601]:
                                    uint8(stor7.field_160) = 0
                                    if stor23[address(msg.sender)]:
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
                                                if not uint8(stor7.field_160):
                                                    if uint8(stor7.field_176):
                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args gasForProcessing
                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                        if ext_call.success:
                                                            _4756 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 96
                                                            _4794 = mem[_4756 + 32]
                                                            _4795 = mem[_4756 + 64]
                                                            mem[mem[64]] = mem[_4756]
                                                            mem[mem[64] + 64] = _4795
                                                            mem[mem[64] + 96] = gasForProcessing
                                                            emit ProcessedDividendTracker(mem[mem[64]], _4794, _4795, gasForProcessing, 1, tx.origin);
                                            else:
                                                if not uint8(stor7.field_160):
                                                    if uint8(stor7.field_176):
                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args gasForProcessing
                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                        if ext_call.success:
                                                            _4772 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 96
                                                            _4827 = mem[_4772 + 32]
                                                            _4828 = mem[_4772 + 64]
                                                            mem[mem[64]] = mem[_4772]
                                                            mem[mem[64] + 64] = _4828
                                                            mem[mem[64] + 96] = gasForProcessing
                                                            emit ProcessedDividendTracker(mem[mem[64]], _4827, _4828, gasForProcessing, 1, tx.origin);
                                        else:
                                            if not ext_call.success:
                                                if not uint8(stor7.field_160):
                                                    if uint8(stor7.field_176):
                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args gasForProcessing
                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                        if ext_call.success:
                                                            _4774 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 96
                                                            _4831 = mem[_4774 + 32]
                                                            _4832 = mem[_4774 + 64]
                                                            mem[mem[64]] = mem[_4774]
                                                            mem[mem[64] + 64] = _4832
                                                            mem[mem[64] + 96] = gasForProcessing
                                                            emit ProcessedDividendTracker(mem[mem[64]], _4831, _4832, gasForProcessing, 1, tx.origin);
                                            else:
                                                if not uint8(stor7.field_160):
                                                    if uint8(stor7.field_176):
                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args gasForProcessing
                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                        if ext_call.success:
                                                            _4801 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 96
                                                            _4871 = mem[_4801 + 32]
                                                            _4872 = mem[_4801 + 64]
                                                            mem[mem[64]] = mem[_4801]
                                                            mem[mem[64] + 64] = _4872
                                                            mem[mem[64] + 96] = gasForProcessing
                                                            emit ProcessedDividendTracker(mem[mem[64]], _4871, _4872, gasForProcessing, 1, tx.origin);
                                    else:
                                        if stor23[address(arg1)]:
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
                                                    if not uint8(stor7.field_160):
                                                        if uint8(stor7.field_176):
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _4786 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _4847 = mem[_4786 + 32]
                                                                _4848 = mem[_4786 + 64]
                                                                mem[mem[64]] = mem[_4786]
                                                                mem[mem[64] + 64] = _4848
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _4847, _4848, gasForProcessing, 1, tx.origin);
                                                else:
                                                    if not uint8(stor7.field_160):
                                                        if uint8(stor7.field_176):
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _4815 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _4879 = mem[_4815 + 32]
                                                                _4880 = mem[_4815 + 64]
                                                                mem[mem[64]] = mem[_4815]
                                                                mem[mem[64] + 64] = _4880
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _4879, _4880, gasForProcessing, 1, tx.origin);
                                            else:
                                                if not ext_call.success:
                                                    if not uint8(stor7.field_160):
                                                        if uint8(stor7.field_176):
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _4817 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _4883 = mem[_4817 + 32]
                                                                _4884 = mem[_4817 + 64]
                                                                mem[mem[64]] = mem[_4817]
                                                                mem[mem[64] + 64] = _4884
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _4883, _4884, gasForProcessing, 1, tx.origin);
                                                else:
                                                    if not uint8(stor7.field_160):
                                                        if uint8(stor7.field_176):
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _4854 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _4917 = mem[_4854 + 32]
                                                                _4918 = mem[_4854 + 64]
                                                                mem[mem[64]] = mem[_4854]
                                                                mem[mem[64] + 64] = _4918
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _4917, _4918, gasForProcessing, 1, tx.origin);
                                        else:
                                            if uint8(stor7.field_160):
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
                                                        if not uint8(stor7.field_160):
                                                            if uint8(stor7.field_176):
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _4762 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _4804 = mem[_4762 + 32]
                                                                    _4805 = mem[_4762 + 64]
                                                                    mem[mem[64]] = mem[_4762]
                                                                    mem[mem[64] + 64] = _4805
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _4804, _4805, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not uint8(stor7.field_160):
                                                            if uint8(stor7.field_176):
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _4780 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _4837 = mem[_4780 + 32]
                                                                    _4838 = mem[_4780 + 64]
                                                                    mem[mem[64]] = mem[_4780]
                                                                    mem[mem[64] + 64] = _4838
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _4837, _4838, gasForProcessing, 1, tx.origin);
                                                else:
                                                    if not ext_call.success:
                                                        if not uint8(stor7.field_160):
                                                            if uint8(stor7.field_176):
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _4782 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _4841 = mem[_4782 + 32]
                                                                    _4842 = mem[_4782 + 64]
                                                                    mem[mem[64]] = mem[_4782]
                                                                    mem[mem[64] + 64] = _4842
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _4841, _4842, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not uint8(stor7.field_160):
                                                            if uint8(stor7.field_176):
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _4811 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _4875 = mem[_4811 + 32]
                                                                    _4876 = mem[_4811 + 64]
                                                                    mem[mem[64]] = mem[_4811]
                                                                    mem[mem[64] + 64] = _4876
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _4875, _4876, gasForProcessing, 1, tx.origin);
                                            else:
                                                if arg2 and contractFee > -1 / arg2:
                                                    revert with 0, 17
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not this.address:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)] < arg2 * contractFee / 1000:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)] -= arg2 * contractFee / 1000
                                                if balanceOf[this.address] > !(arg2 * contractFee / 1000):
                                                    revert with 0, 17
                                                balanceOf[this.address] += arg2 * contractFee / 1000
                                                emit Transfer((arg2 * contractFee / 1000), msg.sender, this.address);
                                                if arg2 and sub_a14c80fb > -1 / arg2:
                                                    revert with 0, 17
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not deadAddress:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)] < arg2 * sub_a14c80fb / 1000:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)] -= arg2 * sub_a14c80fb / 1000
                                                if balanceOf[stor14] > !(arg2 * sub_a14c80fb / 1000):
                                                    revert with 0, 17
                                                balanceOf[stor14] += arg2 * sub_a14c80fb / 1000
                                                emit Transfer((arg2 * sub_a14c80fb / 1000), msg.sender, deadAddress);
                                                if arg2 < arg2 * contractFee / 1000:
                                                    revert with 0, 17
                                                if arg2 - (arg2 * contractFee / 1000) < arg2 * sub_a14c80fb / 1000:
                                                    revert with 0, 17
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)] < arg2 - (arg2 * contractFee / 1000) - (arg2 * sub_a14c80fb / 1000):
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * contractFee / 1000) + (arg2 * sub_a14c80fb / 1000)
                                                if balanceOf[arg1] > !(arg2 - (arg2 * contractFee / 1000) - (arg2 * sub_a14c80fb / 1000)):
                                                    revert with 0, 17
                                                balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * contractFee / 1000) - (arg2 * sub_a14c80fb / 1000)
                                                emit Transfer((arg2 - (arg2 * contractFee / 1000) - (arg2 * sub_a14c80fb / 1000)), msg.sender, arg1);
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
                                                        if not uint8(stor7.field_160):
                                                            if uint8(stor7.field_176):
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _5202 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _5217 = mem[_5202 + 32]
                                                                    _5218 = mem[_5202 + 64]
                                                                    mem[mem[64]] = mem[_5202]
                                                                    mem[mem[64] + 64] = _5218
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _5217, _5218, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not uint8(stor7.field_160):
                                                            if uint8(stor7.field_176):
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _5210 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _5229 = mem[_5210 + 32]
                                                                    _5230 = mem[_5210 + 64]
                                                                    mem[mem[64]] = mem[_5210]
                                                                    mem[mem[64] + 64] = _5230
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _5229, _5230, gasForProcessing, 1, tx.origin);
                                                else:
                                                    if not ext_call.success:
                                                        if not uint8(stor7.field_160):
                                                            if uint8(stor7.field_176):
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _5212 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _5233 = mem[_5212 + 32]
                                                                    _5234 = mem[_5212 + 64]
                                                                    mem[mem[64]] = mem[_5212]
                                                                    mem[mem[64] + 64] = _5234
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _5233, _5234, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not uint8(stor7.field_160):
                                                            if uint8(stor7.field_176):
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _5224 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _5245 = mem[_5224 + 32]
                                                                    _5246 = mem[_5224 + 64]
                                                                    mem[mem[64]] = mem[_5224]
                                                                    mem[mem[64] + 64] = _5246
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _5245, _5246, gasForProcessing, 1, tx.origin);
                                else:
                                    require ext_code.size(dividendTrackerAddress)
                                    call dividendTrackerAddress.distributeCAKEDividends(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args _4598
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit SendDividends(balanceOf[this.address], _4598);
                                    uint8(stor7.field_160) = 0
                                    if stor23[address(msg.sender)]:
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
                                                if not uint8(stor7.field_160):
                                                    if uint8(stor7.field_176):
                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args gasForProcessing
                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                        if ext_call.success:
                                                            _4856 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 96
                                                            _4921 = mem[_4856 + 32]
                                                            _4922 = mem[_4856 + 64]
                                                            mem[mem[64]] = mem[_4856]
                                                            mem[mem[64] + 64] = _4922
                                                            mem[mem[64] + 96] = gasForProcessing
                                                            emit ProcessedDividendTracker(mem[mem[64]], _4921, _4922, gasForProcessing, 1, tx.origin);
                                            else:
                                                if not uint8(stor7.field_160):
                                                    if uint8(stor7.field_176):
                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args gasForProcessing
                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                        if ext_call.success:
                                                            _4890 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 96
                                                            _4966 = mem[_4890 + 32]
                                                            _4967 = mem[_4890 + 64]
                                                            mem[mem[64]] = mem[_4890]
                                                            mem[mem[64] + 64] = _4967
                                                            mem[mem[64] + 96] = gasForProcessing
                                                            emit ProcessedDividendTracker(mem[mem[64]], _4966, _4967, gasForProcessing, 1, tx.origin);
                                        else:
                                            if not ext_call.success:
                                                if not uint8(stor7.field_160):
                                                    if uint8(stor7.field_176):
                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args gasForProcessing
                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                        if ext_call.success:
                                                            _4892 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 96
                                                            _4970 = mem[_4892 + 32]
                                                            _4971 = mem[_4892 + 64]
                                                            mem[mem[64]] = mem[_4892]
                                                            mem[mem[64] + 64] = _4971
                                                            mem[mem[64] + 96] = gasForProcessing
                                                            emit ProcessedDividendTracker(mem[mem[64]], _4970, _4971, gasForProcessing, 1, tx.origin);
                                            else:
                                                if not uint8(stor7.field_160):
                                                    if uint8(stor7.field_176):
                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args gasForProcessing
                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                        if ext_call.success:
                                                            _4928 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 96
                                                            _5013 = mem[_4928 + 32]
                                                            _5014 = mem[_4928 + 64]
                                                            mem[mem[64]] = mem[_4928]
                                                            mem[mem[64] + 64] = _5014
                                                            mem[mem[64] + 96] = gasForProcessing
                                                            emit ProcessedDividendTracker(mem[mem[64]], _5013, _5014, gasForProcessing, 1, tx.origin);
                                    else:
                                        if stor23[address(arg1)]:
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
                                                    if not uint8(stor7.field_160):
                                                        if uint8(stor7.field_176):
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _4904 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _4986 = mem[_4904 + 32]
                                                                _4987 = mem[_4904 + 64]
                                                                mem[mem[64]] = mem[_4904]
                                                                mem[mem[64] + 64] = _4987
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _4986, _4987, gasForProcessing, 1, tx.origin);
                                                else:
                                                    if not uint8(stor7.field_160):
                                                        if uint8(stor7.field_176):
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _4942 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _5021 = mem[_4942 + 32]
                                                                _5022 = mem[_4942 + 64]
                                                                mem[mem[64]] = mem[_4942]
                                                                mem[mem[64] + 64] = _5022
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _5021, _5022, gasForProcessing, 1, tx.origin);
                                            else:
                                                if not ext_call.success:
                                                    if not uint8(stor7.field_160):
                                                        if uint8(stor7.field_176):
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _4944 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _5025 = mem[_4944 + 32]
                                                                _5026 = mem[_4944 + 64]
                                                                mem[mem[64]] = mem[_4944]
                                                                mem[mem[64] + 64] = _5026
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _5025, _5026, gasForProcessing, 1, tx.origin);
                                                else:
                                                    if not uint8(stor7.field_160):
                                                        if uint8(stor7.field_176):
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _4993 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _5044 = mem[_4993 + 32]
                                                                _5045 = mem[_4993 + 64]
                                                                mem[mem[64]] = mem[_4993]
                                                                mem[mem[64] + 64] = _5045
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _5044, _5045, gasForProcessing, 1, tx.origin);
                                        else:
                                            if uint8(stor7.field_160):
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
                                                        if not uint8(stor7.field_160):
                                                            if uint8(stor7.field_176):
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _4862 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _4931 = mem[_4862 + 32]
                                                                    _4932 = mem[_4862 + 64]
                                                                    mem[mem[64]] = mem[_4862]
                                                                    mem[mem[64] + 64] = _4932
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _4931, _4932, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not uint8(stor7.field_160):
                                                            if uint8(stor7.field_176):
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _4898 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _4976 = mem[_4898 + 32]
                                                                    _4977 = mem[_4898 + 64]
                                                                    mem[mem[64]] = mem[_4898]
                                                                    mem[mem[64] + 64] = _4977
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _4976, _4977, gasForProcessing, 1, tx.origin);
                                                else:
                                                    if not ext_call.success:
                                                        if not uint8(stor7.field_160):
                                                            if uint8(stor7.field_176):
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _4900 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _4980 = mem[_4900 + 32]
                                                                    _4981 = mem[_4900 + 64]
                                                                    mem[mem[64]] = mem[_4900]
                                                                    mem[mem[64] + 64] = _4981
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _4980, _4981, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not uint8(stor7.field_160):
                                                            if uint8(stor7.field_176):
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _4938 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _5017 = mem[_4938 + 32]
                                                                    _5018 = mem[_4938 + 64]
                                                                    mem[mem[64]] = mem[_4938]
                                                                    mem[mem[64] + 64] = _5018
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _5017, _5018, gasForProcessing, 1, tx.origin);
                                            else:
                                                if arg2 and contractFee > -1 / arg2:
                                                    revert with 0, 17
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not this.address:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)] < arg2 * contractFee / 1000:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)] -= arg2 * contractFee / 1000
                                                if balanceOf[this.address] > !(arg2 * contractFee / 1000):
                                                    revert with 0, 17
                                                balanceOf[this.address] += arg2 * contractFee / 1000
                                                emit Transfer((arg2 * contractFee / 1000), msg.sender, this.address);
                                                if arg2 and sub_a14c80fb > -1 / arg2:
                                                    revert with 0, 17
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not deadAddress:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)] < arg2 * sub_a14c80fb / 1000:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)] -= arg2 * sub_a14c80fb / 1000
                                                if balanceOf[stor14] > !(arg2 * sub_a14c80fb / 1000):
                                                    revert with 0, 17
                                                balanceOf[stor14] += arg2 * sub_a14c80fb / 1000
                                                emit Transfer((arg2 * sub_a14c80fb / 1000), msg.sender, deadAddress);
                                                if arg2 < arg2 * contractFee / 1000:
                                                    revert with 0, 17
                                                if arg2 - (arg2 * contractFee / 1000) < arg2 * sub_a14c80fb / 1000:
                                                    revert with 0, 17
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)] < arg2 - (arg2 * contractFee / 1000) - (arg2 * sub_a14c80fb / 1000):
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * contractFee / 1000) + (arg2 * sub_a14c80fb / 1000)
                                                if balanceOf[arg1] > !(arg2 - (arg2 * contractFee / 1000) - (arg2 * sub_a14c80fb / 1000)):
                                                    revert with 0, 17
                                                balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * contractFee / 1000) - (arg2 * sub_a14c80fb / 1000)
                                                emit Transfer((arg2 - (arg2 * contractFee / 1000) - (arg2 * sub_a14c80fb / 1000)), msg.sender, arg1);
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
                                                        if not uint8(stor7.field_160):
                                                            if uint8(stor7.field_176):
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _5238 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _5260 = mem[_5238 + 32]
                                                                    _5261 = mem[_5238 + 64]
                                                                    mem[mem[64]] = mem[_5238]
                                                                    mem[mem[64] + 64] = _5261
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _5260, _5261, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not uint8(stor7.field_160):
                                                            if uint8(stor7.field_176):
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _5250 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _5277 = mem[_5250 + 32]
                                                                    _5278 = mem[_5250 + 64]
                                                                    mem[mem[64]] = mem[_5250]
                                                                    mem[mem[64] + 64] = _5278
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _5277, _5278, gasForProcessing, 1, tx.origin);
                                                else:
                                                    if not ext_call.success:
                                                        if not uint8(stor7.field_160):
                                                            if uint8(stor7.field_176):
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _5252 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _5281 = mem[_5252 + 32]
                                                                    _5282 = mem[_5252 + 64]
                                                                    mem[mem[64]] = mem[_5252]
                                                                    mem[mem[64] + 64] = _5282
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _5281, _5282, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not uint8(stor7.field_160):
                                                            if uint8(stor7.field_176):
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _5267 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _5292 = mem[_5267 + 32]
                                                                    _5293 = mem[_5267 + 64]
                                                                    mem[mem[64]] = mem[_5267]
                                                                    mem[mem[64] + 64] = _5293
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _5292, _5293, gasForProcessing, 1, tx.origin);
    return 1
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if unknown_0x89d3e27b(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0xb62496f5(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xdd62ed3e(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xed490cce(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0xdd62ed3e(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[4] == address(cd[4])
                        require cd[36] == address(cd[36])
                        return allowance[address(cd[4])][address(cd[36])].field_0
                    if unknown_0xe2f45605(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return swapTokensAtAmount
                    if unknown_0xe7841ec0(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
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
                    if unknown_0xed490cce(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == bool(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        Mask(88, 0, stor7.field_168) = Mask(88, 0, bool(cd[4]))
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
                if unknown_0xc4b5b9fe(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0xc4b5b9fe(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        sub_a23b2534Address = address(cd[4])
                    if uint32(call.func_hash) >> 224 != unknown_0xc705c569(?????):
                        if uint32(call.func_hash) >> 224 != unknown_0xd13357ca(?????):
                            require unknown_0xd41977cd(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            return contractFee
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        return bool(stor25[cd[4]])
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    staticcall dividendTrackerAddress.0xc705c569 with:
                            gas gas_remaining wei
                           args address(cd[4])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    return bool(ext_call.return_data[0])
                if unknown_0xb62496f5(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    return bool(stor24[cd[4]])
                if unknown_0xbdd4f29f(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
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
                    stor23[address(cd[4])] = uint8(bool(cd[36]))
                    emit ExcludeFromFees(bool(cd[36]), address(cd[4]));
                else:
                    require unknown_0xc492f046(?????) == uint32(call.func_hash) >> 224
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
                        mem[32] = 23
                        stor23[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(bool(cd[36]))
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
        if unknown_0xa23b2534(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x95d89b41(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x89d3e27b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_89d3e27b
                if unknown_0x8a43ca25(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == bool(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    Mask(80, 0, stor7.field_176) = Mask(80, 0, bool(cd[4]))
                else:
                    if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return owner
                    require unknown_0x8f7aa667(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    sub_68b8df5cAddress = address(cd[4])
            else:
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
                if uint32(call.func_hash) >> 224 != unknown_0x9a7a23d6(?????):
                    if unknown_0x9c1b8af5(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return gasForProcessing
                    require unknown_0xa14c80fb(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return sub_a14c80fb
                require not msg.value
                require calldata.size - 4 >= 64
                require cd[4] == address(cd[4])
                require cd[36] == bool(cd[36])
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if uniswapV2PairAddress == address(cd[4]):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'BABYTOKEN: The PancakeSwap pair cannot be removed from automatedMarketMakerPairs'
                if bool(cd[36]) == bool(stor24[address(cd[4])]):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'BABYTOKEN: Automated market maker pair is already set to that value'
                stor24[address(cd[4])] = uint8(bool(cd[36]))
                if cd[36]:
                    require ext_code.size(dividendTrackerAddress)
                    call dividendTrackerAddress.0x31e79db0 with:
                         gas gas_remaining wei
                        args address(cd[4])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                emit SetAutomatedMarketMakerPair(address(cd[4]), bool(cd[36]));
        if unknown_0xa8b9d240(?????) > uint32(call.func_hash) >> 224:
            if unknown_0xa23b2534(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return sub_a23b2534Address
            if unknown_0xa26579ad(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                staticcall dividendTrackerAddress.claimWait() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                return ext_call.return_data[0]
            if uint32(call.func_hash) >> 224 != unknown_0xa457c2d7(?????):
                require unknown_0xa5a1c5c6(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return bonusFee
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
                staticcall dividendTrackerAddress.0xa8b9d240 with:
                        gas gas_remaining wei
                       args address(cd[4])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                return ext_call.return_data[0]
            if uint32(call.func_hash) >> 224 != unknown_0xa9059cbb(?????):
                if uint32(call.func_hash) >> 224 != unknown_0xad56c13c(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0xafa4f3b2(?????):
                        require unknown_0xb23492b1(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return sub_b23492b1
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
                if stor25[address(msg.sender)]:
                    revert with 0, 'Blacklist buying restrictions'
                if uint8(stor7.field_168):
                    if balanceOf[this.address] >= swapTokensAtAmount:
                        if not uint8(stor7.field_160):
                            if not stor24[address(msg.sender)]:
                                if owner != msg.sender:
                                    if owner != address(cd[4]):
                                        uint8(stor7.field_160) = 1
                                        if balanceOf[this.address] and sub_89d3e27b > -1 / balanceOf[this.address]:
                                            revert with 0, 17
                                        if not contractFee:
                                            revert with 0, 18
                                        mem[128] = 2
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
                                        allowance[address(this.address)][stor6].field_0 = balanceOf[this.address] * sub_89d3e27b / contractFee
                                        emit Approval((balanceOf[this.address] * sub_89d3e27b / contractFee), this.address, uniswapV2RouterAddress);
                                        mem[ceil32(return_data.size) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 228] = balanceOf[this.address] * sub_89d3e27b / contractFee
                                        mem[ceil32(return_data.size) + 388] = 2
                                        idx = 0
                                        s = ceil32(return_data.size) + 420
                                        t = 160
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[ceil32(return_data.size) + 324] = sub_68b8df5cAddress
                                        mem[ceil32(return_data.size) + 356] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args balanceOf[this.address] * sub_89d3e27b / contractFee, 0, 160, sub_68b8df5cAddress, block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if balanceOf[this.address] and sub_185eabad > -1 / balanceOf[this.address]:
                                            revert with 0, 17
                                        if not contractFee:
                                            revert with 0, 18
                                        mem[ceil32(return_data.size) + 224] = 2
                                        mem[ceil32(return_data.size) + 256] = this.address
                                        staticcall uniswapV2RouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        mem[ceil32(return_data.size) + 320] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = (2 * ceil32(return_data.size)) + 320
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[ceil32(return_data.size) + 288] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        mem[0] = uniswapV2RouterAddress
                                        mem[32] = sha3(address(this.address), 1)
                                        allowance[address(this.address)][stor6].field_0 = balanceOf[this.address] * sub_185eabad / contractFee
                                        emit Approval((balanceOf[this.address] * sub_185eabad / contractFee), this.address, uniswapV2RouterAddress);
                                        mem[(2 * ceil32(return_data.size)) + 320] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 324] = balanceOf[this.address] * sub_185eabad / contractFee
                                        mem[(2 * ceil32(return_data.size)) + 356] = 0
                                        mem[(2 * ceil32(return_data.size)) + 388] = 160
                                        mem[(2 * ceil32(return_data.size)) + 484] = 2
                                        idx = 0
                                        s = (2 * ceil32(return_data.size)) + 516
                                        t = ceil32(return_data.size) + 256
                                        while idx < mem[ceil32(return_data.size) + 224]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(2 * ceil32(return_data.size)) + 420] = sub_0736dbe6Address
                                        mem[(2 * ceil32(return_data.size)) + 452] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args balanceOf[this.address] * sub_185eabad / contractFee, 0, 160, sub_0736dbe6Address, block.timestamp, mem[(2 * ceil32(return_data.size)) + 484 len (32 * mem[ceil32(return_data.size) + 224]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if balanceOf[this.address] and sub_b23492b1 > -1 / balanceOf[this.address]:
                                            revert with 0, 17
                                        if not contractFee:
                                            revert with 0, 18
                                        if balanceOf[this.address] * sub_b23492b1 / contractFee < balanceOf[this.address] * sub_b23492b1 / contractFee / 2:
                                            revert with 0, 17
                                        mem[(2 * ceil32(return_data.size)) + 320] = 2
                                        mem[(2 * ceil32(return_data.size)) + 352] = this.address
                                        staticcall uniswapV2RouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        mem[(2 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = (4 * ceil32(return_data.size)) + 416
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[(2 * ceil32(return_data.size)) + 384] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        mem[0] = uniswapV2RouterAddress
                                        mem[32] = sha3(address(this.address), 1)
                                        allowance[address(this.address)][stor6].field_0 = balanceOf[this.address] * sub_b23492b1 / contractFee / 2
                                        allowance[address(this.address)][stor6].field_255 = 0
                                        emit Approval((balanceOf[this.address] * sub_b23492b1 / contractFee / 2), this.address, uniswapV2RouterAddress);
                                        mem[(4 * ceil32(return_data.size)) + 416] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + 420] = balanceOf[this.address] * sub_b23492b1 / contractFee / 2
                                        mem[(4 * ceil32(return_data.size)) + 452] = 0
                                        mem[(4 * ceil32(return_data.size)) + 484] = 160
                                        mem[(4 * ceil32(return_data.size)) + 580] = 2
                                        idx = 0
                                        s = (4 * ceil32(return_data.size)) + 612
                                        t = (2 * ceil32(return_data.size)) + 352
                                        while idx < mem[(2 * ceil32(return_data.size)) + 320]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(4 * ceil32(return_data.size)) + 516] = this.address
                                        mem[(4 * ceil32(return_data.size)) + 548] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + 320]) + -mem[64] + 608]
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
                                        allowance[address(this.address)][stor6].field_0 = (balanceOf[this.address] * sub_b23492b1 / contractFee) - (balanceOf[this.address] * sub_b23492b1 / contractFee / 2)
                                        emit Approval(((balanceOf[this.address] * sub_b23492b1 / contractFee) - (balanceOf[this.address] * sub_b23492b1 / contractFee / 2)), this.address, uniswapV2RouterAddress);
                                        mem[mem[64] + 68] = 0
                                        mem[mem[64] + 100] = 0
                                        mem[mem[64] + 132] = sub_a23b2534Address
                                        mem[mem[64] + 164] = block.timestamp
                                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                             gas gas_remaining wei
                                            args this.address, (balanceOf[this.address] * sub_b23492b1 / contractFee) - (balanceOf[this.address] * sub_b23492b1 / contractFee / 2), 0, 0, sub_a23b2534Address, block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 96
                                        mem[mem[64] + 32] = 0
                                        mem[mem[64] + 64] = (balanceOf[this.address] * sub_b23492b1 / contractFee) - (balanceOf[this.address] * sub_b23492b1 / contractFee / 2)
                                        emit SwapAndLiquify(Mask(255, 1, balanceOf[this.address] * sub_b23492b1 / contractFee), 0, (balanceOf[this.address] * sub_b23492b1 / contractFee) - (balanceOf[this.address] * sub_b23492b1 / contractFee / 2));
                                        mem[0] = this.address
                                        mem[32] = 0
                                        _17932 = mem[64]
                                        mem[mem[64]] = 4
                                        mem[64] = mem[64] + 160
                                        mem[_17932 + 32 len 128] = call.data[calldata.size len 128]
                                        if 0 >= mem[_17932]:
                                            revert with 0, 50
                                        mem[_17932 + 32] = this.address
                                        staticcall uniswapV2RouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        mem[_17932 + 160] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _17932 + ceil32(return_data.size) + 160
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if 1 >= mem[_17932]:
                                            revert with 0, 50
                                        mem[_17932 + 64] = ext_call.return_data[12 len 20]
                                        if 2 >= mem[_17932]:
                                            revert with 0, 50
                                        mem[_17932 + 96] = UAddress
                                        if 3 >= mem[_17932]:
                                            revert with 0, 50
                                        mem[_17932 + 128] = rewardTokenAddress
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        mem[0] = uniswapV2RouterAddress
                                        mem[32] = sha3(address(this.address), 1)
                                        allowance[address(this.address)][stor6].field_0 = balanceOf[this.address]
                                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                        mem[_17932 + ceil32(return_data.size) + 160] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                        mem[_17932 + ceil32(return_data.size) + 164] = balanceOf[this.address]
                                        mem[_17932 + ceil32(return_data.size) + 196] = 0
                                        mem[_17932 + ceil32(return_data.size) + 228] = 160
                                        mem[_17932 + ceil32(return_data.size) + 324] = mem[_17932]
                                        idx = 0
                                        s = _17932 + ceil32(return_data.size) + 356
                                        t = _17932 + 32
                                        while idx < mem[_17932]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[_17932 + ceil32(return_data.size) + 324 len (32 * mem[_17932]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        staticcall rewardTokenAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        require return_data.size >= 32
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
                                        uint8(stor7.field_160) = 0
                if stor23[address(msg.sender)]:
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
                    if stor23[address(cd[4])]:
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
                        if uint8(stor7.field_160):
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
                            if cd[36] and contractFee > -1 / cd[36]:
                                revert with 0, 17
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not this.address:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < cd[36] * contractFee / 1000:
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] -= cd[36] * contractFee / 1000
                            if balanceOf[this.address] > !(cd[36] * contractFee / 1000):
                                revert with 0, 17
                            balanceOf[this.address] += cd[36] * contractFee / 1000
                            emit Transfer((cd[36] * contractFee / 1000), msg.sender, this.address);
                            if cd[36] and sub_a14c80fb > -1 / cd[36]:
                                revert with 0, 17
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not deadAddress:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < cd[36] * sub_a14c80fb / 1000:
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] -= cd[36] * sub_a14c80fb / 1000
                            if balanceOf[stor14] > !(cd[36] * sub_a14c80fb / 1000):
                                revert with 0, 17
                            balanceOf[stor14] += cd[36] * sub_a14c80fb / 1000
                            emit Transfer((cd[36] * sub_a14c80fb / 1000), msg.sender, deadAddress);
                            if cd[36] < cd[36] * contractFee / 1000:
                                revert with 0, 17
                            if cd[36] - (cd[36] * contractFee / 1000) < cd[36] * sub_a14c80fb / 1000:
                                revert with 0, 17
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not address(cd[4]):
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < cd[36] - (cd[36] * contractFee / 1000) - (cd[36] * sub_a14c80fb / 1000):
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - cd[36] + (cd[36] * contractFee / 1000) + (cd[36] * sub_a14c80fb / 1000)
                            if balanceOf[address(cd[4])] > !(cd[36] - (cd[36] * contractFee / 1000) - (cd[36] * sub_a14c80fb / 1000)):
                                revert with 0, 17
                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + cd[36] - (cd[36] * contractFee / 1000) - (cd[36] * sub_a14c80fb / 1000)
                            emit Transfer((cd[36] - (cd[36] * contractFee / 1000) - (cd[36] * sub_a14c80fb / 1000)), msg.sender, address(cd[4]));
                require ext_code.size(dividendTrackerAddress)
                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, balanceOf[address(msg.sender)]
                require ext_code.size(dividendTrackerAddress)
                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[4]), balanceOf[address(cd[4])]
                if not uint8(stor7.field_160):
                    if uint8(stor7.field_176):
                        call dividendTrackerAddress.process(uint256 arg1) with:
                             gas gas_remaining wei
                            args gasForProcessing
                        if ext_call.success:
                            require return_data.size >= 96
                            emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
    else:
        if unknown_0x3874f4fc(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x65b8dbc0(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x70a08231(?????) > uint32(call.func_hash) >> 224:
                    if uint32(call.func_hash) >> 224 != unknown_0x65b8dbc0(?????):
                        if unknown_0x6843cd84(?????) == uint32(call.func_hash) >> 224:
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
                        if unknown_0x68b8df5c(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return sub_68b8df5cAddress
                        require unknown_0x700bb191(?????) == uint32(call.func_hash) >> 224
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
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if uniswapV2RouterAddress == address(cd[4]):
                            revert with 0, 'BABYTOKEN: The router already has that address'
                        emit UpdateUniswapV2Router(address(cd[4]), uniswapV2RouterAddress);
                        uniswapV2RouterAddress = address(cd[4])
                        staticcall address(cd[4]).factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
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
                        if unknown_0x814db466(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == address(cd[4])
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            sub_0736dbe6Address = address(cd[4])
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
            else:
                if unknown_0x4e71d92d(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0x3874f4fc(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[4] == address(cd[4])
                        require cd[36] == bool(cd[36])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        stor25[address(cd[4])] = uint8(bool(cd[36]))
                    if uint32(call.func_hash) >> 224 != unknown_0x39509351(?????):
                        if uint32(call.func_hash) >> 224 != unknown_0x3ccfd60b(?????):
                            require unknown_0x49bd5a5e(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            return uniswapV2PairAddress
                        require not msg.value
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        call msg.sender with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
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
                        return bool(stor23[address(cd[4])])
                    if uint32(call.func_hash) >> 224 != unknown_0x5a73928f(?????):
                        require unknown_0x64b0f653(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        staticcall dividendTrackerAddress.getNumberOfTokenHolders() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return ext_call.return_data[0]
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if not this.address:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not address(cd[4]):
                        revert with 0, 'ERC20: transfer to the zero address'
                    if not balanceOf[this.address]:
                        if not this.address:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not address(cd[4]):
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[address(this.address)] < 0:
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        if balanceOf[address(cd[4])] > -1:
                            revert with 0, 17
                        emit Transfer(0, this.address, address(cd[4]));
                    else:
                        if stor25[address(this.address)]:
                            revert with 0, 'Blacklist buying restrictions'
                        if not uint8(stor7.field_168):
                            if stor23[address(this.address)]:
                                if not this.address:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not address(cd[4]):
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(this.address)] < balanceOf[this.address]:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(this.address)] -= balanceOf[this.address]
                                if balanceOf[address(cd[4])] > !balanceOf[this.address]:
                                    revert with 0, 17
                                balanceOf[address(cd[4])] += balanceOf[this.address]
                                emit Transfer(balanceOf[this.address], this.address, address(cd[4]));
                            else:
                                if stor23[address(cd[4])]:
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not address(cd[4]):
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(this.address)] < balanceOf[this.address]:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(this.address)] -= balanceOf[this.address]
                                    if balanceOf[address(cd[4])] > !balanceOf[this.address]:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] += balanceOf[this.address]
                                    emit Transfer(balanceOf[this.address], this.address, address(cd[4]));
                                else:
                                    if uint8(stor7.field_160):
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not address(cd[4]):
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(this.address)] < balanceOf[this.address]:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(this.address)] -= balanceOf[this.address]
                                        if balanceOf[address(cd[4])] > !balanceOf[this.address]:
                                            revert with 0, 17
                                        balanceOf[address(cd[4])] += balanceOf[this.address]
                                        emit Transfer(balanceOf[this.address], this.address, address(cd[4]));
                                    else:
                                        if balanceOf[this.address] and contractFee > -1 / balanceOf[this.address]:
                                            revert with 0, 17
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if balanceOf[address(this.address)] < balanceOf[this.address] * contractFee / 1000:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(this.address)] -= balanceOf[this.address] * contractFee / 1000
                                        if balanceOf[this.address] > !(balanceOf[this.address] * contractFee / 1000):
                                            revert with 0, 17
                                        balanceOf[this.address] += balanceOf[this.address] * contractFee / 1000
                                        emit Transfer((balanceOf[this.address] * contractFee / 1000), this.address, this.address);
                                        if balanceOf[this.address] and sub_a14c80fb > -1 / balanceOf[this.address]:
                                            revert with 0, 17
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not deadAddress:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(this.address)] < balanceOf[this.address] * sub_a14c80fb / 1000:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(this.address)] -= balanceOf[this.address] * sub_a14c80fb / 1000
                                        if balanceOf[stor14] > !(balanceOf[this.address] * sub_a14c80fb / 1000):
                                            revert with 0, 17
                                        balanceOf[stor14] += balanceOf[this.address] * sub_a14c80fb / 1000
                                        emit Transfer((balanceOf[this.address] * sub_a14c80fb / 1000), this.address, deadAddress);
                                        if balanceOf[this.address] < balanceOf[this.address] * contractFee / 1000:
                                            revert with 0, 17
                                        if balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) < balanceOf[this.address] * sub_a14c80fb / 1000:
                                            revert with 0, 17
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not address(cd[4]):
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(this.address)] < balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) - (balanceOf[this.address] * sub_a14c80fb / 1000):
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - balanceOf[this.address] + (balanceOf[this.address] * contractFee / 1000) + (balanceOf[this.address] * sub_a14c80fb / 1000)
                                        if balanceOf[address(cd[4])] > !(balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) - (balanceOf[this.address] * sub_a14c80fb / 1000)):
                                            revert with 0, 17
                                        balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) - (balanceOf[this.address] * sub_a14c80fb / 1000)
                                        emit Transfer((balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) - (balanceOf[this.address] * sub_a14c80fb / 1000)), this.address, address(cd[4]));
                            require ext_code.size(dividendTrackerAddress)
                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(this.address), balanceOf[address(this.address)]
                            require ext_code.size(dividendTrackerAddress)
                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(cd[4]), balanceOf[address(cd[4])]
                            if not uint8(stor7.field_160):
                                if uint8(stor7.field_176):
                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args gasForProcessing
                                    if ext_call.success:
                                        require return_data.size >= 96
                                        emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                        else:
                            if balanceOf[this.address] < swapTokensAtAmount:
                                if stor23[address(this.address)]:
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not address(cd[4]):
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(this.address)] < balanceOf[this.address]:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(this.address)] -= balanceOf[this.address]
                                    if balanceOf[address(cd[4])] > !balanceOf[this.address]:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] += balanceOf[this.address]
                                    emit Transfer(balanceOf[this.address], this.address, address(cd[4]));
                                else:
                                    if stor23[address(cd[4])]:
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not address(cd[4]):
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(this.address)] < balanceOf[this.address]:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(this.address)] -= balanceOf[this.address]
                                        if balanceOf[address(cd[4])] > !balanceOf[this.address]:
                                            revert with 0, 17
                                        balanceOf[address(cd[4])] += balanceOf[this.address]
                                        emit Transfer(balanceOf[this.address], this.address, address(cd[4]));
                                    else:
                                        if uint8(stor7.field_160):
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(this.address)] < balanceOf[this.address]:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(this.address)] -= balanceOf[this.address]
                                            if balanceOf[address(cd[4])] > !balanceOf[this.address]:
                                                revert with 0, 17
                                            balanceOf[address(cd[4])] += balanceOf[this.address]
                                            emit Transfer(balanceOf[this.address], this.address, address(cd[4]));
                                        else:
                                            if balanceOf[this.address] and contractFee > -1 / balanceOf[this.address]:
                                                revert with 0, 17
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if balanceOf[address(this.address)] < balanceOf[this.address] * contractFee / 1000:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(this.address)] -= balanceOf[this.address] * contractFee / 1000
                                            if balanceOf[this.address] > !(balanceOf[this.address] * contractFee / 1000):
                                                revert with 0, 17
                                            balanceOf[this.address] += balanceOf[this.address] * contractFee / 1000
                                            emit Transfer((balanceOf[this.address] * contractFee / 1000), this.address, this.address);
                                            if balanceOf[this.address] and sub_a14c80fb > -1 / balanceOf[this.address]:
                                                revert with 0, 17
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not deadAddress:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(this.address)] < balanceOf[this.address] * sub_a14c80fb / 1000:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(this.address)] -= balanceOf[this.address] * sub_a14c80fb / 1000
                                            if balanceOf[stor14] > !(balanceOf[this.address] * sub_a14c80fb / 1000):
                                                revert with 0, 17
                                            balanceOf[stor14] += balanceOf[this.address] * sub_a14c80fb / 1000
                                            emit Transfer((balanceOf[this.address] * sub_a14c80fb / 1000), this.address, deadAddress);
                                            if balanceOf[this.address] < balanceOf[this.address] * contractFee / 1000:
                                                revert with 0, 17
                                            if balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) < balanceOf[this.address] * sub_a14c80fb / 1000:
                                                revert with 0, 17
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(this.address)] < balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) - (balanceOf[this.address] * sub_a14c80fb / 1000):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(this.address)] = balanceOf[address(this.address)] - balanceOf[this.address] + (balanceOf[this.address] * contractFee / 1000) + (balanceOf[this.address] * sub_a14c80fb / 1000)
                                            if balanceOf[address(cd[4])] > !(balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) - (balanceOf[this.address] * sub_a14c80fb / 1000)):
                                                revert with 0, 17
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) - (balanceOf[this.address] * sub_a14c80fb / 1000)
                                            emit Transfer((balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) - (balanceOf[this.address] * sub_a14c80fb / 1000)), this.address, address(cd[4]));
                                require ext_code.size(dividendTrackerAddress)
                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), balanceOf[address(this.address)]
                                require ext_code.size(dividendTrackerAddress)
                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(cd[4]), balanceOf[address(cd[4])]
                                if not uint8(stor7.field_160):
                                    if uint8(stor7.field_176):
                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args gasForProcessing
                                        if ext_call.success:
                                            require return_data.size >= 96
                                            emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                            else:
                                if uint8(stor7.field_160):
                                    if stor23[address(this.address)]:
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not address(cd[4]):
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(this.address)] < balanceOf[this.address]:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(this.address)] -= balanceOf[this.address]
                                        if balanceOf[address(cd[4])] > !balanceOf[this.address]:
                                            revert with 0, 17
                                        balanceOf[address(cd[4])] += balanceOf[this.address]
                                        emit Transfer(balanceOf[this.address], this.address, address(cd[4]));
                                    else:
                                        if stor23[address(cd[4])]:
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(this.address)] < balanceOf[this.address]:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(this.address)] -= balanceOf[this.address]
                                            if balanceOf[address(cd[4])] > !balanceOf[this.address]:
                                                revert with 0, 17
                                            balanceOf[address(cd[4])] += balanceOf[this.address]
                                            emit Transfer(balanceOf[this.address], this.address, address(cd[4]));
                                        else:
                                            if uint8(stor7.field_160):
                                                if not this.address:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not address(cd[4]):
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(this.address)] < balanceOf[this.address]:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(this.address)] -= balanceOf[this.address]
                                                if balanceOf[address(cd[4])] > !balanceOf[this.address]:
                                                    revert with 0, 17
                                                balanceOf[address(cd[4])] += balanceOf[this.address]
                                                emit Transfer(balanceOf[this.address], this.address, address(cd[4]));
                                            else:
                                                if balanceOf[this.address] and contractFee > -1 / balanceOf[this.address]:
                                                    revert with 0, 17
                                                if not this.address:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if balanceOf[address(this.address)] < balanceOf[this.address] * contractFee / 1000:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(this.address)] -= balanceOf[this.address] * contractFee / 1000
                                                if balanceOf[this.address] > !(balanceOf[this.address] * contractFee / 1000):
                                                    revert with 0, 17
                                                balanceOf[this.address] += balanceOf[this.address] * contractFee / 1000
                                                emit Transfer((balanceOf[this.address] * contractFee / 1000), this.address, this.address);
                                                if balanceOf[this.address] and sub_a14c80fb > -1 / balanceOf[this.address]:
                                                    revert with 0, 17
                                                if not this.address:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not deadAddress:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(this.address)] < balanceOf[this.address] * sub_a14c80fb / 1000:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(this.address)] -= balanceOf[this.address] * sub_a14c80fb / 1000
                                                if balanceOf[stor14] > !(balanceOf[this.address] * sub_a14c80fb / 1000):
                                                    revert with 0, 17
                                                balanceOf[stor14] += balanceOf[this.address] * sub_a14c80fb / 1000
                                                emit Transfer((balanceOf[this.address] * sub_a14c80fb / 1000), this.address, deadAddress);
                                                if balanceOf[this.address] < balanceOf[this.address] * contractFee / 1000:
                                                    revert with 0, 17
                                                if balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) < balanceOf[this.address] * sub_a14c80fb / 1000:
                                                    revert with 0, 17
                                                if not this.address:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not address(cd[4]):
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(this.address)] < balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) - (balanceOf[this.address] * sub_a14c80fb / 1000):
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(this.address)] = balanceOf[address(this.address)] - balanceOf[this.address] + (balanceOf[this.address] * contractFee / 1000) + (balanceOf[this.address] * sub_a14c80fb / 1000)
                                                if balanceOf[address(cd[4])] > !(balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) - (balanceOf[this.address] * sub_a14c80fb / 1000)):
                                                    revert with 0, 17
                                                balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) - (balanceOf[this.address] * sub_a14c80fb / 1000)
                                                emit Transfer((balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) - (balanceOf[this.address] * sub_a14c80fb / 1000)), this.address, address(cd[4]));
                                    require ext_code.size(dividendTrackerAddress)
                                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(this.address), balanceOf[address(this.address)]
                                    require ext_code.size(dividendTrackerAddress)
                                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(cd[4]), balanceOf[address(cd[4])]
                                    if not uint8(stor7.field_160):
                                        if uint8(stor7.field_176):
                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args gasForProcessing
                                            if ext_call.success:
                                                require return_data.size >= 96
                                                emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                else:
                                    if stor24[address(this.address)]:
                                        if stor23[address(this.address)]:
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(this.address)] < balanceOf[this.address]:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(this.address)] -= balanceOf[this.address]
                                            if balanceOf[address(cd[4])] > !balanceOf[this.address]:
                                                revert with 0, 17
                                            balanceOf[address(cd[4])] += balanceOf[this.address]
                                            emit Transfer(balanceOf[this.address], this.address, address(cd[4]));
                                        else:
                                            if stor23[address(cd[4])]:
                                                if not this.address:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not address(cd[4]):
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(this.address)] < balanceOf[this.address]:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(this.address)] -= balanceOf[this.address]
                                                if balanceOf[address(cd[4])] > !balanceOf[this.address]:
                                                    revert with 0, 17
                                                balanceOf[address(cd[4])] += balanceOf[this.address]
                                                emit Transfer(balanceOf[this.address], this.address, address(cd[4]));
                                            else:
                                                if uint8(stor7.field_160):
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not address(cd[4]):
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(this.address)] < balanceOf[this.address]:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(this.address)] -= balanceOf[this.address]
                                                    if balanceOf[address(cd[4])] > !balanceOf[this.address]:
                                                        revert with 0, 17
                                                    balanceOf[address(cd[4])] += balanceOf[this.address]
                                                    emit Transfer(balanceOf[this.address], this.address, address(cd[4]));
                                                else:
                                                    if balanceOf[this.address] and contractFee > -1 / balanceOf[this.address]:
                                                        revert with 0, 17
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if balanceOf[address(this.address)] < balanceOf[this.address] * contractFee / 1000:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(this.address)] -= balanceOf[this.address] * contractFee / 1000
                                                    if balanceOf[this.address] > !(balanceOf[this.address] * contractFee / 1000):
                                                        revert with 0, 17
                                                    balanceOf[this.address] += balanceOf[this.address] * contractFee / 1000
                                                    emit Transfer((balanceOf[this.address] * contractFee / 1000), this.address, this.address);
                                                    if balanceOf[this.address] and sub_a14c80fb > -1 / balanceOf[this.address]:
                                                        revert with 0, 17
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not deadAddress:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(this.address)] < balanceOf[this.address] * sub_a14c80fb / 1000:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(this.address)] -= balanceOf[this.address] * sub_a14c80fb / 1000
                                                    if balanceOf[stor14] > !(balanceOf[this.address] * sub_a14c80fb / 1000):
                                                        revert with 0, 17
                                                    balanceOf[stor14] += balanceOf[this.address] * sub_a14c80fb / 1000
                                                    emit Transfer((balanceOf[this.address] * sub_a14c80fb / 1000), this.address, deadAddress);
                                                    if balanceOf[this.address] < balanceOf[this.address] * contractFee / 1000:
                                                        revert with 0, 17
                                                    if balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) < balanceOf[this.address] * sub_a14c80fb / 1000:
                                                        revert with 0, 17
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not address(cd[4]):
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(this.address)] < balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) - (balanceOf[this.address] * sub_a14c80fb / 1000):
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - balanceOf[this.address] + (balanceOf[this.address] * contractFee / 1000) + (balanceOf[this.address] * sub_a14c80fb / 1000)
                                                    if balanceOf[address(cd[4])] > !(balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) - (balanceOf[this.address] * sub_a14c80fb / 1000)):
                                                        revert with 0, 17
                                                    balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) - (balanceOf[this.address] * sub_a14c80fb / 1000)
                                                    emit Transfer((balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) - (balanceOf[this.address] * sub_a14c80fb / 1000)), this.address, address(cd[4]));
                                        require ext_code.size(dividendTrackerAddress)
                                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(this.address), balanceOf[address(this.address)]
                                        require ext_code.size(dividendTrackerAddress)
                                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(cd[4]), balanceOf[address(cd[4])]
                                        if not uint8(stor7.field_160):
                                            if uint8(stor7.field_176):
                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args gasForProcessing
                                                if ext_call.success:
                                                    require return_data.size >= 96
                                                    emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                    else:
                                        if owner == this.address:
                                            if stor23[address(this.address)]:
                                                if not this.address:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not address(cd[4]):
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(this.address)] < balanceOf[this.address]:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(this.address)] -= balanceOf[this.address]
                                                if balanceOf[address(cd[4])] > !balanceOf[this.address]:
                                                    revert with 0, 17
                                                balanceOf[address(cd[4])] += balanceOf[this.address]
                                                emit Transfer(balanceOf[this.address], this.address, address(cd[4]));
                                            else:
                                                if stor23[address(cd[4])]:
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not address(cd[4]):
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(this.address)] < balanceOf[this.address]:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(this.address)] -= balanceOf[this.address]
                                                    if balanceOf[address(cd[4])] > !balanceOf[this.address]:
                                                        revert with 0, 17
                                                    balanceOf[address(cd[4])] += balanceOf[this.address]
                                                    emit Transfer(balanceOf[this.address], this.address, address(cd[4]));
                                                else:
                                                    if uint8(stor7.field_160):
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not address(cd[4]):
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(this.address)] < balanceOf[this.address]:
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(this.address)] -= balanceOf[this.address]
                                                        if balanceOf[address(cd[4])] > !balanceOf[this.address]:
                                                            revert with 0, 17
                                                        balanceOf[address(cd[4])] += balanceOf[this.address]
                                                        emit Transfer(balanceOf[this.address], this.address, address(cd[4]));
                                                    else:
                                                        if balanceOf[this.address] and contractFee > -1 / balanceOf[this.address]:
                                                            revert with 0, 17
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if balanceOf[address(this.address)] < balanceOf[this.address] * contractFee / 1000:
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(this.address)] -= balanceOf[this.address] * contractFee / 1000
                                                        if balanceOf[this.address] > !(balanceOf[this.address] * contractFee / 1000):
                                                            revert with 0, 17
                                                        balanceOf[this.address] += balanceOf[this.address] * contractFee / 1000
                                                        emit Transfer((balanceOf[this.address] * contractFee / 1000), this.address, this.address);
                                                        if balanceOf[this.address] and sub_a14c80fb > -1 / balanceOf[this.address]:
                                                            revert with 0, 17
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not deadAddress:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(this.address)] < balanceOf[this.address] * sub_a14c80fb / 1000:
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(this.address)] -= balanceOf[this.address] * sub_a14c80fb / 1000
                                                        if balanceOf[stor14] > !(balanceOf[this.address] * sub_a14c80fb / 1000):
                                                            revert with 0, 17
                                                        balanceOf[stor14] += balanceOf[this.address] * sub_a14c80fb / 1000
                                                        emit Transfer((balanceOf[this.address] * sub_a14c80fb / 1000), this.address, deadAddress);
                                                        if balanceOf[this.address] < balanceOf[this.address] * contractFee / 1000:
                                                            revert with 0, 17
                                                        if balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) < balanceOf[this.address] * sub_a14c80fb / 1000:
                                                            revert with 0, 17
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not address(cd[4]):
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(this.address)] < balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) - (balanceOf[this.address] * sub_a14c80fb / 1000):
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(this.address)] = balanceOf[address(this.address)] - balanceOf[this.address] + (balanceOf[this.address] * contractFee / 1000) + (balanceOf[this.address] * sub_a14c80fb / 1000)
                                                        if balanceOf[address(cd[4])] > !(balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) - (balanceOf[this.address] * sub_a14c80fb / 1000)):
                                                            revert with 0, 17
                                                        balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) - (balanceOf[this.address] * sub_a14c80fb / 1000)
                                                        emit Transfer((balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) - (balanceOf[this.address] * sub_a14c80fb / 1000)), this.address, address(cd[4]));
                                            require ext_code.size(dividendTrackerAddress)
                                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(this.address), balanceOf[address(this.address)]
                                            require ext_code.size(dividendTrackerAddress)
                                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(cd[4]), balanceOf[address(cd[4])]
                                            if not uint8(stor7.field_160):
                                                if uint8(stor7.field_176):
                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args gasForProcessing
                                                    if ext_call.success:
                                                        require return_data.size >= 96
                                                        emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                        else:
                                            if owner == address(cd[4]):
                                                if stor23[address(this.address)]:
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not address(cd[4]):
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(this.address)] < balanceOf[this.address]:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(this.address)] -= balanceOf[this.address]
                                                    if balanceOf[address(cd[4])] > !balanceOf[this.address]:
                                                        revert with 0, 17
                                                    balanceOf[address(cd[4])] += balanceOf[this.address]
                                                    emit Transfer(balanceOf[this.address], this.address, address(cd[4]));
                                                else:
                                                    if stor23[address(cd[4])]:
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not address(cd[4]):
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(this.address)] < balanceOf[this.address]:
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(this.address)] -= balanceOf[this.address]
                                                        if balanceOf[address(cd[4])] > !balanceOf[this.address]:
                                                            revert with 0, 17
                                                        balanceOf[address(cd[4])] += balanceOf[this.address]
                                                        emit Transfer(balanceOf[this.address], this.address, address(cd[4]));
                                                    else:
                                                        if uint8(stor7.field_160):
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not address(cd[4]):
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if balanceOf[address(this.address)] < balanceOf[this.address]:
                                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                                            balanceOf[address(this.address)] -= balanceOf[this.address]
                                                            if balanceOf[address(cd[4])] > !balanceOf[this.address]:
                                                                revert with 0, 17
                                                            balanceOf[address(cd[4])] += balanceOf[this.address]
                                                            emit Transfer(balanceOf[this.address], this.address, address(cd[4]));
                                                        else:
                                                            if balanceOf[this.address] and contractFee > -1 / balanceOf[this.address]:
                                                                revert with 0, 17
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if balanceOf[address(this.address)] < balanceOf[this.address] * contractFee / 1000:
                                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                                            balanceOf[address(this.address)] -= balanceOf[this.address] * contractFee / 1000
                                                            if balanceOf[this.address] > !(balanceOf[this.address] * contractFee / 1000):
                                                                revert with 0, 17
                                                            balanceOf[this.address] += balanceOf[this.address] * contractFee / 1000
                                                            emit Transfer((balanceOf[this.address] * contractFee / 1000), this.address, this.address);
                                                            if balanceOf[this.address] and sub_a14c80fb > -1 / balanceOf[this.address]:
                                                                revert with 0, 17
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not deadAddress:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if balanceOf[address(this.address)] < balanceOf[this.address] * sub_a14c80fb / 1000:
                                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                                            balanceOf[address(this.address)] -= balanceOf[this.address] * sub_a14c80fb / 1000
                                                            if balanceOf[stor14] > !(balanceOf[this.address] * sub_a14c80fb / 1000):
                                                                revert with 0, 17
                                                            balanceOf[stor14] += balanceOf[this.address] * sub_a14c80fb / 1000
                                                            emit Transfer((balanceOf[this.address] * sub_a14c80fb / 1000), this.address, deadAddress);
                                                            if balanceOf[this.address] < balanceOf[this.address] * contractFee / 1000:
                                                                revert with 0, 17
                                                            if balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) < balanceOf[this.address] * sub_a14c80fb / 1000:
                                                                revert with 0, 17
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not address(cd[4]):
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if balanceOf[address(this.address)] < balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) - (balanceOf[this.address] * sub_a14c80fb / 1000):
                                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                                            balanceOf[address(this.address)] = balanceOf[address(this.address)] - balanceOf[this.address] + (balanceOf[this.address] * contractFee / 1000) + (balanceOf[this.address] * sub_a14c80fb / 1000)
                                                            if balanceOf[address(cd[4])] > !(balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) - (balanceOf[this.address] * sub_a14c80fb / 1000)):
                                                                revert with 0, 17
                                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) - (balanceOf[this.address] * sub_a14c80fb / 1000)
                                                            emit Transfer((balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) - (balanceOf[this.address] * sub_a14c80fb / 1000)), this.address, address(cd[4]));
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(this.address), balanceOf[address(this.address)]
                                                require ext_code.size(dividendTrackerAddress)
                                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(cd[4]), balanceOf[address(cd[4])]
                                                if not uint8(stor7.field_160):
                                                    if uint8(stor7.field_176):
                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args gasForProcessing
                                                        if ext_call.success:
                                                            require return_data.size >= 96
                                                            emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                            else:
                                                uint8(stor7.field_160) = 1
                                                if balanceOf[this.address] and sub_89d3e27b > -1 / balanceOf[this.address]:
                                                    revert with 0, 17
                                                if not contractFee:
                                                    revert with 0, 18
                                                mem[128] = 2
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
                                                allowance[address(this.address)][stor6].field_0 = balanceOf[this.address] * sub_89d3e27b / contractFee
                                                emit Approval((balanceOf[this.address] * sub_89d3e27b / contractFee), this.address, uniswapV2RouterAddress);
                                                mem[ceil32(return_data.size) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 228] = balanceOf[this.address] * sub_89d3e27b / contractFee
                                                mem[ceil32(return_data.size) + 388] = 2
                                                idx = 0
                                                s = ceil32(return_data.size) + 420
                                                t = 160
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[ceil32(return_data.size) + 324] = sub_68b8df5cAddress
                                                mem[ceil32(return_data.size) + 356] = block.timestamp
                                                require ext_code.size(uniswapV2RouterAddress)
                                                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args balanceOf[this.address] * sub_89d3e27b / contractFee, 0, 160, sub_68b8df5cAddress, block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if balanceOf[this.address] and sub_185eabad > -1 / balanceOf[this.address]:
                                                    revert with 0, 17
                                                if not contractFee:
                                                    revert with 0, 18
                                                mem[ceil32(return_data.size) + 224] = 2
                                                mem[ceil32(return_data.size) + 256] = this.address
                                                staticcall uniswapV2RouterAddress.WETH() with:
                                                        gas gas_remaining wei
                                                mem[ceil32(return_data.size) + 320] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = (2 * ceil32(return_data.size)) + 320
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(return_data.size) + 288] = ext_call.return_data[12 len 20]
                                                if not this.address:
                                                    revert with 0, 'ERC20: approve from the zero address'
                                                if not uniswapV2RouterAddress:
                                                    revert with 0, 'ERC20: approve to the zero address'
                                                mem[0] = uniswapV2RouterAddress
                                                mem[32] = sha3(address(this.address), 1)
                                                allowance[address(this.address)][stor6].field_0 = balanceOf[this.address] * sub_185eabad / contractFee
                                                emit Approval((balanceOf[this.address] * sub_185eabad / contractFee), this.address, uniswapV2RouterAddress);
                                                mem[(2 * ceil32(return_data.size)) + 320] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                mem[(2 * ceil32(return_data.size)) + 324] = balanceOf[this.address] * sub_185eabad / contractFee
                                                mem[(2 * ceil32(return_data.size)) + 356] = 0
                                                mem[(2 * ceil32(return_data.size)) + 388] = 160
                                                mem[(2 * ceil32(return_data.size)) + 484] = 2
                                                idx = 0
                                                s = (2 * ceil32(return_data.size)) + 516
                                                t = ceil32(return_data.size) + 256
                                                while idx < mem[ceil32(return_data.size) + 224]:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[(2 * ceil32(return_data.size)) + 420] = sub_0736dbe6Address
                                                mem[(2 * ceil32(return_data.size)) + 452] = block.timestamp
                                                require ext_code.size(uniswapV2RouterAddress)
                                                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args balanceOf[this.address] * sub_185eabad / contractFee, 0, 160, sub_0736dbe6Address, block.timestamp, mem[(2 * ceil32(return_data.size)) + 484 len (32 * mem[ceil32(return_data.size) + 224]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if balanceOf[this.address] and sub_b23492b1 > -1 / balanceOf[this.address]:
                                                    revert with 0, 17
                                                if not contractFee:
                                                    revert with 0, 18
                                                if balanceOf[this.address] * sub_b23492b1 / contractFee < balanceOf[this.address] * sub_b23492b1 / contractFee / 2:
                                                    revert with 0, 17
                                                mem[(2 * ceil32(return_data.size)) + 320] = 2
                                                mem[(2 * ceil32(return_data.size)) + 352] = this.address
                                                staticcall uniswapV2RouterAddress.WETH() with:
                                                        gas gas_remaining wei
                                                mem[(2 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = (4 * ceil32(return_data.size)) + 416
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[(2 * ceil32(return_data.size)) + 384] = ext_call.return_data[12 len 20]
                                                if not this.address:
                                                    revert with 0, 'ERC20: approve from the zero address'
                                                if not uniswapV2RouterAddress:
                                                    revert with 0, 'ERC20: approve to the zero address'
                                                mem[0] = uniswapV2RouterAddress
                                                mem[32] = sha3(address(this.address), 1)
                                                allowance[address(this.address)][stor6].field_0 = balanceOf[this.address] * sub_b23492b1 / contractFee / 2
                                                allowance[address(this.address)][stor6].field_255 = 0
                                                emit Approval((balanceOf[this.address] * sub_b23492b1 / contractFee / 2), this.address, uniswapV2RouterAddress);
                                                mem[(4 * ceil32(return_data.size)) + 416] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                mem[(4 * ceil32(return_data.size)) + 420] = balanceOf[this.address] * sub_b23492b1 / contractFee / 2
                                                mem[(4 * ceil32(return_data.size)) + 452] = 0
                                                mem[(4 * ceil32(return_data.size)) + 484] = 160
                                                mem[(4 * ceil32(return_data.size)) + 580] = 2
                                                idx = 0
                                                s = (4 * ceil32(return_data.size)) + 612
                                                t = (2 * ceil32(return_data.size)) + 352
                                                while idx < mem[(2 * ceil32(return_data.size)) + 320]:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[(4 * ceil32(return_data.size)) + 516] = this.address
                                                mem[(4 * ceil32(return_data.size)) + 548] = block.timestamp
                                                require ext_code.size(uniswapV2RouterAddress)
                                                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + 320]) + -mem[64] + 608]
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
                                                allowance[address(this.address)][stor6].field_0 = (balanceOf[this.address] * sub_b23492b1 / contractFee) - (balanceOf[this.address] * sub_b23492b1 / contractFee / 2)
                                                emit Approval(((balanceOf[this.address] * sub_b23492b1 / contractFee) - (balanceOf[this.address] * sub_b23492b1 / contractFee / 2)), this.address, uniswapV2RouterAddress);
                                                mem[mem[64] + 68] = 0
                                                mem[mem[64] + 100] = 0
                                                mem[mem[64] + 132] = sub_a23b2534Address
                                                mem[mem[64] + 164] = block.timestamp
                                                call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                     gas gas_remaining wei
                                                    args this.address, (balanceOf[this.address] * sub_b23492b1 / contractFee) - (balanceOf[this.address] * sub_b23492b1 / contractFee / 2), 0, 0, sub_a23b2534Address, block.timestamp
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 96
                                                mem[mem[64] + 32] = 0
                                                mem[mem[64] + 64] = (balanceOf[this.address] * sub_b23492b1 / contractFee) - (balanceOf[this.address] * sub_b23492b1 / contractFee / 2)
                                                emit SwapAndLiquify(Mask(255, 1, balanceOf[this.address] * sub_b23492b1 / contractFee), 0, (balanceOf[this.address] * sub_b23492b1 / contractFee) - (balanceOf[this.address] * sub_b23492b1 / contractFee / 2));
                                                mem[0] = this.address
                                                mem[32] = 0
                                                _17930 = mem[64]
                                                mem[mem[64]] = 4
                                                mem[64] = mem[64] + 160
                                                mem[_17930 + 32 len 128] = call.data[calldata.size len 128]
                                                if 0 >= mem[_17930]:
                                                    revert with 0, 50
                                                mem[_17930 + 32] = this.address
                                                staticcall uniswapV2RouterAddress.WETH() with:
                                                        gas gas_remaining wei
                                                mem[_17930 + 160] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _17930 + ceil32(return_data.size) + 160
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                if 1 >= mem[_17930]:
                                                    revert with 0, 50
                                                mem[_17930 + 64] = ext_call.return_data[12 len 20]
                                                if 2 >= mem[_17930]:
                                                    revert with 0, 50
                                                mem[_17930 + 96] = UAddress
                                                if 3 >= mem[_17930]:
                                                    revert with 0, 50
                                                mem[_17930 + 128] = rewardTokenAddress
                                                if not this.address:
                                                    revert with 0, 'ERC20: approve from the zero address'
                                                if not uniswapV2RouterAddress:
                                                    revert with 0, 'ERC20: approve to the zero address'
                                                mem[0] = uniswapV2RouterAddress
                                                mem[32] = sha3(address(this.address), 1)
                                                allowance[address(this.address)][stor6].field_0 = balanceOf[this.address]
                                                emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                                mem[_17930 + ceil32(return_data.size) + 160] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                mem[_17930 + ceil32(return_data.size) + 164] = balanceOf[this.address]
                                                mem[_17930 + ceil32(return_data.size) + 196] = 0
                                                mem[_17930 + ceil32(return_data.size) + 228] = 160
                                                mem[_17930 + ceil32(return_data.size) + 324] = mem[_17930]
                                                idx = 0
                                                s = _17930 + ceil32(return_data.size) + 356
                                                t = _17930 + 32
                                                while idx < mem[_17930]:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[_17930 + ceil32(return_data.size) + 260] = this.address
                                                mem[_17930 + ceil32(return_data.size) + 292] = block.timestamp
                                                require ext_code.size(uniswapV2RouterAddress)
                                                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len _17930 + ceil32(return_data.size) + (32 * mem[_17930]) + -mem[64] + 352]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[mem[64] + 4] = this.address
                                                staticcall rewardTokenAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[mem[64]] = ext_call.return_data[0]
                                                _21476 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _21479 = mem[_21476]
                                                mem[mem[64] + 4] = dividendTrackerAddress
                                                mem[mem[64] + 36] = _21479
                                                call rewardTokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args dividendTrackerAddress, _21479
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _21488 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_21488] == bool(mem[_21488])
                                                if not mem[_21488]:
                                                    uint8(stor7.field_160) = 0
                                                    if stor23[address(this.address)]:
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not address(cd[4]):
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(this.address)] < balanceOf[this.address]:
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(this.address)] -= balanceOf[this.address]
                                                        if balanceOf[address(cd[4])] > !balanceOf[this.address]:
                                                            revert with 0, 17
                                                        balanceOf[address(cd[4])] += balanceOf[this.address]
                                                        emit Transfer(balanceOf[this.address], this.address, address(cd[4]));
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(this.address), balanceOf[address(this.address)]
                                                        mem[0] = address(cd[4])
                                                        mem[32] = 0
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(cd[4]), balanceOf[address(cd[4])]
                                                        if not ext_call.success:
                                                            if not ext_call.success:
                                                                if not uint8(stor7.field_160):
                                                                    if uint8(stor7.field_176):
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _21977 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _22131 = mem[_21977 + 32]
                                                                            _22132 = mem[_21977 + 64]
                                                                            mem[mem[64]] = mem[_21977]
                                                                            mem[mem[64] + 64] = _22132
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _22131, _22132, gasForProcessing, 1, tx.origin);
                                                            else:
                                                                if not uint8(stor7.field_160):
                                                                    if uint8(stor7.field_176):
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _22044 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _22260 = mem[_22044 + 32]
                                                                            _22261 = mem[_22044 + 64]
                                                                            mem[mem[64]] = mem[_22044]
                                                                            mem[mem[64] + 64] = _22261
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _22260, _22261, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not ext_call.success:
                                                                if not uint8(stor7.field_160):
                                                                    if uint8(stor7.field_176):
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _22045 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _22263 = mem[_22045 + 32]
                                                                            _22264 = mem[_22045 + 64]
                                                                            mem[mem[64]] = mem[_22045]
                                                                            mem[mem[64] + 64] = _22264
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _22263, _22264, gasForProcessing, 1, tx.origin);
                                                            else:
                                                                if not uint8(stor7.field_160):
                                                                    if uint8(stor7.field_176):
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _22133 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _22447 = mem[_22133 + 32]
                                                                            _22448 = mem[_22133 + 64]
                                                                            mem[mem[64]] = mem[_22133]
                                                                            mem[mem[64] + 64] = _22448
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _22447, _22448, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if stor23[address(cd[4])]:
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not address(cd[4]):
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if balanceOf[address(this.address)] < balanceOf[this.address]:
                                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                                            balanceOf[address(this.address)] -= balanceOf[this.address]
                                                            if balanceOf[address(cd[4])] > !balanceOf[this.address]:
                                                                revert with 0, 17
                                                            balanceOf[address(cd[4])] += balanceOf[this.address]
                                                            emit Transfer(balanceOf[this.address], this.address, address(cd[4]));
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args address(this.address), balanceOf[address(this.address)]
                                                            mem[0] = address(cd[4])
                                                            mem[32] = 0
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args address(cd[4]), balanceOf[address(cd[4])]
                                                            if not ext_call.success:
                                                                if not ext_call.success:
                                                                    if not uint8(stor7.field_160):
                                                                        if uint8(stor7.field_176):
                                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                                 gas gas_remaining wei
                                                                                args gasForProcessing
                                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                            if ext_call.success:
                                                                                _22052 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 96
                                                                                _22272 = mem[_22052 + 32]
                                                                                _22273 = mem[_22052 + 64]
                                                                                mem[mem[64]] = mem[_22052]
                                                                                mem[mem[64] + 64] = _22273
                                                                                mem[mem[64] + 96] = gasForProcessing
                                                                                emit ProcessedDividendTracker(mem[mem[64]], _22272, _22273, gasForProcessing, 1, tx.origin);
                                                                else:
                                                                    if not uint8(stor7.field_160):
                                                                        if uint8(stor7.field_176):
                                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                                 gas gas_remaining wei
                                                                                args gasForProcessing
                                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                            if ext_call.success:
                                                                                _22138 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 96
                                                                                _22453 = mem[_22138 + 32]
                                                                                _22454 = mem[_22138 + 64]
                                                                                mem[mem[64]] = mem[_22138]
                                                                                mem[mem[64] + 64] = _22454
                                                                                mem[mem[64] + 96] = gasForProcessing
                                                                                emit ProcessedDividendTracker(mem[mem[64]], _22453, _22454, gasForProcessing, 1, tx.origin);
                                                            else:
                                                                if not ext_call.success:
                                                                    if not uint8(stor7.field_160):
                                                                        if uint8(stor7.field_176):
                                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                                 gas gas_remaining wei
                                                                                args gasForProcessing
                                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                            if ext_call.success:
                                                                                _22139 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 96
                                                                                _22456 = mem[_22139 + 32]
                                                                                _22457 = mem[_22139 + 64]
                                                                                mem[mem[64]] = mem[_22139]
                                                                                mem[mem[64] + 64] = _22457
                                                                                mem[mem[64] + 96] = gasForProcessing
                                                                                emit ProcessedDividendTracker(mem[mem[64]], _22456, _22457, gasForProcessing, 1, tx.origin);
                                                                else:
                                                                    if not uint8(stor7.field_160):
                                                                        if uint8(stor7.field_176):
                                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                                 gas gas_remaining wei
                                                                                args gasForProcessing
                                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                            if ext_call.success:
                                                                                _22274 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 96
                                                                                _22644 = mem[_22274 + 32]
                                                                                _22645 = mem[_22274 + 64]
                                                                                mem[mem[64]] = mem[_22274]
                                                                                mem[mem[64] + 64] = _22645
                                                                                mem[mem[64] + 96] = gasForProcessing
                                                                                emit ProcessedDividendTracker(mem[mem[64]], _22644, _22645, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if uint8(stor7.field_160):
                                                                if not this.address:
                                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                                if not address(cd[4]):
                                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                                if balanceOf[address(this.address)] < balanceOf[this.address]:
                                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                                balanceOf[address(this.address)] -= balanceOf[this.address]
                                                                if balanceOf[address(cd[4])] > !balanceOf[this.address]:
                                                                    revert with 0, 17
                                                                balanceOf[address(cd[4])] += balanceOf[this.address]
                                                                emit Transfer(balanceOf[this.address], this.address, address(cd[4]));
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args address(this.address), balanceOf[address(this.address)]
                                                                mem[0] = address(cd[4])
                                                                mem[32] = 0
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args address(cd[4]), balanceOf[address(cd[4])]
                                                                if not ext_call.success:
                                                                    if not ext_call.success:
                                                                        if not uint8(stor7.field_160):
                                                                            if uint8(stor7.field_176):
                                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                                     gas gas_remaining wei
                                                                                    args gasForProcessing
                                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                if ext_call.success:
                                                                                    _21982 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 96
                                                                                    _22135 = mem[_21982 + 32]
                                                                                    _22136 = mem[_21982 + 64]
                                                                                    mem[mem[64]] = mem[_21982]
                                                                                    mem[mem[64] + 64] = _22136
                                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                                    emit ProcessedDividendTracker(mem[mem[64]], _22135, _22136, gasForProcessing, 1, tx.origin);
                                                                    else:
                                                                        if not uint8(stor7.field_160):
                                                                            if uint8(stor7.field_176):
                                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                                     gas gas_remaining wei
                                                                                    args gasForProcessing
                                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                if ext_call.success:
                                                                                    _22048 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 96
                                                                                    _22266 = mem[_22048 + 32]
                                                                                    _22267 = mem[_22048 + 64]
                                                                                    mem[mem[64]] = mem[_22048]
                                                                                    mem[mem[64] + 64] = _22267
                                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                                    emit ProcessedDividendTracker(mem[mem[64]], _22266, _22267, gasForProcessing, 1, tx.origin);
                                                                else:
                                                                    if not ext_call.success:
                                                                        if not uint8(stor7.field_160):
                                                                            if uint8(stor7.field_176):
                                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                                     gas gas_remaining wei
                                                                                    args gasForProcessing
                                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                if ext_call.success:
                                                                                    _22049 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 96
                                                                                    _22269 = mem[_22049 + 32]
                                                                                    _22270 = mem[_22049 + 64]
                                                                                    mem[mem[64]] = mem[_22049]
                                                                                    mem[mem[64] + 64] = _22270
                                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                                    emit ProcessedDividendTracker(mem[mem[64]], _22269, _22270, gasForProcessing, 1, tx.origin);
                                                                    else:
                                                                        if not uint8(stor7.field_160):
                                                                            if uint8(stor7.field_176):
                                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                                     gas gas_remaining wei
                                                                                    args gasForProcessing
                                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                if ext_call.success:
                                                                                    _22137 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 96
                                                                                    _22450 = mem[_22137 + 32]
                                                                                    _22451 = mem[_22137 + 64]
                                                                                    mem[mem[64]] = mem[_22137]
                                                                                    mem[mem[64] + 64] = _22451
                                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                                    emit ProcessedDividendTracker(mem[mem[64]], _22450, _22451, gasForProcessing, 1, tx.origin);
                                                            else:
                                                                if balanceOf[this.address] and contractFee > -1 / balanceOf[this.address]:
                                                                    revert with 0, 17
                                                                if not this.address:
                                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                                if balanceOf[address(this.address)] < balanceOf[this.address] * contractFee / 1000:
                                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                                balanceOf[address(this.address)] -= balanceOf[this.address] * contractFee / 1000
                                                                if balanceOf[this.address] > !(balanceOf[this.address] * contractFee / 1000):
                                                                    revert with 0, 17
                                                                balanceOf[this.address] += balanceOf[this.address] * contractFee / 1000
                                                                emit Transfer((balanceOf[this.address] * contractFee / 1000), this.address, this.address);
                                                                if balanceOf[this.address] and sub_a14c80fb > -1 / balanceOf[this.address]:
                                                                    revert with 0, 17
                                                                if not this.address:
                                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                                if not deadAddress:
                                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                                if balanceOf[address(this.address)] < balanceOf[this.address] * sub_a14c80fb / 1000:
                                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                                balanceOf[address(this.address)] -= balanceOf[this.address] * sub_a14c80fb / 1000
                                                                if balanceOf[stor14] > !(balanceOf[this.address] * sub_a14c80fb / 1000):
                                                                    revert with 0, 17
                                                                balanceOf[stor14] += balanceOf[this.address] * sub_a14c80fb / 1000
                                                                emit Transfer((balanceOf[this.address] * sub_a14c80fb / 1000), this.address, deadAddress);
                                                                if balanceOf[this.address] < balanceOf[this.address] * contractFee / 1000:
                                                                    revert with 0, 17
                                                                if balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) < balanceOf[this.address] * sub_a14c80fb / 1000:
                                                                    revert with 0, 17
                                                                if not this.address:
                                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                                if not address(cd[4]):
                                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                                if balanceOf[address(this.address)] < balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) - (balanceOf[this.address] * sub_a14c80fb / 1000):
                                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                                balanceOf[address(this.address)] = balanceOf[address(this.address)] - balanceOf[this.address] + (balanceOf[this.address] * contractFee / 1000) + (balanceOf[this.address] * sub_a14c80fb / 1000)
                                                                if balanceOf[address(cd[4])] > !(balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) - (balanceOf[this.address] * sub_a14c80fb / 1000)):
                                                                    revert with 0, 17
                                                                balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) - (balanceOf[this.address] * sub_a14c80fb / 1000)
                                                                emit Transfer((balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) - (balanceOf[this.address] * sub_a14c80fb / 1000)), this.address, address(cd[4]));
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args address(this.address), balanceOf[address(this.address)]
                                                                mem[0] = address(cd[4])
                                                                mem[32] = 0
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args address(cd[4]), balanceOf[address(cd[4])]
                                                                if not ext_call.success:
                                                                    if not ext_call.success:
                                                                        if not uint8(stor7.field_160):
                                                                            if uint8(stor7.field_176):
                                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                                     gas gas_remaining wei
                                                                                    args gasForProcessing
                                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                if ext_call.success:
                                                                                    _24257 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 96
                                                                                    _24312 = mem[_24257 + 32]
                                                                                    _24313 = mem[_24257 + 64]
                                                                                    mem[mem[64]] = mem[_24257]
                                                                                    mem[mem[64] + 64] = _24313
                                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                                    emit ProcessedDividendTracker(mem[mem[64]], _24312, _24313, gasForProcessing, 1, tx.origin);
                                                                    else:
                                                                        if not uint8(stor7.field_160):
                                                                            if uint8(stor7.field_176):
                                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                                     gas gas_remaining wei
                                                                                    args gasForProcessing
                                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                if ext_call.success:
                                                                                    _24282 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 96
                                                                                    _24361 = mem[_24282 + 32]
                                                                                    _24362 = mem[_24282 + 64]
                                                                                    mem[mem[64]] = mem[_24282]
                                                                                    mem[mem[64] + 64] = _24362
                                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                                    emit ProcessedDividendTracker(mem[mem[64]], _24361, _24362, gasForProcessing, 1, tx.origin);
                                                                else:
                                                                    if not ext_call.success:
                                                                        if not uint8(stor7.field_160):
                                                                            if uint8(stor7.field_176):
                                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                                     gas gas_remaining wei
                                                                                    args gasForProcessing
                                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                if ext_call.success:
                                                                                    _24283 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 96
                                                                                    _24364 = mem[_24283 + 32]
                                                                                    _24365 = mem[_24283 + 64]
                                                                                    mem[mem[64]] = mem[_24283]
                                                                                    mem[mem[64] + 64] = _24365
                                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                                    emit ProcessedDividendTracker(mem[mem[64]], _24364, _24365, gasForProcessing, 1, tx.origin);
                                                                    else:
                                                                        if not uint8(stor7.field_160):
                                                                            if uint8(stor7.field_176):
                                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                                     gas gas_remaining wei
                                                                                    args gasForProcessing
                                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                if ext_call.success:
                                                                                    _24314 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 96
                                                                                    _24430 = mem[_24314 + 32]
                                                                                    _24431 = mem[_24314 + 64]
                                                                                    mem[mem[64]] = mem[_24314]
                                                                                    mem[mem[64] + 64] = _24431
                                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                                    emit ProcessedDividendTracker(mem[mem[64]], _24430, _24431, gasForProcessing, 1, tx.origin);
                                                else:
                                                    require ext_code.size(dividendTrackerAddress)
                                                    call dividendTrackerAddress.distributeCAKEDividends(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _21479
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    emit SendDividends(balanceOf[this.address], _21479);
                                                    uint8(stor7.field_160) = 0
                                                    if stor23[address(this.address)]:
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not address(cd[4]):
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(this.address)] < balanceOf[this.address]:
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(this.address)] -= balanceOf[this.address]
                                                        if balanceOf[address(cd[4])] > !balanceOf[this.address]:
                                                            revert with 0, 17
                                                        balanceOf[address(cd[4])] += balanceOf[this.address]
                                                        emit Transfer(balanceOf[this.address], this.address, address(cd[4]));
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(this.address), balanceOf[address(this.address)]
                                                        mem[0] = address(cd[4])
                                                        mem[32] = 0
                                                        require ext_code.size(dividendTrackerAddress)
                                                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(cd[4]), balanceOf[address(cd[4])]
                                                        if not ext_call.success:
                                                            if not ext_call.success:
                                                                if not uint8(stor7.field_160):
                                                                    if uint8(stor7.field_176):
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _22275 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _22647 = mem[_22275 + 32]
                                                                            _22648 = mem[_22275 + 64]
                                                                            mem[mem[64]] = mem[_22275]
                                                                            mem[mem[64] + 64] = _22648
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _22647, _22648, gasForProcessing, 1, tx.origin);
                                                            else:
                                                                if not uint8(stor7.field_160):
                                                                    if uint8(stor7.field_176):
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _22458 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _22832 = mem[_22458 + 32]
                                                                            _22833 = mem[_22458 + 64]
                                                                            mem[mem[64]] = mem[_22458]
                                                                            mem[mem[64] + 64] = _22833
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _22832, _22833, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not ext_call.success:
                                                                if not uint8(stor7.field_160):
                                                                    if uint8(stor7.field_176):
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _22459 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _22835 = mem[_22459 + 32]
                                                                            _22836 = mem[_22459 + 64]
                                                                            mem[mem[64]] = mem[_22459]
                                                                            mem[mem[64] + 64] = _22836
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _22835, _22836, gasForProcessing, 1, tx.origin);
                                                            else:
                                                                if not uint8(stor7.field_160):
                                                                    if uint8(stor7.field_176):
                                                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args gasForProcessing
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if ext_call.success:
                                                                            _22649 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            _23026 = mem[_22649 + 32]
                                                                            _23027 = mem[_22649 + 64]
                                                                            mem[mem[64]] = mem[_22649]
                                                                            mem[mem[64] + 64] = _23027
                                                                            mem[mem[64] + 96] = gasForProcessing
                                                                            emit ProcessedDividendTracker(mem[mem[64]], _23026, _23027, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if stor23[address(cd[4])]:
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not address(cd[4]):
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if balanceOf[address(this.address)] < balanceOf[this.address]:
                                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                                            balanceOf[address(this.address)] -= balanceOf[this.address]
                                                            if balanceOf[address(cd[4])] > !balanceOf[this.address]:
                                                                revert with 0, 17
                                                            balanceOf[address(cd[4])] += balanceOf[this.address]
                                                            emit Transfer(balanceOf[this.address], this.address, address(cd[4]));
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args address(this.address), balanceOf[address(this.address)]
                                                            mem[0] = address(cd[4])
                                                            mem[32] = 0
                                                            require ext_code.size(dividendTrackerAddress)
                                                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args address(cd[4]), balanceOf[address(cd[4])]
                                                            if not ext_call.success:
                                                                if not ext_call.success:
                                                                    if not uint8(stor7.field_160):
                                                                        if uint8(stor7.field_176):
                                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                                 gas gas_remaining wei
                                                                                args gasForProcessing
                                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                            if ext_call.success:
                                                                                _22466 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 96
                                                                                _22844 = mem[_22466 + 32]
                                                                                _22845 = mem[_22466 + 64]
                                                                                mem[mem[64]] = mem[_22466]
                                                                                mem[mem[64] + 64] = _22845
                                                                                mem[mem[64] + 96] = gasForProcessing
                                                                                emit ProcessedDividendTracker(mem[mem[64]], _22844, _22845, gasForProcessing, 1, tx.origin);
                                                                else:
                                                                    if not uint8(stor7.field_160):
                                                                        if uint8(stor7.field_176):
                                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                                 gas gas_remaining wei
                                                                                args gasForProcessing
                                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                            if ext_call.success:
                                                                                _22654 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 96
                                                                                _23032 = mem[_22654 + 32]
                                                                                _23033 = mem[_22654 + 64]
                                                                                mem[mem[64]] = mem[_22654]
                                                                                mem[mem[64] + 64] = _23033
                                                                                mem[mem[64] + 96] = gasForProcessing
                                                                                emit ProcessedDividendTracker(mem[mem[64]], _23032, _23033, gasForProcessing, 1, tx.origin);
                                                            else:
                                                                if not ext_call.success:
                                                                    if not uint8(stor7.field_160):
                                                                        if uint8(stor7.field_176):
                                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                                 gas gas_remaining wei
                                                                                args gasForProcessing
                                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                            if ext_call.success:
                                                                                _22655 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 96
                                                                                _23035 = mem[_22655 + 32]
                                                                                _23036 = mem[_22655 + 64]
                                                                                mem[mem[64]] = mem[_22655]
                                                                                mem[mem[64] + 64] = _23036
                                                                                mem[mem[64] + 96] = gasForProcessing
                                                                                emit ProcessedDividendTracker(mem[mem[64]], _23035, _23036, gasForProcessing, 1, tx.origin);
                                                                else:
                                                                    if not uint8(stor7.field_160):
                                                                        if uint8(stor7.field_176):
                                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                                 gas gas_remaining wei
                                                                                args gasForProcessing
                                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                            if ext_call.success:
                                                                                _22846 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 96
                                                                                _23210 = mem[_22846 + 32]
                                                                                _23211 = mem[_22846 + 64]
                                                                                mem[mem[64]] = mem[_22846]
                                                                                mem[mem[64] + 64] = _23211
                                                                                mem[mem[64] + 96] = gasForProcessing
                                                                                emit ProcessedDividendTracker(mem[mem[64]], _23210, _23211, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if uint8(stor7.field_160):
                                                                if not this.address:
                                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                                if not address(cd[4]):
                                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                                if balanceOf[address(this.address)] < balanceOf[this.address]:
                                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                                balanceOf[address(this.address)] -= balanceOf[this.address]
                                                                if balanceOf[address(cd[4])] > !balanceOf[this.address]:
                                                                    revert with 0, 17
                                                                balanceOf[address(cd[4])] += balanceOf[this.address]
                                                                emit Transfer(balanceOf[this.address], this.address, address(cd[4]));
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args address(this.address), balanceOf[address(this.address)]
                                                                mem[0] = address(cd[4])
                                                                mem[32] = 0
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args address(cd[4]), balanceOf[address(cd[4])]
                                                                if not ext_call.success:
                                                                    if not ext_call.success:
                                                                        if not uint8(stor7.field_160):
                                                                            if uint8(stor7.field_176):
                                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                                     gas gas_remaining wei
                                                                                    args gasForProcessing
                                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                if ext_call.success:
                                                                                    _22280 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 96
                                                                                    _22651 = mem[_22280 + 32]
                                                                                    _22652 = mem[_22280 + 64]
                                                                                    mem[mem[64]] = mem[_22280]
                                                                                    mem[mem[64] + 64] = _22652
                                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                                    emit ProcessedDividendTracker(mem[mem[64]], _22651, _22652, gasForProcessing, 1, tx.origin);
                                                                    else:
                                                                        if not uint8(stor7.field_160):
                                                                            if uint8(stor7.field_176):
                                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                                     gas gas_remaining wei
                                                                                    args gasForProcessing
                                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                if ext_call.success:
                                                                                    _22462 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 96
                                                                                    _22838 = mem[_22462 + 32]
                                                                                    _22839 = mem[_22462 + 64]
                                                                                    mem[mem[64]] = mem[_22462]
                                                                                    mem[mem[64] + 64] = _22839
                                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                                    emit ProcessedDividendTracker(mem[mem[64]], _22838, _22839, gasForProcessing, 1, tx.origin);
                                                                else:
                                                                    if not ext_call.success:
                                                                        if not uint8(stor7.field_160):
                                                                            if uint8(stor7.field_176):
                                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                                     gas gas_remaining wei
                                                                                    args gasForProcessing
                                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                if ext_call.success:
                                                                                    _22463 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 96
                                                                                    _22841 = mem[_22463 + 32]
                                                                                    _22842 = mem[_22463 + 64]
                                                                                    mem[mem[64]] = mem[_22463]
                                                                                    mem[mem[64] + 64] = _22842
                                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                                    emit ProcessedDividendTracker(mem[mem[64]], _22841, _22842, gasForProcessing, 1, tx.origin);
                                                                    else:
                                                                        if not uint8(stor7.field_160):
                                                                            if uint8(stor7.field_176):
                                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                                     gas gas_remaining wei
                                                                                    args gasForProcessing
                                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                if ext_call.success:
                                                                                    _22653 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 96
                                                                                    _23029 = mem[_22653 + 32]
                                                                                    _23030 = mem[_22653 + 64]
                                                                                    mem[mem[64]] = mem[_22653]
                                                                                    mem[mem[64] + 64] = _23030
                                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                                    emit ProcessedDividendTracker(mem[mem[64]], _23029, _23030, gasForProcessing, 1, tx.origin);
                                                            else:
                                                                if balanceOf[this.address] and contractFee > -1 / balanceOf[this.address]:
                                                                    revert with 0, 17
                                                                if not this.address:
                                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                                if balanceOf[address(this.address)] < balanceOf[this.address] * contractFee / 1000:
                                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                                balanceOf[address(this.address)] -= balanceOf[this.address] * contractFee / 1000
                                                                if balanceOf[this.address] > !(balanceOf[this.address] * contractFee / 1000):
                                                                    revert with 0, 17
                                                                balanceOf[this.address] += balanceOf[this.address] * contractFee / 1000
                                                                emit Transfer((balanceOf[this.address] * contractFee / 1000), this.address, this.address);
                                                                if balanceOf[this.address] and sub_a14c80fb > -1 / balanceOf[this.address]:
                                                                    revert with 0, 17
                                                                if not this.address:
                                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                                if not deadAddress:
                                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                                if balanceOf[address(this.address)] < balanceOf[this.address] * sub_a14c80fb / 1000:
                                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                                balanceOf[address(this.address)] -= balanceOf[this.address] * sub_a14c80fb / 1000
                                                                if balanceOf[stor14] > !(balanceOf[this.address] * sub_a14c80fb / 1000):
                                                                    revert with 0, 17
                                                                balanceOf[stor14] += balanceOf[this.address] * sub_a14c80fb / 1000
                                                                emit Transfer((balanceOf[this.address] * sub_a14c80fb / 1000), this.address, deadAddress);
                                                                if balanceOf[this.address] < balanceOf[this.address] * contractFee / 1000:
                                                                    revert with 0, 17
                                                                if balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) < balanceOf[this.address] * sub_a14c80fb / 1000:
                                                                    revert with 0, 17
                                                                if not this.address:
                                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                                if not address(cd[4]):
                                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                                if balanceOf[address(this.address)] < balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) - (balanceOf[this.address] * sub_a14c80fb / 1000):
                                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                                balanceOf[address(this.address)] = balanceOf[address(this.address)] - balanceOf[this.address] + (balanceOf[this.address] * contractFee / 1000) + (balanceOf[this.address] * sub_a14c80fb / 1000)
                                                                if balanceOf[address(cd[4])] > !(balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) - (balanceOf[this.address] * sub_a14c80fb / 1000)):
                                                                    revert with 0, 17
                                                                balanceOf[address(cd[4])] = balanceOf[address(cd[4])] + balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) - (balanceOf[this.address] * sub_a14c80fb / 1000)
                                                                emit Transfer((balanceOf[this.address] - (balanceOf[this.address] * contractFee / 1000) - (balanceOf[this.address] * sub_a14c80fb / 1000)), this.address, address(cd[4]));
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args address(this.address), balanceOf[address(this.address)]
                                                                mem[0] = address(cd[4])
                                                                mem[32] = 0
                                                                require ext_code.size(dividendTrackerAddress)
                                                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args address(cd[4]), balanceOf[address(cd[4])]
                                                                if not ext_call.success:
                                                                    if not ext_call.success:
                                                                        if not uint8(stor7.field_160):
                                                                            if uint8(stor7.field_176):
                                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                                     gas gas_remaining wei
                                                                                    args gasForProcessing
                                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                if ext_call.success:
                                                                                    _24366 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 96
                                                                                    _24494 = mem[_24366 + 32]
                                                                                    _24495 = mem[_24366 + 64]
                                                                                    mem[mem[64]] = mem[_24366]
                                                                                    mem[mem[64] + 64] = _24495
                                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                                    emit ProcessedDividendTracker(mem[mem[64]], _24494, _24495, gasForProcessing, 1, tx.origin);
                                                                    else:
                                                                        if not uint8(stor7.field_160):
                                                                            if uint8(stor7.field_176):
                                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                                     gas gas_remaining wei
                                                                                    args gasForProcessing
                                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                if ext_call.success:
                                                                                    _24432 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 96
                                                                                    _24556 = mem[_24432 + 32]
                                                                                    _24557 = mem[_24432 + 64]
                                                                                    mem[mem[64]] = mem[_24432]
                                                                                    mem[mem[64] + 64] = _24557
                                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                                    emit ProcessedDividendTracker(mem[mem[64]], _24556, _24557, gasForProcessing, 1, tx.origin);
                                                                else:
                                                                    if not ext_call.success:
                                                                        if not uint8(stor7.field_160):
                                                                            if uint8(stor7.field_176):
                                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                                     gas gas_remaining wei
                                                                                    args gasForProcessing
                                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                if ext_call.success:
                                                                                    _24433 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 96
                                                                                    _24559 = mem[_24433 + 32]
                                                                                    _24560 = mem[_24433 + 64]
                                                                                    mem[mem[64]] = mem[_24433]
                                                                                    mem[mem[64] + 64] = _24560
                                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                                    emit ProcessedDividendTracker(mem[mem[64]], _24559, _24560, gasForProcessing, 1, tx.origin);
                                                                    else:
                                                                        if not uint8(stor7.field_160):
                                                                            if uint8(stor7.field_176):
                                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                                     gas gas_remaining wei
                                                                                    args gasForProcessing
                                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                if ext_call.success:
                                                                                    _24496 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 96
                                                                                    _24622 = mem[_24496 + 32]
                                                                                    _24623 = mem[_24496 + 64]
                                                                                    mem[mem[64]] = mem[_24496]
                                                                                    mem[mem[64] + 64] = _24623
                                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                                    emit ProcessedDividendTracker(mem[mem[64]], _24622, _24623, gasForProcessing, 1, tx.origin);
        if unknown_0x22b63a3e(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x1422650f(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x1422650f(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return bool(uint8(stor7.field_176))
                if unknown_0x1694505e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return uniswapV2RouterAddress
                if unknown_0x18160ddd(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return totalSupply
                require unknown_0x185eabad(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return sub_185eabad
            if uint32(call.func_hash) >> 224 != name():
                if unknown_0x0736dbe6(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_0736dbe6Address
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
        if unknown_0x2c1f5216(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x2c1f5216(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return dividendTrackerAddress
            if unknown_0x30bb4cff(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                staticcall dividendTrackerAddress.totalDividendsDistributed() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                return ext_call.return_data[0]
            if unknown_0x313ce567(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return 18
            require unknown_0x31e79db0(?????) == uint32(call.func_hash) >> 224
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
        if unknown_0x22b63a3e(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return bool(uint8(stor7.field_168))
        if uint32(call.func_hash) >> 224 != unknown_0x23b872dd(?????):
            if unknown_0x2688454a(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return UAddress
            require unknown_0x27c8f835(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            return deadAddress
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
            if stor25[address(cd[4])]:
                revert with 0, 'Blacklist buying restrictions'
            if not uint8(stor7.field_168):
                if stor23[address(cd[4])]:
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
                    if stor23[address(cd[36])]:
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
                        if uint8(stor7.field_160):
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
                            if cd[68] and contractFee > -1 / cd[68]:
                                revert with 0, 17
                            if not address(cd[4]):
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not this.address:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(cd[4])] < cd[68] * contractFee / 1000:
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(cd[4])] -= cd[68] * contractFee / 1000
                            if balanceOf[this.address] > !(cd[68] * contractFee / 1000):
                                revert with 0, 17
                            balanceOf[this.address] += cd[68] * contractFee / 1000
                            emit Transfer((cd[68] * contractFee / 1000), address(cd[4]), this.address);
                            if cd[68] and sub_a14c80fb > -1 / cd[68]:
                                revert with 0, 17
                            if not address(cd[4]):
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not deadAddress:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(cd[4])] < cd[68] * sub_a14c80fb / 1000:
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(cd[4])] -= cd[68] * sub_a14c80fb / 1000
                            if balanceOf[stor14] > !(cd[68] * sub_a14c80fb / 1000):
                                revert with 0, 17
                            balanceOf[stor14] += cd[68] * sub_a14c80fb / 1000
                            emit Transfer((cd[68] * sub_a14c80fb / 1000), address(cd[4]), deadAddress);
                            if cd[68] < cd[68] * contractFee / 1000:
                                revert with 0, 17
                            if cd[68] - (cd[68] * contractFee / 1000) < cd[68] * sub_a14c80fb / 1000:
                                revert with 0, 17
                            if not address(cd[4]):
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not address(cd[36]):
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(cd[4])] < cd[68] - (cd[68] * contractFee / 1000) - (cd[68] * sub_a14c80fb / 1000):
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * contractFee / 1000) + (cd[68] * sub_a14c80fb / 1000)
                            if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * contractFee / 1000) - (cd[68] * sub_a14c80fb / 1000)):
                                revert with 0, 17
                            balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * contractFee / 1000) - (cd[68] * sub_a14c80fb / 1000)
                            emit Transfer((cd[68] - (cd[68] * contractFee / 1000) - (cd[68] * sub_a14c80fb / 1000)), address(cd[4]), address(cd[36]));
                require ext_code.size(dividendTrackerAddress)
                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[4]), balanceOf[address(cd[4])]
                require ext_code.size(dividendTrackerAddress)
                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[36]), balanceOf[address(cd[36])]
                if not uint8(stor7.field_160):
                    if uint8(stor7.field_176):
                        call dividendTrackerAddress.process(uint256 arg1) with:
                             gas gas_remaining wei
                            args gasForProcessing
                        if ext_call.success:
                            require return_data.size >= 96
                            emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
            else:
                if balanceOf[this.address] < swapTokensAtAmount:
                    if stor23[address(cd[4])]:
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
                        if stor23[address(cd[36])]:
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
                            if uint8(stor7.field_160):
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
                                if cd[68] and contractFee > -1 / cd[68]:
                                    revert with 0, 17
                                if not address(cd[4]):
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(cd[4])] < cd[68] * contractFee / 1000:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(cd[4])] -= cd[68] * contractFee / 1000
                                if balanceOf[this.address] > !(cd[68] * contractFee / 1000):
                                    revert with 0, 17
                                balanceOf[this.address] += cd[68] * contractFee / 1000
                                emit Transfer((cd[68] * contractFee / 1000), address(cd[4]), this.address);
                                if cd[68] and sub_a14c80fb > -1 / cd[68]:
                                    revert with 0, 17
                                if not address(cd[4]):
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not deadAddress:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(cd[4])] < cd[68] * sub_a14c80fb / 1000:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(cd[4])] -= cd[68] * sub_a14c80fb / 1000
                                if balanceOf[stor14] > !(cd[68] * sub_a14c80fb / 1000):
                                    revert with 0, 17
                                balanceOf[stor14] += cd[68] * sub_a14c80fb / 1000
                                emit Transfer((cd[68] * sub_a14c80fb / 1000), address(cd[4]), deadAddress);
                                if cd[68] < cd[68] * contractFee / 1000:
                                    revert with 0, 17
                                if cd[68] - (cd[68] * contractFee / 1000) < cd[68] * sub_a14c80fb / 1000:
                                    revert with 0, 17
                                if not address(cd[4]):
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not address(cd[36]):
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(cd[4])] < cd[68] - (cd[68] * contractFee / 1000) - (cd[68] * sub_a14c80fb / 1000):
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * contractFee / 1000) + (cd[68] * sub_a14c80fb / 1000)
                                if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * contractFee / 1000) - (cd[68] * sub_a14c80fb / 1000)):
                                    revert with 0, 17
                                balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * contractFee / 1000) - (cd[68] * sub_a14c80fb / 1000)
                                emit Transfer((cd[68] - (cd[68] * contractFee / 1000) - (cd[68] * sub_a14c80fb / 1000)), address(cd[4]), address(cd[36]));
                    require ext_code.size(dividendTrackerAddress)
                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[4]), balanceOf[address(cd[4])]
                    require ext_code.size(dividendTrackerAddress)
                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[36]), balanceOf[address(cd[36])]
                    if not uint8(stor7.field_160):
                        if uint8(stor7.field_176):
                            call dividendTrackerAddress.process(uint256 arg1) with:
                                 gas gas_remaining wei
                                args gasForProcessing
                            if ext_call.success:
                                require return_data.size >= 96
                                emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                else:
                    if uint8(stor7.field_160):
                        if stor23[address(cd[4])]:
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
                            if stor23[address(cd[36])]:
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
                                if uint8(stor7.field_160):
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
                                    if cd[68] and contractFee > -1 / cd[68]:
                                        revert with 0, 17
                                    if not address(cd[4]):
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(cd[4])] < cd[68] * contractFee / 1000:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(cd[4])] -= cd[68] * contractFee / 1000
                                    if balanceOf[this.address] > !(cd[68] * contractFee / 1000):
                                        revert with 0, 17
                                    balanceOf[this.address] += cd[68] * contractFee / 1000
                                    emit Transfer((cd[68] * contractFee / 1000), address(cd[4]), this.address);
                                    if cd[68] and sub_a14c80fb > -1 / cd[68]:
                                        revert with 0, 17
                                    if not address(cd[4]):
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not deadAddress:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(cd[4])] < cd[68] * sub_a14c80fb / 1000:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(cd[4])] -= cd[68] * sub_a14c80fb / 1000
                                    if balanceOf[stor14] > !(cd[68] * sub_a14c80fb / 1000):
                                        revert with 0, 17
                                    balanceOf[stor14] += cd[68] * sub_a14c80fb / 1000
                                    emit Transfer((cd[68] * sub_a14c80fb / 1000), address(cd[4]), deadAddress);
                                    if cd[68] < cd[68] * contractFee / 1000:
                                        revert with 0, 17
                                    if cd[68] - (cd[68] * contractFee / 1000) < cd[68] * sub_a14c80fb / 1000:
                                        revert with 0, 17
                                    if not address(cd[4]):
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not address(cd[36]):
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(cd[4])] < cd[68] - (cd[68] * contractFee / 1000) - (cd[68] * sub_a14c80fb / 1000):
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * contractFee / 1000) + (cd[68] * sub_a14c80fb / 1000)
                                    if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * contractFee / 1000) - (cd[68] * sub_a14c80fb / 1000)):
                                        revert with 0, 17
                                    balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * contractFee / 1000) - (cd[68] * sub_a14c80fb / 1000)
                                    emit Transfer((cd[68] - (cd[68] * contractFee / 1000) - (cd[68] * sub_a14c80fb / 1000)), address(cd[4]), address(cd[36]));
                        require ext_code.size(dividendTrackerAddress)
                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(cd[4]), balanceOf[address(cd[4])]
                        require ext_code.size(dividendTrackerAddress)
                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(cd[36]), balanceOf[address(cd[36])]
                        if not uint8(stor7.field_160):
                            if uint8(stor7.field_176):
                                call dividendTrackerAddress.process(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args gasForProcessing
                                if ext_call.success:
                                    require return_data.size >= 96
                                    emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                    else:
                        if stor24[address(cd[4])]:
                            if stor23[address(cd[4])]:
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
                                if stor23[address(cd[36])]:
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
                                    if uint8(stor7.field_160):
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
                                        if cd[68] and contractFee > -1 / cd[68]:
                                            revert with 0, 17
                                        if not address(cd[4]):
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(cd[4])] < cd[68] * contractFee / 1000:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(cd[4])] -= cd[68] * contractFee / 1000
                                        if balanceOf[this.address] > !(cd[68] * contractFee / 1000):
                                            revert with 0, 17
                                        balanceOf[this.address] += cd[68] * contractFee / 1000
                                        emit Transfer((cd[68] * contractFee / 1000), address(cd[4]), this.address);
                                        if cd[68] and sub_a14c80fb > -1 / cd[68]:
                                            revert with 0, 17
                                        if not address(cd[4]):
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not deadAddress:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(cd[4])] < cd[68] * sub_a14c80fb / 1000:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(cd[4])] -= cd[68] * sub_a14c80fb / 1000
                                        if balanceOf[stor14] > !(cd[68] * sub_a14c80fb / 1000):
                                            revert with 0, 17
                                        balanceOf[stor14] += cd[68] * sub_a14c80fb / 1000
                                        emit Transfer((cd[68] * sub_a14c80fb / 1000), address(cd[4]), deadAddress);
                                        if cd[68] < cd[68] * contractFee / 1000:
                                            revert with 0, 17
                                        if cd[68] - (cd[68] * contractFee / 1000) < cd[68] * sub_a14c80fb / 1000:
                                            revert with 0, 17
                                        if not address(cd[4]):
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not address(cd[36]):
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(cd[4])] < cd[68] - (cd[68] * contractFee / 1000) - (cd[68] * sub_a14c80fb / 1000):
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * contractFee / 1000) + (cd[68] * sub_a14c80fb / 1000)
                                        if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * contractFee / 1000) - (cd[68] * sub_a14c80fb / 1000)):
                                            revert with 0, 17
                                        balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * contractFee / 1000) - (cd[68] * sub_a14c80fb / 1000)
                                        emit Transfer((cd[68] - (cd[68] * contractFee / 1000) - (cd[68] * sub_a14c80fb / 1000)), address(cd[4]), address(cd[36]));
                            require ext_code.size(dividendTrackerAddress)
                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(cd[4]), balanceOf[address(cd[4])]
                            require ext_code.size(dividendTrackerAddress)
                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(cd[36]), balanceOf[address(cd[36])]
                            if not uint8(stor7.field_160):
                                if uint8(stor7.field_176):
                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args gasForProcessing
                                    if ext_call.success:
                                        require return_data.size >= 96
                                        emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                        else:
                            if owner == address(cd[4]):
                                if stor23[address(cd[4])]:
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
                                    if stor23[address(cd[36])]:
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
                                        if uint8(stor7.field_160):
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
                                            if cd[68] and contractFee > -1 / cd[68]:
                                                revert with 0, 17
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(cd[4])] < cd[68] * contractFee / 1000:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(cd[4])] -= cd[68] * contractFee / 1000
                                            if balanceOf[this.address] > !(cd[68] * contractFee / 1000):
                                                revert with 0, 17
                                            balanceOf[this.address] += cd[68] * contractFee / 1000
                                            emit Transfer((cd[68] * contractFee / 1000), address(cd[4]), this.address);
                                            if cd[68] and sub_a14c80fb > -1 / cd[68]:
                                                revert with 0, 17
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not deadAddress:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(cd[4])] < cd[68] * sub_a14c80fb / 1000:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(cd[4])] -= cd[68] * sub_a14c80fb / 1000
                                            if balanceOf[stor14] > !(cd[68] * sub_a14c80fb / 1000):
                                                revert with 0, 17
                                            balanceOf[stor14] += cd[68] * sub_a14c80fb / 1000
                                            emit Transfer((cd[68] * sub_a14c80fb / 1000), address(cd[4]), deadAddress);
                                            if cd[68] < cd[68] * contractFee / 1000:
                                                revert with 0, 17
                                            if cd[68] - (cd[68] * contractFee / 1000) < cd[68] * sub_a14c80fb / 1000:
                                                revert with 0, 17
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(cd[36]):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(cd[4])] < cd[68] - (cd[68] * contractFee / 1000) - (cd[68] * sub_a14c80fb / 1000):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * contractFee / 1000) + (cd[68] * sub_a14c80fb / 1000)
                                            if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * contractFee / 1000) - (cd[68] * sub_a14c80fb / 1000)):
                                                revert with 0, 17
                                            balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * contractFee / 1000) - (cd[68] * sub_a14c80fb / 1000)
                                            emit Transfer((cd[68] - (cd[68] * contractFee / 1000) - (cd[68] * sub_a14c80fb / 1000)), address(cd[4]), address(cd[36]));
                                require ext_code.size(dividendTrackerAddress)
                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(cd[4]), balanceOf[address(cd[4])]
                                require ext_code.size(dividendTrackerAddress)
                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(cd[36]), balanceOf[address(cd[36])]
                                if not uint8(stor7.field_160):
                                    if uint8(stor7.field_176):
                                        call dividendTrackerAddress.process(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args gasForProcessing
                                        if ext_call.success:
                                            require return_data.size >= 96
                                            emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                            else:
                                if owner == address(cd[36]):
                                    if stor23[address(cd[4])]:
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
                                        if stor23[address(cd[36])]:
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
                                            if uint8(stor7.field_160):
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
                                                if cd[68] and contractFee > -1 / cd[68]:
                                                    revert with 0, 17
                                                if not address(cd[4]):
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not this.address:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(cd[4])] < cd[68] * contractFee / 1000:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(cd[4])] -= cd[68] * contractFee / 1000
                                                if balanceOf[this.address] > !(cd[68] * contractFee / 1000):
                                                    revert with 0, 17
                                                balanceOf[this.address] += cd[68] * contractFee / 1000
                                                emit Transfer((cd[68] * contractFee / 1000), address(cd[4]), this.address);
                                                if cd[68] and sub_a14c80fb > -1 / cd[68]:
                                                    revert with 0, 17
                                                if not address(cd[4]):
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not deadAddress:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(cd[4])] < cd[68] * sub_a14c80fb / 1000:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(cd[4])] -= cd[68] * sub_a14c80fb / 1000
                                                if balanceOf[stor14] > !(cd[68] * sub_a14c80fb / 1000):
                                                    revert with 0, 17
                                                balanceOf[stor14] += cd[68] * sub_a14c80fb / 1000
                                                emit Transfer((cd[68] * sub_a14c80fb / 1000), address(cd[4]), deadAddress);
                                                if cd[68] < cd[68] * contractFee / 1000:
                                                    revert with 0, 17
                                                if cd[68] - (cd[68] * contractFee / 1000) < cd[68] * sub_a14c80fb / 1000:
                                                    revert with 0, 17
                                                if not address(cd[4]):
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not address(cd[36]):
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(cd[4])] < cd[68] - (cd[68] * contractFee / 1000) - (cd[68] * sub_a14c80fb / 1000):
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * contractFee / 1000) + (cd[68] * sub_a14c80fb / 1000)
                                                if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * contractFee / 1000) - (cd[68] * sub_a14c80fb / 1000)):
                                                    revert with 0, 17
                                                balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * contractFee / 1000) - (cd[68] * sub_a14c80fb / 1000)
                                                emit Transfer((cd[68] - (cd[68] * contractFee / 1000) - (cd[68] * sub_a14c80fb / 1000)), address(cd[4]), address(cd[36]));
                                    require ext_code.size(dividendTrackerAddress)
                                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(cd[4]), balanceOf[address(cd[4])]
                                    require ext_code.size(dividendTrackerAddress)
                                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(cd[36]), balanceOf[address(cd[36])]
                                    if not uint8(stor7.field_160):
                                        if uint8(stor7.field_176):
                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args gasForProcessing
                                            if ext_call.success:
                                                require return_data.size >= 96
                                                emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
                                else:
                                    uint8(stor7.field_160) = 1
                                    if balanceOf[this.address] and sub_89d3e27b > -1 / balanceOf[this.address]:
                                        revert with 0, 17
                                    if not contractFee:
                                        revert with 0, 18
                                    mem[128] = 2
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
                                    allowance[address(this.address)][stor6].field_0 = balanceOf[this.address] * sub_89d3e27b / contractFee
                                    emit Approval((balanceOf[this.address] * sub_89d3e27b / contractFee), this.address, uniswapV2RouterAddress);
                                    mem[ceil32(return_data.size) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 228] = balanceOf[this.address] * sub_89d3e27b / contractFee
                                    mem[ceil32(return_data.size) + 388] = 2
                                    idx = 0
                                    s = ceil32(return_data.size) + 420
                                    t = 160
                                    while idx < 2:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[ceil32(return_data.size) + 324] = sub_68b8df5cAddress
                                    mem[ceil32(return_data.size) + 356] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[this.address] * sub_89d3e27b / contractFee, 0, 160, sub_68b8df5cAddress, block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if balanceOf[this.address] and sub_185eabad > -1 / balanceOf[this.address]:
                                        revert with 0, 17
                                    if not contractFee:
                                        revert with 0, 18
                                    mem[ceil32(return_data.size) + 224] = 2
                                    mem[ceil32(return_data.size) + 256] = this.address
                                    staticcall uniswapV2RouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    mem[ceil32(return_data.size) + 320] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 320
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 288] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    mem[0] = uniswapV2RouterAddress
                                    mem[32] = sha3(address(this.address), 1)
                                    allowance[address(this.address)][stor6].field_0 = balanceOf[this.address] * sub_185eabad / contractFee
                                    emit Approval((balanceOf[this.address] * sub_185eabad / contractFee), this.address, uniswapV2RouterAddress);
                                    mem[(2 * ceil32(return_data.size)) + 320] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 324] = balanceOf[this.address] * sub_185eabad / contractFee
                                    mem[(2 * ceil32(return_data.size)) + 356] = 0
                                    mem[(2 * ceil32(return_data.size)) + 388] = 160
                                    mem[(2 * ceil32(return_data.size)) + 484] = 2
                                    idx = 0
                                    s = (2 * ceil32(return_data.size)) + 516
                                    t = ceil32(return_data.size) + 256
                                    while idx < mem[ceil32(return_data.size) + 224]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(2 * ceil32(return_data.size)) + 420] = sub_0736dbe6Address
                                    mem[(2 * ceil32(return_data.size)) + 452] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[this.address] * sub_185eabad / contractFee, 0, 160, sub_0736dbe6Address, block.timestamp, mem[(2 * ceil32(return_data.size)) + 484 len (32 * mem[ceil32(return_data.size) + 224]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if balanceOf[this.address] and sub_b23492b1 > -1 / balanceOf[this.address]:
                                        revert with 0, 17
                                    if not contractFee:
                                        revert with 0, 18
                                    if balanceOf[this.address] * sub_b23492b1 / contractFee < balanceOf[this.address] * sub_b23492b1 / contractFee / 2:
                                        revert with 0, 17
                                    mem[(2 * ceil32(return_data.size)) + 320] = 2
                                    mem[(2 * ceil32(return_data.size)) + 352] = this.address
                                    staticcall uniswapV2RouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    mem[(2 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = (4 * ceil32(return_data.size)) + 416
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(2 * ceil32(return_data.size)) + 384] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    mem[0] = uniswapV2RouterAddress
                                    mem[32] = sha3(address(this.address), 1)
                                    allowance[address(this.address)][stor6].field_0 = balanceOf[this.address] * sub_b23492b1 / contractFee / 2
                                    allowance[address(this.address)][stor6].field_255 = 0
                                    emit Approval((balanceOf[this.address] * sub_b23492b1 / contractFee / 2), this.address, uniswapV2RouterAddress);
                                    mem[(4 * ceil32(return_data.size)) + 416] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 420] = balanceOf[this.address] * sub_b23492b1 / contractFee / 2
                                    mem[(4 * ceil32(return_data.size)) + 452] = 0
                                    mem[(4 * ceil32(return_data.size)) + 484] = 160
                                    mem[(4 * ceil32(return_data.size)) + 580] = 2
                                    idx = 0
                                    s = (4 * ceil32(return_data.size)) + 612
                                    t = (2 * ceil32(return_data.size)) + 352
                                    while idx < mem[(2 * ceil32(return_data.size)) + 320]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(4 * ceil32(return_data.size)) + 516] = this.address
                                    mem[(4 * ceil32(return_data.size)) + 548] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + 320]) + -mem[64] + 608]
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
                                    allowance[address(this.address)][stor6].field_0 = (balanceOf[this.address] * sub_b23492b1 / contractFee) - (balanceOf[this.address] * sub_b23492b1 / contractFee / 2)
                                    emit Approval(((balanceOf[this.address] * sub_b23492b1 / contractFee) - (balanceOf[this.address] * sub_b23492b1 / contractFee / 2)), this.address, uniswapV2RouterAddress);
                                    mem[mem[64] + 68] = 0
                                    mem[mem[64] + 100] = 0
                                    mem[mem[64] + 132] = sub_a23b2534Address
                                    mem[mem[64] + 164] = block.timestamp
                                    call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                         gas gas_remaining wei
                                        args this.address, (balanceOf[this.address] * sub_b23492b1 / contractFee) - (balanceOf[this.address] * sub_b23492b1 / contractFee / 2), 0, 0, sub_a23b2534Address, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    mem[mem[64] + 32] = 0
                                    mem[mem[64] + 64] = (balanceOf[this.address] * sub_b23492b1 / contractFee) - (balanceOf[this.address] * sub_b23492b1 / contractFee / 2)
                                    emit SwapAndLiquify(Mask(255, 1, balanceOf[this.address] * sub_b23492b1 / contractFee), 0, (balanceOf[this.address] * sub_b23492b1 / contractFee) - (balanceOf[this.address] * sub_b23492b1 / contractFee / 2));
                                    mem[0] = this.address
                                    mem[32] = 0
                                    _17928 = mem[64]
                                    mem[mem[64]] = 4
                                    mem[64] = mem[64] + 160
                                    mem[_17928 + 32 len 128] = call.data[calldata.size len 128]
                                    if 0 >= mem[_17928]:
                                        revert with 0, 50
                                    mem[_17928 + 32] = this.address
                                    staticcall uniswapV2RouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    mem[_17928 + 160] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _17928 + ceil32(return_data.size) + 160
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 1 >= mem[_17928]:
                                        revert with 0, 50
                                    mem[_17928 + 64] = ext_call.return_data[12 len 20]
                                    if 2 >= mem[_17928]:
                                        revert with 0, 50
                                    mem[_17928 + 96] = UAddress
                                    if 3 >= mem[_17928]:
                                        revert with 0, 50
                                    mem[_17928 + 128] = rewardTokenAddress
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    mem[0] = uniswapV2RouterAddress
                                    mem[32] = sha3(address(this.address), 1)
                                    allowance[address(this.address)][stor6].field_0 = balanceOf[this.address]
                                    emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                    mem[_17928 + ceil32(return_data.size) + 160] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[_17928 + ceil32(return_data.size) + 164] = balanceOf[this.address]
                                    mem[_17928 + ceil32(return_data.size) + 196] = 0
                                    mem[_17928 + ceil32(return_data.size) + 228] = 160
                                    mem[_17928 + ceil32(return_data.size) + 324] = mem[_17928]
                                    idx = 0
                                    s = _17928 + ceil32(return_data.size) + 356
                                    t = _17928 + 32
                                    while idx < mem[_17928]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_17928 + ceil32(return_data.size) + 260] = this.address
                                    mem[_17928 + ceil32(return_data.size) + 292] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _17928 + ceil32(return_data.size) + (32 * mem[_17928]) + -mem[64] + 352]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    staticcall rewardTokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    _21475 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _21478 = mem[_21475]
                                    mem[mem[64] + 4] = dividendTrackerAddress
                                    mem[mem[64] + 36] = _21478
                                    call rewardTokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args dividendTrackerAddress, _21478
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _21487 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_21487] == bool(mem[_21487])
                                    if not mem[_21487]:
                                        uint8(stor7.field_160) = 0
                                        if stor23[address(cd[4])]:
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
                                                    if not uint8(stor7.field_160):
                                                        if uint8(stor7.field_176):
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _21952 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _22084 = mem[_21952 + 32]
                                                                _22085 = mem[_21952 + 64]
                                                                mem[mem[64]] = mem[_21952]
                                                                mem[mem[64] + 64] = _22085
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _22084, _22085, gasForProcessing, 1, tx.origin);
                                                else:
                                                    if not uint8(stor7.field_160):
                                                        if uint8(stor7.field_176):
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _22008 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _22190 = mem[_22008 + 32]
                                                                _22191 = mem[_22008 + 64]
                                                                mem[mem[64]] = mem[_22008]
                                                                mem[mem[64] + 64] = _22191
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _22190, _22191, gasForProcessing, 1, tx.origin);
                                            else:
                                                if not ext_call.success:
                                                    if not uint8(stor7.field_160):
                                                        if uint8(stor7.field_176):
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _22012 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _22195 = mem[_22012 + 32]
                                                                _22196 = mem[_22012 + 64]
                                                                mem[mem[64]] = mem[_22012]
                                                                mem[mem[64] + 64] = _22196
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _22195, _22196, gasForProcessing, 1, tx.origin);
                                                else:
                                                    if not uint8(stor7.field_160):
                                                        if uint8(stor7.field_176):
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _22093 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _22357 = mem[_22093 + 32]
                                                                _22358 = mem[_22093 + 64]
                                                                mem[mem[64]] = mem[_22093]
                                                                mem[mem[64] + 64] = _22358
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _22357, _22358, gasForProcessing, 1, tx.origin);
                                        else:
                                            if stor23[address(cd[36])]:
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
                                                        if not uint8(stor7.field_160):
                                                            if uint8(stor7.field_176):
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _22034 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _22221 = mem[_22034 + 32]
                                                                    _22222 = mem[_22034 + 64]
                                                                    mem[mem[64]] = mem[_22034]
                                                                    mem[mem[64] + 64] = _22222
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _22221, _22222, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not uint8(stor7.field_160):
                                                            if uint8(stor7.field_176):
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _22112 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _22397 = mem[_22112 + 32]
                                                                    _22398 = mem[_22112 + 64]
                                                                    mem[mem[64]] = mem[_22112]
                                                                    mem[mem[64] + 64] = _22398
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _22397, _22398, gasForProcessing, 1, tx.origin);
                                                else:
                                                    if not ext_call.success:
                                                        if not uint8(stor7.field_160):
                                                            if uint8(stor7.field_176):
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _22116 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _22402 = mem[_22116 + 32]
                                                                    _22403 = mem[_22116 + 64]
                                                                    mem[mem[64]] = mem[_22116]
                                                                    mem[mem[64] + 64] = _22403
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _22402, _22403, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not uint8(stor7.field_160):
                                                            if uint8(stor7.field_176):
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _22230 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _22597 = mem[_22230 + 32]
                                                                    _22598 = mem[_22230 + 64]
                                                                    mem[mem[64]] = mem[_22230]
                                                                    mem[mem[64] + 64] = _22598
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _22597, _22598, gasForProcessing, 1, tx.origin);
                                            else:
                                                if uint8(stor7.field_160):
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
                                                            if not uint8(stor7.field_160):
                                                                if uint8(stor7.field_176):
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _21964 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _22097 = mem[_21964 + 32]
                                                                        _22098 = mem[_21964 + 64]
                                                                        mem[mem[64]] = mem[_21964]
                                                                        mem[mem[64] + 64] = _22098
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _22097, _22098, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not uint8(stor7.field_160):
                                                                if uint8(stor7.field_176):
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _22022 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _22209 = mem[_22022 + 32]
                                                                        _22210 = mem[_22022 + 64]
                                                                        mem[mem[64]] = mem[_22022]
                                                                        mem[mem[64] + 64] = _22210
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _22209, _22210, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not ext_call.success:
                                                            if not uint8(stor7.field_160):
                                                                if uint8(stor7.field_176):
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _22026 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _22214 = mem[_22026 + 32]
                                                                        _22215 = mem[_22026 + 64]
                                                                        mem[mem[64]] = mem[_22026]
                                                                        mem[mem[64] + 64] = _22215
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _22214, _22215, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not uint8(stor7.field_160):
                                                                if uint8(stor7.field_176):
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _22106 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _22385 = mem[_22106 + 32]
                                                                        _22386 = mem[_22106 + 64]
                                                                        mem[mem[64]] = mem[_22106]
                                                                        mem[mem[64] + 64] = _22386
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _22385, _22386, gasForProcessing, 1, tx.origin);
                                                else:
                                                    if cd[68] and contractFee > -1 / cd[68]:
                                                        revert with 0, 17
                                                    if not address(cd[4]):
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(cd[4])] < cd[68] * contractFee / 1000:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(cd[4])] -= cd[68] * contractFee / 1000
                                                    if balanceOf[this.address] > !(cd[68] * contractFee / 1000):
                                                        revert with 0, 17
                                                    balanceOf[this.address] += cd[68] * contractFee / 1000
                                                    emit Transfer((cd[68] * contractFee / 1000), address(cd[4]), this.address);
                                                    if cd[68] and sub_a14c80fb > -1 / cd[68]:
                                                        revert with 0, 17
                                                    if not address(cd[4]):
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not deadAddress:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(cd[4])] < cd[68] * sub_a14c80fb / 1000:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(cd[4])] -= cd[68] * sub_a14c80fb / 1000
                                                    if balanceOf[stor14] > !(cd[68] * sub_a14c80fb / 1000):
                                                        revert with 0, 17
                                                    balanceOf[stor14] += cd[68] * sub_a14c80fb / 1000
                                                    emit Transfer((cd[68] * sub_a14c80fb / 1000), address(cd[4]), deadAddress);
                                                    if cd[68] < cd[68] * contractFee / 1000:
                                                        revert with 0, 17
                                                    if cd[68] - (cd[68] * contractFee / 1000) < cd[68] * sub_a14c80fb / 1000:
                                                        revert with 0, 17
                                                    if not address(cd[4]):
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not address(cd[36]):
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(cd[4])] < cd[68] - (cd[68] * contractFee / 1000) - (cd[68] * sub_a14c80fb / 1000):
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * contractFee / 1000) + (cd[68] * sub_a14c80fb / 1000)
                                                    if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * contractFee / 1000) - (cd[68] * sub_a14c80fb / 1000)):
                                                        revert with 0, 17
                                                    balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * contractFee / 1000) - (cd[68] * sub_a14c80fb / 1000)
                                                    emit Transfer((cd[68] - (cd[68] * contractFee / 1000) - (cd[68] * sub_a14c80fb / 1000)), address(cd[4]), address(cd[36]));
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
                                                            if not uint8(stor7.field_160):
                                                                if uint8(stor7.field_176):
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _24248 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _24297 = mem[_24248 + 32]
                                                                        _24298 = mem[_24248 + 64]
                                                                        mem[mem[64]] = mem[_24248]
                                                                        mem[mem[64] + 64] = _24298
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _24297, _24298, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not uint8(stor7.field_160):
                                                                if uint8(stor7.field_176):
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _24273 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _24339 = mem[_24273 + 32]
                                                                        _24340 = mem[_24273 + 64]
                                                                        mem[mem[64]] = mem[_24273]
                                                                        mem[mem[64] + 64] = _24340
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _24339, _24340, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not ext_call.success:
                                                            if not uint8(stor7.field_160):
                                                                if uint8(stor7.field_176):
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _24277 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _24344 = mem[_24277 + 32]
                                                                        _24345 = mem[_24277 + 64]
                                                                        mem[mem[64]] = mem[_24277]
                                                                        mem[mem[64] + 64] = _24345
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _24344, _24345, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not uint8(stor7.field_160):
                                                                if uint8(stor7.field_176):
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _24306 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _24413 = mem[_24306 + 32]
                                                                        _24414 = mem[_24306 + 64]
                                                                        mem[mem[64]] = mem[_24306]
                                                                        mem[mem[64] + 64] = _24414
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _24413, _24414, gasForProcessing, 1, tx.origin);
                                    else:
                                        require ext_code.size(dividendTrackerAddress)
                                        call dividendTrackerAddress.distributeCAKEDividends(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args _21478
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit SendDividends(balanceOf[this.address], _21478);
                                        uint8(stor7.field_160) = 0
                                        if stor23[address(cd[4])]:
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
                                                    if not uint8(stor7.field_160):
                                                        if uint8(stor7.field_176):
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _22234 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _22602 = mem[_22234 + 32]
                                                                _22603 = mem[_22234 + 64]
                                                                mem[mem[64]] = mem[_22234]
                                                                mem[mem[64] + 64] = _22603
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _22602, _22603, gasForProcessing, 1, tx.origin);
                                                else:
                                                    if not uint8(stor7.field_160):
                                                        if uint8(stor7.field_176):
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _22411 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _22780 = mem[_22411 + 32]
                                                                _22781 = mem[_22411 + 64]
                                                                mem[mem[64]] = mem[_22411]
                                                                mem[mem[64] + 64] = _22781
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _22780, _22781, gasForProcessing, 1, tx.origin);
                                            else:
                                                if not ext_call.success:
                                                    if not uint8(stor7.field_160):
                                                        if uint8(stor7.field_176):
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _22415 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _22785 = mem[_22415 + 32]
                                                                _22786 = mem[_22415 + 64]
                                                                mem[mem[64]] = mem[_22415]
                                                                mem[mem[64] + 64] = _22786
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _22785, _22786, gasForProcessing, 1, tx.origin);
                                                else:
                                                    if not uint8(stor7.field_160):
                                                        if uint8(stor7.field_176):
                                                            call dividendTrackerAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args gasForProcessing
                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                            if ext_call.success:
                                                                _22611 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 96
                                                                _22968 = mem[_22611 + 32]
                                                                _22969 = mem[_22611 + 64]
                                                                mem[mem[64]] = mem[_22611]
                                                                mem[mem[64] + 64] = _22969
                                                                mem[mem[64] + 96] = gasForProcessing
                                                                emit ProcessedDividendTracker(mem[mem[64]], _22968, _22969, gasForProcessing, 1, tx.origin);
                                        else:
                                            if stor23[address(cd[36])]:
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
                                                        if not uint8(stor7.field_160):
                                                            if uint8(stor7.field_176):
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _22437 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _22811 = mem[_22437 + 32]
                                                                    _22812 = mem[_22437 + 64]
                                                                    mem[mem[64]] = mem[_22437]
                                                                    mem[mem[64] + 64] = _22812
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _22811, _22812, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not uint8(stor7.field_160):
                                                            if uint8(stor7.field_176):
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _22630 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _23008 = mem[_22630 + 32]
                                                                    _23009 = mem[_22630 + 64]
                                                                    mem[mem[64]] = mem[_22630]
                                                                    mem[mem[64] + 64] = _23009
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _23008, _23009, gasForProcessing, 1, tx.origin);
                                                else:
                                                    if not ext_call.success:
                                                        if not uint8(stor7.field_160):
                                                            if uint8(stor7.field_176):
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _22634 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _23013 = mem[_22634 + 32]
                                                                    _23014 = mem[_22634 + 64]
                                                                    mem[mem[64]] = mem[_22634]
                                                                    mem[mem[64] + 64] = _23014
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _23013, _23014, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not uint8(stor7.field_160):
                                                            if uint8(stor7.field_176):
                                                                call dividendTrackerAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args gasForProcessing
                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                if ext_call.success:
                                                                    _22820 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 96
                                                                    _23201 = mem[_22820 + 32]
                                                                    _23202 = mem[_22820 + 64]
                                                                    mem[mem[64]] = mem[_22820]
                                                                    mem[mem[64] + 64] = _23202
                                                                    mem[mem[64] + 96] = gasForProcessing
                                                                    emit ProcessedDividendTracker(mem[mem[64]], _23201, _23202, gasForProcessing, 1, tx.origin);
                                            else:
                                                if uint8(stor7.field_160):
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
                                                            if not uint8(stor7.field_160):
                                                                if uint8(stor7.field_176):
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _22246 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _22615 = mem[_22246 + 32]
                                                                        _22616 = mem[_22246 + 64]
                                                                        mem[mem[64]] = mem[_22246]
                                                                        mem[mem[64] + 64] = _22616
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _22615, _22616, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not uint8(stor7.field_160):
                                                                if uint8(stor7.field_176):
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _22425 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _22799 = mem[_22425 + 32]
                                                                        _22800 = mem[_22425 + 64]
                                                                        mem[mem[64]] = mem[_22425]
                                                                        mem[mem[64] + 64] = _22800
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _22799, _22800, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not ext_call.success:
                                                            if not uint8(stor7.field_160):
                                                                if uint8(stor7.field_176):
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _22429 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _22804 = mem[_22429 + 32]
                                                                        _22805 = mem[_22429 + 64]
                                                                        mem[mem[64]] = mem[_22429]
                                                                        mem[mem[64] + 64] = _22805
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _22804, _22805, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not uint8(stor7.field_160):
                                                                if uint8(stor7.field_176):
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _22624 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _22996 = mem[_22624 + 32]
                                                                        _22997 = mem[_22624 + 64]
                                                                        mem[mem[64]] = mem[_22624]
                                                                        mem[mem[64] + 64] = _22997
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _22996, _22997, gasForProcessing, 1, tx.origin);
                                                else:
                                                    if cd[68] and contractFee > -1 / cd[68]:
                                                        revert with 0, 17
                                                    if not address(cd[4]):
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(cd[4])] < cd[68] * contractFee / 1000:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(cd[4])] -= cd[68] * contractFee / 1000
                                                    if balanceOf[this.address] > !(cd[68] * contractFee / 1000):
                                                        revert with 0, 17
                                                    balanceOf[this.address] += cd[68] * contractFee / 1000
                                                    emit Transfer((cd[68] * contractFee / 1000), address(cd[4]), this.address);
                                                    if cd[68] and sub_a14c80fb > -1 / cd[68]:
                                                        revert with 0, 17
                                                    if not address(cd[4]):
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not deadAddress:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(cd[4])] < cd[68] * sub_a14c80fb / 1000:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(cd[4])] -= cd[68] * sub_a14c80fb / 1000
                                                    if balanceOf[stor14] > !(cd[68] * sub_a14c80fb / 1000):
                                                        revert with 0, 17
                                                    balanceOf[stor14] += cd[68] * sub_a14c80fb / 1000
                                                    emit Transfer((cd[68] * sub_a14c80fb / 1000), address(cd[4]), deadAddress);
                                                    if cd[68] < cd[68] * contractFee / 1000:
                                                        revert with 0, 17
                                                    if cd[68] - (cd[68] * contractFee / 1000) < cd[68] * sub_a14c80fb / 1000:
                                                        revert with 0, 17
                                                    if not address(cd[4]):
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not address(cd[36]):
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(cd[4])] < cd[68] - (cd[68] * contractFee / 1000) - (cd[68] * sub_a14c80fb / 1000):
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(cd[4])] = balanceOf[address(cd[4])] - cd[68] + (cd[68] * contractFee / 1000) + (cd[68] * sub_a14c80fb / 1000)
                                                    if balanceOf[address(cd[36])] > !(cd[68] - (cd[68] * contractFee / 1000) - (cd[68] * sub_a14c80fb / 1000)):
                                                        revert with 0, 17
                                                    balanceOf[address(cd[36])] = balanceOf[address(cd[36])] + cd[68] - (cd[68] * contractFee / 1000) - (cd[68] * sub_a14c80fb / 1000)
                                                    emit Transfer((cd[68] - (cd[68] * contractFee / 1000) - (cd[68] * sub_a14c80fb / 1000)), address(cd[4]), address(cd[36]));
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
                                                            if not uint8(stor7.field_160):
                                                                if uint8(stor7.field_176):
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _24351 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _24481 = mem[_24351 + 32]
                                                                        _24482 = mem[_24351 + 64]
                                                                        mem[mem[64]] = mem[_24351]
                                                                        mem[mem[64] + 64] = _24482
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _24481, _24482, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not uint8(stor7.field_160):
                                                                if uint8(stor7.field_176):
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _24420 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _24542 = mem[_24420 + 32]
                                                                        _24543 = mem[_24420 + 64]
                                                                        mem[mem[64]] = mem[_24420]
                                                                        mem[mem[64] + 64] = _24543
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _24542, _24543, gasForProcessing, 1, tx.origin);
                                                    else:
                                                        if not ext_call.success:
                                                            if not uint8(stor7.field_160):
                                                                if uint8(stor7.field_176):
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _24424 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _24547 = mem[_24424 + 32]
                                                                        _24548 = mem[_24424 + 64]
                                                                        mem[mem[64]] = mem[_24424]
                                                                        mem[mem[64] + 64] = _24548
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _24547, _24548, gasForProcessing, 1, tx.origin);
                                                        else:
                                                            if not uint8(stor7.field_160):
                                                                if uint8(stor7.field_176):
                                                                    call dividendTrackerAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args gasForProcessing
                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                    if ext_call.success:
                                                                        _24490 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 96
                                                                        _24617 = mem[_24490 + 32]
                                                                        _24618 = mem[_24490 + 64]
                                                                        mem[mem[64]] = mem[_24490]
                                                                        mem[mem[64] + 64] = _24618
                                                                        mem[mem[64] + 96] = gasForProcessing
                                                                        emit ProcessedDividendTracker(mem[mem[64]], _24617, _24618, gasForProcessing, 1, tx.origin);
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
