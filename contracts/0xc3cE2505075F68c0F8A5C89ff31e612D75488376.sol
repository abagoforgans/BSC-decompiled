contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
uint8 decimals;
address stor5;
address owner; offset 8
address uniswapV2RouterAddress;
address sub_61066fdfAddress;
address uniswapV2PairAddress;
address marketingWalletAddress;
address teamWalletAddress;
address sub_4ec39ba9Address;
address sub_29dcfcfdAddress;
uint8 sub_300425be; offset 160
uint8 sub_a84fc2df; offset 168
uint8 sub_b6c0f672; offset 176
uint8 swapAndLiquifyEnabled; offset 184
uint8 sub_96909799; offset 192
uint8 sub_b52d00b8; offset 200
uint8 marketActive; offset 208
uint8 sub_5b3c6e01; offset 216
uint8 sub_1a29c9d3; offset 224
uint8 sub_6d052ede; offset 232
uint8 feeStatus; offset 240
uint8 sub_e76ad1f1; offset 248
uint16 stor13; offset 240
uint32 stor13; offset 232
uint64 stor13; offset 216
uint64 stor13; offset 208
uint64 stor13; offset 200
uint64 stor13; offset 192
uint128 stor13; offset 184
uint128 stor13; offset 176
address deadWalletAddress;
uint8 sub_8ef71b1c;
uint256 sub_bf2e92c6;
uint256 sub_5c67ed9c;
uint256 sub_a87e5da4;
uint256 sub_d851fd0d;
uint256 minimumTokensBeforeSwap;
uint256 sub_272ecbb3;
uint256 sub_2b893929;
uint256 sub_652bcb2f;
uint256 sub_ecc5e2c3;
uint256 sub_1d38ff96;
uint256 sub_19998bbb;
uint256 marketingBuyFee;
uint256 marketingSellFee;
uint256 sub_8073f8b3;
uint256 sub_cd90ee89;
uint256 totalBuyFees;
uint256 totalSellFees;
uint256 gasForProcessing;
uint256 maxWallet;
uint256 stor35;
mapping of uint8 stor36;
mapping of uint8 stor37;
mapping of uint8 stor38;
mapping of uint256 sub_bda258e4;

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function totalSupply() {
    return totalSupply
}

function sub_19998bbb(?) {
    return sub_19998bbb
}

function sub_1a29c9d3(?) {
    return bool(sub_1a29c9d3)
}

function sub_1d38ff96(?) {
    return sub_1d38ff96
}

function sub_272ecbb3(?) {
    return sub_272ecbb3
}

function sub_29dcfcfd(?) {
    return sub_29dcfcfdAddress
}

function sub_2b893929(?) {
    return sub_2b893929
}

function sub_300425be(?) {
    return bool(sub_300425be)
}

function decimals() {
    return decimals
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function swapAndLiquifyEnabled() {
    return bool(swapAndLiquifyEnabled)
}

function sub_4ec39ba9(?) {
    return sub_4ec39ba9Address
}

function teamWallet() {
    return teamWalletAddress
}

function sub_5b3c6e01(?) {
    return bool(sub_5b3c6e01)
}

function sub_5c67ed9c(?) {
    return sub_5c67ed9c
}

function sub_61066fdf(?) {
    return sub_61066fdfAddress
}

function sub_652bcb2f(?) {
    return sub_652bcb2f
}

function marketingBuyFee() {
    return marketingBuyFee
}

function sub_6d052ede(?) {
    return bool(sub_6d052ede)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function marketingWallet() {
    return marketingWalletAddress
}

function sub_8073f8b3(?) {
    return sub_8073f8b3
}

function deadWallet() {
    return deadWalletAddress
}

function owner() {
    return owner
}

function sub_8ef71b1c(?) {
    return bool(sub_8ef71b1c)
}

function feeStatus() {
    return bool(feeStatus)
}

function sub_96909799(?) {
    return bool(sub_96909799)
}

function gasForProcessing() {
    return gasForProcessing
}

function sub_a84fc2df(?) {
    return bool(sub_a84fc2df)
}

function sub_a87e5da4(?) {
    return sub_a87e5da4
}

function marketActive() {
    return bool(marketActive)
}

function sub_ac252bd3(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor36[arg1])
}

function sub_b52d00b8(?) {
    return bool(sub_b52d00b8)
}

function automatedMarketMakerPairs(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor38[arg1])
}

function sub_b6c0f672(?) {
    return bool(sub_b6c0f672)
}

function totalBuyFees() {
    return totalBuyFees
}

function sub_bda258e4(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_bda258e4[arg1]
}

function sub_bf2e92c6(?) {
    return sub_bf2e92c6
}

function sub_cd90ee89(?) {
    return sub_cd90ee89
}

function totalSellFees() {
    return totalSellFees
}

function minimumTokensBeforeSwap() {
    return minimumTokensBeforeSwap
}

function sub_d851fd0d(?) {
    return sub_d851fd0d
}

function excludedFromFees(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor37[arg1])
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_e76ad1f1(?) {
    return bool(sub_e76ad1f1)
}

function marketingSellFee() {
    return marketingSellFee
}

function sub_ecc5e2c3(?) {
    return sub_ecc5e2c3
}

function maxWallet() {
    return maxWallet
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_89a01def(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_bf2e92c6 = arg1
}

function sub_c78b71cd(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_5c67ed9c = arg1
}

function setMaxWallet(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxWallet = arg1
}

function setTokensToSwap(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_2b893929 = arg1
}

function setTeamWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    teamWalletAddress = arg1
}

function sub_42ced7b7(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_4ec39ba9Address = address(arg1)
}

function setMaxTxAmount(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_a87e5da4 = arg1
    sub_d851fd0d = arg2
}

function setMarketingWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    marketingWalletAddress = arg1
}

function sub_8c5d2986(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint64(stor13.field_192) = uint64(bool(arg1))
}

function sub_e3762ba8(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor13.field_216 % 1099511627776 = bool(arg1) % 1099511627776
}

function sub_8d3728ce(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor13.field_200 % 72057594037927936 = bool(arg1) % 72057594037927936
}

function sub_6e1f2645(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor36[address(arg1)] = uint8(bool(arg2))
}

function getDOGEClaimWait() {
    staticcall sub_61066fdfAddress.claimWait() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_f82fe27c(?) {
    staticcall sub_61066fdfAddress.getLastProcessedIndex() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_03915da8(?) {
    staticcall sub_61066fdfAddress.getNumberOfTokenHolders() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_c6e3b3f7(?) {
    staticcall sub_61066fdfAddress.totalDividendsDistributed() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_a37909ac(?) {
    require calldata.size - 4 >= 96
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(72, 0, stor13.field_184) = Mask(72, 0, bool(arg1))
    sub_272ecbb3 = arg2
    minimumTokensBeforeSwap = arg3
}

function Sweep() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function excludeFromFees(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor37[address(arg1)] = uint8(arg2)
    emit ExcludeFromFees(arg2, arg1);
}

function sub_5d942e8f(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor37[address(arg1)] = uint8(bool(arg2))
    emit ExcludeFromFees(bool(arg2), address(arg1));
}

function sub_f2cc1256(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor13.field_208 % 281474976710656 = bool(arg1) % 281474976710656
    if bool(uint8(bool(arg1))) or False:
        stor35 = block.timestamp
}

function claim() {
    call sub_61066fdfAddress.processAccount(address arg1, bool arg2) with:
         gas gas_remaining wei
        args msg.sender, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_d2359e6f(?) {
    require calldata.size - 4 >= 96
    require arg1 == bool(arg1)
    require arg2 == bool(arg2)
    require arg3 == bool(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    feeStatus = uint8(bool(arg1))
    sub_e76ad1f1 = uint8(bool(arg2))
    sub_8ef71b1c = uint8(bool(arg3))
}

function sub_f6823de4(?) {
    require calldata.size - 4 >= 64
    require arg1 == bool(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_1a29c9d3 = uint8(bool(arg2))
    stor13.field_232 % 16777216 = bool(arg1) % 16777216
    uint16(stor13.field_240) = Mask(16, 16, bool(arg2)) >> 16
}

function sub_f814d970(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    staticcall sub_61066fdfAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
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
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function updateClaimWait(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_61066fdfAddress)
    call sub_61066fdfAddress.0xe98030c7 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_77bd6e44(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    staticcall sub_61066fdfAddress.withdrawableDividendOf(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setAuthOnDividends(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_61066fdfAddress)
    call sub_61066fdfAddress.setAuth(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function updateGasForProcessing(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 == gasForProcessing:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'DogeTry: Cannot update gasForProcessing to same value'
    gasForProcessing = arg1
    emit GasForProcessingUpdated(arg1, arg1);
}

function excludeFromDividend(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_61066fdfAddress)
    call sub_61066fdfAddress.excludeFromDividends(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function updateMinimumBalanceForDividends(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_61066fdfAddress)
    call sub_61066fdfAddress.updateMinimumTokenBalanceForDividends(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function updateUniswapV2Router(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uniswapV2RouterAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DogeTry: The router already has that address'
    emit UpdateUniswapV2Router(arg1, uniswapV2RouterAddress);
    uniswapV2RouterAddress = arg1
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

function processDividendTracker(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call sub_61066fdfAddress.process(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    emit 0x89ee236d: ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], arg1, 0, tx.origin
}

function updateTeamWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if teamWalletAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DogeTry: The team Wallet is already this address'
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor37[address(arg1)] = 1
    emit ExcludeFromFees(1, arg1);
    teamWalletAddress = arg1
}

function sub_c22629a1(?) {
    require calldata.size - 4 >= 96
    require arg1 == bool(arg1)
    require arg2 == bool(arg2)
    require arg3 == bool(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_300425be = uint8(bool(arg1))
    sub_a84fc2df = uint8(bool(arg2))
    Mask(80, 0, stor13.field_176) = Mask(80, 0, bool(arg3))
    Mask(72, 0, stor13.field_184) = 0
    Mask(72, 0, stor13.field_184) = Mask(72, 24, bool(arg1)) >> 24
    Mask(72, 0, stor13.field_184) = Mask(72, 16, bool(arg2)) >> 16
}

function updateLiqWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_4ec39ba9Address == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'DogeTry: The liquidity Wallet is already this address'
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor37[address(arg1)] = 1
    emit ExcludeFromFees(1, arg1);
    sub_4ec39ba9Address = arg1
}

function sub_2b11ffa3(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not uniswapV2RouterAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(this.address)][stor6] = arg1
    emit Approval(arg1, this.address, uniswapV2RouterAddress);
}

function prepareForPartherOrExchangeListing(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_61066fdfAddress)
    call sub_61066fdfAddress.excludeFromDividends(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor37[address(arg1)] = 1
    emit ExcludeFromFees(1, arg1);
}

function updateMarketingWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if marketingWalletAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'DogeTry: The marketing wallet is already this address'
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor37[address(arg1)] = 1
    emit ExcludeFromFees(1, arg1);
    emit MarketingWalletUpdated(marketingWalletAddress, arg1);
    marketingWalletAddress = arg1
}

function sub_f1771306(?) {
    require calldata.size - 4 >= 32
    staticcall sub_61066fdfAddress.getAccountAtIndex(uint256 arg1) with:
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

function sub_41c0f4ff(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call sub_61066fdfAddress.process(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    sub_29dcfcfdAddress = address(arg1)
    require ext_code.size(sub_61066fdfAddress)
    call sub_61066fdfAddress.setDividendTokenAddress(address arg1) with:
         gas gas_remaining wei
        args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_908bd6ee(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    staticcall sub_61066fdfAddress.getAccount(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
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

function transferForeignToken(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3:
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), arg3
    else:
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
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
        mem[32] = 37
        stor37[address(cd[((32 * idx) + arg1 + 36)])] = uint8(arg2)
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
    if uniswapV2PairAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'DogeTry: The PancakeSwap pair cannot be removed from automatedMarketMakerPairs'
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 == bool(stor38[address(arg1)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'DogeTry: Automated market maker pair is already set to that value'
    stor38[address(arg1)] = uint8(arg2)
    if arg2:
        require ext_code.size(sub_61066fdfAddress)
        call sub_61066fdfAddress.excludeFromDividends(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit SetAutomatedMarketMakerPair(arg1, arg2);
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8) {
    require calldata.size - 4 >= 256
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_652bcb2f = arg1
    sub_ecc5e2c3 = arg4
    sub_1d38ff96 = arg7
    sub_19998bbb = arg8
    sub_8073f8b3 = arg2
    sub_cd90ee89 = arg5
    marketingBuyFee = arg3
    marketingSellFee = arg6
    if arg1 > !arg7:
        revert with 0, 17
    if arg1 + arg7 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + arg7 > !arg3:
        revert with 0, 17
    if arg3 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + arg7 + arg3 > !arg2:
        revert with 0, 17
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalBuyFees = arg1 + arg7 + arg3 + arg2
    if sub_ecc5e2c3 > !sub_19998bbb:
        revert with 0, 17
    if sub_ecc5e2c3 + sub_19998bbb < sub_ecc5e2c3:
        revert with 0, 'SafeMath: addition overflow'
    if sub_ecc5e2c3 + sub_19998bbb > !marketingSellFee:
        revert with 0, 17
    if marketingSellFee < 0:
        revert with 0, 'SafeMath: addition overflow'
    if sub_ecc5e2c3 + sub_19998bbb + marketingSellFee > !sub_cd90ee89:
        revert with 0, 17
    if sub_cd90ee89 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalSellFees = sub_ecc5e2c3 + sub_19998bbb + marketingSellFee + sub_cd90ee89
}

function sub_fe1cfee0(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_61066fdfAddress == address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'DogeTry: The dividend tracker already has that address'
    staticcall address(arg1).0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'DogeTry: The new dividend tracker must be owned by the DogeTry token contract'
    require ext_code.size(address(arg1))
    call address(arg1).excludeFromDividends(address arg1) with:
         gas gas_remaining wei
        args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg1))
    call address(arg1).excludeFromDividends(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg1))
    call address(arg1).excludeFromDividends(address arg1) with:
         gas gas_remaining wei
        args uniswapV2RouterAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg1))
    call address(arg1).excludeFromDividends(address arg1) with:
         gas gas_remaining wei
        args deadWalletAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x17ec1f2f: address(arg1), sub_61066fdfAddress
    sub_61066fdfAddress = address(arg1)
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

function sub_d2d21629(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = ceil32(32 * ('cd', 4).length) + 129
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= mem[96]:
            revert with 0, 50
        _228 = mem[(32 * idx) + 128]
        if not decimals:
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            _230 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
            if mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] and 1 > -1 / mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
                revert with 0, 17
            if not owner:
                revert with 0, 'ERC20: transfer from the zero address'
            if not mem[(32 * idx) + 140 len 20]:
                revert with 0, 'ERC20: transfer to the zero address'
            _234 = mem[64]
            mem[64] = mem[64] + 96
            mem[_234] = 38
            mem[_234 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
            mem[32] = 0
            if _230 > balanceOf[stor5]:
                _241 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 38
                idx = 0
                while idx < 38:
                    mem[idx + _241 + 68] = mem[idx + _234 + 32]
                    idx = idx + 32
                    continue 
                mem[_241 + 106] = 0
                revert with memory
                  from mem[64]
                   len _241 + -mem[64] + 132
            if balanceOf[stor5] < _230:
                revert with 0, 17
            balanceOf[stor5] -= _230
            if balanceOf[address(_228)] > !_230:
                revert with 0, 17
            if balanceOf[address(_228)] + _230 < balanceOf[address(_228)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(_228)] += _230
            emit Transfer(_230, owner, address(_228));
        else:
            if bool(bool(decimals < 78)) or bool(bool(decimals < 32)):
                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                    revert with 0, 50
                _232 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                if mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] and 10^decimals > -1 / mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
                    revert with 0, 17
                if not owner:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'ERC20: transfer to the zero address'
                _244 = mem[64]
                mem[64] = mem[64] + 96
                mem[_244] = 38
                mem[_244 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                mem[32] = 0
                if _232 * 10^decimals > balanceOf[stor5]:
                    _252 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 38
                    idx = 0
                    while idx < 38:
                        mem[idx + _252 + 68] = mem[idx + _244 + 32]
                        idx = idx + 32
                        continue 
                    mem[_252 + 106] = 0
                    revert with memory
                      from mem[64]
                       len _252 + -mem[64] + 132
                if balanceOf[stor5] < _232 * 10^decimals:
                    revert with 0, 17
                balanceOf[stor5] += -1 * _232 * 10^decimals
                if balanceOf[address(_228)] > !(_232 * 10^decimals):
                    revert with 0, 17
                if balanceOf[address(_228)] + (_232 * 10^decimals) < balanceOf[address(_228)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(_228)] += _232 * 10^decimals
                emit Transfer((_232 * 10^decimals), owner, address(_228));
            else:
                t = 10
                u = 1
                s = decimals
                while s > 1:
                    if t > -1 / t:
                        revert with 0, 17
                    if not bool(s):
                        t = t * t
                        u = u
                        s = uint255(s) * 0.5
                        continue 
                    t = t * t
                    u = t * u
                    s = uint255(s) * 0.5
                    continue 
                if u > -1 / t:
                    revert with 0, 17
                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                    revert with 0, 50
                _305 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                if mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] and t * u > -1 / mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
                    revert with 0, 17
                if not owner:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'ERC20: transfer to the zero address'
                _307 = mem[64]
                mem[64] = mem[64] + 96
                mem[_307] = 38
                mem[_307 + 32 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                mem[32] = 0
                if _305 * t * u > balanceOf[stor5]:
                    _312 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 38
                    idx = 0
                    while idx < 38:
                        mem[idx + _312 + 68] = mem[idx + _307 + 32]
                        idx = idx + 32
                        continue 
                    mem[_312 + 106] = 0
                    revert with memory
                      from mem[64]
                       len _312 + -mem[64] + 132
                if balanceOf[stor5] < _305 * t * u:
                    revert with 0, 17
                balanceOf[stor5] += -1 * _305 * t * u
                if balanceOf[address(_228)] > !(_305 * t * u):
                    revert with 0, 17
                if balanceOf[address(_228)] + (_305 * t * u) < balanceOf[address(_228)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(_228)] += _305 * t * u
                emit Transfer((_305 * t * u), owner, address(_228));
        mem[0] = address(_228)
        mem[32] = 0
        mem[mem[64]] = 0xe30443bc00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(_228)
        mem[mem[64] + 36] = balanceOf[address(_228)]
        require ext_code.size(sub_61066fdfAddress)
        call sub_61066fdfAddress.setBalance(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(_228), balanceOf[address(_228)]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
